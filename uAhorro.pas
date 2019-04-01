unit uAhorro;

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
  TfAhorro = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    gridAhorroDBTableView1: TcxGridDBTableView;
    gridAhorroLevel1: TcxGridLevel;
    gridAhorro: TcxGrid;
    fdAhorro: TFDMemTable;
    dsAhorro: TDataSource;
    fdAhorroid: TIntegerField;
    gridAhorroDBTableView1id: TcxGridDBColumn;
    gridAhorroDBTableView1desc_ahorro: TcxGridDBColumn;
    gridAhorroDBTableView1porcentaje: TcxGridDBColumn;
    spbPorcentaje: TcxSpinEdit;
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
    fdAhorroporcentaje: TFloatField;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    fdAhorrodesc_ahorro: TStringField;
    spbDescripcion: TComboBox;
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
    procedure EditarLinea(desc_ahorro:string;id:integer;porcentaje:real);
    procedure NuevaLinea(desc_ahorro:string;porcentaje:real);
  public
    { Public declarations }
  end;

var
  fAhorro: TfAhorro;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfAhorro.EditarLinea( desc_ahorro:string;id:integer;porcentaje:real);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postAhorro($id:Int,$desc_ahorro:String,$porcentaje:Float)'+
    ' { ahorroMutation(id:$id,desc_ahorro:$desc_ahorro,porcentaje:$porcentaje)'+
    ' {id,desc_ahorro,porcentaje}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_ahorro',TJSONString.Create(desc_ahorro));
    dataVar.AddPair('porcentaje',TJSONNumber.Create(porcentaje));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('ahorroMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
     // showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdAhorro);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfAhorro.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfAhorro.btnNuevoClick(Sender: TObject);
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

procedure TfAhorro.btnCancelarClick(Sender: TObject);
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

procedure TfAhorro.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridAhorroDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridAhorroDBTableView1.DataController.Values[gridAhorroDBTableView1.Controller.FocusedRecordIndex , 0];
     //showmessage(tag.ToString);
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         spbDescripcion.ItemIndex:=spbDescripcion.Items.IndexOf(gridAhorroDBTableView1.DataController.Values[gridAhorroDBTableView1.Controller.FocusedRecordIndex , 1]);
         spbPorcentaje.Value:=gridAhorroDBTableView1.DataController.Values[gridAhorroDBTableView1.Controller.FocusedRecordIndex , 2];
     end;
  end;
end;

procedure TfAhorro.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(spbDescripcion.items[spbDescripcion.itemindex],tag,spbPorcentaje.value)
  else
     nuevalinea(spbDescripcion.items[spbDescripcion.itemindex],spbPorcentaje.value);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
    uHelpers.habilitarPermisos(TForm(TPanel((TButton(Sender).GetParentComponent).GetParentComponent).GetParentComponent),dmData.Permisos);
end;

procedure TfAhorro.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfAhorro.FormCreate(Sender: TObject);
begin
paginaActual:=1;
//listar();
spbPagsiguiente.Glyph:=nil;
spbPaginaAnteriorrr.Glyph:=nil;
dmData.ImageList1.GetBitmap(7, spbActualizar.glyph);
dmData.ImageList1.GetBitmap(6, spbPagSiguiente.glyph);
dmData.ImageList1.GetBitmap(5, spbPaginaAnteriorrr.glyph);
uHelpers.habilitarPermisos(TForm(Sender),dmData.Permisos);
end;

procedure TfAhorro.Limpiar;
begin
Tag:=0;
spbDescripcion.ItemIndex:=0;
spbPorcentaje.Value:=0;
end;

procedure TfAhorro.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdAhorro);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verAhorro($limit:Int,$per_page:Int,$desc_ahorro:String)'+
     '{ ahorroQuery(limit:$limit,per_page:$per_page,desc_ahorro:$desc_ahorro)' +
     '{ data {id,desc_ahorro,porcentaje},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_ahorro',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.ahorroQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('ahorroQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    //showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfAhorro.NuevaLinea(desc_ahorro:string;porcentaje:real);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postAhorro($desc_ahorro:String,$porcentaje:Float)'+
    ' { ahorroMutation(desc_ahorro:$desc_ahorro,porcentaje:$porcentaje)'+
    ' {id,desc_ahorro,porcentaje}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_ahorro',TJSONString.Create(desc_ahorro));
    dataVar.AddPair('porcentaje',TJSONNumber.Create(porcentaje));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('ahorroMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdAhorro);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfAhorro.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfAhorro.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();

end;

procedure TfAhorro.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
