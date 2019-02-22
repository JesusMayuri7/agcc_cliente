object fCalcular: TfCalcular
  Left = 0
  Top = 0
  Caption = 'Calcular Cuota'
  ClientHeight = 717
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitTop = -4
    object Label7: TLabel
      Left = 433
      Top = 12
      Width = 92
      Height = 16
      Alignment = taCenter
      Caption = 'Calcular cuota'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 676
    Width = 1121
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 416
    ExplicitWidth = 185
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1121
    Height = 635
    Align = alClient
    TabOrder = 2
    ExplicitTop = 35
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 240
      Height = 633
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = -4
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 238
        Height = 208
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 26
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Linea de Credito'
        end
        object Label4: TLabel
          Left = 26
          Top = 61
          Width = 60
          Height = 13
          Caption = 'Perfil Cliente'
        end
        object Label5: TLabel
          Left = 26
          Top = 109
          Width = 66
          Height = 13
          Caption = 'Tipo Producto'
        end
        object Label6: TLabel
          Left = 26
          Top = 155
          Width = 41
          Height = 13
          Caption = 'Garantia'
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 24
          Top = 35
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 193
        end
        object cxLookupComboBox3: TcxLookupComboBox
          Left = 24
          Top = 80
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 193
        end
        object cxLookupComboBox2: TcxLookupComboBox
          Left = 24
          Top = 128
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 193
        end
        object cxLookupComboBox4: TcxLookupComboBox
          Left = 24
          Top = 174
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 193
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 209
        Width = 238
        Height = 128
        Align = alTop
        TabOrder = 1
        ExplicitTop = 169
        object Label1: TLabel
          Left = 55
          Top = 6
          Width = 49
          Height = 19
          Caption = 'Monto '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 164
          Top = 6
          Width = 37
          Height = 19
          Caption = 'Plazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object spnMinimo: TcxSpinEdit
          Left = 144
          Top = 31
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '0'
          Properties.EditFormat = '0'
          Properties.SpinButtons.Visible = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 73
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 24
          Top = 31
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '0'
          Properties.SpinButtons.Visible = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 97
        end
        object Button1: TButton
          Left = 24
          Top = 80
          Width = 193
          Height = 33
          Caption = 'Calcular'
          TabOrder = 2
        end
      end
    end
    object GridPanel1: TGridPanel
      Left = 241
      Top = 1
      Width = 879
      Height = 633
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 1
      ExplicitLeft = 246
      ExplicitTop = -4
    end
  end
end
