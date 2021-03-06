unit uSolicitud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask, cxGraphics, cxControls,REST.Json,REST.Types,System.json,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,   System.Math,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxSpinEdit, Vcl.Buttons, cxGridBandedTableView, cxGridDBBandedTableView,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, System.Actions, Vcl.ActnList, frxClass, frxDBSet,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxCommon, dxPSCore;

type
  TfSolicitud = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    Label1: TLabel;
    gridSolicitud: TcxGridDBTableView;
    gridTableViewSolicitudLevel1: TcxGridLevel;
    gridTableViewSolicitud: TcxGrid;
    fdSolicitud: TFDMemTable;
    dsSolicitud: TDataSource;
    fdSolicitudid: TIntegerField;
    Panel1: TPanel;
    btnNuevo: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnGuardar: TButton;
    spbPagSiguiente: TSpeedButton;
    spbPaginaAnteriorrr: TSpeedButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel2: TPanel;
    edCriterio: TEdit;
    btnBuscar: TButton;
    Panel3: TPanel;
    Label12: TLabel;
    lblPaginaActual: TLabel;
    Label10: TLabel;
    lblTotalPagina: TLabel;
    Panel4: TPanel;
    cbbRegistros: TComboBox;
    Label11: TLabel;
    spbActualizar: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    cbbLineaCredito: TcxLookupComboBox;
    cbbPerfilCliente: TcxLookupComboBox;
    cbbTipoProducto: TcxLookupComboBox;
    Panel8: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    spnPlazo: TcxSpinEdit;
    spnMonto: TcxSpinEdit;
    Button1: TButton;
    Panel7: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    lblInteres: TLabel;
    lblLineaCredito: TLabel;
    lblMora: TLabel;
    lblPerfilCliente: TLabel;
    lblPlazoMaximo: TLabel;
    lblPlazoMinimo: TLabel;
    lblTipoProducto: TLabel;
    cxGrid4: TcxGrid;
    gridAhorro: TcxGridDBBandedTableView;
    gridAhorroColumn1: TcxGridDBBandedColumn;
    gridAhorroColumn2: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    GridPanel2: TGridPanel;
    Panel9: TPanel;
    grpCliente: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    txtDniCliente: TEdit;
    Label3: TLabel;
    txtNombresCliente: TEdit;
    Label4: TLabel;
    txtDniAval: TEdit;
    cxGrid1: TcxGrid;
    gridAvales: TcxGridBandedTableView;
    colNombres: TcxGridBandedColumn;
    colTipo: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    GroupBox3: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    txtNombresAval: TEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    cbbReporteCeop: TcxLookupComboBox;
    Label7: TLabel;
    cbbReporteInfo: TcxLookupComboBox;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    cbbTipoPrestamo: TcxLookupComboBox;
    cbbGarantia: TcxLookupComboBox;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
    LinkPropertyToFieldCaption5: TLinkPropertyToField;
    LinkPropertyToFieldCaption6: TLinkPropertyToField;
    LinkPropertyToField1: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    Label26: TLabel;
    spnCuota: TcxSpinEdit;
    colDni: TcxGridBandedColumn;
    cbbTipo: TComboBox;
    dsAvales: TDataSource;
    fdSolicitudplazo: TIntegerField;
    fdSolicitudcuota: TFloatField;
    fdSolicitudinteres: TFloatField;
    fdSolicitudestado: TStringField;
    gridSolicitudplazo: TcxGridDBColumn;
    gridSolicitudcuota: TcxGridDBColumn;
    gridSolicitudinteres: TcxGridDBColumn;
    gridSolicitudestado: TcxGridDBColumn;
    fdAvales: TFDMemTable;
    fdAvalesid: TIntegerField;
    fdSolicitudavales: TMemoField;
    fdAvalestipo: TStringField;
    fdSolicitudgarantia: TStringField;
    gridSolicitudColumn1: TcxGridDBColumn;
    fdSolicitudtipo_prestamo: TStringField;
    fdSolicitudempleado: TStringField;
    fdSolicitudtipo_producto: TStringField;
    gridSolicitudtipo_prestamo: TcxGridDBColumn;
    gridSolicitudempleado: TcxGridDBColumn;
    gridSolicitudtipo_producto: TcxGridDBColumn;
    Panel10: TPanel;
    GridPanel3: TGridPanel;
    cxGrid5: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    Panel11: TPanel;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nombres: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1tipo: TcxGridDBBandedColumn;
    fdSolicitudcomentario: TStringField;
    Panel12: TPanel;
    Label28: TLabel;
    DBMemo1: TDBMemo;
    fdAvalesfull_name: TStringField;
    fdSolicitudperfil_cliente: TStringField;
    fdSolicitudlinea_credito: TStringField;
    fdSolicitudlinea_credito_id: TIntegerField;
    gridSolicitudperfil_cliente: TcxGridDBColumn;
    gridSolicitudlinea_credito: TcxGridDBColumn;
    GroupBox5: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Label27: TLabel;
    Label29: TLabel;
    fdSolicitudcliente_full_name: TStringField;
    fdSolicitudcliente_dni: TStringField;
    fdSolicitudtipo_prestamo_id: TIntegerField;
    fdSolicitudtipo_producto_id: TIntegerField;
    fdSolicitudgiro_negocio: TStringField;
    fdSolicitudgiro_negocio_id: TIntegerField;
    fdSolicitudgarantia_id: TIntegerField;
    fdSolicitudreporte_ceop: TStringField;
    fdSolicitudreporte_ceop_id: TIntegerField;
    fdSolicitudreporte_info: TStringField;
    fdSolicitudreporte_info_id: TIntegerField;
    fdSolicitudperfil_cliente_id: TIntegerField;
    fdSolicitudmonto: TFloatField;
    gridSolicitudmonto: TcxGridDBColumn;
    colId: TcxGridBandedColumn;
    fdAvalesdni: TStringField;
    Label30: TLabel;
    cbbGiroNegocio: TcxLookupComboBox;
    txtComentario: TMemo;
    Label31: TLabel;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Anular1: TMenuItem;
    Resolucion1: TMenuItem;
    Imprimirsolicitud1: TMenuItem;
    ActionList1: TActionList;
    actCerrar: TAction;
    actAnular: TAction;
    actResolucion: TAction;
    fdSolicitudtipo_info_detalle: TMemoField;
    fdSolicitudcreated_at: TDateField;
    gridSolicitudcreated_at: TcxGridDBColumn;
    fdSolicitudperfil_cliente_tipo_producto_id: TIntegerField;
    fdSolicitudahorro_inicial: TFloatField;
    fdSolicitudahorro_programado: TFloatField;
    fdSolicitudtipo_interes: TStringField;
    fdSolicitudresolucion_id: TIntegerField;
    frxReport1: TfrxReport;
    frxDBSolicitud: TfrxDBDataset;
    btn1: TButton;
    frxDBAvales: TfrxDBDataset;
    gridSolicitudnro_solicitud: TcxGridDBColumn;
    fdSolicitudnro_solicitud: TStringField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    GridPanel1: TGridPanel;
    grid3: TcxGrid;
    gridInfo: TcxGridDBBandedTableView;
    gridInfoid: TcxGridDBBandedColumn;
    gridInfodesc_tipo_info_detalle: TcxGridDBBandedColumn;
    gridInfotipo_info_id: TcxGridDBBandedColumn;
    gridInfotipo_info: TcxGridDBBandedColumn;
    gridInfoinformacion: TcxGridDBBandedColumn;
    gridInfovalor: TcxGridDBBandedColumn;
    gridInfotipo: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridCostoVenta: TcxGridBandedTableView;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridLevel4: TcxGridLevel;
    ts2: TTabSheet;
    pnl1: TPanel;
    btn2: TButton;
    btn3: TButton;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    fdResumenInfo: TFDMemTable;
    fdResumenInfodetalle: TStringField;
    fdResumenInfoinformacion: TStringField;
    fdResumenInfomonto: TFloatField;
    dsResumenInfo: TDataSource;
    cxGrid3DBTableView1detalle: TcxGridDBColumn;
    cxGrid3DBTableView1informacion: TcxGridDBColumn;
    cxGrid3DBTableView1monto: TcxGridDBColumn;
    fdResumenInfotipo: TStringField;
    cxGrid3DBTableView1tipo: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCompositionReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    dxComponentPrinter1Link3: TdxGridReportLink;
    procedure FormCreate(Sender: TObject);
    procedure cbbRegistrosChange(Sender: TObject);
    procedure spbPagSiguienteClick(Sender: TObject);
    procedure spbPaginaAnteriorrrClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure spbActualizarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cbbLineaCreditoPropertiesChange(Sender: TObject);
    procedure cbbPerfilClientePropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtDniClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtDniAvalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsSolicitudDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure gridAvalesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCerrarExecute(Sender: TObject);
    procedure actAnularExecute(Sender: TObject);
    procedure actResolucionExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbbGiroNegocioPropertiesChange(Sender: TObject);
    procedure gridInfovalorPropertiesEditValueChanged(Sender: TObject);
    procedure gridInfoEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cbbGiroNegocioPropertiesCloseUp(Sender: TObject);
    procedure gridInfovalorGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
    var paginaActual:integer;
    montoCostoVenta:Real;
    porcentajeCostoVenta:Real;
    soloInicio:Boolean;
    procedure listar;
    procedure Limpiar();
    procedure EditarSolicitud(id,interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;
    activo:boolean;avales,tipo_info_detalle:TJsonArray;aInicial,aProgramado:Real;tipo_interes:string);
    procedure NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;activo:boolean;avales,tipo_info_detalle:TJsonArray;aIncial,aProgramado:Real;tipo_interes:string);
    function calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
    procedure CopiarAvales(dataset:TfdMemtable);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
    function GridToJsonArray(grid:TcxGridBandedTableView):TJsonArray;
    procedure CerrarSolicitud(id:Integer;estado:string);
    procedure GenerarResolucion(id: Integer;tipo_interes:string;aInicial,aProgramado,interes,monto:real;plazo:integer);
    function datasetToJsonArray2(dataset:TFdMemTable): TJsonArray;
    procedure actualizarInfo(dataset:TfdMemtable;aJson:String);
    procedure RendicionParalelo(monto,plazo,interes:real);
    function calcularCuotaParalelo(monto,plazo,interes:real):real;
    procedure distribucionCuotaParalelo(monto,plazo,interes:real);
    procedure costoVenta();
    procedure actualizarCostoVenta(ventas,porcentaje:Real);
    function actualizarResumenInfo(token:WideString;idsolicitud: integer):TJSONArray;
  public
    { Public declarations }
  end;

var
  fSolicitud: TfSolicitud;

implementation

uses
  UGraph, UData, uHelpers, uCliente;


{$R *.dfm}

function TfSolicitud.calcularCuotaParalelo(monto,plazo,interes:real):real;
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

procedure TfSolicitud.distribucionCuotaParalelo(monto,plazo,interes:real);
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

procedure TfSolicitud.RendicionParalelo(monto,plazo,interes:real);
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

procedure TfSolicitud.LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 1 then
    with TcxLookupComboBox(Sender) do
    begin
      EditValue := Null;
    //  EditText:='NINGUNO';
     // PostEditValue;
    end;
end;


function TfSolicitud.calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  dataset.First;
  while not(dataset.Eof) do
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
    result:=cuota_mensual;
end;

procedure TfSolicitud.EditarSolicitud(id,interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;
    activo:boolean;avales,tipo_info_detalle:TJsonArray;aInicial,aProgramado:Real;tipo_interes:string);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    uHelpers.aInicial:=0;
    uHelpers.aProgramado:=0;
    interes:=dmdata.fdTipoProducto.FieldValues['interes'];
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postSolicitud($id:Int,$interes:Float,$monto:Float,$plazo:Int,'+
    '$cuota:Float,$comentario:String,$reporte_ceop_id:Int,$reporte_info_id:Int,$giro_negocio_id:Int,$tipo_prestamo_id:Int,'+
    '$perfil_cliente_tipo_producto_id:Int,$garantia_id:Int,$activo:Int,$avales:[avalInputObjectType],'+
    '$tipo_info_detalle:[tipoInfoDetalleInputObjectType],$ahorro_inicial:Float,$ahorro_programado:Float,$tipo_interes:String)'+
    ' { solicitudMutation(id:$id,interes:$interes,monto:$monto,plazo:$plazo,cuota:$cuota,'+
    'comentario:$comentario,reporte_ceop_id:$reporte_ceop_id,historial_crediticio_id:$reporte_info_id,'+
    'giro_negocio_id:$giro_negocio_id,tipo_prestamo_id:$tipo_prestamo_id,'+
    'perfil_cliente_tipo_producto_id:$perfil_cliente_tipo_producto_id,garantia_id:$garantia_id,'+
    'activo:$activo,avales:$avales,tipo_info_detalle:$tipo_info_detalle,ahorro_inicial:$ahorro_inicial,ahorro_programado:$ahorro_programado,tipo_interes:$tipo_interes)'+
    ' {id,activo,monto,plazo,cuota,interes,comentario,reporte_ceop,reporte_ceop_id,reporte_info,'+
    'reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,tipo_producto,tipo_producto_id,'+
    'tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,perfil_cliente,perfil_cliente_id,'+
    'linea_credito,linea_credito_id,cliente_dni,giro_negocio,giro_negocio_id,perfil_cliente_tipo_producto_id,'+
    'tipo_info_detalle {solicitud_id,tipo_info_id,desc_tipo_info_detalle,monto},avales '+
    '{id,dni,full_name,tipo }}}';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('monto',TJSONNumber.Create(monto));
    dataVar.AddPair('plazo',TJSONNumber.Create(plazo));
    dataVar.AddPair('cuota',TJSONNumber.Create(cuota));
    dataVar.AddPair('ahorro_inicial',TJSONNumber.Create(aInicial));
    dataVar.AddPair('ahorro_programado',TJSONNumber.Create(aProgramado));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
    dataVar.AddPair('comentario',TJSONString.Create(comentario));
    if VarIsnull(reporte_ceop_id) then
       dataVar.AddPair('reporte_ceop_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_ceop_id',TJSONNumber.Create(reporte_ceop_id));
    if VarIsnull(reporte_info_id) then
       dataVar.AddPair('reporte_info_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_info_id',TJSONNumber.Create(reporte_info_id));
    if VarIsnull(giro_negocio_id) then
       dataVar.AddPair('giro_negocio_id',TJsonNUll.Create)
    else
       dataVar.AddPair('giro_negocio_id',TJSONNumber.Create(giro_negocio_id));
    if VarIsnull(tipo_prestamo_id) then
       dataVar.AddPair('tipo_prestamo_id',TJsonNUll.Create)
    else
       dataVar.AddPair('tipo_prestamo_id',TJSONNumber.Create(tipo_prestamo_id));
    if VarIsnull(perfil_cliente_tipo_producto_id) then
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJsonNUll.Create)
    else
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJSONNumber.Create(perfil_cliente_tipo_producto_id));
    if VarIsnull(garantia_id) then
       dataVar.AddPair('garantia_id',TJsonNUll.Create)
    else
       dataVar.AddPair('garantia_id',TJSONNumber.Create(garantia_id));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));

    dataVar.AddPair('avales',avales);
    dataVar.AddPair('tipo_info_detalle',tipo_info_detalle);

    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('solicitudMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
   // uHelpers.InsertarRegistroDataset(resultado,fdSolicitud);
    listar();
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.actualizarCostoVenta(ventas,porcentaje:Real);
var costoVenta:Real;
begin
costoVenta:=ventas-(ventas*(porcentaje/100));
gridCostoVenta.DataController.Values[0,1]:=ventas;
gridCostoVenta.DataController.Values[1,1]:=porcentaje;
gridCostoVenta.DataController.Values[2,1]:=costoVenta;
end;

procedure TfSolicitud.actualizarInfo(dataset:TfdMemtable;aJson:String);
var
  I,size: Integer;
  item:TJsonObject;
  jsonArray:TJsonArray;
begin

    jsonArray := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
   Size := jsonArray.Count;
   dataset.first;
   while not(dataset.eof) do
   begin
     for i:=0 to pred(Size) do
     begin
     item := jsonArray.Get(i) as TJsonObject;
        if item.Get('tipo_info_detalle_id').JsonValue.Value=VarTostr(dataset.fieldValues['id']) then
          begin
          dataset.Edit;
          dataset.fieldValues['monto']:= item.Get('monto').JsonValue.Value;
          dataset.post;
          end;
     end;
     dataset.Next;
   end;
end;

function TfSolicitud.actualizarResumenInfo(token:WideString;idsolicitud: integer):TJSONArray;
var error,exito,param,resultado:TJSONObject;
var mensaje:string;
begin
   Result:=TJSONArray.Create;
   resultado:=TJSONObject.Create;
   param:=TJSONObject.Create;
   param.AddPair('idsolicitud',TJSONNumber.Create(idsolicitud));
   dmdata.RESTResumenInfo.Params.AddItem('Accept',
                            'application/json, */*; q=0.01',
                            TRESTRequestParameterKind.pkHTTPHEADER);
   dmdata.RESTResumenInfo.AddParameter('Authorization','Bearer '+token,TRESTRequestParameterKind.pkHTTPHEADER);
   dmdata.RESTResumenInfo.Params.ParameterByName('Authorization').Options :=[poDoNotEncode];
   dmdata.RESTResumenInfo.AddParameter('body',param.ToString,TRESTRequestParameterKind.pkREQUESTBODY);
   dmdata.RESTResumenInfo.Params.ParameterByName('body').ContentType:=TRESTContentType.ctAPPLICATION_JSON;
   dmdata.RESTResumenInfo.Execute;

   resultado:=TJSONObject(dmdata.RespResumenInfo.JSONValue);
      if resultado.TryGetValue('message',mensaje) then
      begin
         if resultado.Get('message').JsonValue.Value='exito' then
         begin
             result:=TJSONArray(resultado.Get('data').JsonValue);
         end;
      end
      else
         ShowMessage('Error al actualizar');
end;

procedure TfSolicitud.actAnularExecute(Sender: TObject);
begin
   if (fdSolicitud.FieldValues['estado']='PENDIENTE') then
   begin
     cerrarSolicitud(fdSolicitud.FieldValues['id'] ,'ANULADO');
      Showmessage('Solicitud Anulada con exito')
   end
   else
      Showmessage('Solicitud debe estar PENDIENTE, para anularla')
end;

procedure TfSolicitud.actCerrarExecute(Sender: TObject);
begin
   if fdSolicitud.FieldValues['estado']='PENDIENTE' then
    begin
     cerrarSolicitud(fdSolicitud.FieldValues['id'] ,'CERRADO');
     Showmessage('Solicitud Cerrada con exito')
    end
    else
        Showmessage('Solicitud debe estar PENDIENTE, para cerrar');
end;

procedure TfSolicitud.actResolucionExecute(Sender: TObject);
begin
    if (fdSolicitud.FieldValues['estado']='CERRADO') and (VarIsNull(fdSolicitud.FieldValues['resolucion_id'])) then
    begin
       GenerarResolucion(fdSolicitud.FieldValues['id'],VarToStr(fdSolicitud.FieldValues['tipo_interes']),fdSolicitud.FieldValues['ahorro_inicial'],fdSolicitud.FieldValues['ahorro_programado'],fdSolicitud.FieldValues['interes'],fdSolicitud.FieldValues['monto'],fdSolicitud.FieldValues['plazo']);
       Showmessage('Creacion de resolucion con exito');
    end
    else
        Showmessage('Solicitud deb estar Cerrada, y sin resolucion creada')
end;

procedure TfSolicitud.btn1Click(Sender: TObject);
begin
if gridSolicitud.Controller.SelectedRowCount=1 then
  begin
//     Tag:=gridSolicitud.DataController.Values[gridSolicitud.Controller.FocusedRecordIndex , 0];
     Tag:=fdSolicitud.FieldValues['id'];
     if Tag>0 then
        begin
            try
            fdSolicitud.Filtered:=False;
            fdSolicitud.Filter:='id='+Tag.ToString;
            fdSolicitud.Filtered:=True;
            frxReport1.showReport;
            finally
              fdSolicitud.Filtered:=False;
            end;
        end;
  end;
end;

procedure TfSolicitud.btn2Click(Sender: TObject);
var data:TJSONArray;
begin
if Tag>0 Then
begin
data:=actualizarResumenInfo(cargarToken,Tag);
uHelpers.JsonToDataset(fdResumenInfo,data.ToString);
end
else
  ShowMessage('Disponible cuando editas');
end;

procedure TfSolicitud.btn3Click(Sender: TObject);
begin
  if Tag>0 Then
  begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Text:='CLIENTE: '+VartoStr(fdSolicitud.FieldValues['cliente_full_name']);
  dxComponentPrinter1Link2.ReportTitleText:='MONTO: '+VartoStr(fdSolicitud.FieldValues['monto'])+#13+#10+
                                            'PLAZO: '+VartoStr(fdSolicitud.FieldValues['plazo'])+#13+#10+
                                            'CUOTA: '+VartoStr(fdSolicitud.FieldValues['cuota']);
  dxComponentPrinter1Link1.Preview();
  end
else
  ShowMessage('Disponible cuando editas');
end;

procedure TfSolicitud.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfSolicitud.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
soloInicio:=False;
Limpiar();
txtDniCliente.Enabled:=True;
btnEditar.Enabled:=False;
btnNuevo.Enabled:=false;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
          dmdata.RESTRequest1.Execute;
          PrimerElementoCombo(cbbLineaCredito);
          uHelpers.JsonToDataset(dmdata.fdPerfilCliente,VarToStr(VarTostr(dmdata.fdLineaCredito.FieldValues['perfil_cliente'])));
          PrimerElementoCombo(cbbPerfilCliente);
          uHelpers.JsonToDataset(dmdata.fdTipoProducto,VarTostr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
          PrimerElementoCombo(cbbTipoProducto);
          dmdata.adapAhorro.Active:=true;
          dmdata.adapTipoPrestamo.Active:=true;
          dmdata.adapReporteCeop.Active:=true;
          dmdata.adapReporteInfo.active:=true;
          dmdata.adapGarantia.Active:=true;
          cbbReporteCeop.EditValue:=null;
          cbbReporteInfo.EditValue:=null;
          cbbGarantia.EditValue:=null;
          cbbTipoPrestamo.EditValue:=null;
          cbbGiroNegocio.EditValue:=null;
          gridInfo.ViewData.Expand(true);
end;

procedure TfSolicitud.Button1Click(Sender: TObject);
var calculos:TJsonArray;
var cuota,interes:real;
var plazo_maximo:Integer;
begin
spnCuota.Value:=0;
 cuota:=0;
 interes:=0;
 with cbbTipoProducto.Properties.Grid.DataController do
 begin
   interes:=dmdata.fdTipoProducto.FieldValues['interes'];
   plazo_maximo:=dmdata.fdTipoProducto.FieldValues['plazo_maximo'];
   if (spnMonto.Value>0) and (spnPlazo.Value>0) and (cbbTipoProducto.EditValue>0) and (interes>0) then
   begin

      if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
         begin
         calculos:=uHelpers.calcularTotales(interes,spnMonto.value,spnPlazo.value);
         //uHelpers.llenarGridResumen(calculos,nil);
         cuota:=uHelpers.calcularAhorro(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro,nil);
         uHelpers.calcularCuota(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro,nil);
         uHelpers.calcularRendicion(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro,nil);
          end;
     if dmdata.fdLineaCredito.FieldValues['tipo_interes']='PARALELO' then
         begin
         calculos:=uHelpers.calcularTotales(interes,spnMonto.value,spnPlazo.value);
         cuota:=uHelpers.calcularAhorro(spnMonto.value,spnPlazo.Value,interes,nil,nil,plazo_maximo);
         uHelpers.calcularCuota(spnMonto.value,spnPlazo.Value,interes,nil,nil);
         uHelpers.calcularRendicion(spnMonto.value,spnPlazo.Value,interes,nil,nil);
          end;
      if dmdata.fdLineaCredito.FieldValues['tipo_interes']='REBATIR' then
         begin
         cuota:=uHelpers.calcularParametrosRebatir(spnMonto.value,spnPlazo.Value,interes,nil,nil,nil);
         end;
     spnCuota.Value:=cuota;
   end;
 end;
end;

procedure TfSolicitud.Button2Click(Sender: TObject);
begin
//          dmdata.RESTRequest1.Execute;
          dmdata.RESTResponseDataSetAdapter2.Active:=true;
end;

procedure TfSolicitud.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
   uHelpers.habilitarPermisos(TForm(TPanel((TButton(Sender).GetParentComponent).GetParentComponent).GetParentComponent),dmData.Permisos);
end;

procedure TfSolicitud.btnEditarClick(Sender: TObject);
begin
  if (gridSolicitud.Controller.SelectedRowCount=1) and (fdSolicitud.FieldValues['estado']<>'CERRADO') then
  begin
//     Tag:=gridSolicitud.DataController.Values[gridSolicitud.Controller.FocusedRecordIndex , 0];
     Tag:=fdSolicitud.FieldValues['id'];
     if Tag>0 then
     begin

         btnEditar.Enabled:=false;
         grpCliente.Enabled:=false;
         //tabListado.TabVisible:=false;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;

         tabFormulario.TabVisible:=true;
         PageControl1.ActivePageIndex:=0;


          dmdata.RESTRequest1.Execute;
          dmdata.RESTResponseDataSetAdapter1.Active:=true;
          dmdata.adapTipoInfo.Active:=true;
          cbbLineaCredito.SetFocus;
          cbbLineaCredito.EditValue:=fdSolicitud.FieldValues['linea_credito_id'];
          uHelpers.JsonToDataset(dmdata.fdPerfilCliente,VarToStr(VarTostr(dmdata.fdLineaCredito.FieldValues['perfil_cliente'])));
          cbbPerfilCliente.SetFocus;
          cbbPerfilCliente.EditValue:=fdSolicitud.FieldValues['perfil_cliente_id'];
          uHelpers.JsonToDataset(dmdata.fdTipoProducto,VarTostr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
          cbbTipoProducto.SetFocus;
          cbbTipoProducto.EditValue:=fdSolicitud.FieldValues['perfil_cliente_tipo_producto_id'];

         cbbTipoPrestamo.EditValue:=fdSolicitud.FieldValues['tipo_prestamo_id'];
         cbbGarantia.EditValue:=fdSolicitud.FieldValues['garantia_id'];
         cbbReporteCeop.EditValue:=fdSolicitud.FieldValues['reporte_ceop_id'];
         cbbReporteInfo.EditValue:=fdSolicitud.FieldValues['reporte_info_id'];
         cbbGiroNegocio.EditValue:=fdSolicitud.FieldValues['giro_negocio_id'];
         //porcentajeCostoVenta:=dmData.fdGiroNegocio.FieldValues['margen_maximo'];
         spnMonto.Value:=fdSolicitud.FieldValues['monto'];
         spnCuota.Value:=fdSolicitud.FieldValues['cuota'];
         spnPlazo.Value:=fdSolicitud.FieldValues['plazo'];
         txtDniCliente.Text:=fdSolicitud.FieldValues['cliente_dni'];
         txtNombresCliente.Text:=fdSolicitud.FieldValues['cliente_full_name'];
         if fdSolicitud.FieldValues['comentario']=null then
            txtComentario.Lines.Text:=''
         else
            txtComentario.Lines.Text:=fdSolicitud.FieldValues['comentario'];
         copiarAvales(fdAvales);
         soloInicio:=True;
         actualizarInfo(dmdata.fdTipoInfo,VarToStr(fdSolicitud.FieldValues['tipo_info_detalle']));
         gridInfo.ViewData.Expand(true);
         actualizarCostoVenta(montoCostoVenta,porcentajeCostoVenta);
     end;
  end
  else
    ShowMessage('El registro esta cerrado, seleccione otro');
end;

procedure TfSolicitud.btnGuardarClick(Sender: TObject);
var interes,ainicial,aprogramado:real;
var cadena:string;
begin
//  cadena:=datasetToJsonArray2(dmdata.fdTipoInfo).ToString;
//  showmessage(cadena);
  btnGuardar.Enabled:=false;
  aInicial:=0;
  aProgramado:=0;
  interes:=dmdata.fdTipoProducto.FieldValues['interes'];
  if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
      begin
          uHelpers.datosAhorro(dmData.fdAhorro);
          aInicial:=uHelpers.aInicial;
          aProgramado:=uHelpers.aProgramado;
      end;
  if Tag>0 then
    begin
    EditarSolicitud(tag,interes,spnMonto.Value,spnPlazo.Value,spnCuota.Value,cbbReporteCeop.EditValue,cbbReporteInfo.EditValue,
    cbbGiroNegocio.EditValue,cbbTipoPrestamo.EditValue,cbbTipoProducto.EditValue,cbbGarantia.EditValue,txtcomentario.Lines.Text,true,
    gridToJsonArray(gridAvales),datasetToJsonArray2(dmdata.fdTipoInfo),aInicial,aProgramado,dmdata.fdLineaCredito.FieldValues['tipo_interes']);
    end
  else
  begin
   NuevaSolicitud(1,txtDniCliente.Tag,interes,spnMonto.Value,spnPlazo.Value,spnCuota.Value,
   cbbReporteCeop.EditValue,cbbReporteInfo.EditValue,
    cbbGiroNegocio.EditValue,cbbTipoPrestamo.EditValue,cbbTipoProducto.EditValue,cbbGarantia.EditValue,
    txtcomentario.Lines.Text,true,gridToJsonArray(gridAvales),datasetToJsonArray2(dmdata.fdTipoInfo),aInicial,aProgramado,dmdata.fdLineaCredito.FieldValues['tipo_interes']);
  end;
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
  uHelpers.habilitarPermisos(TForm(TPanel((TButton(Sender).GetParentComponent).GetParentComponent).GetParentComponent),dmData.Permisos);
end;

procedure TfSolicitud.cbbGiroNegocioPropertiesChange(Sender: TObject);
begin
porcentajeCostoVenta:=dmdata.fdGiroNegocio.FieldValues['margen_maximo'];

end;

procedure TfSolicitud.cbbGiroNegocioPropertiesCloseUp(Sender: TObject);
begin
actualizarCostoVenta(montoCostoVenta,porcentajeCostoVenta);
end;

procedure TfSolicitud.cbbLineaCreditoPropertiesChange(Sender: TObject);
begin
//if Tag=0 then
   begin
      uHelpers.JsonToDataset(dmData.fdPerfilCliente,VarToStr(dmdata.fdLineaCredito.FieldValues['perfil_cliente']));
      PrimerElementoCombo(cbbPerfilCliente);
      spnCuota.Value:=0;
   end;
end;

procedure TfSolicitud.cbbPerfilClientePropertiesChange(Sender: TObject);
begin
//  if Tag=0 then
     begin
       uHelpers.JsonToDataset(dmdata.fdTipoProducto,VarToStr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
       uHelpers.PrimerElementoCombo(cbbTipoProducto);
       spnCuota.Value:=0;
    end;
end;

procedure TfSolicitud.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfSolicitud.GenerarResolucion(id: Integer;tipo_interes:string;aInicial,aProgramado,interes,monto:real;plazo:integer);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postResolucion($solicitud_id:Int,$tipo_interes:String,'+
    '$ahorro_inicial:Float,$ahorro_programado:Float,$interes:Float,$monto:Float,$plazo:Int)'+
    ' { resolucionMutation(solicitud_id:$solicitud_id,tipo_interes:$tipo_interes,ahorro_inicial:$ahorro_inicial,'+
    ' ahorro_programado:$ahorro_programado,interes:$interes,monto:$monto,plazo:$plazo) {solicitud_id}}';

    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('solicitud_id',TJSONNumber.Create(id));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
    dataVar.AddPair('ahorro_inicial',TJSONNumber.Create(aInicial));
    dataVar.AddPair('ahorro_programado',TJSONNumber.Create(aProgramado));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('monto',TJSONNumber.Create(monto));
    dataVar.AddPair('plazo',TJSONNumber.Create(plazo));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;
    resultado:=graph.ejecutar('resolucionMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    listar();
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.CerrarSolicitud(id: Integer; estado: string);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postSolicitud($id:Int,$estado:String)'+
    ' { solicitudMutation(id:$id,estado:$estado) {id,estado}}';

    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('estado',TJSONString.Create(estado));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;
    resultado:=graph.ejecutar('solicitudMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    listar();
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.CopiarAvales(dataset: TfdMemtable);
begin
  gridAvales.BeginUpdate();
  dataset.First;
  gridAvales.DataController.RecordCount:=dataset.RecordCount;
  while not(dataset.Eof) do
  begin
    gridAvales.DataController.Values[dataset.RecNo-1 , colId.Position.ColIndex]:=dataset.FieldByName('id').AsInteger;
    gridAvales.DataController.Values[dataset.RecNo-1 , colDni.Position.ColIndex]:=dataset.FieldByName('dni').AsString;
    gridAvales.DataController.Values[dataset.RecNo-1 , colNOmbres.Position.ColIndex]:=dataset.FieldByName('full_name').AsString;
    gridAvales.DataController.Values[dataset.RecNo-1 , colTipo.Position.ColIndex]:=dataset.FieldByName('tipo').AsString;
    dataset.Next;
  end;
  gridAvales.EndUpdate;
end;

procedure TfSolicitud.costoVenta;
begin
//gridCostoVenta.ClearItems;
gridCostoVenta.DataController.RecordCount:=gridCostoVenta.DataController.RecordCount+1;
gridCostoVenta.DataController.Values[0,0]:='Estimacion Ventas Mes';;
gridCostoVenta.DataController.Values[0,1]:=0;
gridCostoVenta.DataController.RecordCount:=gridCostoVenta.DataController.RecordCount+1;
gridCostoVenta.DataController.Values[1,0]:='Margen Garancia %';
gridCostoVenta.DataController.Values[1,1]:=0;
gridCostoVenta.DataController.RecordCount:=gridCostoVenta.DataController.RecordCount+1;
gridCostoVenta.DataController.Values[2,0]:='Costo Venta (EVM-(EVM*MG%)';
gridCostoVenta.DataController.Values[2,1]:=0;
end;

procedure TfSolicitud.dsSolicitudDataChange(Sender: TObject; Field: TField);
begin
  uHelpers.JsonToDataset(fdAvales,VarToStr(fdSolicitud.FieldValues['avales']));
end;

procedure TfSolicitud.FormCreate(Sender: TObject);
var
  AButton: TcxEditButton;
begin
 soloInicio:=true;
  // revisar permisos de formulario
  dmData.ImageList1.GetBitmap(7, spbActualizar.glyph);
dmData.ImageList1.GetBitmap(6, spbPagSiguiente.glyph);
dmData.ImageList1.GetBitmap(5, spbPaginaAnteriorrr.glyph);
  porcentajeCostoVenta:=0;
  paginaActual:=1;
  tabListado.TabVisible:=true;
  pageControl1.ActivePageIndex:=1;
  tabFormulario.TabVisible:=false;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
  btnGuardar.Enabled:=false;

//listar();
  costoVenta();
uHelpers.habilitarPermisos(TForm(Sender),dmData.Permisos);
        with TcxLookupComboBoxProperties(cbbGarantia.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Clear';
          OnButtonClick := LookupButtonClick;
        end;
        with TcxLookupComboBoxProperties(cbbTipoPrestamo.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Clear';
          OnButtonClick := LookupButtonClick;
        end;
        with TcxLookupComboBoxProperties(cbbReporteCeop.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Clear';
          OnButtonClick := LookupButtonClick;
        end;
        with TcxLookupComboBoxProperties(cbbReporteInfo.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Clear';
          OnButtonClick := LookupButtonClick;
        end;
         with TcxLookupComboBoxProperties(cbbGiroNegocio.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Clear';
          OnButtonClick := LookupButtonClick;
        end;
end;

procedure TfSolicitud.gridAvalesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_DELETE then

end;

procedure TfSolicitud.gridInfoEditValueChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
montoCostoVenta:=0;
ShowMessage(sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfotipo.Position.ColIndex]);
ShowMessage(sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfoinformacion.Position.ColIndex]);
ShowMessage(sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfotipo_info.Position.ColIndex]);
if (sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfotipo.Position.ColIndex]='INGRESOS')
AND (sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfoinformacion.Position.ColIndex]='NEGOCIO')
AND (sender.DataController.Values[sender.DataController.EditingRecordIndex, gridInfotipo_info.Position.ColIndex]='VENTAS') then
begin
//montoCostoVenta:=VarToStr(sender.DataController.Values[sender.DataController.EditingRecordIndex, AItem.Index]).ToDouble;
montoCostoVenta:=sender.Controller.EditingController.Edit.EditingValue;
ShowMessage(FloatToStr(montoCostoVenta));
porcentajeCostoVenta:=dmdata.fdGiroNegocio.FieldValues['margen_maximo'];
actualizarCostoVenta(montoCostoVenta,porcentajeCostoVenta);
end;
end;

procedure TfSolicitud.gridInfovalorGetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
if soloInicio then
   begin
    if (gridInfo.DataController.Values[ARecordIndex, gridInfotipo.Position.ColIndex]='INGRESOS')
    AND (gridInfo.DataController.Values[ARecordIndex, gridInfoinformacion.Position.ColIndex]='NEGOCIO')
    AND (gridInfo.DataController.Values[ARecordIndex, gridInfotipo_info.Position.ColIndex]='VENTAS') then
    begin
       montoCostoVenta:=gridInfo.DataController.Values[ARecordIndex, gridInfoValor.Position.ColIndex];
      porcentajeCostoVenta:=dmdata.fdGiroNegocio.FieldValues['margen_maximo'];
      actualizarCostoVenta(montoCostoVenta,porcentajeCostoVenta);
    end;
   end;
end;

procedure TfSolicitud.gridInfovalorPropertiesEditValueChanged(Sender: TObject);
begin
//   ShowMessage(gridInfo.DataController.Values[0,ARecordIndex]);

end;

function TfSolicitud.datasetToJsonArray2(dataset:TFdMemTable): TJsonArray;
var
  I: Integer;
  item:TJsonObject;
begin
   result:=TJsonArray.Create();
    dataset.first;
    while not(dataset.eof) do
    begin
      item:=TJsonObject.Create;
               item.AddPair('tipo_info_detalle_id',TJsonNUmber.Create(dataset.FieldbyName('id').AsInteger));
               item.AddPair('solicitud_id',TJsonNUmber.Create(Tag));   // NO ENVIA EL TAG.....
               item.AddPair('monto',TJsonNUmber.Create(dataset.FieldbyName('monto').AsFloat));
       result.AddElement(item);
       dataset.Next;
    end;
end;

function TfSolicitud.GridToJsonArray(grid: TcxGridBandedTableView): TJsonArray;
var
  I: Integer;
  item:TJsonObject;
begin
   //showmessage(tag.ToString);
   result:=TJsonArray.Create();
   for I := 0 to grid.DataController.RecordCount-1 do
   begin
      item:=TJsonObject.Create;
      item.AddPair('solicitud_id',TJsonNumber.Create(Tag));
      item.AddPair('cliente_id',TJsonNumber.create(grid.DataController.Values[I,colId.Position.ColIndex]));
      item.AddPair('tipo',TJsonString.create(grid.DataController.Values[I,colTipo.Position.ColIndex]));
      result.AddElement(item);
   end;
end;

procedure TfSolicitud.Limpiar;
begin
Tag:=0;
dmdata.RESTResponseDataSetAdapter1.Active:=false;
dmdata.RESTResponseDataSetAdapter2.Active:=false;
dmdata.RESTResponseDataSetAdapter3.Active:=false;
         dmdata.adapAhorro.Active:=false;
          dmdata.adapTipoPrestamo.Active:=false;
          dmdata.adapReporteCeop.Active:=false;
          dmdata.adapReporteInfo.active:=false;
          dmdata.adapGarantia.Active:=false;
//dmdata.fdLineaCredito.Close;
//dmdata.fdPerfilCliente.Close;
//dmData.fdTipoProducto.Close;
gridAvales.DataController.RecordCount:=0;
txtDniCliente.Text:='';
txtDniAval.Text:='';
txtNombresCliente.Text:='';
txtNombresAval.Text:='';
spnCuota.Value:=0;
spnMonto.Value:=0;
spnPlazo.Value:=0;
cbbGiroNegocio.EditValue:=0;
cbbGarantia.EditValue:=0;
cbbTipoPrestamo.editvalue:=0;
cbbReporteCeop.editvalue:=0;
cbbReporteInfo.EditValue:=0;

end;

procedure TfSolicitud.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var avales:widestring;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdSolicitud);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query solicitud { solicitudQuery { data {id,activo,monto,plazo,cuota,interes,'+
    'comentario,reporte_ceop,reporte_ceop_id,reporte_info,reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,'+
    'tipo_producto,tipo_producto_id,tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,'+
    'perfil_cliente,perfil_cliente_id,'+'linea_credito,linea_credito_id,cliente_dni,perfil_cliente_tipo_producto_id,'+
    'giro_negocio,giro_negocio_id,created_at,ahorro_inicial,ahorro_programado,tipo_interes,'+
    'avales {id,dni,full_name,tipo},tipo_info_detalle {tipo_info_detalle_id,solicitud_id,monto},resolucion_id }}}';
    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_linea_credito',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.solicitudQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('solicitudQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

     uHelpers.JsonToDataset(fdAvales,VarToStr(fdSolicitud.FieldValues['avales']));

//    uHelpers.JsonToDataset(fdAvales,TJsonArray((TJsonObject(resultado.Get('data').JsonValue.ToJSON).Get(0)).JsonValue.ToJSON));
    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;

end;

procedure TfSolicitud.NuevaSolicitud(empleado_id,cliente_id:integer;interes,monto,plazo,cuota:real;
    reporte_ceop_id,reporte_info_id,giro_negocio_id,tipo_prestamo_id,
    perfil_cliente_tipo_producto_id,garantia_id:Variant;comentario:string;activo:boolean;avales,tipo_info_detalle:TJsonArray;aIncial,aProgramado:Real;tipo_interes:string);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
uHelpers.aInicial:=0;
uHelpers.aProgramado:=0;
    interes:=dmdata.fdTipoProducto.FieldValues['interes'];
      if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
             uHelpers.datosAhorro(dmData.fdAhorro);
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postSolicitud($empleado_id:Int,$cliente_id:Int,$id:Int,$interes:Float,$monto:Float,$plazo:Int,'+
    '$cuota:Float,$comentario:String,$reporte_ceop_id:Int,$reporte_info_id:Int,$giro_negocio_id:Int,$tipo_prestamo_id:Int,'+
    '$perfil_cliente_tipo_producto_id:Int,$garantia_id:Int,$activo:Int,$ahorro_inicial:Float,$ahorro_programado:Float,$tipo_interes:String,$avales:[avalInputObjectType])'+
    ' { solicitudMutation(empleado_id:$empleado_id,cliente_id:$cliente_id,id:$id,interes:$interes,monto:$monto,plazo:$plazo,cuota:$cuota,'+
    'comentario:$comentario,reporte_ceop_id:$reporte_ceop_id,historial_crediticio_id:$reporte_info_id,'+
    'giro_negocio_id:$giro_negocio_id,tipo_prestamo_id:$tipo_prestamo_id,'+
    'perfil_cliente_tipo_producto_id:$perfil_cliente_tipo_producto_id,garantia_id:$garantia_id,activo:$activo,'+
    'ahorro_inicial:$ahorro_inicial,ahorro_programado:$ahorro_programado,tipo_interes:$tipo_interes,avales:$avales)'+
    ' {id,activo,monto,plazo,cuota,interes,comentario,reporte_ceop,reporte_ceop_id,reporte_info,'+
    'reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,tipo_producto,tipo_producto_id,'+
    'tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,perfil_cliente,perfil_cliente_id,'+
    'linea_credito,linea_credito_id,cliente_dni,giro_negocio,giro_negocio_id,avales '+
    '{id,dni,full_name,tipo }}}';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('cliente_id',TJSONNumber.Create(cliente_id));
    dataVar.AddPair('empleado_id',TJSONNumber.Create(empleado_id));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('monto',TJSONNumber.Create(monto));
    dataVar.AddPair('plazo',TJSONNumber.Create(plazo));
    dataVar.AddPair('cuota',TJSONNumber.Create(cuota));
    dataVar.AddPair('ahorro_inicial',TJSONNumber.Create(uHelpers.aInicial));
    dataVar.AddPair('ahorro_programado',TJSONNumber.Create(uHelpers.aProgramado));
    dataVar.AddPair('comentario',TJSONString.Create(comentario));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
    if VarIsnull(reporte_ceop_id) then
       dataVar.AddPair('reporte_ceop_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_ceop_id',TJSONNumber.Create(reporte_ceop_id));
    if VarIsnull(reporte_info_id) then
       dataVar.AddPair('reporte_info_id',TJsonNUll.Create)
    else
       dataVar.AddPair('reporte_info_id',TJSONNumber.Create(reporte_info_id));
    if VarIsnull(giro_negocio_id) then
       dataVar.AddPair('giro_negocio_id',TJsonNUll.Create)
    else
       dataVar.AddPair('giro_negocio_id',TJSONNumber.Create(giro_negocio_id));
    if VarIsnull(tipo_prestamo_id) then
       dataVar.AddPair('tipo_prestamo_id',TJsonNUll.Create)
    else
       dataVar.AddPair('tipo_prestamo_id',TJSONNumber.Create(tipo_prestamo_id));
    if VarIsnull(perfil_cliente_tipo_producto_id) then
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJsonNUll.Create)
    else
       dataVar.AddPair('perfil_cliente_tipo_producto_id',TJSONNumber.Create(perfil_cliente_tipo_producto_id));
    if VarIsnull(garantia_id) then
       dataVar.AddPair('garantia_id',TJsonNUll.Create)
    else
       dataVar.AddPair('garantia_id',TJSONNumber.Create(garantia_id));
    dataVar.AddPair('avales',avales);
    dataVar.AddPair('tipo_info_detalle',tipo_info_detalle);
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));

    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('solicitudMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
 //   uHelpers.InsertarRegistroDataset(resultado,fdSolicitud);
     Listar();
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfSolicitud.SpeedButton1Click(Sender: TObject);
begin
gridAvales.DataController.RecordCount:=gridAvales.DataController.RecordCount+1;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colId.Position.ColIndex]:=txtDniAval.Tag;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colDni.Position.ColIndex]:=txtDniAval.Text;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colNombres.Position.ColIndex]:=txtNombresAval.Text;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colTipo.Position.ColIndex]:=cbbTipo.Items[cbbTipo.ItemIndex];
txtDniAval.Tag:=0;
txtDniAval.Text:='';
txtNombresAval.Text:='';
end;

procedure TfSolicitud.SpeedButton3Click(Sender: TObject);
var ResultsForm:TfCliente;
begin
     ResultsForm := TfCliente.Create(nil);
            try
              //ResultsForm.:=StrToInt( txtDniCliente.Text);
              ResultsForm.ShowModal;
            finally
              ResultsForm.Free;
            end;
end;

procedure TfSolicitud.txtDniAvalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
     var ResultsForm:TfCliente;
   var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
   if Key=VK_RETURN then
      begin
        txtDniAval.Tag:=0;
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniAval.Text);
       // ShowMessage(respuesta.ToString);
        if respuesta.TryGetValue('data',data) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                     txtNombresAval.Text:= item.Get('full_name').JsonValue.Value;
                     txtDniAval.Tag:= item.Get('id').JsonValue.Value.ToInteger;
                end;
           end
        else
        begin
            ResultsForm := TfCliente.Create(nil);
            try
              //ResultsForm.:=StrToInt( txtDniCliente.Text);
              ResultsForm.ShowModal;
            finally
              ResultsForm.Free;
            end;
        end;
      end;
end;

procedure TfSolicitud.txtDniClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   var ResultsForm:TfCliente;
   var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
   if Key=VK_RETURN then
      begin
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniCliente.Text);
     //   ShowMessage(respuesta.ToString);
        if respuesta.TryGetValue('data',data)  and (TJSONArray(data).Count>0) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                     txtNombresCliente.Text:= item.Get('full_name').JsonValue.Value;
                     txtDniCliente.Tag:= item.Get('id').JsonValue.Value.ToInteger;
                end;
           end
        else
        begin
            ResultsForm := TfCliente.Create(nil);
            try
              //ResultsForm.:=StrToInt( txtDniCliente.Text);
              ResultsForm.ShowModal;
            finally
              ResultsForm.Free;
            end;
        end;
      end;
end;

procedure TfSolicitud.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfSolicitud.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
