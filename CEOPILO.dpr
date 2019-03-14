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
  uHelpers in 'uHelpers.pas',
  uLineaCredito in 'uLineaCredito.pas' {fLineaCredito},
  uCalcular in 'uCalcular.pas' {fCalcular},
  uMenu in 'uMenu.pas' {fMenu},
  uAdapterJson in 'uAdapterJson.pas',
  Vcl.Themes,
  Vcl.Styles,
  uTipoInfo in 'uTipoInfo.pas' {fTipoInfo},
  uTipoInfoDetalle in 'uTipoInfoDetalle.pas' {fTipoInfoDetalle},
  uSolicitud in 'uSolicitud.pas' {fSolicitud};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
