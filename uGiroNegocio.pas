unit uGiroNegocio;

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
  TfGiroNegocio = class(TForm)
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
    gridGiroNegocioDBTableView1: TcxGridDBTableView;
    gridGiroNegocioLevel1: TcxGridLevel;
    gridGiroNegocio: TcxGrid;
    fdGiroNegocio: TFDMemTable;
    dsGiroNegocio: TDataSource;
    fdGiroNegocioid: TIntegerField;
    gridGiroNegocioDBTableView1id: TcxGridDBColumn;
    gridGiroNegocioDBTableView1desc_giro_negocio: TcxGridDBColumn;
    fdGiroNegocioactivo: TBooleanField;
    gridGiroNegocioDBTableView1margen_minimo: TcxGridDBColumn;
    gridGiroNegocioDBTableView1margen_maximo: TcxGridDBColumn;
    gridGiroNegocioDBTableView1activo: TcxGridDBColumn;
    edDescripcion: TEdit;
    spbMinimo: TcxSpinEdit;
    spbMaximo: TcxSpinEdit;
    chkActivo: TCheckBox;
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
    fdGiroNegociodesc_giro_negocio: TStringField;
    fdGiroNegociomargen_minimo: TFloatField;
    fdGiroNegociomargen_maximo: TFloatField;
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
    procedure EditarLinea(desc_giro_negocio:string;id:integer;margen_minimo,margen_maximo:real;activo:boolean);
    procedure NuevaLinea(desc_giro_negocio:string;margen_minimo,margen_maximo:real;activo:boolean);
  public
    { Public declarations }
  end;

var
  fGiroNegocio: TfGiroNegocio;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfGiroNegocio.EditarLinea(desc_giro_negocio: string;
  id: integer;margen_minimo, margen_maximo:real;
  activo: boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postGiroNegocio($id:Int,$desc_giro_negocio:String,'+
    ',$margen_minimo:Float,$margen_maximo:Float,$activo:Int)'+
    ' { giro_negocioMutation(id:$id,desc_giro_negocio:$desc_giro_negocio,'+
    ' ,margen_minimo:$margen_minimo,margen_maximo:$margen_maximo,activo:$activo)'+
    ' {id,desc_giro_negocio,margen_minimo,margen_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_giro_negocio',TJSONString.Create(desc_giro_negocio));
    dataVar.AddPair('margen_minimo',TJSONNumber.Create(margen_minimo));
    dataVar.AddPair('margen_maximo',TJSONNumber.Create(margen_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('giro_negocioMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
      //showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdGiroNegocio);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfGiroNegocio.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfGiroNegocio.btnNuevoClick(Sender: TObject);
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

procedure TfGiroNegocio.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfGiroNegocio.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridGiroNegocioDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridGiroNegocioDBTableView1.DataController.Values[gridGiroNegocioDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDescripcion.Text:=gridGiroNegocioDBTableView1.DataController.Values[gridGiroNegocioDBTableView1.Controller.FocusedRecordIndex , 1];
         spbMinimo.Value:=gridGiroNegocioDBTableView1.DataController.Values[gridGiroNegocioDBTableView1.Controller.FocusedRecordIndex , 2];
         spbMaximo.Value:=gridGiroNegocioDBTableView1.DataController.Values[gridGiroNegocioDBTableView1.Controller.FocusedRecordIndex , 3];
         chkActivo.Checked:=gridGiroNegocioDBTableView1.DataController.Values[gridGiroNegocioDBTableView1.Controller.FocusedRecordIndex , 4];
     end;
  end;
end;

procedure TfGiroNegocio.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDescripcion.Text,Tag,spbMinimo.value,spbMaximo.value,chkActivo.checked)
  else
     nuevalinea(edDescripcion.Text,spbMinimo.value,spbMaximo.value,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfGiroNegocio.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfGiroNegocio.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfGiroNegocio.Limpiar;
begin
Tag:=0;
edDescripcion.Text:='';
spbMinimo.Value:=0;
spbMaximo.Value:=0;
chkActivo.Checked:=False;
end;

procedure TfGiroNegocio.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdGiroNegocio);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verGiroNegocio($limit:Int,$per_page:Int,$desc_giro_negocio:String)'+
     '{ giro_negocioQuery(limit:$limit,per_page:$per_page,desc_giro_negocio:$desc_giro_negocio)' +
     '{ data {id,desc_giro_negocio,margen_minimo,margen_maximo,activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_giro_negocio',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.giro_negocioQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('giro_negocioQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
   // showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfGiroNegocio.NuevaLinea(desc_giro_negocio:string;margen_minimo,margen_maximo:real;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postGiroNegocio($desc_giro_negocio:String,'+
    ' $margen_minimo:Float,$margen_maximo:Float,$activo:Int)'+
    ' { giro_negocioMutation(desc_giro_negocio:$desc_giro_negocio,'+
    ' margen_minimo:$margen_minimo,margen_maximo:$margen_maximo,activo:$activo)'+
    ' {id,desc_giro_negocio,margen_minimo,margen_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_giro_negocio',TJSONString.Create(desc_giro_negocio));
    dataVar.AddPair('margen_minimo',TJSONNumber.Create(margen_minimo));
    dataVar.AddPair('margen_maximo',TJSONNumber.Create(margen_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('giro_negocioMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdGiroNegocio);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfGiroNegocio.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfGiroNegocio.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfGiroNegocio.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
