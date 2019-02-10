object fPerfilCliente: TfPerfilCliente
  Left = 0
  Top = 0
  Caption = 'Linea Credito'
  ClientHeight = 359
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 64
    Top = 139
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label9: TLabel
    Left = 56
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Reporte Ceop'
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitTop = -5
    object Label1: TLabel
      Left = 193
      Top = 8
      Width = 106
      Height = 21
      Alignment = taCenter
      Caption = 'Perfil Cliente'
      Color = 13395456
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Britannic Bold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object pnDetalle: TPanel
    Left = 0
    Top = 33
    Width = 996
    Height = 326
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 513
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 994
      Height = 324
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 511
      object TabSheet1: TTabSheet
        Caption = 'Formulario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitHeight = 483
        object pnPieForm: TPanel
          Left = 0
          Top = 224
          Width = 986
          Height = 72
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 411
          object btnNuevo: TButton
            Left = 51
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Nuevo'
            TabOrder = 0
          end
          object Button1: TButton
            Left = 196
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Editar'
            Enabled = False
            TabOrder = 1
          end
          object Button2: TButton
            Left = 462
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            Enabled = False
            TabOrder = 2
          end
          object Button3: TButton
            Left = 320
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Guardar'
            Enabled = False
            TabOrder = 3
          end
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 23
          Width = 526
          Height = 194
          Caption = 'Perfil Cliente'
          Color = clGradientActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Britannic Bold'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 76
            Height = 16
            Caption = 'Descripcion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'Britannic Bold'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 33
            Top = 288
            Width = 56
            Height = 16
            Caption = 'Garantia'
          end
          object Label3: TLabel
            Left = 39
            Top = 136
            Width = 76
            Height = 16
            Caption = 'Descripcion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = 'Britannic Bold'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 130
            Top = 37
            Width = 351
            Height = 34
            TabOrder = 0
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 138
            Top = 133
            TabOrder = 1
            Width = 351
          end
        end
        object Button4: TButton
          Left = 832
          Top = 411
          Width = 75
          Height = 25
          Caption = 'Button4'
          TabOrder = 2
          OnClick = Button4Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        ExplicitHeight = 483
        object pnPieLLista: TPanel
          Left = 0
          Top = 255
          Width = 986
          Height = 41
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 442
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 986
          Height = 255
          Align = alClient
          TabOrder = 1
          ExplicitLeft = -5
          ExplicitTop = 152
          ExplicitHeight = 442
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  object fdLineaCredito: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 725
    Top = 458
  end
end
