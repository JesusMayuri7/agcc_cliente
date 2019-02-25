unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.ImageList, Vcl.ImgList,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TfMenu = class(TForm)
    menu: TMainMenu;
    actManager: TActionManager;
    actArchivo1: TMenuItem;
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
    actCliente1: TMenuItem;
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
    actTipoInfoDetalle: TAction;
    ipoInfoDetalle1: TMenuItem;
    actGarantia: TAction;
    Garantia1: TMenuItem;
    actSolicitud: TAction;
    Solicitud1: TMenuItem;
    actEmpleado: TAction;
    Empleado1: TMenuItem;
    actAuditoria: TAction;
    Auditoria1: TMenuItem;
    actResolucion: TAction;
    Resolucion1: TMenuItem;
    Image1: TImage;
    procedure actArchivoExecute(Sender: TObject);
    procedure actLineaCreditoExecute(Sender: TObject);
    procedure actPerfilClienteExecute(Sender: TObject);
    procedure actTipoProductoExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actAhorroExecute(Sender: TObject);
    procedure actReporteCeopExecute(Sender: TObject);
    procedure actReporteCrediticioExecute(Sender: TObject);
    procedure actGiroNegocioExecute(Sender: TObject);
    procedure actGarantiaExecute(Sender: TObject);
    procedure actEmpleadoExecute(Sender: TObject);
    procedure actAuditoriaExecute(Sender: TObject);
    procedure actResolucionExecute(Sender: TObject);



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
  uEmpleado,uAuditoria,uResolucion, uCalcular;

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
var ResultsForm:TfCalcular;
begin
      ResultsForm := TfCalcular.Create(nil);
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

end.
