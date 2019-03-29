unit uHelpers;

interface
uses System.JSON,FireDAC.Comp.Client,Data.DB,SysUtils,Rest.Json,System.Math,cxDBLookupComboBox,
REST.Client,REST.Response.Adapter,Dialogs,Variants,cxGridBandedTableView;

procedure InsertarRegistroDataset(datajson:TJsonObject;dataset:TFDmemtable);
function calcularTotales(interes:real=0;monto:real=0;plazo:real=0):TJsonArray;
procedure PrimerElementoCombo(combo:TcxLookupComboBox);
procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
function existeCliente(dni:string):TJSONObject;
function calcularTotalesRebatir(monto,plazo,interes:real):real;
procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
procedure LlenarCombo2(dataset:TFdMemtable;json:widestring);
function calcularCuotaParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView):real; overload;
function calcularCuotaParalelo(monto,plazo,interes:real):real; overload;
procedure distribucionCuotaParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView); overload;
procedure distribucionCuotaParalelo(monto,plazo,interes:real); overload;
procedure RendicionParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView); overload;
procedure RendicionParalelo(monto,plazo,interes:real); overload;
procedure llenarGridAhorro(inicial,monto,programado,cuota_mensual:real;plazo:integer;grid:TcxGridBandedTableView);
function calcularAhorro(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil;plazo_maximo:integer=0):real;
procedure llenarGridResumen(datos:TJsonArray;grid:TcxGridBandedTableView);
procedure llenarGridCuota(capital_mes,i_soles_mensual,monto,programado:real;plazo:integer;grid:TcxGridBandedTableView);
procedure calcularCuota(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil);
procedure calcularRendicion(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil);
procedure llenarGridRendicion(capital_mes,i_soles_mensual,monto,programado:real;plazo:integer;grid:TcxGridBandedTableView);
function calcularParametrosRebatir(monto,plazo,interes:real;grid1:TcxGridBandedTableView=nil;grid2:TcxGridBandedTableView=nil;grid3:TcxGridBandedTableView=nil):real;
procedure llenarGridRebatir(grid: TcxGridBandedTableView;cuota, monto, interes: real;plazo:byte);
procedure datosAhorro(dataset:TFDmemtable=nil);
function calcularAhorroResolucion(monto:real;plazo:integer;interes:real;inicial,programado:real;grid:TcxGridBandedTableView=nil):real;
var
   {variables here}
   aInicial:Real=0;
   aProgramado:Real=0;

implementation

uses
  uAdapterJson, UGraph, UData;

procedure datosAhorro(dataset:TFDmemtable=nil);
begin
  aInicial:=0;
  aProgramado:=0;
  if not(dataset=nil) then
  begin
      dataset.First;
    while not dataset.Eof do
    begin
       if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
          aInicial:=aInicial+dataset.Fieldbyname('porcentaje').AsFloat;
       if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
          aProgramado:=aProgramado+dataset.Fieldbyname('porcentaje').AsFloat;
       dataset.next;
    end;
  end;
end;

procedure llenarGridRebatir(grid: TcxGridBandedTableView;cuota, monto, interes: real;plazo:byte);
var i:byte;
var m_interes,m_cuota,m_amortizacion,m_saldo:real;
begin
     grid.BeginUpdate();
  try
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=plazo+1;
    m_saldo:=monto;
    m_interes:=0;
    m_amortizacion:=0;
    m_cuota:=0;
   for i:=0 to grid.DataController.RecordCount-1 do
   begin
    grid.DataController.Values[i,0]:=i;
    grid.DataController.Values[i,1]:=m_saldo;
    grid.DataController.Values[i,2]:=m_interes;
    grid.DataController.Values[i,3]:=m_amortizacion;
    grid.DataController.Values[i,4]:=m_cuota;
    m_interes:=(interes*m_saldo)/100;
    m_amortizacion:=RoundTo(cuota-m_interes,-2);
    m_saldo:=roundTo(m_saldo-m_amortizacion,-2);
    m_cuota:=cuota;
   end;
    grid.DataController.Values[grid.DataController.RecordCount-1,1]:=RoundTo(abs(grid.DataController.Values[grid.DataController.RecordCount-1,1]),-1);
  finally
    grid.EndUpdate;
  end;
end;

function calcularParametrosRebatir(monto,plazo,interes:real;grid1:TcxGridBandedTableView=nil;grid2:TcxGridBandedTableView=nil;grid3:TcxGridBandedTableView=nil):real;
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
    // Grid Parametros Rebatir
    if not(grid1=nil) then
    begin
    grid1.DataController.RecordCount:=0;
    grid1.DataController.RecordCount:=grid1.DataController.RecordCount+1;
    grid1.DataController.Values[0,0]:='Interes anual';
    grid1.DataController.Values[0,1]:=i_soles_anual;
    grid1.DataController.RecordCount:=grid1.DataController.RecordCount+1;
    grid1.DataController.Values[1,0]:='Interes mensual %';
    grid1.DataController.Values[1,1]:=interes;
    grid1.DataController.RecordCount:=grid1.DataController.RecordCount+1;
    grid1.DataController.Values[2,0]:='Monto';
    grid1.DataController.Values[2,1]:=monto;
    grid1.DataController.RecordCount:=grid1.DataController.RecordCount+1;
    grid1.DataController.Values[3,0]:='Plazo';
    grid1.DataController.Values[3,1]:=plazo;
    grid1.DataController.RecordCount:=grid1.DataController.RecordCount+1;
    grid1.DataController.Values[4,0]:='Cuota';
    grid1.DataController.Values[4,1]:=cuota_mensual;
    end;
    //Grid Factor Rebatir
    if not(grid2=nil) then
    begin
    grid2.DataController.RecordCount:=0;
    grid2.DataController.RecordCount:=grid2.DataController.RecordCount+1;
    grid2.DataController.Values[0,0]:='Factor';
    grid2.DataController.Values[0,1]:=roundTo(factor,-7);
    grid2.DataController.RecordCount:=grid2.DataController.RecordCount+1;
    grid2.DataController.Values[1,0]:='Factor';
    grid2.DataController.Values[1,1]:=factor;
    end;
     //GridInteresRebatir
    if not(grid3=nil) then
    begin
    grid3.DataController.RecordCount:=0;
    grid3.DataController.RecordCount:=grid3.DataController.RecordCount+1;
    grid3.DataController.Values[0,0]:='Interes total a pagar';
    grid3.DataController.Values[0,1]:=roundTo(i_soles_total-monto,-2);
    end;
    result:=cuota_mensual;
end;

procedure llenarGridRendicion(capital_mes,i_soles_mensual,monto,programado:real;plazo:integer;grid:TcxGridBandedTableView);
begin
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Ceop Ilo';
    grid.DataController.Values[0,1]:='Amortizacion Capital S/.';
    grid.DataController.Values[0,2]:=capital_mes;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Ceop Ilo';
    grid.DataController.Values[1,1]:='Interes total S/.';
    grid.DataController.Values[1,2]:=i_soles_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Cliente';
    grid.DataController.Values[2,1]:='F.G. Fraaccionado';
    grid.DataController.Values[2,2]:=roundto(((monto*(programado/100))/plazo)*plazo,-2);
    grid.ViewData.Expand(true);
end;

procedure calcularRendicion(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;

  if not(dataset=nil) then
  begin
      dataset.First;
    while not dataset.Eof do
    begin
       if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
          inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
       if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
          programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
       dataset.next;
    end;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo*plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=roundTo((i_soles/plazo)*plazo,-2);
  if not(grid=nil) then
     llenarGridRendicion(capital_mes,i_soles_mensual,monto,programado,plazo,grid);
end;

procedure llenarGridCuota(capital_mes,i_soles_mensual,monto,programado:real;plazo:integer;grid:TcxGridBandedTableView);
begin
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Mensual';
    grid.DataController.Values[0,1]:='Amortizacion Capital S/.';
    grid.DataController.Values[0,2]:=capital_mes;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Mensual';
    grid.DataController.Values[1,1]:='Interes x Mes S/.';
    grid.DataController.Values[1,2]:=i_soles_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Mensual';
    grid.DataController.Values[2,1]:='F.G. Fraaccionado';
    grid.DataController.Values[2,2]:=roundto((monto*(programado/100))/plazo,-2);
    //grid
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[3,0]:='Quincenal';
    grid.DataController.Values[3,1]:='Capital x Mes S/.';
    grid.DataController.Values[3,2]:=roundTo(capital_mes/2,-2);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[4,0]:='Quincenal';
    grid.DataController.Values[4,1]:='Interes x Mes S/.';
    grid.DataController.Values[4,2]:=roundTo(i_soles_mensual,-2);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[5,0]:='Quincenal';
    grid.DataController.Values[5,1]:='F.G. Fraaccionado';
    grid.DataController.Values[5,2]:=roundto(((monto*(programado/100))/plazo)/2,-2);
    grid.ViewData.Expand(true);
end;

procedure calcularCuota(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;
  if not(dataset=nil) then
  begin
    dataset.First;
    while not dataset.Eof do
    begin
       if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
          inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
       if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
          programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
       dataset.next;
    end;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=i_soles/plazo;
  if not(grid=nil) then
     llenarGridCuota(capital_mes,i_soles_mensual,monto,programado,plazo,grid);
end;

procedure llenarGridResumen(datos:TJsonArray;grid:TcxGridBandedTableView);
var i:byte;
 LJsonValue : TJSONValue;
  item     : TJsonObject;
   size: integer;
   jpair:TJsonPair;
begin
 //  grid.BeginUpdate();
  try
    grid.DataController.RecordCount := TJSONArray(datos).Count;
     Size := TJSONArray(datos).Count;
   for i:=0 to pred(Size) do
   begin
    item := datos.Get(i) as TJsonObject;
    grid.DataController.Values[i,0]:=item.Pairs[0].jsonvalue.value;
    grid.DataController.Values[i,1]:=item.Pairs[1].jsonvalue.value;
   end;
  finally
   // grid.EndUpdate;
  end;
end;

function calcularAhorro(monto:real;plazo:integer;interes:real;dataset: TFdMemTable=nil;grid:TcxGridBandedTableView=nil;plazo_maximo:integer=0):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,total_programado:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  total_programado:=0;
  if not(dataset=nil) then
  begin
      dataset.First;
      while not(dataset.Eof) do
      begin
         if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
            inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
         if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
            programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
         dataset.next;
      end;
      total_programado:=((monto*(programado/100))/plazo);
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+total_programado;
    capital_mes:=roundTo(monto/plazo,-2);
    if not(grid=nil) then
       uHelpers.llenarGridAhorro(inicial,monto,programado,cuota_mensual,plazo,grid);
    if plazo_maximo=1 then
       cuota_mensual:=cuota_mensual*plazo;
    result:=cuota_mensual;
end;

function calcularAhorroResolucion(monto:real;plazo:integer;interes:real;inicial,programado:real;grid:TcxGridBandedTableView=nil):real;
var i_acumulado,cuota_mensual,capital_mes,total_programado:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  total_programado:=0;
      total_programado:=((monto*(programado/100))/plazo);

    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+total_programado;
    capital_mes:=roundTo(monto/plazo,-2);
    if not(grid=nil) then
       uHelpers.llenarGridAhorro(inicial,monto,programado,cuota_mensual,plazo,grid);
    result:=cuota_mensual;
end;

procedure llenarGridAhorro(inicial,monto,programado,cuota_mensual:real;plazo:integer;grid:TcxGridBandedTableView);
begin
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Garantia Inicial %';
    grid.DataController.Values[0,1]:=inicial;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Garantia Inicial S/.';
    grid.DataController.Values[1,1]:=monto*(inicial/100);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Garantia Programado S/.';
    grid.DataController.Values[2,1]:=programado;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[3,0]:='Total Garantia S/.';
    grid.DataController.Values[3,1]:=monto*(programado/100);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[4,0]:='Total fondo S/.';
    grid.DataController.Values[4,1]:=(monto*(inicial/100))+(monto*(programado/100));
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[5,0]:='F. G. Fraccionado S/.';
    grid.DataController.Values[5,1]:=roundto((monto*(programado/100))/plazo,-2);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[6,0]:='Cuota Mensual S/.';
    grid.DataController.Values[6,1]:=cuota_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[7,0]:='Cuota Quincenal S/.';
    grid.DataController.Values[7,1]:=roundTo(cuota_mensual/2,-2);
end;

procedure RendicionParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo*plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=roundTo((i_soles/plazo)*plazo,-2);
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Ceop Ilo';
    grid.DataController.Values[0,1]:='Amortizacion Capital S/.';
    grid.DataController.Values[0,2]:=capital_mes;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Ceop Ilo';
    grid.DataController.Values[1,1]:='Interes total S/.';
    grid.DataController.Values[1,2]:=i_soles_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Cliente';
    grid.DataController.Values[2,1]:='F.G. Fraaccionado';
    grid.DataController.Values[2,2]:=0;
    grid.ViewData.Expand(true);
end;

procedure RendicionParalelo(monto,plazo,interes:real);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo*plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=roundTo((i_soles/plazo)*plazo,-2);
end;

function calcularCuotaParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo,-2);

    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Garantia Inicial %';
    grid.DataController.Values[0,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Garantia Inicial S/.';
    grid.DataController.Values[1,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Garantia Programado S/.';
    grid.DataController.Values[2,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[3,0]:='Total Garantia S/.';
    grid.DataController.Values[3,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[4,0]:='Total fondo S/.';
    grid.DataController.Values[4,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[5,0]:='F. G. Fraccionado S/.';
    grid.DataController.Values[5,1]:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[6,0]:='Cuota Mensual S/.';
    grid.DataController.Values[6,1]:=cuota_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[7,0]:='Cuota Quincenal S/.';
    grid.DataController.Values[7,1]:=roundTo(cuota_mensual/2,-2);
    result:=cuota_mensual;
end;

function calcularCuotaParalelo(monto,plazo,interes:real):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    result:=cuota_mensual;
end;

procedure distribucionCuotaParalelo(monto,plazo,interes:real;grid:TcxGridBandedTableView);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;

    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=i_soles/plazo;
    grid.DataController.RecordCount:=0;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[0,0]:='Mensual';
    grid.DataController.Values[0,1]:='Amortizacion Capital S/.';
    grid.DataController.Values[0,2]:=capital_mes;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[1,0]:='Mensual';
    grid.DataController.Values[1,1]:='Interes x Mes S/.';
    grid.DataController.Values[1,2]:=i_soles_mensual;
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[2,0]:='Mensual';
    grid.DataController.Values[2,1]:='F.G. Fraaccionado';
    grid.DataController.Values[2,2]:=0;
    //Quincenal
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[3,0]:='Quincenal';
    grid.DataController.Values[3,1]:='Capital x Mes S/.';
    grid.DataController.Values[3,2]:=roundTo(capital_mes/2,-2);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[4,0]:='Quincenal';
    grid.DataController.Values[4,1]:='Interes x Mes S/.';
    grid.DataController.Values[4,2]:=roundTo(i_soles_mensual,-2);
    grid.DataController.RecordCount:=grid.DataController.RecordCount+1;
    grid.DataController.Values[5,0]:='Quincenal';
    grid.DataController.Values[5,1]:='F.G. Fraaccionado';
    grid.DataController.Values[5,2]:=0;
    grid.ViewData.Expand(true);
end;

procedure distribucionCuotaParalelo(monto,plazo,interes:real);
var inicial,programado,i_acumulado,cuota_mensual,capital_mes,i_soles,i_soles_mensual:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  i_acumulado:=0;
  i_soles:=0;
  i_soles_mensual:=0;

    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=i_soles/plazo;
end;



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
