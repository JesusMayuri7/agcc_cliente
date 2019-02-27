unit UData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, IPPeerClient, REST.Client, REST.Response.Adapter,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types;

type
  TdmData = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    dsLineaCredito: TDataSource;
    dsPerfilCliente: TDataSource;
    dsTipoProducto: TDataSource;
    dsAhorro: TDataSource;
    fdAhorro: TFDMemTable;
    IntegerField2: TIntegerField;
    fdAhorrodesc_ahorro: TStringField;
    fdAhorroporcentaje: TFloatField;
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
    fdLineaCredito: TFDMemTable;
    fdLineaCreditoid: TWideStringField;
    fdLineaCreditodesc_linea_credito: TWideStringField;
    fdLineaCreditotipo_interes: TWideStringField;
    fdLineaCreditomonto_minimo: TWideStringField;
    fdLineaCreditomonto_maximo: TWideStringField;
    fdLineaCreditoperfil_cliente: TMemoField;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter;
    RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter;
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
