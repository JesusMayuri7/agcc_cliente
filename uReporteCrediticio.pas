unit uReporteCrediticio;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit;

type
  TfReporteCrediticio = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnPieForm: TPanel;
    pnPieLLista: TPanel;
    btnNuevo: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label5: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fdLineaCredito: TFDMemTable;
    Button4: TButton;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure listar;
  public
    { Public declarations }
  end;

var
  fReporteCrediticio: TfReporteCrediticio;

implementation

uses
  UGraph, UData;


{$R *.dfm}

{ TfLineaCredito }

procedure TfReporteCrediticio.Button4Click(Sender: TObject);
begin
listar();
end;

procedure TfReporteCrediticio.listar;
var graph:Tgraph;
var variables:TJSONObject;
var data,query:TJSONObject;
var orden,page:Integer;
var tipo_bien:string;
begin
    orden:=12;
    tipo_bien:='S';
  //  page:=StrToInt(edOrden.Text);
    graph:=TGraph.Create(dmdata.RESTClient1);
    try
    graph.query:='query verLineaCredito {linea_creditoQuery { data { id } } }';

    variables:=TJSONObject.Create;
    data:=TJSONObject.Create;
    data.AddPair('limit',TJSONNumber.Create(5));
    data.AddPair('per_page',TJSONNumber.Create(1));
   // variables.AddPair('variables',data);

  //  graph.variables:=variables;
 //   graph.rootElement:='data.ordenes.data';

   // ederror.Lines.add(graph.ejecutar());
    finally
       FreeAndNil(graph);
    end;
end;

end.
