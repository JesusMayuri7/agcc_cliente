unit uLineaCredito;

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
  cxSpinEdit, Vcl.Buttons;

type
  TfLineaCredito = class(TForm)
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
    gridLIneaCreditoDBTableView1: TcxGridDBTableView;
    gridLIneaCreditoDBTableView1id: TcxGridDBColumn;
    gridLIneaCreditoDBTableView1desc_linea_credito: TcxGridDBColumn;
    gridLineaCredito:Tcxgrid;
    fdLineaCredito: TFDMemTable;
    dsLineaCredito: TDataSource;
    fdLineaCreditoid: TIntegerField;
    fdLineaCreditodesc_linea_credito: TStringField;
    fdLineaCreditomonto_minimo: TFloatField;
    fdLineaCreditomonto_maximo: TFloatField;
    fdLineaCreditoactivo: TBooleanField;
    fdLineaCreditotipo_interes: TStringField;
    edLineaCredito: TEdit;
    cbbInteres: TComboBox;
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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    var paginaActual:integer;
    procedure listar;
    procedure Limpiar();
    procedure EditarLinea(desc_linea_credito,tipo_interes:string;id,monto_minimo,monto_maximo:integer;activo:boolean);
    procedure NuevaLinea(desc_linea_credito,tipo_interes:string;monto_minimo,monto_maximo:integer;activo:boolean);
  public
    { Public declarations }
  end;

var
  fLineaCredito: TfLineaCredito;

implementation

uses
  UGraph, UData, uHelpers;


{$R *.dfm}

{ TfLineaCredito }

procedure TfLineaCredito.EditarLinea(desc_linea_credito,
  tipo_interes: string; id, monto_minimo, monto_maximo: integer;
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
    graph.query:='mutation postLineaCredito($id:Int,$desc_linea_credito:String,$tipo_interes:String,'+
    '$monto_maximo:Float,$monto_minimo:Float,$activo:Int)'+
    ' { linea_creditoMutation(id:$id,desc_linea_credito:$desc_linea_credito,tipo_interes:$tipo_interes,'+
    ' monto_maximo:$monto_maximo,monto_minimo:$monto_minimo,activo:$activo)'+
    ' {id,desc_linea_credito,tipo_interes,monto_minimo,monto_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(id));
    dataVar.AddPair('desc_linea_credito',TJSONString.Create(desc_linea_credito));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
    dataVar.AddPair('monto_minimo',TJSONNumber.Create(monto_minimo));
    dataVar.AddPair('monto_maximo',TJSONNumber.Create(monto_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('linea_creditoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
     // showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdLineaCredito);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfLineaCredito.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
//gridLIneaCreditoDBTableView1.Controller.ApplyFindFilterText(edCriterio.Text);
end;

procedure TfLineaCredito.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
end;

procedure TfLineaCredito.Button1Click(Sender: TObject);
begin
   //gridLIneaCreditoDBTableView1.Controller.ClearFindFilterText;
   edCriterio.Text:='';
   paginaActual:=1;
   listar();
end;

procedure TfLineaCredito.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfLineaCredito.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridLIneaCreditoDBTableView1.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 0];
     showmessage(tag.ToString);
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
         edLineaCredito.Text:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 1];
         cbbInteres.ItemIndex:=cbbInteres.Items.IndexOf(gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 2]);
         spbMinimo.Value:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 3];
         spbMaximo.Value:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 4];
         chkActivo.Checked:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 5];
     end;
  end;
end;

procedure TfLineaCredito.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
     EditarLinea(edlineaCredito.Text,cbbInteres.items[cbbInteres.itemindex],Tag,spbMinimo.value,spbMaximo.value,chkActivo.checked)
  else
     nuevalinea(edlineaCredito.Text,cbbInteres.items[cbbInteres.itemindex],spbMinimo.value,spbMaximo.value,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfLineaCredito.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfLineaCredito.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfLineaCredito.Limpiar;
begin
Tag:=0;
edLineaCredito.Text:='';
cbbInteres.ItemIndex:=0;
spbMinimo.Value:=0;
spbMaximo.Value:=0;
chkActivo.Checked:=False;
end;

procedure TfLineaCredito.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdLineaCredito);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query verLineaCredito($limit:Int,$per_page:Int,$desc_linea_credito:String)'+
     '{ linea_creditoQuery(limit:$limit,per_page:$per_page,desc_linea_credito:$desc_linea_credito)' +
     '{ data {id,desc_linea_credito,tipo_interes,monto_maximo,monto_minimo,activo},per_page,total}} ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_linea_credito',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.linea_creditoQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('linea_creditoQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery

    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
   // showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfLineaCredito.NuevaLinea(desc_linea_credito,tipo_interes:string;monto_minimo,monto_maximo:integer;activo:boolean);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation postLineaCredito($desc_linea_credito:String,$tipo_interes:String,'+
    '$monto_maximo:Float,$monto_minimo:Float,$activo:Int)'+
    ' { linea_creditoMutation(desc_linea_credito:$desc_linea_credito,tipo_interes:$tipo_interes,'+
    ' monto_maximo:$monto_maximo,monto_minimo:$monto_minimo,activo:$activo)'+
    ' {id,desc_linea_credito,tipo_interes,monto_minimo,monto_maximo,activo}  } ';

    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('desc_linea_credito',TJSONString.Create(desc_linea_credito));
    dataVar.AddPair('tipo_interes',TJSONString.Create(tipo_interes));
    dataVar.AddPair('monto_minimo',TJSONNumber.Create(monto_minimo));
    dataVar.AddPair('monto_maximo',TJSONNumber.Create(monto_maximo));
    dataVar.AddPair('activo',TJSONNumber.Create(activo.ToInteger));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    resultado:=graph.ejecutar('linea_creditoMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    uHelpers.InsertarRegistroDataset(resultado,fdLineaCredito);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfLineaCredito.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfLineaCredito.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfLineaCredito.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
