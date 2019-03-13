unit uResolucion;

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
  Vcl.Buttons, cxSpinEdit;

type
  TfResolucion = class(TForm)
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabListado: TTabSheet;
    gridResolucion: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fdResolucion: TFDMemTable;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    cbbEstado: TComboBox;
    des: TLabel;
    txtComentario: TMemo;
    Label3: TLabel;
    fdResolucionid: TIntegerField;
    fdResolucionsolicitud_id: TIntegerField;
    fdResolucionnro_resolucion: TIntegerField;
    fdResolucionestado: TStringField;
    fdResolucioncliente_full_name: TStringField;
    fdResolucionempleado_full_name: TStringField;
    fdResolucionmonto: TFloatField;
    fdResolucioncuota: TFloatField;
    fdResolucionplazo: TIntegerField;
    dsResolucion: TDataSource;
    gridResolucionsolicitud_id: TcxGridDBColumn;
    gridResolucionnro_resolucion: TcxGridDBColumn;
    gridResolucionestado: TcxGridDBColumn;
    gridResolucioncliente_full_name: TcxGridDBColumn;
    gridResolucionempleado_full_name: TcxGridDBColumn;
    gridResolucionmonto: TcxGridDBColumn;
    gridResolucioncuota: TcxGridDBColumn;
    gridResolucionplazo: TcxGridDBColumn;
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    fdResolucioncomentario: TStringField;
    Panel2: TPanel;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnGuardar: TButton;
    txtResolucion: TEdit;
    txtSolicitud: TEdit;
    txtCliente: TEdit;
    Label4: TLabel;
    txtAnalista: TEdit;
    Label5: TLabel;
    spnMonto: TcxSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    spnPlazo: TcxSpinEdit;
    Label6: TLabel;
    spnCuota: TcxSpinEdit;
    pnCabecera: TPanel;
    Label1: TLabel;
    spbPagSiguiente: TSpeedButton;
    spbPaginaAnteriorrr: TSpeedButton;
    spbActualizar: TSpeedButton;
    Panel3: TPanel;
    Label12: TLabel;
    lblPaginaActual: TLabel;
    Label10: TLabel;
    lblTotalPagina: TLabel;
    Panel4: TPanel;
    Label11: TLabel;
    cbbRegistros: TComboBox;
    Panel5: TPanel;
    edCriterio: TEdit;
    btnBuscar: TButton;
    procedure spbActualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbbRegistrosChange(Sender: TObject);
    procedure spbPaginaAnteriorrrClick(Sender: TObject);
    procedure spbPagSiguienteClick(Sender: TObject);
  private
    { Private declarations }
    var paginaActual:integer;
    procedure listar;
  public
    { Public declarations }
  end;

var
  fResolucion: TfResolucion;

implementation

uses
  UGraph, UData;


{$R *.dfm}

{ TfLineaCredito }

procedure TfResolucion.btnCancelarClick(Sender: TObject);
begin
         txtResolucion.Text:='';
         txtSolicitud.Text:='';
         spnMonto.Value:=0;
         spnCuota.Value:=0;
         spnPlazo.Value:=0;
         txtCliente.Text:='';
         txtAnalista.Text:='';
         txtComentario.Lines.Text:=''
end;

procedure TfResolucion.btnEditarClick(Sender: TObject);
begin
if gridResolucion.Controller.SelectedRowCount=1 then
  begin
//     Tag:=gridSolicitud.DataController.Values[gridSolicitud.Controller.FocusedRecordIndex , 0];
     Tag:=fdResolucion.FieldValues['id'];
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;

         //tabListado.TabVisible:=false;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;

         tabFormulario.TabVisible:=true;
         PageControl1.ActivePageIndex:=0;

         txtResolucion.Text:=fdResolucion.FieldValues['nro_resolucion'];
         txtSolicitud.Text:=fdResolucion.FieldValues['solicitud_id'];
         spnMonto.Value:=fdResolucion.FieldValues['monto'];
         spnCuota.Value:=fdResolucion.FieldValues['cuota'];
         spnPlazo.Value:=fdResolucion.FieldValues['plazo'];
         txtCliente.Text:=fdResolucion.FieldValues['cliente_full_name'];
         txtAnalista.Text:=fdResolucion.FieldValues['empleado_full_name'];

         if fdResolucion.FieldValues['comentario']=null then
            txtComentario.Lines.Text:=''
         else
            txtComentario.Lines.Text:=fdResolucion.FieldValues['comentario'];
     end;
  end;
end;

procedure TfResolucion.btnGuardarClick(Sender: TObject);
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var I:byte;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='mutation editResolucion($id:Int,$estado:String,$comentario:String)'+
    ' { resolucionMutation(id:$id,estado:$estado,comentario:$comentario) {id,estado,comentario}}';

    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('id',TJSONNumber.Create(Tag));
    dataVar.AddPair('estado',TJSONString.Create(cbbEstado.Items[cbbEstado.ItemIndex]));
    dataVar.AddPair('comentario',TJSONString.Create(txtComentario.Lines.Text));
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;
    resultado:=graph.ejecutar('resolucionMutation');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    listar();
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfResolucion.cbbRegistrosChange(Sender: TObject);
begin
     paginaActual:=1;
     listar();
end;

procedure TfResolucion.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfResolucion.listar;
var graph:Tgraph;
var variables:TJSONObject;
var data,dataVar,query:TJSONObject;
var orden,page:Integer;
var tipo_bien:string;
var resultado:TJsonObject;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdResolucion);
    try
    graph.query:='query verResolucion { resolucionQuery { data '+
    '{ id,solicitud_id,nro_resolucion,estado,cliente_full_name,empleado_full_name,monto,cuota,plazo,comentario } }}';

    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_linea_credito',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.variables:=variables;

    graph.rootElement:='data.resolucionQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('resolucionQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfResolucion.spbActualizarClick(Sender: TObject);
begin
listar();
end;

procedure TfResolucion.spbPaginaAnteriorrrClick(Sender: TObject);
begin
       if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;

procedure TfResolucion.spbPagSiguienteClick(Sender: TObject);
begin
      if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

end.
