object fLineaCredito: TfLineaCredito
  Left = 0
  Top = 0
  Caption = 'Linea Credito'
  ClientHeight = 459
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 64
    Top = 139
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object pnCabecera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 676
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 112
      Height = 16
      Alignment = taCenter
      Caption = 'Lineas de Credito'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
    end
    object spbPagSiguiente: TSpeedButton
      AlignWithMargins = True
      Left = 649
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000002400000033000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000595959C17F7F7FFF000000330000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007E7E7EFFC2C2C0FF7A7A7AFF0000
        0033000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007C7C7CFFD2D1CFFFDFDEDDFF7979
        79FF000000330000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007C7C7CFFC2C1BEFFBEBDB9FFEBEB
        EAFF7C7C7CFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007D7D7DFFB4B2B0FFAFADABFFEFEE
        EDFF7C7C7CFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007D7D7DFFA5A3A1FFE4E3E2FF7979
        79FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007E7E7EFFE0DFDFFF7A7A7AFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000787878F07F7F7FFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = spbPagSiguienteClick
      ExplicitTop = 5
    end
    object spbPaginaAnteriorrr: TSpeedButton
      AlignWithMargins = True
      Left = 620
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0033000000280000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000337F7F
        7FFF646464D20000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000337A7A7AFFC7C6
        C5FF7E7E7EFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000033787879FFE3E1E0FFD2D1
        CFFF7C7C7CFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007C7C7CFFEDEDECFFBDBCB9FFC2C1
        BDFF7C7C7CFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007C7C7CFFF2F1F0FFAFADAAFFB4B2
        B0FF7D7D7DFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000797979FFE7E7E6FFA5A3
        A1FF7D7D7DFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000007A7A7AFFE4E3
        E2FF7E7E7EFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007E7F
        7FFF6E6E6EDB0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = spbPaginaAnteriorrrClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbActualizar: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 23
      Height = 25
      Align = alLeft
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000A000000250000003300000033000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000022251B0E5C876132C9B88444FFB98545FF000000000000
        0000000000330000003300000033000000330000003300000032000000000000
        00000000001E7B582EBBBE8A4AFFDEAC66FFF4C57BFFB88343FF000000000000
        0000B98545FFB78343FFB68142FFB78242FFB98444FFB78445FB000000000000
        00066D4E29AAC18C4CFFECBC72FFF1C581FFF8D39DFFB78242FF000000000000
        0000B78343FFF9C97EFFF6C67BFFF5CC8CFFC49963F100000000000000001710
        093DBA8646FFE9B86DFFEDC07DFFEFCE9CFFD5AC71FFB88343FF000000000000
        0000B68141FFF2C47EFFF0C482FFEAB86FFFBC8947FF0000001A000000007A58
        2EB9D2A059FFE6B368FFEDCC9AFFC08F51FF6749258F1A120923000000000000
        0000B78241FFF5D9ACFFF0CF9FFFEAB86CFFD4A25CFF5D43229900000000B884
        44FFDDAB61FFE2B167FFD4AB77FF6648248E0000000000000000000000000000
        0000B98443FFC1945AFAD7B282FFE6B266FFE0AE65FFB37F41F900000000B883
        44FFDFAB5FFFE2B774FFC6995FFF040301050000000100000000000000000000
        0000B38143F506050209C6975FFFE6BB79FFE5B36AFFB78344FF00000000B883
        43FFDFB373FFDBA85EFFB78243FF000000020302013400000000000000000000
        00000202010300000001B68242FFDFAC63FFE4B877FFB78243FF00000000B883
        42FFE2BB83FFD59F52FFBF8B48FF07050332B58244F800000000000000000000
        00000000000004030120C08C49FFD9A557FFE5C087FFB78242FF00000000B27E
        40F8E1C192FFCF9A4AFFC18C48FF9B7039DABA8545FF00000000000000000000
        00070000001D674A27A5C7924BFFD39E4FFFE3C395FFB88241FF000000005E43
        2181D6B386FFD4A661FFC99243FFE4C79DFFB98443FF00000000000000001A13
        0A4F684B27A5BC8746FFCD984AFFD8AC6DFFD9B98EFF7A562BAA000000000000
        0000BD8D4FFFD1A668FFC48B39FFD9B580FFB88241FF0000000000000000BA86
        46FFC28D45FFC99344FFD09E56FFE7CEAAFFBD8B4FFF1610081F000000000000
        0032BE9664F1E6CFACFFE9D3B2FFEAD5B4FFB88341FF0000000000000000B984
        44FFCD9C54FFDAB57FFFEAD5B5FFC69A64FF6C4D27950000000000000000B884
        45FBB98444FFB88241FFB8813FFFB88241FFBA8545FF0000000000000000B983
        42FFEAD5B6FFDBBD95FFC09054FF7B572CAA0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000BA85
        44FFBB8849FF875F30BB251B0E33000000000000000000000000}
      OnClick = spbActualizarClick
      ExplicitLeft = 2
      ExplicitTop = 5
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 469
      Top = 4
      Width = 145
      Height = 25
      Align = alRight
      TabOrder = 0
      object Label12: TLabel
        Left = 6
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Pagina:'
      end
      object lblPaginaActual: TLabel
        Left = 56
        Top = 4
        Width = 8
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 82
        Top = 4
        Width = 16
        Height = 16
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotalPagina: TLabel
        Left = 116
        Top = 4
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 329
      Top = 4
      Width = 134
      Height = 25
      Align = alRight
      TabOrder = 1
      object Label11: TLabel
        Left = 17
        Top = 6
        Width = 49
        Height = 13
        Caption = 'Registros:'
      end
      object cbbRegistros: TComboBox
        Left = 72
        Top = 1
        Width = 49
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = '5'
        OnChange = cbbRegistrosChange
        Items.Strings = (
          '5'
          '10'
          '20'
          '30'
          '50'
          '100')
      end
    end
  end
  object pnDetalle: TPanel
    Left = 0
    Top = 39
    Width = 682
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 680
      Height = 377
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 51
          Top = 31
          Width = 550
          Height = 274
          Caption = 'Linea de Credito'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label4: TLabel
            Left = 55
            Top = 131
            Width = 32
            Height = 13
            Caption = 'Minimo'
          end
          object Label6: TLabel
            Left = 55
            Top = 181
            Width = 36
            Height = 13
            Caption = 'Maximo'
          end
          object Label7: TLabel
            Left = 55
            Top = 221
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object Label3: TLabel
            Left = 55
            Top = 83
            Width = 35
            Height = 13
            Caption = 'Interes'
          end
          object edLineaCredito: TEdit
            Left = 112
            Top = 37
            Width = 353
            Height = 21
            TabOrder = 0
          end
          object cbbInteres: TComboBox
            Left = 112
            Top = 80
            Width = 129
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'SIMPLE'
            Items.Strings = (
              'SIMPLE'
              'REBATIR')
          end
          object spbMinimo: TcxSpinEdit
            Left = 112
            Top = 128
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0'
            TabOrder = 2
            Width = 121
          end
          object spbMaximo: TcxSpinEdit
            Left = 112
            Top = 178
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0'
            TabOrder = 3
            Width = 121
          end
          object chkActivo: TCheckBox
            Left = 112
            Top = 220
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 4
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridLIneaCredito: TcxGrid
          Left = 0
          Top = 41
          Width = 672
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridLIneaCreditoDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsLineaCredito
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            Styles.ContentOdd = cxStyle1
            object gridLIneaCreditoDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 58
            end
            object gridLIneaCreditoDBTableView1desc_linea_credito: TcxGridDBColumn
              DataBinding.FieldName = 'desc_linea_credito'
              HeaderAlignmentHorz = taCenter
              Width = 271
            end
            object gridLIneaCreditoDBTableView1interes: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_interes'
              HeaderAlignmentHorz = taCenter
            end
            object gridLIneaCreditoDBTableView1monto_minimo: TcxGridDBColumn
              DataBinding.FieldName = 'monto_minimo'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object gridLIneaCreditoDBTableView1monto_maximo: TcxGridDBColumn
              DataBinding.FieldName = 'monto_maximo'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gridLIneaCreditoDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
            end
          end
          object gridLIneaCreditoLevel1: TcxGridLevel
            GridView = gridLIneaCreditoDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 672
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            TextHint = 'Linea de Credito'
          end
          object btnBuscar: TButton
            Left = 323
            Top = 10
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
            OnClick = btnBuscarClick
          end
          object Button1: TButton
            Left = 404
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Limpiar'
            TabOrder = 2
            OnClick = Button1Click
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 378
      Width = 680
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 55
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Nuevo'
        TabOrder = 0
        OnClick = btnNuevoClick
      end
      object btnEditar: TButton
        Left = 168
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 288
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnGuardar: TButton
        Left = 403
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        Enabled = False
        TabOrder = 3
        OnClick = btnGuardarClick
      end
    end
  end
  object fdLineaCredito: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 597
    Top = 162
    object fdLineaCreditoid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdLineaCreditodesc_linea_credito: TStringField
      DisplayLabel = 'Linea de credito'
      FieldName = 'desc_linea_credito'
      Size = 45
    end
    object fdLineaCreditomonto_minimo: TFloatField
      DisplayLabel = 'Monto minimo'
      FieldName = 'monto_minimo'
      DisplayFormat = '#,##0.00'
    end
    object fdLineaCreditomonto_maximo: TFloatField
      DisplayLabel = 'Monto maximo'
      FieldName = 'monto_maximo'
      DisplayFormat = '#,##0.00'
    end
    object fdLineaCreditoactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
    object fdLineaCreditotipo_interes: TStringField
      DisplayLabel = 'Tipo Interes'
      FieldName = 'tipo_interes'
      Size = 10
    end
  end
  object dsLineaCredito: TDataSource
    DataSet = fdLineaCredito
    Left = 597
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 96
    Top = 248
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
end
