unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    ActionToolBar1: TActionToolBar;
    ImageList1: TImageList;
    actManager: TActionManager;
    actArchivo: TAction;
    actSalir: TAction;
    actLineaCredito: TAction;
    actPerfilCliente: TAction;
    actTipoProducto: TAction;
    actCliente: TAction;
    menu: TMainMenu;
    actArchivo1: TMenuItem;
    actLineaCredito1: TMenuItem;
    actPerfilCliente1: TMenuItem;
    actTipoProducto1: TMenuItem;
    actCliente1: TMenuItem;
    actSalir1: TMenuItem;
    procedure actArchivoExecute(Sender: TObject);
    procedure actLineaCreditoExecute(Sender: TObject);
    procedure actPerfilClienteExecute(Sender: TObject);
    procedure actTipoProductoExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses
  uLineaCredito, UData, uPerfilCliente, uTipoProducto;

{$R *.dfm}

procedure TForm1.actArchivoExecute(Sender: TObject);
begin
    ShowMessage('hola');
end;

procedure TForm1.actLineaCreditoExecute(Sender: TObject);
    var ResultsForm:TfLineaCredito;
begin
   ResultsForm := TfLineaCredito.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;
end;

procedure TForm1.actPerfilClienteExecute(Sender: TObject);
 var ResultsForm:TfPerfilCLiente;
begin
   ResultsForm := TfPerfilCLiente.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;
end;

procedure TForm1.actTipoProductoExecute(Sender: TObject);

var ResultsForm:TfTipoProducto;
begin
   ResultsForm := TfTipoProducto.Create(nil);
  try
    ResultsForm.ShowModal;
  finally
    ResultsForm.Free;
  end;

end;

end.
