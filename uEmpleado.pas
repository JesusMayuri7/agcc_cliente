unit uEmpleado;

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
  dxSkinXmas2008Blue, dxCore, cxDateUtils;

type
  TfEmpleado = class(TForm)
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
    gridEmpleadoDBTableView1: TcxGridDBTableView;
    gridEmpleadoLevel1: TcxGridLevel;
    gridEmpleado: TcxGrid;
    fdEmpleado: TFDMemTable;
    dsEmpleado: TDataSource;
    fdEmpleadoid: TIntegerField;
    gridEmpleadoDBTableView1id: TcxGridDBColumn;
    fdEmpleadoactivo: TBooleanField;
    gridEmpleadoDBTableView1activo: TcxGridDBColumn;
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
    Label13: TLabel;
    edNombres: TEdit;
    edPaterno: TEdit;
    edMaterno: TEdit;
    edEmail: TEdit;
    fdEmpleadodni: TStringField;
    fdEmpleadonombres: TStringField;
    fdEmpleadoapellido_paterno: TStringField;
    fdEmpleadoapellido_materno: TStringField;
    gridEmpleadoDBTableView1nombres: TcxGridDBColumn;
    gridEmpleadoDBTableView1apellido_paterno: TcxGridDBColumn;
    gridEmpleadoDBTableView1apellido_materno: TcxGridDBColumn;
    gridEmpleadoDBTableView1usuario: TcxGridDBColumn;
    fdEmpleadousuario: TStringField;
    fdEmpleadopassword: TStringField;
    fdEmpleadoemail: TStringField;
    gridEmpleadoDBTableView1password: TcxGridDBColumn;
    gridEmpleadoDBTableView1email: TcxGridDBColumn;
    edUsuario: TEdit;
    Label14: TLabel;
    edPassword: TEdit;
    gridEmpleadoDBTableView1dni: TcxGridDBColumn;
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
    procedure EditarLinea(dni,nombres,apellido_paterno,apellido_materno,usuario,password,email:string;
        id:integer;activo:boolean);
    procedure NuevaLinea(dni,nombres,apellido_paterno,apellido_materno,usuario,password,email:string;
        activo:boolean);
  public
    { Public declarations }
  end;

var
  fEmpleado: TfEmpleado;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfEmpleado.EditarLinea(dni,nombres,apellido_paterno,apellido_materno,usuario,password,email:string;
        id:integer;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postEmpleado($id:Int,$dni:String,$nombres:String,$apellido_paterno:'+
    'String,$apellido_materno:String,$usuario:String,$password:String,$email:String,$activo:Int)'+
    ' { empleadoMutation(id:$id,dni:$dni,nombres:$nombres,apellido_paterno:$apellido_paterno,apellido_materno'+
    ':$apellido_materno,usuario:$usuario,password:$password,email:$email,activo:$activo)'+
    ' {id,dni,nombres,apellido_paterno,apellido_materno,usuario,password,email,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('dni',TJSONString.Create(dni));
    dataVar.AddPair('nombres',TJSONString.Create(nombres));
    dataVar.AddPair('apellido_paterno',TJSONString.Create(apellido_paterno));
    dataVar.AddPair('apellido_materno',TJSONString.Create(apellido_materno));
    dataVar.AddPair('usuario',TJSONString.Create(usuario));
    dataVar.AddPair('password',TJSONString.Create(password));
    dataVar.AddPair('email',TJSONString.Create(email));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('empleadoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
      showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdEmpleado);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfEmpleado.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfEmpleado.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
end;

procedure TfEmpleado.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfEmpleado.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridEmpleadoDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 0];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edDni.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 1];
         edNombres.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 2];
         edPaterno.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 3];
         edMaterno.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 4];
         edUsuario.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 5];
         edPassword.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 6];
         edEmail.Text:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 7];
         chkActivo.Checked:=gridEmpleadoDBTableView1.DataController.Values[gridEmpleadoDBTableView1.Controller.FocusedRecordIndex , 8];
     end;
  end;
end;

procedure TfEmpleado.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edDni.Text,edNombres.Text,edPaterno.Text,edMaterno.Text,edUsuario.Text,
     edPassword.Text,edEmail.Text,Tag,chkActivo.checked)
  else
     nuevalinea(edDni.Text,edNombres.Text,edPaterno.Text,edMaterno.Text,edUsuario.Text,
     edPassword.Text,edEmail.Text,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfEmpleado.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfEmpleado.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfEmpleado.Limpiar;
begin
Tag:=0;
edDni.Text:='';
edNombres.Text:='';
edPaterno.Text:='';
edMaterno.Text:='';
edUsuario.Text:='';
edPassword.Text:='';
edEmail.Text:='';
chkActivo.Checked:=False;
end;

procedure TfEmpleado.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdEmpleado);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verEmpleado($limit:Int,$per_page:Int,$dni:String)'+
     '{ empleadoQuery(limit:$limit,per_page:$per_page,dni:$dni)' +
     '{ data {id,dni,nombres,apellido_paterno,apellido_materno,usuario,password,email'+
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

    graph.rootElement:='data.empleadoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('empleadoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfEmpleado.NuevaLinea(dni,nombres,apellido_paterno,apellido_materno,usuario,password,email:string;
        activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postEmpleado($dni:String,$nombres:String,$apellido_paterno:String'+
    ',$apellido_materno:String,$usuario:String,$password:String,$email:String,$activo:Int)'+
    ' { empleadoMutation(dni:$dni,nombres:$nombres,apellido_paterno:$apellido_paterno,'+
    'apellido_materno:$apellido_materno,usuario:$usuario,password:$password,email'+
    ':$email,activo:$activo)'+
    ' {id,dni,nombres,apellido_paterno,apellido_materno,usuario,password,email,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('dni',TJSONString.Create(dni));
    dataVar.AddPair('nombres',TJSONString.Create(nombres));
    dataVar.AddPair('apellido_paterno',TJSONString.Create(apellido_paterno));
    dataVar.AddPair('apellido_materno',TJSONString.Create(apellido_materno));
    dataVar.AddPair('usuario',TJSONString.Create(usuario));
    dataVar.AddPair('password',TJSONString.Create(password));
    dataVar.AddPair('email',TJSONString.Create(email));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('empleadoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdEmpleado);
   // memo1.Lines.Text:=resultado.ToString;
    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfEmpleado.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfEmpleado.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfEmpleado.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
