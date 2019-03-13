unit uHelpers;

interface
uses System.JSON,FireDAC.Comp.Client,Data.DB,SysUtils,Rest.Json,System.Math,cxDBLookupComboBox,
REST.Client,REST.Response.Adapter,Dialogs,Variants;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);
function calcularTotales(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;
procedure PrimerElementoCombo(combo:TcxLookupComboBox);
procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
function existeCliente(dni:string):TJSONObject;
function calcularTotalesRebatir(monto,plazo,interes:real):real;
procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
procedure LlenarCombo2(dataset:TFdMemtable;json:widestring);

implementation

uses
  uAdapterJson, UGraph, UData;

procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

function calcularTotalesRebatir(monto,plazo,interes:real):real;
var interes_por,factor,i_soles_total,i_soles_anual,cuota_mensual,i_soles_mensual:real;
var recordCount:integer;
begin
  cuota_mensual:=0;
  i_soles_total:=0;
  i_soles_anual:=0;
  i_soles_mensual:=0;
  factor:=0;
  interes_por:=interes/100;

    i_soles_anual:=(Power(1+interes_por,(360/30))-1)*100;
    factor:=(Power(1+interes_por,plazo)*interes_por)/(Power(1+interes_por,plazo)-1);
    cuota_mensual:=roundTo(factor*monto,-2);
    i_soles_total:=plazo*(interes/100);
    i_soles_total:=roundTo(cuota_mensual*plazo,-2);
    result:=cuota_mensual;
end;


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
     '{ data {id,dni,nombres,apellido_paterno,apellido_materno,full_name,fecha_nacimiento,direccion,telefono,activo}}} ';

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

procedure LlenarCombo2(dataset:TFdMemtable;json:widestring);
var
  LJSON: TJSONValue;
  LIntf: IRESTResponseJSON;
  adapter: TRESTResponseDataSetAdapter;
begin
  try
      //ShowMessage('combo2='+json);
      dataset.Close;
      dataset.DisableControls;
      dataset.FieldDefs.Updated := False;

      adapter:=TRESTResponseDataSetAdapter.Create(nil);
     // dataset.Close;
      //dataset.ClearFields;
      adapter.Dataset := dataset;
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
             dataset.FieldDefs.Update;
      adapter.UpdateDataSet();
      dataset.Active:=True;
      dataset.EnableControls;
      //dataset.Refresh;
      end;
  finally
      FreeAndNil(adapter);
  end;
end;

procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
var
  LJSON: TJSONValue;
  LIntf: IRESTResponseJSON;
begin
  try
    //showmessage('dentro='+json);
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
  finally

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
 // showmessage(datajson.ToString);
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
            begin
                if datajson.Get(Fields[I].FieldName).Null then
                   Fields[I].AsVariant:=Null
                else
                   Fields[I].AsInteger:=datajson.Get(Fields[I].FieldName).JsonValue.value.ToInteger;
            end;
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
