unit uTipoProducto;

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
  TfTipoProducto = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    gridTipoProductoDBTableView1: TcxGridDBTableView;
    gridTipoProductoLevel1: TcxGridLevel;
    gridTipoProducto: TcxGrid;
    fdTipoProducto: TFDMemTable;
    dsTipoProducto: TDataSource;
    fdTipoProductoid: TIntegerField;
    gridTipoProductoDBTableView1id: TcxGridDBColumn;
    gridTipoProductoDBTableView1desc_tipo_producto: TcxGridDBColumn;
    gridTipoProductoDBTableView1interes: TcxGridDBColumn;
    gridTipoProductoDBTableView1mora: TcxGridDBColumn;
    gridTipoProductoDBTableView1plazo_minimo: TcxGridDBColumn;
    gridTipoProductoDBTableView1plazo_maximo: TcxGridDBColumn;
    edDescripcion: TEdit;
    spbMinimo: TcxSpinEdit;
    spbMaximo: TcxSpinEdit;
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
    spbInteres: TcxSpinEdit;
    Label8: TLabel;
    spbMora: TcxSpinEdit;
    fdTipoProductodesc_tipo_producto: TStringField;
    fdTipoProductointeres: TFloatField;
    fdTipoProductomora: TFloatField;
    fdTipoProductoplazo_minimo: TIntegerField;
    fdTipoProductoplazo_maximo: TIntegerField;
    fdTipoProductoactivo: TBooleanField;
    gridTipoProductoDBTableView1activo: TcxGridDBColumn;
    Memo1: TMemo;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
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
    procedure EditarLinea(desc_tipo_producto: string;id, plazo_minimo, plazo_maximo:integer;interes,mora: real;activo: boolean);
    procedure NuevaLinea(desc_tipo_producto:string;plazo_minimo,plazo_maximo:integer;interes,mora:real;activo:boolean);
  public
    { Public declarations }
  end;

var
  fTipoProducto: TfTipoProducto;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfTipoProducto.EditarLinea(desc_tipo_producto: string;id, plazo_minimo, plazo_maximo:integer;interes,mora: real;activo: boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoProducto($id:Int,$desc_tipo_producto:String,$interes:Float,'+
    '$mora:Float,$plazo_minimo:Int,$plazo_maximo:Int,$activo:Int)'+
    ' { tipo_productoMutation(id:$id,desc_tipo_producto:$desc_tipo_producto,interes:$interes,'+
    ' mora:$mora,plazo_minimo:$plazo_minimo,plazo_maximo:$plazo_maximo,activo:$activo)'+
    ' {id,desc_tipo_producto,interes,mora,plazo_minimo,plazo_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_tipo_producto',TJSONString.Create(desc_tipo_producto));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('mora',TJSONNumber.Create(mora));
    dataVar.AddPair('plazo_minimo',TJSONNumber.Create(plazo_minimo));
     dataVar.AddPair('plazo_maximo',TJSONNumber.Create(plazo_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;
    //showmessage(variables.ToString);
    resultado:=graph.ejecutar('tipo_productoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    //memo1.Lines.Text:=resultado.ToString;
    uHelpers.InsertarRegistroDataset(resultado,fdTipoProducto);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoProducto.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoProducto.btnNuevoClick(Sender: TObject);
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

procedure TfTipoProducto.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfTipoProducto.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridTipoProductoDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 0];
     //showmessage(tag.ToString);
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDescripcion.Text:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 1];
         spbInteres.Value:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 2];
         spbMora.Value:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 3];
         spbMinimo.Value:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 4];
         spbMaximo.Value:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 5];
         chkActivo.Checked:=gridTipoProductoDBTableView1.DataController.Values[gridTipoProductoDBTableView1.Controller.FocusedRecordIndex , 6];
     end;
  end;
end;

procedure TfTipoProducto.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDescripcion.Text,tag,spbMinimo.value,spbMaximo.value,spbInteres.value,spbMora.value,chkActivo.checked)
  else
     nuevalinea(edDescripcion.Text,spbMinimo.value,spbMaximo.value,spbInteres.value,spbMora.value,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfTipoProducto.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoProducto.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoProducto.Limpiar;
begin
Tag:=0;
edDescripcion.Text:='';
spbInteres.Value:=0;
spbMora.Value:=0;
spbMinimo.Value:=0;
spbMaximo.Value:=0;
chkActivo.Checked:=False;
end;

procedure TfTipoProducto.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdTipoProducto);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verTipoProducto($limit:Int,$per_page:Int,$desc_tipo_producto:String)'+
     '{ tipo_productoQuery(limit:$limit,per_page:$per_page,desc_tipo_producto:$desc_tipo_producto)' +
     '{ data {id,desc_tipo_producto,interes,mora,plazo_minimo,plazo_maximo,activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_tipo_producto',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.tipo_productoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('tipo_productoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
   // showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoProducto.NuevaLinea(desc_tipo_producto:string;plazo_minimo,plazo_maximo:integer;interes,mora:real;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoProducto($desc_tipo_producto:String,$interes:Float,'+
    '$mora:Float,$plazo_minimo:Int,$plazo_maximo:Int,$activo:Int)'+
    ' { tipo_productoMutation(desc_tipo_producto:$desc_tipo_producto,interes:$interes,'+
    ' mora:$mora,plazo_minimo:$plazo_minimo,plazo_maximo:$plazo_maximo,activo:$activo)'+
    ' {id,desc_tipo_producto,interes,mora,plazo_minimo,plazo_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_tipo_producto',TJSONString.Create(desc_tipo_producto));
    dataVar.AddPair('interes',TJSONNumber.Create(interes));
    dataVar.AddPair('mora',TJSONNumber.Create(mora));
    dataVar.AddPair('plazo_minimo',TJSONNumber.Create(plazo_minimo));
    dataVar.AddPair('plazo_maximo',TJSONNumber.Create(plazo_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_productoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdTipoProducto);
   // memo1.Lines.Text:=resultado.ToString;
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoProducto.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfTipoProducto.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfTipoProducto.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
