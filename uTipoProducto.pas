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
  dxSkinXmas2008Blue, System.ImageList, Vcl.ImgList, REST.Response.Adapter;

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
    cxGrid1: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    cbbPerfilCliente: TcxLookupComboBox;
    gridPerfilCliente: TcxGridTableView;
    colId: TcxGridColumn;
    colDescripcion: TcxGridColumn;
    fdPerfilCliente: TFDMemTable;
    dsPerfilCliente: TDataSource;
    fdTipoProductoperfil_cliente: TMemoField;
    fdPerfilClienteid: TIntegerField;
    fdPerfilClientedesc_perfil_cliente: TStringField;
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
    procedure EditarLinea(desc_tipo_producto: string;id, plazo_minimo, plazo_maximo:integer;interes,mora: real;activo: boolean;perfil_cliente:TJsonArray);
    procedure NuevaLinea(desc_tipo_producto:string;plazo_minimo,plazo_maximo:integer;interes,mora:real;activo:boolean);
    procedure addClick(Sender: TObject; AButtonIndex: Integer);
    procedure listarPerfilCliente;
    procedure actualizarPerfil(aJson:String);
    function datasetToJsonArray2(): TJsonArray;
  public
    { Public declarations }
  end;

var
  fTipoProducto: TfTipoProducto;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

function TfTipoProducto.datasetToJsonArray2(): TJsonArray;
var
  I: Integer;
  item:TJsonObject;
begin
    result:=TJsonArray.Create();
    for I := 0 to gridPerfilCliente.DataController.RecordCount-1 do
      begin
      item:=TJsonObject.Create;
               item.AddPair('tipo_producto_id',TJsonNUmber.Create(Tag));
               item.AddPair('perfil_cliente_id',TJsonNUmber.Create(gridPerfilCliente.datacontroller.Values[i,colId.Index]));
       result.AddElement(item);
    end;
end;

procedure TfTipoProducto.actualizarPerfil(aJson:String);
var
  I,size: Integer;
  item:TJsonObject;
  jsonArray:TJsonArray;
begin
    jsonArray := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
   Size := jsonArray.Count;
     gridPerfilCliente.datacontroller.recordcount:=0;
     for i:=0 to pred(Size) do
     begin
     gridPerfilCliente.datacontroller.recordcount:=gridPerfilCliente.datacontroller.recordcount+1;
     item := jsonArray.Get(i) as TJsonObject;
     gridPerfilCliente.datacontroller.Values[i,colId.Index]:=item.Get('id').JsonValue.Value;
     gridPerfilCliente.datacontroller.Values[i,colDescripcion.Index]:=item.Get('desc_perfil_cliente').JsonValue.Value;
     end;
end;

procedure TfTipoProducto.listarPerfilCliente;
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
    graph.rootElement:='data.perfil_clienteQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery
    resultado:=graph.ejecutar('perfil_clienteQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfTipoProducto.addClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 1 then
    with TcxLookupComboBox(Sender) do
    begin
      gridPerfilCliente.DataController.RecordCount:=gridPerfilCliente.DataController.RecordCount+1;
      gridPerfilCliente.DataController.Values[gridPerfilCliente.DataController.RecordCount-1,colId.Index]:=Editvalue;
      gridPerfilCliente.DataController.Values[gridPerfilCliente.DataController.RecordCount-1,colDescripcion.Index]:=EditText;
      EditValue := Null;
    end;
end;

procedure TfTipoProducto.EditarLinea(desc_tipo_producto: string;id, plazo_minimo, plazo_maximo:integer;interes,mora: real;activo: boolean;perfil_cliente:TJSONArray);
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
    dataVar.AddPair('perfil_cliente',perfil_cliente);
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
         tabFormulario.TabVisible:=true;
         PageControl1.ActivePageIndex:=0;
         listarPerfilCliente();
         actualizarPerfil(VarToStr(fdTipoProducto.fieldValues['perfil_cliente']));
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
     EditarLinea(edDescripcion.Text,tag,spbMinimo.value,spbMaximo.value,spbInteres.value,spbMora.value,chkActivo.checked,datasetToJsonArray2())
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
var
  AButton: TcxEditButton;
begin
paginaActual:=1;
listar();
        with TcxLookupComboBoxProperties(cbbPerfilCliente.Properties) do
        begin
          AButton := Buttons.Add;
          AButton.Kind := bkText;
          AButton.Caption := 'Add';
          OnButtonClick := addClick;
        end;
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
     '{ data {id,desc_tipo_producto,interes,mora,plazo_minimo,plazo_maximo,activo,perfil_cliente'+
     ' {id,desc_perfil_cliente}},per_page,total}} ';

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
