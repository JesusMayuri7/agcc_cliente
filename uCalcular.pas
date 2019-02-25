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
  Vcl.DBCtrls, cxGridBandedTableView, cxGridDBBandedTableView;

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
    fdLineaCredito: TFDMemTable;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    fdPerfilCliente: TFDMemTable;
    dsLineaCredito: TDataSource;
    fdLineaCreditoid: TWideStringField;
    fdLineaCreditodesc_linea_credito: TWideStringField;
    fdLineaCreditotipo_interes: TWideStringField;
    fdLineaCreditomonto_minimo: TWideStringField;
    fdLineaCreditomonto_maximo: TWideStringField;
    dsPerfilCliente: TDataSource;
    fdPerfilClienteid: TIntegerField;
    fdPerfilClientedesc_perfil_cliente: TStringField;
    fdLineaCreditoperfil_cliente: TMemoField;
    fdTipoProducto: TFDMemTable;
    IntegerField1: TIntegerField;
    fdTipoProductodesc_tipo_producto: TStringField;
    fdTipoProductointeres: TFloatField;
    fdTipoProductomora: TFloatField;
    fdTipoProductoplazo_minimo: TIntegerField;
    fdTipoProductoplazo_maximo: TIntegerField;
    fdPerfilClientetipo_producto: TMemoField;
    dsTipoProducto: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter;
    fdAhorro: TFDMemTable;
    IntegerField2: TIntegerField;
    dsAhorro: TDataSource;
    fdAhorrodesc_ahorro: TStringField;
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
    fdAhorroporcentaje: TFloatField;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
    LinkPropertyToFieldCaption5: TLinkPropertyToField;
    LinkPropertyToFieldCaption6: TLinkPropertyToField;
    LinkPropertyToFieldCaption7: TLinkPropertyToField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbLineaCreditoPropertiesChange(Sender: TObject);
    procedure cbbPerfilClientePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    var itemJson:TJsonObject;
    procedure LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
    procedure PrimerElementoCombo(combo:TcxLookupComboBox);
    procedure llenarGridResumen(datos:TJsonArray);
    procedure calcularCuota(monto,plazo,interes:real;dataset: TFdMemTable);
    procedure calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable);
    procedure calcularRendicion(monto,plazo,interes:real;dataset: TFdMemTable);
  public
    { Public declarations }
  end;

var
  fCalcular: TfCalcular;

implementation

{$R *.dfm}

uses UData, uAdapterJson, uHelpers;

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
begin
 with cbbTipoProducto.Properties.Grid.DataController do
 begin
   if (spnMonto.Value>0) and (spnPlazo.Value>0) and (fdTipoProducto.FieldValues['interes']>0)then
   begin
     calculos:=uHelpers.calcularCuota(fdTipoProducto.FieldValues['interes'],spnMonto.value,spnPlazo.value);
     llenarGridResumen(calculos);
     calcularAhorro(spnMonto.value,spnPlazo.Value,fdTipoProducto.FieldValues['interes'],fdAhorro);
     calcularCuota(spnMonto.value,spnPlazo.Value,fdTipoProducto.FieldValues['interes'],fdAhorro);
     calcularRendicion(spnMonto.value,spnPlazo.Value,fdTipoProducto.FieldValues['interes'],fdAhorro);
   end;
 end;

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

procedure TfCalcular.calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable);
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

end;

procedure TfCalcular.cbbLineaCreditoPropertiesChange(Sender: TObject);
begin
llenarCombo(RESTResponseDataSetAdapter2,VarToStr(fdLineaCredito.FieldValues['perfil_cliente']));
PrimerElementoCombo(cbbPerfilCliente);
end;

procedure TfCalcular.cbbPerfilClientePropertiesChange(Sender: TObject);
begin
 llenarCombo(RESTResponseDataSetAdapter3,VarToStr(fdPerfilCliente.FieldValues['tipo_producto']));
  PrimerElementoCombo(cbbTipoProducto);
end;

procedure TfCalcular.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RESTResponseDataSetAdapter2.ResponseJSON := nil; // Prevent memory leak
end;

procedure TfCalcular.FormCreate(Sender: TObject);
begin
RESTRequest1.Execute;
PrimerElementoCombo(cbbLineaCredito);
RESTResponseDataSetAdapter4.Active;
//LlenarCombo(cbbAhorro);
end;

procedure TfCalcular.LlenarCombo(adapter:TRESTResponseDataSetAdapter;json:string);
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

procedure TfCalcular.PrimerElementoCombo(combo:TcxLookupComboBox);
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

end.
