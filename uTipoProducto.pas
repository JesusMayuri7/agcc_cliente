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
  cxSpinEdit, Vcl.Buttons;

type
  TfTipoProducto = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fdTipoProducto: TFDMemTable;
    dsTipoProducto: TDataSource;
    fdTipoProductoid: TIntegerField;
    edtDescripcion: TEdit;
    cbbInteres: TComboBox;
    spnMinimo: TcxSpinEdit;
    spnMaximo: TcxSpinEdit;
    chkActivo: TCheckBox;
    Panel1: TPanel;
    btnNuevo: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
    fdTipoProductodesc_tipo_producto: TStringField;
    fdTipoProductointeres: TFloatField;
    fdTipoProductomora: TFloatField;
    fdTipoProductoplazo_minimo: TIntegerField;
    fdTipoProductoplazo_maximo: TIntegerField;
    fdTipoProductoactivo: TBooleanField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1desc_tipo_producto: TcxGridDBColumn;
    cxGrid1DBTableView1interes: TcxGridDBColumn;
    cxGrid1DBTableView1mora: TcxGridDBColumn;
    cxGrid1DBTableView1plazo_minimo: TcxGridDBColumn;
    cxGrid1DBTableView1plazo_maximo: TcxGridDBColumn;
    cxGrid1DBTableView1activo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cbbRegistrosChange(Sender: TObject);
    procedure spbPagSiguienteClick(Sender: TObject);
    procedure spbPaginaAnteriorrrClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    var paginaActual:integer;
    procedure listar;
  public
    { Public declarations }
  end;

var
  fTipoProducto: TfTipoProducto;

implementation

uses
  UGraph, UData;


{$R *.dfm}

{ TfLineaCredito }

procedure TfTipoProducto.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
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
    ' { tipo_productoQuery(limit:$limit,per_page:$per_page,desc_tipo_producto:$desc_tipo_producto)'+
    ' { data {id,desc_tipo_producto,interes,mora,plazo_minimo,plazo_maximo,activo},per_page,total}} ';

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
    //showmessage(resultado.ToString);
    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
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

procedure TfTipoProducto.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
