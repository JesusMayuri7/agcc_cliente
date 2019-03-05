unit uCalcular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, System.Math,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,Rest.Json,JSON,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Response.Adapter, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.DBScope, cxLabel,
  Vcl.DBCtrls, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TfCalcular = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cbbLineaCredito: TcxLookupComboBox;
    Panel8: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    spnPlazo: TcxSpinEdit;
    spnMonto: TcxSpinEdit;
    Label3: TLabel;
    cbbPerfilCliente: TcxLookupComboBox;
    Label4: TLabel;
    cbbTipoProducto: TcxLookupComboBox;
    Label5: TLabel;
    Button1: TButton;
    Label7: TLabel;
    GridPanel1: TGridPanel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel6: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblInteres: TLabel;
    lblLineaCredito: TLabel;
    lblMora: TLabel;
    lblPerfilCliente: TLabel;
    lblPlazoMaximo: TLabel;
    lblPlazoMinimo: TLabel;
    lblTipoProducto: TLabel;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
    LinkPropertyToFieldCaption5: TLinkPropertyToField;
    LinkPropertyToFieldCaption6: TLinkPropertyToField;
    grid3: TcxGrid;
    cxGridLevel3: TcxGridLevel;
    gridCuota: TcxGridBandedTableView;
    gridCuotaColumn1: TcxGridBandedColumn;
    gridCuotaColumn2: TcxGridBandedColumn;
    cxGrid5: TcxGrid;
    gridTotales: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridAhorro: TcxGridBandedTableView;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    gridCuotaColumn3: TcxGridBandedColumn;
    cxGrid4: TcxGrid;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    gridRendicion: TcxGridBandedTableView;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridLevel4: TcxGridLevel;
    BindSourceDB4: TBindSourceDB;
    Label6: TLabel;
    PageControl1: TPageControl;
    pgcSimple: TTabSheet;
    pgcRebatir: TTabSheet;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    cxGrid3: TcxGrid;
    gridCuotasRebatir: TcxGridBandedTableView;
    colSaldoDeuda: TcxGridBandedColumn;
    colInteres: TcxGridBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid6: TcxGrid;
    gridParametrosRebatir: TcxGridBandedTableView;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    gridFactorRebatir: TcxGridBandedTableView;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid8: TcxGrid;
    gridInteresRebatir: TcxGridBandedTableView;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridLevel8: TcxGridLevel;
    colId: TcxGridBandedColumn;
    colAmortizacion: TcxGridBandedColumn;
    colCuota: TcxGridBandedColumn;
    LinkPropertyToField1: TLinkPropertyToField;
    spnCuota: TcxSpinEdit;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbLineaCreditoPropertiesChange(Sender: TObject);
    procedure cbbPerfilClientePropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var itemJson:TJsonObject;
    procedure llenarGridResumen(datos:TJsonArray);
    procedure calcularCuota(monto,plazo,interes:real;dataset: TFdMemTable);
    function calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
    procedure calcularRendicion(monto,plazo,interes:real;dataset: TFdMemTable);
    function calcularParametrosRebatir(monto,plazo,interes:real):real;
    procedure llenarGridRebatir(grid:TcxGridBandedTableView;cuota,monto,interes:real;plazo:byte);
  public
    { Public declarations }
  end;

var
  fCalcular: TfCalcular;

implementation

{$R *.dfm}

uses UData, uAdapterJson, uHelpers;



procedure TfCalcular.llenarGridRebatir(grid: TcxGridBandedTableView;cuota, monto, interes: real;plazo:byte);
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
    grid.DataController.Values[i,colId.Position.ColIndex]:=i;
    grid.DataController.Values[i,colSaldoDeuda.Position.ColIndex]:=m_saldo;
    grid.DataController.Values[i,colInteres.Position.ColIndex]:=m_interes;
    grid.DataController.Values[i,colAmortizacion.Position.ColIndex]:=m_amortizacion;
    grid.DataController.Values[i,colCuota.Position.ColIndex]:=m_cuota;
    m_interes:=(interes*m_saldo)/100;
    m_amortizacion:=RoundTo(cuota-m_interes,-2);
    m_saldo:=roundTo(m_saldo-m_amortizacion,-2);
    m_cuota:=cuota;
   end;
    grid.DataController.Values[grid.DataController.RecordCount-1,colSaldoDeuda.Position.ColIndex]:=RoundTo(abs(grid.DataController.Values[grid.DataController.RecordCount-1,colSaldoDeuda.Position.ColIndex]),-1);
  finally
    grid.EndUpdate;
  end;
end;

procedure TfCalcular.llenarGridResumen(datos:TJsonArray);
var i:byte;
 LJsonValue : TJSONValue;
  item     : TJsonObject;
   size: integer;
   jpair:TJsonPair;
begin
   gridTotales.BeginUpdate();
  try
    gridTotales.DataController.RecordCount := datos.Count;
     Size := TJSONArray(datos).Count;
   for i:=0 to pred(Size) do
   begin
    item := datos.Get(i) as TJsonObject;
    gridTotales.DataController.Values[i,0]:=item.Pairs[0].jsonvalue.value;
    gridTotales.DataController.Values[i,1]:=item.Pairs[1].jsonvalue.value;
   end;
  finally
    gridTotales.EndUpdate;
  end;
end;

procedure TfCalcular.Button1Click(Sender: TObject);
var calculos:TJsonArray;
var cuota,interes:real;
begin
 cuota:=0;
 interes:=0;
 with cbbTipoProducto.Properties.Grid.DataController do
 begin
   if (spnMonto.Value>0) and (spnPlazo.Value>0) and (cbbTipoProducto.EditValue>0) then
   begin
      interes:=dmdata.fdTipoProducto.FieldValues['interes'];
     if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
         begin
         pgcRebatir.TabVisible:=false;
         pgcSimple.TabVisible:=true;
         calculos:=uHelpers.calcularTotales(interes,spnMonto.value,spnPlazo.value);
         llenarGridResumen(calculos);
         cuota:=calcularAhorro(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro);
         calcularCuota(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro);
         calcularRendicion(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro);
          end;
      if dmdata.fdLineaCredito.FieldValues['tipo_interes']='REBATIR' then
         begin
         pgcSimple.TabVisible:=false;
         pgcRebatir.TabVisible:=true;
         cuota:=calcularParametrosRebatir(spnMonto.value,spnPlazo.Value,interes);
         llenarGridRebatir(gridCuotasRebatir,cuota,spnMonto.Value,interes,spnPlazo.Value);
         end;
     spnCuota.Value:=cuota;
   end;
 end;

end;

function TfCalcular.calcularParametrosRebatir(monto,plazo,interes:real):real;
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
    gridParametrosRebatir.DataController.RecordCount:=0;
    gridParametrosRebatir.DataController.RecordCount:=gridParametrosRebatir.DataController.RecordCount+1;
    gridParametrosRebatir.DataController.Values[0,0]:='Interes anual';
    gridParametrosRebatir.DataController.Values[0,1]:=i_soles_anual;
    gridParametrosRebatir.DataController.RecordCount:=gridParametrosRebatir.DataController.RecordCount+1;
    gridParametrosRebatir.DataController.Values[1,0]:='Interes mensual %';
    gridParametrosRebatir.DataController.Values[1,1]:=interes;
    gridParametrosRebatir.DataController.RecordCount:=gridParametrosRebatir.DataController.RecordCount+1;
    gridParametrosRebatir.DataController.Values[2,0]:='Monto';
    gridParametrosRebatir.DataController.Values[2,1]:=monto;
    gridParametrosRebatir.DataController.RecordCount:=gridParametrosRebatir.DataController.RecordCount+1;
    gridParametrosRebatir.DataController.Values[3,0]:='Plazo';
    gridParametrosRebatir.DataController.Values[3,1]:=plazo;
    gridParametrosRebatir.DataController.RecordCount:=gridParametrosRebatir.DataController.RecordCount+1;
    gridParametrosRebatir.DataController.Values[4,0]:='Cuota';
    gridParametrosRebatir.DataController.Values[4,1]:=cuota_mensual;
    //Grid Factor Rebatir
    gridFactorRebatir.DataController.RecordCount:=0;
    gridFactorRebatir.DataController.RecordCount:=gridFactorRebatir.DataController.RecordCount+1;
    gridFactorRebatir.DataController.Values[0,0]:='Factor';
    gridFactorRebatir.DataController.Values[0,1]:=roundTo(factor,-7);
    gridFactorRebatir.DataController.RecordCount:=gridFactorRebatir.DataController.RecordCount+1;
    gridFactorRebatir.DataController.Values[1,0]:='Factor';
    gridFactorRebatir.DataController.Values[1,1]:=factor;
     //Grid Interes
    gridInteresRebatir.DataController.RecordCount:=0;
    gridInteresRebatir.DataController.RecordCount:=gridInteresRebatir.DataController.RecordCount+1;
    gridInteresRebatir.DataController.Values[0,0]:='Interes total a pagar';
    gridInteresRebatir.DataController.Values[0,1]:=roundTo(i_soles_total-monto,-2);
    result:=cuota_mensual;
end;

procedure TfCalcular.calcularRendicion(monto,plazo,interes:real;dataset: TFdMemTable);
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
  dataset.First;
  while not dataset.Eof do
  begin
     if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
        inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
     if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
        programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
     dataset.next;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo*plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=roundTo((i_soles/plazo)*plazo,-2);
    gridRendicion.DataController.RecordCount:=0;
    gridRendicion.DataController.RecordCount:=gridRendicion.DataController.RecordCount+1;
    gridRendicion.DataController.Values[0,0]:='Ceop Ilo';
    gridRendicion.DataController.Values[0,1]:='Amortizacion Capital S/.';
    gridRendicion.DataController.Values[0,2]:=capital_mes;
    gridRendicion.DataController.RecordCount:=gridRendicion.DataController.RecordCount+1;
    gridRendicion.DataController.Values[1,0]:='Ceop Ilo';
    gridRendicion.DataController.Values[1,1]:='Interes total S/.';
    gridRendicion.DataController.Values[1,2]:=i_soles_mensual;
    gridRendicion.DataController.RecordCount:=gridRendicion.DataController.RecordCount+1;
    gridRendicion.DataController.Values[2,0]:='Cliente';
    gridRendicion.DataController.Values[2,1]:='F.G. Fraaccionado';
    gridRendicion.DataController.Values[2,2]:=roundto(((monto*(programado/100))/plazo)*plazo,-2);
    gridRendicion.ViewData.Expand(true);
end;

procedure TfCalcular.calcularCuota(monto,plazo,interes:real;dataset: TFdMemTable);
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
  dataset.First;
  while not dataset.Eof do
  begin
     if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
        inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
     if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
        programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
     dataset.next;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    i_acumulado:=plazo*(interes/100);
    i_soles:=i_acumulado*monto;
    i_soles_mensual:=i_soles/plazo;
    gridCuota.DataController.RecordCount:=0;
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[0,0]:='Mensual';
    gridCuota.DataController.Values[0,1]:='Amortizacion Capital S/.';
    gridCuota.DataController.Values[0,2]:=capital_mes;
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[1,0]:='Mensual';
    gridCuota.DataController.Values[1,1]:='Interes x Mes S/.';
    gridCuota.DataController.Values[1,2]:=i_soles_mensual;
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[2,0]:='Mensual';
    gridCuota.DataController.Values[2,1]:='F.G. Fraaccionado';
    gridCuota.DataController.Values[2,2]:=roundto((monto*(programado/100))/plazo,-2);
    //Quincenal
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[3,0]:='Quincenal';
    gridCuota.DataController.Values[3,1]:='Capital x Mes S/.';
    gridCuota.DataController.Values[3,2]:=roundTo(capital_mes/2,-2);
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[4,0]:='Quincenal';
    gridCuota.DataController.Values[4,1]:='Interes x Mes S/.';
    gridCuota.DataController.Values[4,2]:=roundTo(i_soles_mensual,-2);
    gridCuota.DataController.RecordCount:=gridCuota.DataController.RecordCount+1;
    gridCuota.DataController.Values[5,0]:='Quincenal';
    gridCuota.DataController.Values[5,1]:='F.G. Fraaccionado';
    gridCuota.DataController.Values[5,2]:=roundto(((monto*(programado/100))/plazo)/2,-2);
    gridCuota.ViewData.Expand(true);
end;

function TfCalcular.calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  while not dataset.Eof do
  begin
     if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
        inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
     if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
        programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
     dataset.next;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    gridAhorro.DataController.RecordCount:=0;
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[0,0]:='Garantia Inicial %';
    gridAhorro.DataController.Values[0,1]:=inicial;
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[1,0]:='Garantia Inicial S/.';
    gridAhorro.DataController.Values[1,1]:=monto*(inicial/100);
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[2,0]:='Garantia Programado S/.';
    gridAhorro.DataController.Values[2,1]:=programado;
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[3,0]:='Total Garantia S/.';
    gridAhorro.DataController.Values[3,1]:=monto*(programado/100);
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[4,0]:='Total fondo S/.';
    gridAhorro.DataController.Values[4,1]:=(monto*(inicial/100))+(monto*(programado/100));
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[5,0]:='F. G. Fraccionado S/.';
    gridAhorro.DataController.Values[5,1]:=roundto((monto*(programado/100))/plazo,-2);
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[6,0]:='Cuota Mensual S/.';
    gridAhorro.DataController.Values[6,1]:=cuota_mensual;
    gridAhorro.DataController.RecordCount:=gridAhorro.DataController.RecordCount+1;
    gridAhorro.DataController.Values[7,0]:='Cuota Quincenal S/.';
    gridAhorro.DataController.Values[7,1]:=roundTo(cuota_mensual/2,-2);
    result:=cuota_mensual;
end;

procedure TfCalcular.cbbLineaCreditoPropertiesChange(Sender: TObject);
begin
llenarCombo(dmdata.RESTResponseDataSetAdapter2,VarToStr(dmdata.fdLineaCredito.FieldValues['perfil_cliente']));
if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
   begin
   pgcRebatir.TabVisible:=false;
   pgcSimple.TabVisible:=true;
   end;
if dmdata.fdLineaCredito.FieldValues['tipo_interes']='REBATIR' then
   begin
   pgcSimple.TabVisible:=false;
   pgcRebatir.TabVisible:=true;
   end;


PrimerElementoCombo(cbbPerfilCliente);
end;

procedure TfCalcular.cbbPerfilClientePropertiesChange(Sender: TObject);
begin
  uHelpers.llenarCombo(dmdata.RESTResponseDataSetAdapter3,VarToStr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
  uHelpers.PrimerElementoCombo(cbbTipoProducto);
end;

procedure TfCalcular.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmdata.RESTResponseDataSetAdapter2.ResponseJSON := nil; // Prevent memory leak
end;

procedure TfCalcular.FormCreate(Sender: TObject);
begin
   pgcRebatir.TabVisible:=false;
   pgcSimple.TabVisible:=false;
   dmdata.RESTRequest1.Execute;
   uHelpers.PrimerElementoCombo(cbbLineaCredito);
   dmdata.adapAhorro.Active;
end;


end.
