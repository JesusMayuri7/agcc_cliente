unit uPerfilCliente;

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
  dxSkinXmas2008Blue;

type
  TfPerfilCliente = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    gridPerfilClienteDBTableView1: TcxGridDBTableView;
    gridPerfilClienteLevel1: TcxGridLevel;
    gridPerfilCliente: TcxGrid;
    fdPerfilCliente: TFDMemTable;
    dsPerfilCliente: TDataSource;
    fdPerfilClienteid: TIntegerField;
    gridPerfilClienteDBTableView1id: TcxGridDBColumn;
    gridPerfilClienteDBTableView1desc_perfil_cliente: TcxGridDBColumn;
    edDescripcion: TEdit;
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
    fdPerfilClientelinea_credito_id: TIntegerField;
    cbbLineaCredito: TcxLookupComboBox;
    fdLineaCredito: TFDMemTable;
    fdLineaCreditoid: TIntegerField;
    fdLineaCreditodesc_linea_credito: TStringField;
    fdLineaCreditomonto_minimo: TFloatField;
    fdLineaCreditomonto_maximo: TFloatField;
    fdLineaCreditoactivo: TBooleanField;
    fdLineaCreditotipo_interes: TStringField;
    dsLineaCredito: TDataSource;
    fdPerfilClientedesc_perfil_cliente: TStringField;
    gridPerfilClienteDBTableView1linea_credito_id: TcxGridDBColumn;
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
    procedure EditarLinea(desc_perfil_cliente:string;linea_credito_id,id:integer);
    procedure NuevaLinea(desc_perfil_cliente:string;linea_credito_id:integer);
    procedure LlenarLineaCredito(dataset:TFDMemTable);
  public
    { Public declarations }
  end;

var
  fPerfilCliente: TfPerfilCliente;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfPerfilCliente.EditarLinea(desc_perfil_cliente:string;linea_credito_id, id : integer);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postPerfilCliente($id:Int,$desc_perfil_cliente:String,$linea_credito_id:Int)'+
    ' { perfil_clienteMutation(id:$id,desc_perfil_cliente:$desc_perfil_cliente,linea_credito_id:$linea_credito_id)'+
    ' {id,desc_perfil_cliente,linea_credito_id}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_perfil_cliente',TJSONString.Create(desc_perfil_cliente));
    dataVar.AddPair('linea_credito_id',TJSONNumber.Create(linea_credito_id));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('perfil_clienteMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
      //showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdPerfilCliente);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfPerfilCliente.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfPerfilCliente.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
end;

procedure TfPerfilCliente.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfPerfilCliente.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridPerfilClienteDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridPerfilClienteDBTableView1.DataController.Values[gridPerfilClienteDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDescripcion.Text:=gridPerfilClienteDBTableView1.DataController.Values[gridPerfilClienteDBTableView1.Controller.FocusedRecordIndex , 1];
         cbbLineaCredito.EditValue:=gridPerfilClienteDBTableView1.DataController.Values[gridPerfilClienteDBTableView1.Controller.FocusedRecordIndex , 2];
     end;
  end;
end;

procedure TfPerfilCliente.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDescripcion.Text,cbbLineaCredito.EditValue,Tag)
  else
     nuevalinea(edDescripcion.Text,cbbLineaCredito.EditValue);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfPerfilCliente.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfPerfilCliente.FormCreate(Sender: TObject);
begin
paginaActual:=1;
//listar();
llenarLineaCredito(fdLineaCredito);
end;

procedure TfPerfilCliente.Limpiar;
begin
Tag:=0;
edDescripcion.Text:='';
cbbLineaCredito.EditValue:='';
end;

procedure TfPerfilCliente.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdPerfilCliente);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verPerfilCliente($limit:Int,$per_page:Int,$desc_perfil_cliente:String)'+
     '{ perfil_clienteQuery(limit:$limit,per_page:$per_page,desc_perfil_cliente:$desc_perfil_cliente)' +
     '{ data {id,desc_perfil_cliente,linea_credito_id},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_perfil_cliente',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.perfil_clienteQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    resultado:=graph.ejecutar('perfil_clienteQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    //showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfPerfilCliente.LlenarLineaCredito(dataset: TFDMemTable);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,dataset);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verLineaCredito($limit:Int,$per_page:Int,$desc_linea_credito:String)'+
    ' { linea_creditoQuery(limit:$limit,per_page:$per_page,desc_linea_credito:$desc_linea_credito)'+
    ' { data {id,desc_linea_credito,tipo_interes,monto_maximo,monto_minimo,activo},per_page,total}}';

    graph.rootElement:='data.linea_creditoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    resultado:=graph.ejecutar('linea_creditoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfPerfilCliente.NuevaLinea(desc_perfil_cliente:string;linea_credito_id:integer);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postPerfilCliente($desc_perfil_cliente:String,$linea_credito_id:Int)'+
    ' { perfil_clienteMutation(desc_perfil_cliente:$desc_perfil_cliente,linea_credito_id:$linea_credito_id)'+
    ' {id,desc_perfil_cliente,linea_credito_id}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_perfil_cliente',TJSONString.Create(desc_perfil_cliente));
    dataVar.AddPair('linea_credito_id',TJSONNumber.Create(linea_credito_id));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('perfil_clienteMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdPerfilCliente);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfPerfilCliente.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfPerfilCliente.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfPerfilCliente.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
