unit uHelpers;

interface
uses FireDAC.Comp.Client,Data.DB,Json,SysUtils,Rest.Json,System.Math;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);
function calcularCuota(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;

implementation

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

function calcularCuota(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;
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
