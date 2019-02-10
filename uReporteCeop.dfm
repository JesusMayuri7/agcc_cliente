object fReporteCeop: TfReporteCeop
  Left = 0
  Top = 0
  Caption = 'Reporte Ceop'
  ClientHeight = 484
  ClientWidth = 790
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
    Width = 790
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 830
    object Label1: TLabel
      Left = 193
      Top = 8
      Width = 112
      Height = 19
      Alignment = taCenter
      Caption = 'Reporte Ceop'
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
    Width = 790
    Height = 451
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 830
    ExplicitHeight = 484
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 788
      Height = 449
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 828
      ExplicitHeight = 482
      object TabSheet1: TTabSheet
        Caption = 'Formulario'
        ExplicitWidth = 820
        ExplicitHeight = 454
        object pnPieForm: TPanel
          Left = 0
          Top = 183
          Width = 780
          Height = 238
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 207
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
          Top = 30
          Width = 582
          Height = 155
          Caption = 'Reporte Ceop'
          TabOrder = 2
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label7: TLabel
            Left = 33
            Top = 83
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 128
            Width = 578
            Height = 25
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 144
          end
          object DBEdit3: TDBEdit
            Left = 106
            Top = 37
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 106
            Top = 83
            Width = 97
            Height = 17
            TabOrder = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        ExplicitWidth = 820
        ExplicitHeight = 454
        object pnPieLLista: TPanel
          Left = 0
          Top = 380
          Width = 780
          Height = 41
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 413
          ExplicitWidth = 820
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 780
          Height = 380
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 820
          ExplicitHeight = 413
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
