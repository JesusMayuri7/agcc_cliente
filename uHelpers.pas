unit uHelpers;

interface
uses System.JSON,FireDAC.Comp.Client,Data.DB,SysUtils,Rest.Json,System.Math,cxDBLookupComboBox,
REST.Client,REST.Response.Adapter,Dialogs;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);
function calcularTotales(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;
procedure PrimerElementoCombo(combo:TcxLookupComboBox);
procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
function existeCliente(dni:string):TJSONObject;

implementation

uses
  uAdapterJson, UGraph, UData;

function existeCliente(dni:string):TJSONObject;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    //result:=TJSONObject.Create;
    graph:=TGraph.Create(dmData.restClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verCliente($dni:String) { clienteQuery(dni:$dni)' +
     '{ data {id,dni,nombres,apellido_paterno,apellido_materno,fecha_nacimiento,direccion,telefono,activo}}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    if length(dni)>0 then
       dataVar.AddPair('dni',TJSONString.Create(dni));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.clienteQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    result:=graph.ejecutar('clienteQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    //showmessage(Result.ToJSON);
    finally
       FreeAndNil(graph);
       FreeAndNil(variables);
    end;
end;

procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
var
  LJSON: TJSONValue;
  LIntf: IRESTResponseJSON;
begin
  // Clear last value
  adapter.ResponseJSON := nil;
  adapter.NestedElements := False;
  adapter.RootElement :='';

  LJSON := TJSONObject.ParseJSONValue(json);
  if LJSON = nil then
//    raise Exception.Create('Sin datos');
  else
  begin
    // Provide the JSON value to the adapter
  LIntf := TAdapterJSONValue.Create(LJSON);
  adapter.ResponseJSON := LIntf;
  adapter.Active := True;
  end;
end;

procedure PrimerElementoCombo(combo:TcxLookupComboBox);
var
  AProperties: TcxLookupComboBoxProperties;
  ARecordIndex: Integer;
  AValue: Variant;
begin
  AProperties := combo.Properties;
  with AProperties.Grid do
  begin
    if DataController.RecordCount>0 then
       begin
      ARecordIndex := ViewInfo.Rows[0].RecordIndex;
      AValue := DataController.Values[ARecordIndex, 0];
      combo.EditValue:=AValue;
      end;
  end;
end;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);
var I:integer;
begin
  with dataset do
  begin
    if not(Active) then
        Open();
    if Active then
      begin
        if  datajson.TryGetValue('id',I) then
           Edit
        else
        Insert;
          for I := 0 to FieldCount-1 do
          begin
            if  Fields[I].DataType = ftString then
                Fields[I].AsString:=datajson.Get(Fields[I].FieldName).JsonValue.value;
            if  Fields[I].DataType = ftFloat then
                Fields[I].AsFloat:=datajson.Get(Fields[I].FieldName).JsonValue.value.ToDouble;
            if  Fields[I].DataType = ftInteger then
                Fields[I].AsInteger:=datajson.Get(Fields[I].FieldName).JsonValue.value.ToInteger;
            if  Fields[I].DataType = ftBoolean then
                Fields[I].AsBoolean:=datajson.Get(Fields[I].FieldName).JsonValue.value.ToBoolean;
          end;
        Post;
      end;
  end;
end;

function calcularTotales(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;
var i_anual,i_acumulado,i_soles,i_soles_mensual,capital_mensual:real;item:TJsonObject;
begin
  i_anual:=interes*12;
  i_acumulado:=(interes/100)*plazo;
  i_soles:=i_acumulado*monto;
  i_soles_mensual:=i_soles/plazo;
  capital_mensual:=monto/plazo;
  capital_mensual:=RoundTo(capital_mensual,-2);

  result:=TJsonArray.Create;
  item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Interes Anual %'));
  item.AddPair('valor',TJsonNumber.create(i_anual));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Interes Acumulado %'));
  item.AddPair('valor',TJsonNumber.Create(i_acumulado*100));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Interes Mensual %'));
  item.AddPair('valor',TJsonNumber.Create(interes));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Interes Soles'));
  item.AddPair('valor',TJsonNumber.Create(i_soles));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Interes Soles Mensual'));
  item.AddPair('valor',TJsonNumber.Create(i_soles_mensual));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Monto'));
  item.AddPair('valor',TJsonNumber.Create(monto));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('plazo'));
  item.AddPair('valor',TJsonNumber.Create(plazo));
  result.AddElement(item);
    item:=TJsonObject.Create;
  item.AddPair('descripcion',TJsonString.Create('Capital Mensual'));
  item.AddPair('valor',TJsonNumber.Create(capital_mensual));
  result.AddElement(item);
end;

end.
