program CEOPILO;

uses
  Vcl.Forms,
  UData in 'UData.pas' {dmData: TDataModule},
  uTipoProducto in 'uTipoProducto.pas' {fTipoProducto},
  uAhorro in 'uAhorro.pas' {fAhorro},
  uAuditoria in 'uAuditoria.pas' {fAuditoria},
  uCliente in 'uCliente.pas' {fCliente},
  uEmpleado in 'uEmpleado.pas' {fEmpleado},
  uGarantia in 'uGarantia.pas' {fGarantia},
  uGiroNegocio in 'uGiroNegocio.pas' {fGiroNegocio},
  UGraph in 'UGraph.pas',
  uMenu1 in 'uMenu1.pas' {fMenu1},
  uModulo in 'uModulo.pas' {fModulo},
  uPerfilCliente in 'uPerfilCliente.pas' {fPerfilCliente},
  uPermiso in 'uPermiso.pas' {fPermiso},
  uReporteCeop in 'uReporteCeop.pas' {fReporteCeop},
  uReporteCrediticio in 'uReporteCrediticio.pas' {fReporteCrediticio},
  uResolucion in 'uResolucion.pas' {fResolucion},
  uRol in 'uRol.pas' {fRol},
  uSolicitud in 'uSolicitud.pas' {fSolicitud},
  uHelpers in 'uHelpers.pas',
  uMenu in 'uMenu.pas' {fMenu},
  uTipoInfo in 'uTipoInfo.pas' {fTipoInfo},
  uTipoPrestamo in 'uTipoPrestamo.pas' {fTipoPrestamo},
  uLineaCredito in 'uLineaCredito.pas' {fLineaCredito},
  uCalcular in 'uCalcular.pas' {fCalcular};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
