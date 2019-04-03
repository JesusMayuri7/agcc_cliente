object fLoginForm: TfLoginForm
  Left = 0
  Top = 0
  Caption = 'Acceso al Sistema'
  ClientHeight = 215
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 64
    Top = 24
    Width = 361
    Height = 161
    Caption = 'Credenciales'
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object Label2: TLabel
      Left = 40
      Top = 83
      Width = 27
      Height = 13
      Caption = 'Clave'
    end
    object txtEmail: TEdit
      Left = 96
      Top = 24
      Width = 233
      Height = 21
      TabOrder = 0
      Text = 'administrador@gmail.com'
    end
    object txtClave: TEdit
      Left = 96
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'administrador'
    end
    object btn1: TButton
      Left = 182
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Ingresar'
      Default = True
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://ceopilo.test/api/login'
    ContentType = 'application/json'
    Params = <>
    Left = 464
    Top = 32
  end
  object RestRespuesta: TRESTResponse
    Left = 472
    Top = 160
  end
  object RestSolicitud: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RestRespuesta
    SynchronizedEvents = False
    Left = 472
    Top = 96
  end
end
