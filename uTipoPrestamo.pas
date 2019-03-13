unit uTipoPrestamo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask, cxGraphics, cxControls,REST.Json,REST.Types,System.json,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxSpinEdit, Vcl.Buttons, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, System.ImageList, Vcl.ImgList;

type
  TfTipoPrestamo = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    gridTipoPrestamoDBTableView1: TcxGridDBTableView;
    gridTipoPrestamoLevel1: TcxGridLevel;
    gridTipoPrestamo: TcxGrid;
    fdTipoPrestamo: TFDMemTable;
    dsTipoPrestamo: TDataSource;
    fdTipoPrestamoid: TIntegerField;
    edTipoPrestamo: TEdit;
    chkActivo: TCheckBox;
    Panel1: TPanel;
    btnNuevo: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnGuardar: TButton;
    Label3: TLabel;
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
    fdTipoPrestamodesc_tipo_prestamo: TStringField;
    fdTipoPrestamodetalle: TStringField;
    fdTipoPrestamoactivo: TIntegerField;
    gridTipoPrestamoDBTableView1id: TcxGridDBColumn;
    gridTipoPrestamoDBTableView1desc_tipo_prestamo: TcxGridDBColumn;
    gridTipoPrestamoDBTableView1detalle: TcxGridDBColumn;
    gridTipoPrestamoDBTableView1activo: TcxGridDBColumn;
    edDetalle: TEdit;
    cxStyle2: TcxStyle;
    ImageList1: TImageList;
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
  private
    { Private declarations }
    var paginaActual:integer;
    procedure listar;
    procedure Limpiar();
    procedure EditarLinea(desc_tipo_prestamo,detalle:string;id :integer;activo:boolean);
    procedure NuevaLinea(desc_tipo_prestamo,detalle:string;activo:boolean);
  public
    { Public declarations }
  end;

var
  fTipoPrestamo: TfTipoPrestamo;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfTipoPrestamo.EditarLinea(desc_tipo_prestamo,detalle: string; id : integer; activo: boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoPrestamo($id:Int,$desc_tipo_prestamo:String,$detalle:String,'+
    '$activo:Int)'+
    ' { tipo_prestamoMutation(id:$id,desc_tipo_prestamo:$desc_tipo_prestamo,detalle:$detalle,'+
    ' activo:$activo)'+
    ' {id,desc_tipo_prestamo,detalle,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_tipo_prestamo',TJSONString.Create(desc_tipo_prestamo));
    dataVar.AddPair('detalle',TJSONString.Create(detalle));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_prestamoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
      //showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdTipoPrestamo);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoPrestamo.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoPrestamo.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
btnEditar.Enabled:=false;
end;

procedure TfTipoPrestamo.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfTipoPrestamo.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridTipoPrestamoDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridTipoPrestamoDBTableView1.DataController.Values[gridTipoPrestamoDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edTipoPrestamo.Text:=gridTipoPrestamoDBTableView1.DataController.Values[gridTipoPrestamoDBTableView1.Controller.FocusedRecordIndex , 1];
         edDetalle.Text:=(gridTipoPrestamoDBTableView1.DataController.Values[gridTipoPrestamoDBTableView1.Controller.FocusedRecordIndex , 2]);
         chkActivo.Checked:=gridTipoPrestamoDBTableView1.DataController.Values[gridTipoPrestamoDBTableView1.Controller.FocusedRecordIndex , 3];
     end;
  end;
end;

procedure TfTipoPrestamo.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edTipoPrestamo.Text,edDetalle.Text,tag,chkActivo.checked)
  else
     nuevalinea(edTipoPrestamo.Text,edDetalle.Text,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfTipoPrestamo.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoPrestamo.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoPrestamo.Limpiar;
begin
Tag:=0;
edTipoPrestamo.Text:='';
edDetalle.Text:='';
chkActivo.Checked:=False;
end;

procedure TfTipoPrestamo.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdTipoPrestamo);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verTipoPrestamo($limit:Int,$per_page:Int,$desc_tipo_prestamo:String)'+
     '{ tipo_prestamoQuery(limit:$limit,per_page:$per_page,desc_tipo_prestamo:$desc_tipo_prestamo)' +
     '{ data {id,desc_tipo_prestamo,detalle,activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_tipo_prestamo',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.tipo_prestamoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('tipo_prestamoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    //showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoPrestamo.NuevaLinea(desc_tipo_prestamo,detalle:string;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoPrestamo($desc_tipo_prestamo:String,$detalle:String,'+
    '$activo:Int)'+
    ' { tipo_prestamoMutation(desc_tipo_prestamo:$desc_tipo_prestamo,detalle:$detalle,'+
    ' activo:$activo)'+
    ' {id,desc_tipo_prestamo,detalle,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_tipo_prestamo',TJSONString.Create(desc_tipo_prestamo));
    dataVar.AddPair('detalle',TJSONString.Create(detalle));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_prestamoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdTipoPrestamo);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoPrestamo.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfTipoPrestamo.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfTipoPrestamo.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
