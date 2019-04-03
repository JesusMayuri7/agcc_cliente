unit uLoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types,IniFiles,
  REST.Response.Adapter, REST.Client,REST.Json,System.JSON,StrUtils,FireDAC.Comp.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfLoginForm = class(TForm)
    grp1: TGroupBox;
    txtEmail: TEdit;
    txtClave: TEdit;
    btn1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RESTClient1: TRESTClient;
    RestRespuesta: TRESTResponse;
    RestSolicitud: TRESTRequest;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function Login(email,clave:string):Boolean;
    procedure grabarIni(resultado:TJSONObject);
  public
    public class function execute():Boolean;
    { Public declarations }
  end;

var
  fLoginForm: TfLoginForm;

implementation

{$R *.dfm}

{ TfLoginForm }

function TfLoginForm.Login(email,clave:string):Boolean;
var error,exito,param,resultado:TJSONObject;
var mensaje:string;
begin
   Result:=False;
   param:=TJSONObject.Create;
   param.AddPair('email',TJSONString.Create(email));
   param.AddPair('password',TJSONString.Create(clave));

   RestSolicitud.AddParameter('body',param.ToString,TRESTRequestParameterKind.pkREQUESTBODY);
   RestSolicitud.Params.ParameterByName('body').ContentType:=TRESTContentType.ctAPPLICATION_JSON;

   RestSolicitud.Execute;
   resultado:=TJSONObject.Create;
   resultado:=TJSONObject(RestRespuesta.JSONValue);
      if resultado.TryGetValue('message',mensaje) then
      begin
         if resultado.Get('message').JsonValue.Value='exito' then
         begin
            grabarIni(TJSONObject(resultado.Get('data').JsonValue));

            Result:=True
         end;
      end
      else
         ShowMessage('Credenciales invalidas o verique su conexion');
end;

procedure TfLoginForm.btn1Click(Sender: TObject);
begin
 if Login(txtEmail.Text,txtClave.Text) then
 ModalResult := mrOK
 else
 ModalResult := mrAbort;
end;



class function TfLoginForm.execute: Boolean;
begin
  with TfLoginForm.Create(nil) do
  try
   Result := ShowModal = mrOk;
  finally
   free;
  end;
end;

procedure TfLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree
end;

procedure TfLoginForm.grabarIni(resultado: TJSONObject);
var
  Ini: TIniFile;
  menu:TJSONArray;
  I: Integer;
  item:TJSONObject;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'ceop.ini');
  try
     Ini.WriteString('LOGIN', 'token', resultado.Get('token').JSONValue.value);
  {   menu:=TJSONArray.Create;
     menu:=TJSONArray(resultado.Get('menu').JSONValue);
     for I := 0 to menu.Count-1 do
     begin
        item := menu.Get(i) as TJsonObject;
        Ini.WriteBool('MENU', item.Get('desc_menu').JSONValue.value,true);
     end;}
  finally
    FreeAndNil(Ini);
  end;
end;

end.
