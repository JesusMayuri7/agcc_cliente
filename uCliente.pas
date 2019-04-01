unit uCliente;

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
  dxSkinXmas2008Blue, dxCore, cxDateUtils, System.ImageList, Vcl.ImgList;

type
  TfCliente = class(TForm)
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
    gridClienteDBTableView1: TcxGridDBTableView;
    gridClienteLevel1: TcxGridLevel;
    gridCliente: TcxGrid;
    fdCliente: TFDMemTable;
    dsCliente: TDataSource;
    fdClienteid: TIntegerField;
    gridClienteDBTableView1id: TcxGridDBColumn;
    fdClienteactivo: TBooleanField;
    gridClienteDBTableView1activo: TcxGridDBColumn;
    edDni: TEdit;
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
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    edNombres: TEdit;
    edPaterno: TEdit;
    edMaterno: TEdit;
    edDireccion: TEdit;
    edTelefono: TEdit;
    fdClientedni: TStringField;
    fdClientenombres: TStringField;
    fdClienteapellido_paterno: TStringField;
    fdClienteapellido_materno: TStringField;
    fdClientefecha_nacimiento: TDateField;
    fdClientedireccion: TStringField;
    fdClientetelefono: TStringField;
    gridClienteDBTableView1dni: TcxGridDBColumn;
    gridClienteDBTableView1nombres: TcxGridDBColumn;
    gridClienteDBTableView1apellido_paterno: TcxGridDBColumn;
    gridClienteDBTableView1apellido_materno: TcxGridDBColumn;
    gridClienteDBTableView1fecha_nacimiento: TcxGridDBColumn;
    gridClienteDBTableView1direccion: TcxGridDBColumn;
    gridClienteDBTableView1telefono: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
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
    procedure EditarLinea(dni,nombres,apellido_paterno,apellido_materno,direccion,telefono:string;
        fecha_nacimiento:tdate;id:integer;activo:boolean);
    procedure NuevaLinea(dni,nombres,apellido_paterno,apellido_materno,direccion,telefono:string;
        fecha_nacimiento:tdate;activo:boolean);
  public
    { Public declarations }
  end;

var
  fCliente: TfCliente;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfCliente.EditarLinea(dni,nombres,apellido_paterno,apellido_materno,direccion,telefono:string;
        fecha_nacimiento:tdate;id:integer;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postCliente($id:String,$dni:String,$nombres:String,$apellido_paterno:'+
    'String,$apellido_materno:String,$direccion:String,$telefono:String,$fecha_nacimiento:String,$activo:Int)'+
    ' { clienteMutation(id:$id,dni:$dni,nombres:$nombres,apellido_paterno:$apellido_paterno,apellido_materno'+
    ':$apellido_materno,direccion:$direccion,telefono:$telefono,fecha_nacimiento:$fecha_nacimiento,activo:$activo)'+
    ' {id,dni,nombres,apellido_paterno,apellido_materno,direccion,telefono,fecha_nacimiento,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('dni',TJSONString.Create(dni));
    dataVar.AddPair('nombres',TJSONString.Create(nombres));
    dataVar.AddPair('apellido_paterno',TJSONString.Create(apellido_paterno));
    dataVar.AddPair('apellido_materno',TJSONString.Create(apellido_materno));
    dataVar.AddPair('direccion',TJSONString.Create(direccion));
    dataVar.AddPair('telefono',TJSONString.Create(telefono));
    dataVar.AddPair('fecha_nacimiento',TJSONString.Create(formatdatetime('yyyy-mm-dd',fecha_nacimiento)));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('clienteMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
  //    showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdCliente);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfCliente.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfCliente.btnNuevoClick(Sender: TObject);
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

procedure TfCliente.btnCancelarClick(Sender: TObject);
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

procedure TfCliente.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridClienteDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDni.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 1];
         edNombres.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 2];
         edPaterno.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 3];
         edMaterno.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 4];
         cxDateEdit1.Date:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 5];
         edDireccion.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 6];
         edTelefono.Text:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 7];
         chkActivo.Checked:=gridClienteDBTableView1.DataController.Values[gridClienteDBTableView1.Controller.FocusedRecordIndex , 8];
     end;
  end;
end;

procedure TfCliente.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDni.Text,edNombres.Text,edPaterno.Text,edMaterno.Text,edDireccion.Text,
     edTelefono.Text,cxDateEdit1.Date,Tag,chkActivo.checked)
  else
     nuevalinea(edDni.Text,edNombres.Text,edPaterno.Text,edMaterno.Text,edDireccion.Text,
     edTelefono.Text,cxDateEdit1.Date,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
  uHelpers.habilitarPermisos(TForm(TPanel((TButton(Sender).GetParentComponent).GetParentComponent).GetParentComponent),dmData.Permisos);
end;

procedure TfCliente.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfCliente.FormCreate(Sender: TObject);
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

procedure TfCliente.Limpiar;
begin
Tag:=0;
edDni.Text:='';
edNombres.Text:='';
edPaterno.Text:='';
edMaterno.Text:='';
cxDateEdit1.Date:=Date;
edDireccion.Text:='';
edTelefono.Text:='';
chkActivo.Checked:=False;
end;

procedure TfCliente.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdCliente);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verCliente($limit:Int,$per_page:Int,$dni:String)'+
     '{ clienteQuery(limit:$limit,per_page:$per_page,dni:$dni)' +
     '{ data {id,dni,nombres,apellido_paterno,apellido_materno,fecha_nacimiento,direccion,telefono'+
     ',activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('dni',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.clienteQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('clienteQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
 //   showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfCliente.NuevaLinea(dni,nombres,apellido_paterno,apellido_materno,direccion,
      telefono:string;fecha_nacimiento:tdate;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postCliente($dni:String,$nombres:String,$apellido_paterno:String'+
    ',$apellido_materno:String,$direccion:String,$telefono:String,$fecha_nacimiento:String,$activo:Int)'+
    ' { clienteMutation(dni:$dni,nombres:$nombres,apellido_paterno:$apellido_paterno,'+
    'apellido_materno:$apellido_materno,direccion:$direccion,telefono:$telefono,fecha_nacimiento'+
    ':$fecha_nacimiento,activo:$activo)'+
    ' {id,dni,nombres,apellido_paterno,apellido_materno,direccion,telefono,fecha_nacimiento,activo}  } ';
  //  showmessage(DateToStr(fecha_nacimiento));
    //NO variar
    //fecha_nacimiento:= StrToDate('fecha_nacimiento');
    //fecha_nacimiento := StrToDateTime('fecha_nacimiento');
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('dni',TJSONString.Create(dni));
    dataVar.AddPair('nombres',TJSONString.Create(nombres));
    dataVar.AddPair('apellido_paterno',TJSONString.Create(apellido_paterno));
    dataVar.AddPair('apellido_materno',TJSONString.Create(apellido_materno));
    dataVar.AddPair('direccion',TJSONString.Create(direccion));
    dataVar.AddPair('telefono',TJSONString.Create(telefono));
    dataVar.AddPair('fecha_nacimiento',TJSONString.Create(formatdatetime('yyyy-mm-dd',fecha_nacimiento)));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('clienteMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdCliente);
    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfCliente.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfCliente.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfCliente.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
