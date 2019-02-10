program CEOPILO;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {Form1},
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
  uLineaCredito in 'uLineaCredito.pas' {fLineaCredito};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfAhorro, fAhorro);
  Application.CreateForm(TfAuditoria, fAuditoria);
  Application.CreateForm(TfCliente, fCliente);
  Application.CreateForm(TfEmpleado, fEmpleado);
  Application.CreateForm(TfGarantia, fGarantia);
  Application.CreateForm(TfGiroNegocio, fGiroNegocio);
  Application.CreateForm(TfMenu1, fMenu1);
  Application.CreateForm(TfModulo, fModulo);
  Application.CreateForm(TfPerfilCliente, fPerfilCliente);
  Application.CreateForm(TfPermiso, fPermiso);
  Application.CreateForm(TfReporteCeop, fReporteCeop);
  Application.CreateForm(TfReporteCrediticio, fReporteCrediticio);
  Application.CreateForm(TfResolucion, fResolucion);
  Application.CreateForm(TfRol, fRol);
  Application.CreateForm(TfLineaCredito, fLineaCredito);
  Application.Run;
end.
