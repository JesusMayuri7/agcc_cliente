unit UData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, IPPeerClient, REST.Client, REST.Response.Adapter,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types, System.ImageList,
  Vcl.ImgList, Vcl.Controls;

type
  TdmData = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    dsLineaCredito: TDataSource;
    dsAhorro: TDataSource;
    fdAhorro: TFDMemTable;
    IntegerField2: TIntegerField;
    fdAhorrodesc_ahorro: TStringField;
    fdAhorroporcentaje: TFloatField;
    fdLineaCredito: TFDMemTable;
    fdLineaCreditoid: TWideStringField;
    fdLineaCreditodesc_linea_credito: TWideStringField;
    fdLineaCreditotipo_interes: TWideStringField;
    fdLineaCreditomonto_minimo: TWideStringField;
    fdLineaCreditomonto_maximo: TWideStringField;
    fdLineaCreditoperfil_cliente: TMemoField;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    adapAhorro: TRESTResponseDataSetAdapter;
    dsReporteCeop: TDataSource;
    fdReporteCeop: TFDMemTable;
    IntegerField3: TIntegerField;
    adapReporteCeop: TRESTResponseDataSetAdapter;
    dsReporteInfo: TDataSource;
    fdReporteInfo: TFDMemTable;
    IntegerField4: TIntegerField;
    adapReporteInfo: TRESTResponseDataSetAdapter;
    fdReporteInfodesc_historial_crediticio: TStringField;
    fdReporteCeopdesc_reporte_ceop: TStringField;
    dsTipoPrestamo: TDataSource;
    fdTipoPrestamo: TFDMemTable;
    IntegerField5: TIntegerField;
    adapTipoPrestamo: TRESTResponseDataSetAdapter;
    fdTipoPrestamodesc_tipo_prestamo: TStringField;
    dsGarantia: TDataSource;
    fdGarantia: TFDMemTable;
    IntegerField6: TIntegerField;
    adapGarantia: TRESTResponseDataSetAdapter;
    fdGarantiadesc_garantia: TStringField;
    dsPerfilCliente: TDataSource;
    dsTipoProducto: TDataSource;
    fdTipoProducto: TFDMemTable;
    IntegerField1: TIntegerField;
    fdTipoProductodesc_tipo_producto: TStringField;
    fdTipoProductointeres: TFloatField;
    fdTipoProductomora: TFloatField;
    fdTipoProductoplazo_minimo: TIntegerField;
    fdTipoProductoplazo_maximo: TIntegerField;
    fdPerfilCliente: TFDMemTable;
    fdPerfilClienteid: TIntegerField;
    fdPerfilClientedesc_perfil_cliente: TStringField;
    fdPerfilClientetipo_producto: TMemoField;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    dsGiroNegocio: TDataSource;
    fdGiroNegocio: TFDMemTable;
    IntegerField7: TIntegerField;
    RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter;
    fdGiroNegociodesc_giro_negocio: TStringField;
    ImageList1: TImageList;
    fdTipoInfo: TFDMemTable;
    fdTipoInfoid: TIntegerField;
    fdTipoInfodesc_tipo_info_detalle: TStringField;
    fdTipoInfotipo_info_id: TIntegerField;
    fdTipoInfotipo: TStringField;
    fdTipoInfotipo_info: TStringField;
    fdTipoInfoinformacion: TStringField;
    dsTipoInfo: TDataSource;
    adapTipoInfo: TRESTResponseDataSetAdapter;
    fdTipoInfomonto: TFloatField;
    fdTipoInfosolicitud_id: TIntegerField;
    fdTipoInfotipo_info_detalle_id: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
