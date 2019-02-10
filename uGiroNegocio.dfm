object fGiroNegocio: TfGiroNegocio
  Left = 0
  Top = 0
  Caption = 'GiroNegocio'
  ClientHeight = 517
  ClientWidth = 830
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
    Width = 830
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 193
      Top = 8
      Width = 104
      Height = 19
      Alignment = taCenter
      Caption = 'Giro Negocio'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object pnDetalle: TPanel
    Left = 0
    Top = 33
    Width = 830
    Height = 484
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 828
      Height = 482
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Formulario'
        object pnPieForm: TPanel
          Left = 0
          Top = 256
          Width = 820
          Height = 198
          Align = alBottom
          TabOrder = 0
          object btnNuevo: TButton
            Left = 96
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Nuevo'
            TabOrder = 0
          end
          object Button1: TButton
            Left = 224
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Editar'
            Enabled = False
            TabOrder = 1
          end
          object Button2: TButton
            Left = 360
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            Enabled = False
            TabOrder = 2
          end
          object Button3: TButton
            Left = 488
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Guardar'
            Enabled = False
            TabOrder = 3
          end
        end
        object Button4: TButton
          Left = 680
          Top = 205
          Width = 75
          Height = 25
          Caption = 'Button4'
          TabOrder = 1
          OnClick = Button4Click
        end
        object GroupBox1: TGroupBox
          Left = 35
          Top = 41
          Width = 582
          Height = 217
          Caption = 'Resolucion'
          TabOrder = 2
          object Label2: TLabel
            Left = 34
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label7: TLabel
            Left = 35
            Top = 75
            Width = 32
            Height = 13
            Caption = 'Minimo'
          end
          object des: TLabel
            Left = 34
            Top = 143
            Width = 30
            Height = 33
            Caption = 'Activo'
          end
          object Label3: TLabel
            Left = 34
            Top = 112
            Width = 36
            Height = 13
            Caption = 'Maximo'
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 190
            Width = 578
            Height = 25
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 175
          end
          object DBEdit3: TDBEdit
            Left = 106
            Top = 37
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 106
            Top = 72
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 106
            Top = 112
            Width = 121
            Height = 21
            TabOrder = 3
          end
          object DBCheckBox1: TDBCheckBox
            Left = 106
            Top = 139
            Width = 97
            Height = 17
            TabOrder = 4
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object pnPieLLista: TPanel
          Left = 0
          Top = 413
          Width = 820
          Height = 41
          Align = alBottom
          TabOrder = 0
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 413
          Align = alClient
          TabOrder = 1
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
    Left = 709
    Top = 170
  end
end
