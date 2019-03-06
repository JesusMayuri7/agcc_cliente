unit uSolicitud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask, cxGraphics, cxControls,REST.Json,REST.Types,System.json,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,   System.Math,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxSpinEdit, Vcl.Buttons, cxGridBandedTableView, cxGridDBBandedTableView,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope;

type
  TfSolicitud = class(TForm)
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    PageControl1: TPageControl;
    tabFormulario: TTabSheet;
    tabLIstado: TTabSheet;
    Label1: TLabel;
    gridSolicitud: TcxGridDBTableView;
    gridTableViewSolicitudLevel1: TcxGridLevel;
    gridTableViewSolicitud: TcxGrid;
    fdSolicitud: TFDMemTable;
    dsSolicitud: TDataSource;
    fdSolicitudid: TIntegerField;
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
    Panel5: TPanel;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    cbbLineaCredito: TcxLookupComboBox;
    cbbPerfilCliente: TcxLookupComboBox;
    cbbTipoProducto: TcxLookupComboBox;
    Panel8: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    spnPlazo: TcxSpinEdit;
    spnMonto: TcxSpinEdit;
    Button1: TButton;
    Panel7: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    lblInteres: TLabel;
    lblLineaCredito: TLabel;
    lblMora: TLabel;
    lblPerfilCliente: TLabel;
    lblPlazoMaximo: TLabel;
    lblPlazoMinimo: TLabel;
    lblTipoProducto: TLabel;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    GridPanel2: TGridPanel;
    GridPanel1: TGridPanel;
    grid3: TcxGrid;
    gridCuota: TcxGridBandedTableView;
    gridCuotaColumn3: TcxGridBandedColumn;
    gridCuotaColumn1: TcxGridBandedColumn;
    gridCuotaColumn2: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridRendicion: TcxGridBandedTableView;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridLevel4: TcxGridLevel;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    txtDniCliente: TEdit;
    Label3: TLabel;
    txtNombresCliente: TEdit;
    Label4: TLabel;
    txtDniAval: TEdit;
    cxGrid1: TcxGrid;
    gridAvales: TcxGridBandedTableView;
    colNombres: TcxGridBandedColumn;
    colTipo: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    GroupBox3: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    txtNombresAval: TEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    cbbReporteCeop: TcxLookupComboBox;
    Label7: TLabel;
    cbbReporteInfo: TcxLookupComboBox;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    cbbTipoPrestamo: TcxLookupComboBox;
    cbbGarantia: TcxLookupComboBox;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
    LinkPropertyToFieldCaption5: TLinkPropertyToField;
    LinkPropertyToFieldCaption6: TLinkPropertyToField;
    LinkPropertyToField1: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    Label26: TLabel;
    spnCuota: TcxSpinEdit;
    colDni: TcxGridBandedColumn;
    cbbTipo: TComboBox;
    dsAvales: TDataSource;
    fdSolicitudplazo: TIntegerField;
    fdSolicitudcuota: TFloatField;
    fdSolicitudinteres: TFloatField;
    fdSolicitudestado: TStringField;
    gridSolicitudid: TcxGridDBColumn;
    gridSolicitudplazo: TcxGridDBColumn;
    gridSolicitudcuota: TcxGridDBColumn;
    gridSolicitudinteres: TcxGridDBColumn;
    gridSolicitudestado: TcxGridDBColumn;
    fdAvales: TFDMemTable;
    fdAvalesid: TIntegerField;
    fdSolicitudavales: TMemoField;
    fdAvalestipo: TStringField;
    fdSolicitudgarantia: TStringField;
    gridSolicitudColumn1: TcxGridDBColumn;
    fdSolicitudtipo_prestamo: TStringField;
    fdSolicitudempleado: TStringField;
    fdSolicitudtipo_producto: TStringField;
    gridSolicitudtipo_prestamo: TcxGridDBColumn;
    gridSolicitudempleado: TcxGridDBColumn;
    gridSolicitudtipo_producto: TcxGridDBColumn;
    Panel10: TPanel;
    GridPanel3: TGridPanel;
    cxGrid5: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    Panel11: TPanel;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1nombres: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1tipo: TcxGridDBBandedColumn;
    fdSolicitudcomentario: TStringField;
    Panel12: TPanel;
    Label28: TLabel;
    DBMemo1: TDBMemo;
    fdAvalesfull_name: TStringField;
    fdSolicitudperfil_cliente: TStringField;
    fdSolicitudlinea_credito: TStringField;
    fdSolicitudlinea_credito_id: TIntegerField;
    gridSolicitudperfil_cliente: TcxGridDBColumn;
    gridSolicitudlinea_credito: TcxGridDBColumn;
    GroupBox5: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Label27: TLabel;
    Label29: TLabel;
    fdSolicitudcliente_full_name: TStringField;
    fdSolicitudcliente_dni: TStringField;
    fdSolicitudtipo_prestamo_id: TIntegerField;
    fdSolicitudtipo_producto_id: TIntegerField;
    fdSolicitudgiro_negocio: TStringField;
    fdSolicitudgiro_negocio_id: TIntegerField;
    fdSolicitudgarantia_id: TIntegerField;
    fdSolicitudreporte_ceop: TStringField;
    fdSolicitudreporte_ceop_id: TIntegerField;
    fdSolicitudreporte_info: TStringField;
    fdSolicitudreporte_info_id: TIntegerField;
    fdSolicitudperfil_cliente_id: TIntegerField;
    fdSolicitudmonto: TFloatField;
    gridSolicitudmonto: TcxGridDBColumn;
    Memo1: TMemo;
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
    procedure cbbLineaCreditoPropertiesChange(Sender: TObject);
    procedure cbbPerfilClientePropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtDniClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtDniAvalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsSolicitudDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    var paginaActual:integer;
    procedure listar;
    procedure Limpiar();
    procedure EditarLinea(desc_linea_credito,tipo_interes:string;id,monto_minimo,monto_maximo:integer;activo:boolean);
    procedure NuevaLinea(desc_linea_credito,tipo_interes:string;monto_minimo,monto_maximo:integer;activo:boolean);
    function calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
  public
    { Public declarations }
  end;

var
  fSolicitud: TfSolicitud;

implementation

uses
  UGraph, UData, uHelpers, uCliente;


{$R *.dfm}


function TfSolicitud.calcularAhorro(monto,plazo,interes:real;dataset: TFdMemTable):real;
var inicial,programado,i_acumulado,cuota_mensual,capital_mes:real;
var recordCount:integer;
begin
  inicial:=0;
  programado:=0;
  cuota_mensual:=0;
  capital_mes:=0;
  while not dataset.Eof do
  begin
     if dataset.Fieldbyname('desc_ahorro').AsString='INICIAL' then
        inicial:=inicial+dataset.Fieldbyname('porcentaje').AsFloat;
     if dataset.Fieldbyname('desc_ahorro').AsString='PROGRAMADO' then
        programado:=programado+dataset.Fieldbyname('porcentaje').AsFloat;
     dataset.next;
  end;
    i_acumulado:=plazo*(interes/100);
    cuota_mensual:=((monto*i_acumulado)/plazo)+(monto/plazo)+((monto*(programado/100))/plazo);
    capital_mes:=roundTo(monto/plazo,-2);
    result:=cuota_mensual;
end;

procedure TfSolicitud.EditarLinea(desc_linea_credito,
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
    //  showmessage(resultado.ToString);
    uHelpers.InsertarRegistroDataset(resultado,fdSolicitud);

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.btnBuscarClick(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfSolicitud.btnNuevoClick(Sender: TObject);
begin
//TODO limpiar campos
Limpiar();
btnNuevo.Enabled:=true;
tabListado.TabVisible:=false;
tabFormulario.TabVisible:=true;
btnCancelar.Enabled:=true;
btnGuardar.Enabled:=true;
end;

procedure TfSolicitud.Button1Click(Sender: TObject);
var calculos:TJsonArray;
var cuota,interes:real;
begin
 cuota:=0;
 interes:=0;
 with cbbTipoProducto.Properties.Grid.DataController do
 begin
   if (spnMonto.Value>0) and (spnPlazo.Value>0) and (cbbTipoProducto.EditValue>0) then
   begin
      interes:=dmdata.fdTipoProducto.FieldValues['interes'];
     if dmdata.fdLineaCredito.FieldValues['tipo_interes']='SIMPLE' then
         begin
         calculos:=uHelpers.calcularTotales(interes,spnMonto.value,spnPlazo.value);
         cuota:=calcularAhorro(spnMonto.value,spnPlazo.Value,interes,dmdata.fdAhorro);
          end;
      if dmdata.fdLineaCredito.FieldValues['tipo_interes']='REBATIR' then
         begin
         cuota:=uHelpers.calcularTotalesRebatir(spnMonto.value,spnPlazo.Value,interes);
         end;
     spnCuota.Value:=cuota;
   end;
 end;
end;

procedure TfSolicitud.btnCancelarClick(Sender: TObject);
begin
  btnCancelar.Enabled:=false;
  Limpiar();
  //tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnGuardar.Enabled:=false;
end;

procedure TfSolicitud.btnEditarClick(Sender: TObject);
begin
  Limpiar();
  if gridSolicitud.Controller.SelectedRowCount=1 then
  begin
     Tag:=gridSolicitud.DataController.Values[gridSolicitud.Controller.FocusedRecordIndex , 0];
     ShowMessage(tag.ToString);
     if Tag>0 then
     begin
         btnEditar.Enabled:=false;
         //tabListado.TabVisible:=false;
         tabFormulario.TabVisible:=true;
         btnCancelar.Enabled:=true;
         btnGuardar.Enabled:=true;
          dmdata.RESTRequest1.Execute;
          memo1.Lines.Clear;
          memo1.Lines.Text:=dmdata.RESTRequest1.Response.Content;
          cbbLineaCredito.EditValue:=fdSolicitud.FieldValues['linea_credito_id'];
          uHelpers.llenarCombo2(dmdata.fdPerfilCliente,VarToStr(dmData.fdLineaCredito.FieldValues['perfil_cliente']));
          cbbPerfilCliente.EditValue:=fdSolicitud.FieldValues['perfil_cliente_id'];
          uHelpers.llenarCombo2(dmdata.fdTipoProducto,VarToStr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
           cbbTipoProducto.EditValue:=fdSolicitud.FieldValues['tipo_producto_id'];
         // no llena perfil cliente la segunda vez que edita.....
         cbbTipoPrestamo.EditValue:=fdSolicitud.FieldValues['tipo_prestamo_id'];
         cbbGarantia.EditValue:=fdSolicitud.FieldValues['garantia_id'];
         cbbReporteCeop.EditValue:=fdSolicitud.FieldValues['reporte_ceop_id'];
         cbbReporteInfo.EditValue:=fdSolicitud.FieldValues['reporte_info_id'];
         spnMonto.Value:=fdSolicitud.FieldValues['monto'];
         spnCuota.Value:=fdSolicitud.FieldValues['cuota'];
         spnPlazo.Value:=fdSolicitud.FieldValues['plazo'];
          dmdata.adapAhorro.Active;
          dmdata.adapTipoPrestamo.Active;
          dmdata.adapReporteCeop.Active;
          dmdata.adapReporteInfo.active;
          dmdata.adapGarantia.Active;
         //cbbGarantia.EditValue:=fdSolicitud.FieldValues['garantia_id'];
         //cbbReporteInfo.EditValue:=fdSolicitud.FieldValues['reporte_info_id'];
         //cbbReporteInfo.EditValue:=fdSolicitud.FieldValues['reporte_info_id'];
         //edLineaCredito.Text:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 1];
         //dmData.cbbInteres.ItemIndex:=cbbInteres.Items.IndexOf(gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 2]);
         //dmData.spbMinimo.Value:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 3];
         //spbMaximo.Value:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 4];
         //chkActivo.Checked:=gridLIneaCreditoDBTableView1.DataController.Values[gridLIneaCreditoDBTableView1.Controller.FocusedRecordIndex , 5];
     end;
  end;
end;

procedure TfSolicitud.btnGuardarClick(Sender: TObject);
begin
  btnGuardar.Enabled:=false;
  if Tag>0 then
    // EditarLinea(edlineaCredito.Text,cbbInteres.items[cbbInteres.itemindex],Tag,spbMinimo.value,spbMaximo.value,chkActivo.checked)
  else
    // nuevalinea(edlineaCredito.Text,cbbInteres.items[cbbInteres.itemindex],spbMinimo.value,spbMaximo.value,chkActivo.checked);
  tabFormulario.TabVisible:=false;
  tabListado.TabVisible:=true;
  btnNuevo.Enabled:=true;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=false;
end;

procedure TfSolicitud.cbbLineaCreditoPropertiesChange(Sender: TObject);
begin
//ShowMessage();
//uHelpers.JsonToDataset(dmdata.fdPerfilCliente,dmdata.fdLineaCredito.FieldByName('perfil_cliente').AsString);
//  uHelpers.llenarCombo(dmData.RESTResponseDataSetAdapter2,VarToStr(dmdata.fdLineaCredito.FieldByName('perfil_cliente').AsString));

if Tag>0 then
   begin
     //ShowMessage('Lnea credito '+VarToStr(dmdata.fdLineaCredito.FieldValues['perfil_cliente']));
    // cbbPerfilCliente.EditValue:=fdSolicitud.FieldValues['perfil_cliente_id'];
   end
   else
   begin
   uHelpers.llenarCombo2(dmData.fdPerfilCliente,VarToStr(dmdata.fdLineaCredito.FieldValues['perfil_cliente']));
   PrimerElementoCombo(cbbPerfilCliente);
   end;
end;

procedure TfSolicitud.cbbPerfilClientePropertiesChange(Sender: TObject);
begin

  if Tag>0 then
     begin
      //ShowMessage('Perfil cliente '+VarToStr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
      //cbbTipoProducto.EditValue:=fdSolicitud.FieldValues['tipo_producto_id'];
     end
  else
    begin
    uHelpers.llenarCombo2(dmdata.fdTipoProducto,VarToStr(dmdata.fdPerfilCliente.FieldValues['tipo_producto']));
     uHelpers.PrimerElementoCombo(cbbTipoProducto);
    end;
end;

procedure TfSolicitud.cbbRegistrosChange(Sender: TObject);
begin
paginaActual:=1;
listar();
end;

procedure TfSolicitud.dsSolicitudDataChange(Sender: TObject; Field: TField);
begin
//  uHelpers.LlenarCombo2(fdAvales,VarToStr(fdSolicitud.FieldValues['avales']));
end;

procedure TfSolicitud.FormCreate(Sender: TObject);
begin
paginaActual:=1;
listar();
{dmdata.RESTRequest1.Execute;
uHelpers.PrimerElementoCombo(cbbLineaCredito);
dmdata.adapAhorro.Active;
dmdata.adapTipoPrestamo.Active;
dmdata.adapReporteCeop.Active;
dmdata.adapReporteInfo.active;
dmdata.adapGarantia.Active;}
end;

procedure TfSolicitud.Limpiar;
begin
Tag:=0;
dmdata.fdLineaCredito.Close;
dmdata.fdPerfilCliente.Close;
dmData.fdTipoProducto.Close;
txtDniCliente.Text:='';
txtDniAval.Text:='';
txtNombresCliente.Text:='';
txtNombresAval.Text:='';

end;

procedure TfSolicitud.listar;
var graph:Tgraph;
var variables:TJSONObject;
var dataVar,dataRest,query:TJSONObject;
var resultado:TJsonObject;
var avales:widestring;
begin
    resultado:=TJSONObject.Create;
    graph:=TGraph.Create(dmdata.RESTClient1,fdSolicitud);
    try  // Cambiar por el query a consultar, hacer pruebas en Insomnia
    graph.query:='query solicitud { solicitudQuery { data {id,activo,monto,plazo,cuota,interes,'+
    'comentario,reporte_ceop,reporte_ceop_id,reporte_info,reporte_info_id,cliente_full_name,garantia,garantia_id,empleado,'+
    'tipo_producto,tipo_producto_id,tipo_prestamo,tipo_prestamo_id,nro_solicitud,estado,'+
    'perfil_cliente,perfil_cliente_id,'+'linea_credito,linea_credito_id,cliente_dni,'+
    'giro_negocio,giro_negocio_id,'+
    'avales {id,full_name,tipo} }}}';
    //NO variar
    variables:=TJSONObject.Create;
    dataVar:=TJSONObject.Create;
    dataVar.AddPair('limit',TJSONNumber.Create(cbbRegistros.Items[cbbRegistros.ItemIndex]));
    dataVar.AddPair('per_page',TJSONNumber.Create(paginaActual));
    if length(edcriterio.Text)>0 then
       dataVar.AddPair('desc_linea_credito',TJSONString.Create(edCriterio.Text));// depende el campo en que busques
    variables.AddPair('variables',dataVar);
    graph.variables:=variables;

    graph.rootElement:='data.solicitudQuery.data'; // cambiar por el nombre del Query que buscas linea_creditoQuery

    resultado:=graph.ejecutar('solicitudQuery');  // cambiar por el nombre del Query que buscas linea_creditoQuery
    //avales
    // showmessage(resultado.ToString);
    ShowMessage('avales');
     uHelpers.LlenarCombo2(fdAvales,VarToStr(fdSolicitud.FieldValues['avales']));

//    uHelpers.JsonToDataset(fdAvales,TJsonArray((TJsonObject(resultado.Get('data').JsonValue.ToJSON).Get(0)).JsonValue.ToJSON));
    // NO variar
    lblPaginaActual.Caption:=paginaActual.ToString;
    lblTotalPagina.Caption:= graph.totalPag.ToString;

    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;

end;

procedure TfSolicitud.NuevaLinea(desc_linea_credito,tipo_interes:string;monto_minimo,monto_maximo:integer;activo:boolean);
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
    uHelpers.InsertarRegistroDataset(resultado,fdSolicitud);
//    showmessage(resultado.ToString);
    finally
       FreeAndNil(resultado);
       FreeAndNil(graph);
    end;
end;

procedure TfSolicitud.spbPagSiguienteClick(Sender: TObject);
begin
    if strtoInt(lblTotalPagina.Caption)>paginaActual then
       begin
       paginaActual:=paginaActual+1;
       listar();
       end;
end;

procedure TfSolicitud.SpeedButton1Click(Sender: TObject);
begin
gridAvales.DataController.RecordCount:=gridAvales.DataController.RecordCount+1;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colDni.Position.ColIndex]:=txtDniAval.Text;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colNombres.Position.ColIndex]:=txtNombresAval.Text;
gridAvales.DataController.Values[gridAvales.DataController.RecordCount-1,colTipo.Position.ColIndex]:=cbbTipo.Items[cbbTipo.ItemIndex];
end;

procedure TfSolicitud.txtDniAvalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
     var ResultsForm:TfCliente;
   var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
   if Key=VK_RETURN then
      begin
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniCliente.Text);
       // ShowMessage(respuesta.ToString);
        if respuesta.TryGetValue('data',data) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                     txtNombresAval.Text:= item.Get('full_name').JsonValue.Value;
                     txtNombresAval.Tag:= item.Get('id').JsonValue.Value.ToInteger;
                end;
           end
        else
        begin
            ResultsForm := TfCliente.Create(nil);
            try
              //ResultsForm.:=StrToInt( txtDniCliente.Text);
              ResultsForm.ShowModal;
            finally
              ResultsForm.Free;
            end;
        end;
      end;
end;

procedure TfSolicitud.txtDniClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   var ResultsForm:TfCliente;
   var respuesta,item:TJSONObject;
   var id1:string;
   var id2:Integer;
   data:TJSONArray;
begin
   if Key=VK_RETURN then
      begin
        respuesta:=TJSONObject.Create();
        respuesta:=uHelpers.existeCliente(txtDniCliente.Text);
     //   ShowMessage(respuesta.ToString);
        if respuesta.TryGetValue('data',data) then
           begin
             //  ShowMessage(data.ToString);
             item:=data.Get(0) as TJSONObject;
             if item.TryGetValue('id',id1) then
                if TryStrToInt(id1,id2) then
                begin
                     txtNombresCliente.Text:= item.Get('full_name').JsonValue.Value;
                     txtNombresCliente.Tag:= item.Get('id').JsonValue.Value.ToInteger;
                end;
           end
        else
        begin
            ResultsForm := TfCliente.Create(nil);
            try
              //ResultsForm.:=StrToInt( txtDniCliente.Text);
              ResultsForm.ShowModal;
            finally
              ResultsForm.Free;
            end;
        end;
      end;
end;

procedure TfSolicitud.spbActualizarClick(Sender: TObject);
begin
  paginaActual:=1;
  listar();
end;

procedure TfSolicitud.spbPaginaAnteriorrrClick(Sender: TObject);
begin
    if paginaActual>1 then
       begin
       paginaActual:=paginaActual-1;
       listar();
    end;
end;



end.
