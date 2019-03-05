unit uTipoInfo;

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
  TfTipoInfo = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    gridTipoInfoDBTableView1: TcxGridDBTableView;
    gridTipoInfoLevel1: TcxGridLevel;
    gridTipoInfo: TcxGrid;
    fdTipoInfo: TFDMemTable;
    dsTipoInfo: TDataSource;
    fdTipoInfoid: TIntegerField;
    gridTipoInfoDBTableView1id: TcxGridDBColumn;
    gridTipoInfoDBTableView1desc_tipo_info: TcxGridDBColumn;
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
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edDescripcion: TEdit;
    fdTipoInfodesc_tipo_info: TStringField;
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
    procedure EditarLinea(desc_tipo_info:string;id:integer);
    procedure NuevaLinea(desc_tipo_info:string);
  public
    { Public declarations }
  end;

var
  fTipoInfo: TfTipoInfo;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfTipoInfo.EditarLinea(desc_tipo_info: string; id: integer);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoInfo($id:Int,$desc_tipo_info:String)'+
    ' { tipo_infoMutation(id:$id,desc_tipo_info:$desc_tipo_info)'+
    ' {id,desc_tipo_info}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_tipo_info',TJSONString.Create(desc_tipo_info));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_infoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    //  showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdTipoInfo);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfo.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoInfo.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
end;

procedure TfTipoInfo.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfTipoInfo.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridTipoInfoDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridTipoInfoDBTableView1.DataController.Values[gridTipoInfoDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDescripcion.Text:=gridTipoInfoDBTableView1.DataController.Values[gridTipoInfoDBTableView1.Controller.FocusedRecordIndex , 1];

     end;
  end;
end;

procedure TfTipoInfo.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDescripcion.Text,Tag)
  else
     nuevalinea(edDescripcion.Text);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfTipoInfo.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoInfo.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoInfo.Limpiar;
begin
Tag:=0;
edDescripcion.Text:='';

end;

procedure TfTipoInfo.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdTipoInfo);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verTipoInfo($limit:Int,$per_page:Int,$desc_tipo_info:String)'+
     '{ tipo_infoQuery(limit:$limit,per_page:$per_page,desc_tipo_info:$desc_tipo_info)' +
     '{ data {id,desc_tipo_info},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_tipo_info',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.tipo_infoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('tipo_infoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
   // showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfo.NuevaLinea(desc_tipo_info:string);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoInfo($desc_tipo_info:String)'+
    ' { tipo_infoMutation(desc_tipo_info:$desc_tipo_info)'+
    ' {id,desc_tipo_info}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_tipo_info',TJSONString.Create(desc_tipo_info));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_infoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdTipoInfo);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfo.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfTipoInfo.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfTipoInfo.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
