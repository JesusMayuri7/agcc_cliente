unit uTipoInfoDetalle;

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
  TfTipoInfoDetalle = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    gridTipoInfoDetalleDBTableView1: TcxGridDBTableView;
    gridTipoInfoDetalleLevel1: TcxGridLevel;
    gridTipoInfoDetalle: TcxGrid;
    fdTipoInfoDetalle: TFDMemTable;
    dsTipoInfoDetalle: TDataSource;
    fdTipoInfoDetalleid: TIntegerField;
    gridTipoInfoDetalleDBTableView1id: TcxGridDBColumn;
    gridTipoInfoDetalleDBTableView1desc_tipo_info_detalle: TcxGridDBColumn;
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
    fdTipoInfoDetalletipo_info_id: TIntegerField;
    cbbTipoInfo: TcxLookupComboBox;
    fdTipoInfo: TFDMemTable;
    fdTipoInfoid: TIntegerField;
    dsTipoInfo: TDataSource;
    gridTipoInfoDetalleDBTableView1tipo_info_id: TcxGridDBColumn;
    Label7: TLabel;
    chkActivo: TCheckBox;
    Label6: TLabel;
    cbbTipo: TComboBox;
    fdTipoInfoDetalledesc_tipo_info_detalle: TStringField;
    fdTipoInfoDetalletipo: TStringField;
    fdTipoInfoDetalleactivo: TBooleanField;
    fdTipoInfodesc_tipo_info: TStringField;
    gridTipoInfoDetalleDBTableView1tipo: TcxGridDBColumn;
    gridTipoInfoDetalleDBTableView1activo: TcxGridDBColumn;
    cxStyle2: TcxStyle;
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
    procedure EditarLinea(desc_tipo_info_detalle,tipo:string;tipo_info_id,id:integer;activo:boolean);
    procedure NuevaLinea(desc_tipo_info_detalle,tipo:string;tipo_info_id:integer;activo:boolean);
    procedure LlenarTipoInfo(dataset:TFDMemTable);
  public
    { Public declarations }
  end;

var
  fTipoInfoDetalle: TfTipoInfoDetalle;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfTipoInfoDetalle.EditarLinea(desc_tipo_info_detalle,tipo:string;
    tipo_info_id,id : integer;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoInfoDetalle($id:Int,$desc_tipo_info_detalle:String,'+
    '$tipo_info_id:Int,$tipo:String,$activo:Int)'+
    ' { tipo_info_detalleMutation(id:$id,desc_tipo_info_detalle:$desc_tipo_info_detalle,'+
    'tipo_info_id:$tipo_info_id,tipo:$tipo,activo:$activo)'+
    ' {id,desc_tipo_info_detalle,tipo_info_id,tipo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_tipo_info_detalle',TJSONString.Create(desc_tipo_info_detalle));
    dataVar.AddPair('tipo_info_id',TJSONNumber.Create(tipo_info_id));
    dataVar.AddPair('tipo',TJSONString.Create(tipo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_info_detalleMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
//    showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdTipoInfoDetalle);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfoDetalle.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoInfoDetalle.btnNuevoClick(Sender: TObject);
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

procedure TfTipoInfoDetalle.btnCancelarClick(Sender: TObject);
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

procedure TfTipoInfoDetalle.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridTipoInfoDetalleDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridTipoInfoDetalleDBTableView1.DataController.Values[gridTipoInfoDetalleDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDescripcion.Text:=gridTipoInfoDetalleDBTableView1.DataController.Values[gridTipoInfoDetalleDBTableView1.Controller.FocusedRecordIndex , 1];
         cbbTipoInfo.EditValue:=gridTipoInfoDetalleDBTableView1.DataController.Values[gridTipoInfoDetalleDBTableView1.Controller.FocusedRecordIndex , 2];
         cbbTipo.ItemIndex:=cbbTipo.Items.IndexOf(gridTipoInfoDetalleDBTableView1.DataController.Values[gridTipoInfoDetalleDBTableView1.Controller.FocusedRecordIndex , 3]);
         chkActivo.Checked:=gridTipoInfoDetalleDBTableView1.DataController.Values[gridTipoInfoDetalleDBTableView1.Controller.FocusedRecordIndex , 4];
     end;
  end;
end;

procedure TfTipoInfoDetalle.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDescripcion.Text,cbbTipo.items[cbbTipo.itemindex],cbbTipoInfo.EditValue,Tag,chkActivo.Checked)
  else
     nuevalinea(edDescripcion.Text,cbbTipo.items[cbbTipo.itemindex],cbbTipoInfo.EditValue,chkActivo.Checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
   uHelpers.habilitarPermisos(TForm(TPanel((TButton(Sender).GetParentComponent).GetParentComponent).GetParentComponent),dmData.Permisos);
end;

procedure TfTipoInfoDetalle.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfTipoInfoDetalle.FormCreate(Sender: TObject);
begin
paginaActual:=1;
//listar();
llenarTipoInfo(fdTipoInfo);
spbPagsiguiente.Glyph:=nil;
spbPaginaAnteriorrr.Glyph:=nil;
dmData.ImageList1.GetBitmap(7, spbActualizar.glyph);
dmData.ImageList1.GetBitmap(6, spbPagSiguiente.glyph);
dmData.ImageList1.GetBitmap(5, spbPaginaAnteriorrr.glyph);
uHelpers.habilitarPermisos(TForm(Sender),dmData.Permisos);
end;

procedure TfTipoInfoDetalle.Limpiar;
begin
Tag:=0;
edDescripcion.Text:='';
cbbTipoInfo.EditValue:='';
cbbTipo.ItemIndex:=0;
chkActivo.Checked:=False;

end;

procedure TfTipoInfoDetalle.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdTipoInfoDetalle);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verTipoInfoDetalle($limit:Int,$per_page:Int,$desc_tipo_info_detalle:String)'+
     '{ tipo_info_detalleQuery(limit:$limit,per_page:$per_page,desc_tipo_info_detalle:$desc_tipo_info_detalle)' +
     '{ data {id,desc_tipo_info_detalle,tipo_info_id,tipo,activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_tipo_info_detalle',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.tipo_info_detalleQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    resultado:=graph.ejecutar('tipo_info_detalleQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    //showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfoDetalle.LlenarTipoInfo(dataset: TFDMemTable);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,dataset);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verTipoInfo($limit:Int,$per_page:Int,$desc_tipo_info:String)'+
     '{ tipo_infoQuery(limit:$limit,per_page:$per_page,desc_tipo_info:$desc_tipo_info)' +
     '{ data {id,desc_tipo_info},per_page,total}}';

    graph.rootElement:='data.tipo_infoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    resultado:=graph.ejecutar('tipo_infoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfoDetalle.NuevaLinea(desc_tipo_info_detalle,tipo:string;tipo_info_id:integer;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postTipoInfoDetalle($desc_tipo_info_detalle:String,$tipo:String,'+
    '$tipo_info_id:Int,$activo:Int)'+
    ' { tipo_info_detalleMutation(desc_tipo_info_detalle:$desc_tipo_info_detalle,tipo:$tipo,'+
    'tipo_info_id:$tipo_info_id,activo:$activo){id,desc_tipo_info_detalle,tipo,tipo_info_id,activo}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_tipo_info_detalle',TJSONString.Create(desc_tipo_info_detalle));
    dataVar.AddPair('tipo_info_id',TJSONNumber.Create(tipo_info_id));
    dataVar.AddPair('tipo',TJSONString.Create(tipo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('tipo_info_detalleMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdTipoInfoDetalle);
    //showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoInfoDetalle.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfTipoInfoDetalle.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfTipoInfoDetalle.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
