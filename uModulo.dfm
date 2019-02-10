object fModulo: TfModulo
  Left = 0
  Top = 0
  Caption = 'Modulo'
  ClientHeight = 355
  ClientWidth = 762
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
    Width = 762
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 808
    object Label1: TLabel
      Left = 193
      Top = 9
      Width = 59
      Height = 19
      Alignment = taCenter
      Caption = 'Modulo'
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
    Width = 762
    Height = 322
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = -127
    ExplicitHeight = 433
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 760
      Height = 320
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = -63
      ExplicitHeight = 490
      object TabSheet1: TTabSheet
        Caption = 'Formulario'
        ExplicitHeight = 491
        object pnPieForm: TPanel
          Left = 0
          Top = 257
          Width = 752
          Height = 35
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 201
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
          Left = 664
          Top = 157
          Width = 75
          Height = 25
          Caption = 'Button4'
          TabOrder = 1
          OnClick = Button4Click
        end
        object GroupBox1: TGroupBox
          Left = 35
          Top = 53
          Width = 582
          Height = 198
          Caption = 'Modulo'
          TabOrder = 2
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label3: TLabel
            Left = 33
            Top = 75
            Width = 33
            Height = 13
            Caption = 'Detalle'
          end
          object Label4: TLabel
            Left = 33
            Top = 120
            Width = 41
            Height = 13
            Caption = 'N'#176' menu'
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 166
            Width = 578
            Height = 30
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
            Align = alBottom
            TabOrder = 0
            ExplicitTop = 122
          end
          object DBEdit3: TDBEdit
            Left = 106
            Top = 37
            Width = 207
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
          object ComboBox1: TComboBox
            Left = 106
            Top = 112
            Width = 145
            Height = 21
            TabOrder = 3
            Text = 'ComboBox1'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        ExplicitHeight = 403
        object pnPieLLista: TPanel
          Left = 0
          Top = 251
          Width = 752
          Height = 41
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 362
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 752
          Height = 251
          Align = alClient
          TabOrder = 1
          ExplicitHeight = 362
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
    Left = 693
    Top = 138
  end
end
