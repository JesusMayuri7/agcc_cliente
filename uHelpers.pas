unit uHelpers;

interface
uses FireDAC.Comp.Client,Data.DB,Json,SysUtils;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);

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

end.
