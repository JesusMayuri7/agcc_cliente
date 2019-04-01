unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,System.IniFiles,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.ImageList, Vcl.ImgList,Json,
  dxGDIPlusClasses, Vcl.ExtCtrls, uTipoPrestamo,REST.Types;

type
  TfMenu = class(TForm)
    menu: TMainMenu;
    actManager: TActionManager;
    actSalir1: TMenuItem;
    ActionToolBar1: TActionToolBar;
    ImageList1: TImageList;
    actLineaCredito: TAction;
    actLineaCredito1: TMenuItem;
    actPerfilCliente: TAction;
    actPerfilCliente1: TMenuItem;
    actTipoProducto: TAction;
    actTipoProducto1: TMenuItem;
    actCliente: TAction;
    actAhorro: TAction;
    actAhorro1: TMenuItem;
    actReporteCeop: TAction;
    actReporteCeop1: TMenuItem;
    actReporteCrediticio: TAction;
    actReporteCrediticio1: TMenuItem;
    actGiroNegocio: TAction;
    GiroNegocio1: TMenuItem;
    actTipoPrestamo: TAction;
    ipoPrestamo1: TMenuItem;
    actTipoInfo: TAction;
    ipoInfo1: TMenuItem;
    actGarantia: TAction;
    Garantia1: TMenuItem;
    actSolicitud: TAction;
    Solicitud1: TMenuItem;
    actEmpleado: TAction;
    actAuditoria: TAction;
    actResolucion: TAction;
    Resolucion1: TMenuItem;
    Image1: TImage;
    Historial1: TMenuItem;
    Gestion1: TMenuItem;
    Negocio1: TMenuItem;
    Credito1: TMenuItem;
    Seguidad1: TMenuItem;
    Empleado1: TMenuItem;
    Cliente1: TMenuItem;
    Auditoria1: TMenuItem;
    Reportes1: TMenuItem;
    actCalcular: TAction;
    Simulador1: TMenuItem;
    actInfoDetalle: TAction;
    actInfoDetalle1: TMenuItem;
    procedure actArchivoExecute(Sender: TObject);
    procedure actLineaCreditoExecute(Sender: TObject);
    procedure actPerfilClienteExecute(Sender: TObject);
    procedure actTipoProductoExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actAhorroExecute(Sender: TObject);
    procedure actReporteCeopExecute(Sender: TObject);
    procedure actReporteCrediticioExecute(Sender: TObject);
    procedure actGiroNegocioExecute(Sender: TObject);
    procedure actTipoPrestamoExecute(Sender: TObject);
    procedure actGarantiaExecute(Sender: TObject);
    procedure actSolicitudExecute(Sender: TObject);
    procedure actEmpleadoExecute(Sender: TObject);
    procedure actAuditoriaExecute(Sender: TObject);
    procedure actResolucionExecute(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
    procedure actTipoInfoExecute(Sender: TObject);
    procedure actInfoDetalleExecute(Sender: TObject);
    function cargarToken:WideString;
    function cargarMenu(token:WideString): TJSONArray;
    procedure habilitarMenu(menu:TJSONArray);
    procedure FormCreate(Sender: TObject);
    procedure actSalir1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  fMenu: TfMenu;

implementation

uses
  uLineaCredito, UData, uPerfilCliente, uTipoProducto, uCliente, uAhorro,uReporteCeop,
  uReporteCrediticio,uGiroNegocio,uGarantia,
  uEmpleado,uAuditoria,uResolucion, uCalcular, uSolicitud, uTipoInfo,
  uTipoInfoDetalle;

{$R *.dfm}

procedure TfMenu.actArchivoExecute(Sender: TObject);
begin
    ShowMessage('hola');
end;

procedure TfMenu.actAuditoriaExecute(Sender: TObject);
var ResultsForm:TfAuditoria;
begin
      ResultsForm := TfAuditoria.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actAhorroExecute(Sender: TObject);
var ResultsForm:TfAhorro;
begin
      ResultsForm := TfAhorro.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;

end;

procedure TfMenu.actCalcularExecute(Sender: TObject);
var ResultsForm:TfCalcular;
begin
      ResultsForm := TfCalcular.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actClienteExecute(Sender: TObject);
var ResultsForm:TfCliente;
begin
      ResultsForm := TfCliente.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;

end;

procedure TfMenu.actEmpleadoExecute(Sender: TObject);
var ResultsForm:TfEmpleado;
begin
      ResultsForm := TfEmpleado.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actLineaCreditoExecute(Sender: TObject);
var ResultsForm:TfLineaCredito;
begin
   ResultsForm := TfLineaCredito.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;
end;

procedure TfMenu.actPerfilClienteExecute(Sender: TObject);
 var ResultsForm:TfPerfilCLiente;
begin
   ResultsForm := TfPerfilCLiente.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;
end;

procedure TfMenu.actReporteCeopExecute(Sender: TObject);
var ResultsForm:TfReporteCeop;
begin
      ResultsForm := TfReporteCeop.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;

end;

procedure TfMenu.actReporteCrediticioExecute(Sender: TObject);
var ResultsForm:TfReporteCrediticio;
begin
      ResultsForm := TfReporteCrediticio.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
      end;
end;

procedure TfMenu.actResolucionExecute(Sender: TObject);
var ResultsForm:TfResolucion;
begin
      ResultsForm := TfResolucion.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actSalir1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfMenu.actSolicitudExecute(Sender: TObject);
 var ResultsForm:TfSolicitud;
begin
     ResultsForm := TfSolicitud.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actTipoInfoExecute(Sender: TObject);
var ResultsForm:TfTipoInfo;
begin
      ResultsForm := TfTipoInfo.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
      end;
end;

procedure TfMenu.actTipoPrestamoExecute(Sender: TObject);
var ResultsForm:TfTipoPrestamo;
begin
     ResultsForm := TfTipoPrestamo.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actTipoProductoExecute(Sender: TObject);

var ResultsForm:TfTipoProducto;
begin
   ResultsForm := TfTipoProducto.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;

end;

function TfMenu.cargarMenu(token:WideString): TJSONArray;
var error,exito,param,resultado:TJSONObject;
var mensaje:string;
begin
   Result:=TJSONArray.Create;
   resultado:=TJSONObject.Create;
   dmdata.RestMenu.Params.AddItem('Accept',
                            'application/json, */*; q=0.01',
                            TRESTRequestParameterKind.pkHTTPHEADER);
   dmdata.RestMenu.AddParameter('Authorization','Bearer '+token,TRESTRequestParameterKind.pkHTTPHEADER);
   dmdata.RestMenu.Params.ParameterByName('Authorization').Options :=[poDoNotEncode];
   dmdata.RestMenu.Execute;

   resultado:=TJSONObject(dmdata.RespMenu.JSONValue);
   //ShowMessage(resultado.ToString);
      if resultado.TryGetValue('message',mensaje) then
      begin
         if resultado.Get('message').JsonValue.Value='exito' then
         begin
             result:=TJSONArray(resultado.Get('data').JsonValue);
         end;
      end
      else
         ShowMessage('Error al cargar el Menu de opciones');
end;

function TfMenu.cargarToken: WideString;
var
  Ini: TIniFile;
  menu:TStringList;
  I: Integer;
  item:TJSONObject;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ceop.ini');
  try
    menu:=TStringList.Create;
    Result:=Ini.ReadString('LOGIN','token','');
   // ShowMessage(result);
  finally
    FreeAndNil(Ini);
  end;
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
dmdata.permisos:=TJSONArray.Create;
dmData.Permisos:=cargarMenu(cargarToken);
habilitarMenu(dmdata.Permisos);
end;

procedure TfMenu.habilitarMenu(menu:TJSONArray);
var
  Ini: TIniFile;
  I: Integer;
  item:TJSONObject;

begin
    for I := 0 to menu.Count-1 do
      begin
          item := menu.Get(i) as TJsonObject;
          TAction(FindComponent(item.Get('desc_menu').JsonValue.Value)).Enabled:=True;
      end;
end;

procedure TfMenu.actGarantiaExecute(Sender: TObject);
var ResultsForm:TfGarantia;
begin
      ResultsForm := TfGarantia.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;
end;

procedure TfMenu.actGiroNegocioExecute(Sender: TObject);
var ResultsForm:TfGiroNegocio;
begin
      ResultsForm := TfGiroNegocio.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
end;

end;

procedure TfMenu.actInfoDetalleExecute(Sender: TObject);
   var ResultsForm:TfTipoInfoDetalle;
begin
      ResultsForm := TfTipoInfoDetalle.Create(nil);
      try
        ResultsForm.ShowModal;
      finally
        ResultsForm.Free;
      end;
end;

end.
