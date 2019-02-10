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
    fdLineaCredito: TFDMemTable;
    dsLineaCredito: TDataSource;
    fdLineaCreditoid: TIntegerField;
    fdLineaCreditodesc_linea_credito: TStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1desc_linea_credito: TcxGridDBColumn;
    fdLineaCreditomonto_minimo: TFloatField;
    fdLineaCreditomonto_maximo: TFloatField;
    fdLineaCreditoactivo: TBooleanField;
    cxGrid1DBTableView1interes: TcxGridDBColumn;
    cxGrid1DBTableView1monto_minimo: TcxGridDBColumn;
    cxGrid1DBTableView1monto_maximo: TcxGridDBColumn;
    cxGrid1DBTableView1activo: TcxGridDBColumn;
    fdLineaCreditotipo_interes: TStringField;
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
  fLineaCredito: TfLineaCredito;

implementation

uses
  UGraph, UData;


{$R *.dfm}

{ TfLineaCredito }

procedure TfLineaCredito.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
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

procedure TfLineaCredito.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
