object fGarantia: TfGarantia
  Left = 0
  Top = 0
  Caption = 'Garantia'
  ClientHeight = 459
  ClientWidth = 491
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
    Width = 485
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 61
      Top = 6
      Width = 55
      Height = 16
      Alignment = taCenter
      Caption = 'Garantia'
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
      Left = 458
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Caption = '>'
      OnClick = spbPagSiguienteClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbPaginaAnteriorrr: TSpeedButton
      AlignWithMargins = True
      Left = 429
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Caption = '<'
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
      Caption = '<'
      OnClick = spbActualizarClick
      ExplicitLeft = 46
      ExplicitTop = 5
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 278
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
      Left = 138
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
        Text = '15'
        OnChange = cbbRegistrosChange
        Items.Strings = (
          '15'
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
    Width = 491
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 489
      Height = 377
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 51
          Top = 31
          Width = 550
          Height = 274
          Caption = 'Garantia'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label7: TLabel
            Left = 57
            Top = 101
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object edDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 257
            Height = 21
            TabOrder = 0
          end
          object chkActivo: TCheckBox
            Left = 104
            Top = 100
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 1
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridGarantia: TcxGrid
          Left = 0
          Top = 41
          Width = 481
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridGarantiaDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsGarantia
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
            Styles.ContentOdd = cxStyle2
            Styles.Header = cxStyle2
            object gridGarantiaDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 58
            end
            object gridGarantiaDBTableView1desc_garantia: TcxGridDBColumn
              Caption = 'Descripcion'
              DataBinding.FieldName = 'desc_garantia'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 351
            end
            object gridGarantiaDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 53
            end
          end
          object gridGarantiaLevel1: TcxGridLevel
            GridView = gridGarantiaDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 481
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Garantia'
          end
          object btnBuscar: TButton
            Left = 330
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Buscar'
            ImageIndex = 0
            ImageMargins.Left = 7
            Images = ImageList1
            TabOrder = 1
            OnClick = btnBuscarClick
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 378
      Width = 489
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 27
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Nuevo'
        ImageIndex = 1
        ImageMargins.Left = 7
        Images = ImageList1
        TabOrder = 0
        OnClick = btnNuevoClick
      end
      object btnEditar: TButton
        Left = 140
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Editar'
        ImageIndex = 2
        ImageMargins.Left = 7
        Images = ImageList1
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 255
        Top = 6
        Width = 81
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 3
        ImageMargins.Left = 7
        Images = ImageList1
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnGuardar: TButton
        Left = 379
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        Enabled = False
        ImageIndex = 4
        ImageMargins.Left = 7
        Images = ImageList1
        TabOrder = 3
        OnClick = btnGuardarClick
      end
    end
  end
  object fdGarantia: TFDMemTable
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
    Left = 325
    Top = 162
    object fdGarantiaid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdGarantiadesc_garantia: TStringField
      FieldName = 'desc_garantia'
    end
    object fdGarantiaactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
  end
  object dsGarantia: TDataSource
    DataSet = fdGarantia
    Left = 317
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 304
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10245176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15269864
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    BlendColor = clHighlightText
    Left = 96
    Top = 288
    Bitmap = {
      494C010105000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002D00000043000000430000
      0043000000430000004300000042000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000031000000430000
      004300000043000000430000004300000043B78216FFF2C476FFFBFCFCFF9396
      98FFF6F6F6FFF5F8FDFFF6CD8BFF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B67D0DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB27806FFE9B357FFF1E6DDFF847C
      75FFEBE0D4FFEBE5E2FFF1CA89FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A08FFE6D7B0FFE8D8
      B4FFE8D8B4FFE8D8B4FFE8D8B4FFE8DAB6FFB17704FFE5AC4BFFE4A944FFE4A9
      42FFE3A841FFE4AB48FFF3D096FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A08FFE6D7B0FFE8D9
      B4FFE8D9B4FFE8D9B4FFE8D9B4FFE8DAB7FFB17603FFE1A031FFEAE1E1FFEAE0
      DDFFEAE0DDFFE7CBA3FFF4D6A4FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47907FFFBF8F1FFFBF8
      F1FFFBF8F1FFFBF8F1FFFBF8F1FFFCFAF4FFB07400FFDD9315FFB2ABA4FFB4AC
      A4FFB4ACA3FFF0EBE9FFF7E0B9FF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47907FFF7F2E7FFF7F2
      E6FFF7F2E6FFF7F2E6FFF7F2E6FFF8F4E9FFAF7300FFD88400FFB2B0AAFFB5B2
      AAFFB4B1A9FFF1F2F0FFFBECD3FF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47907FFF5EFE0FFF5EF
      E0FFF5EFE0FFF5EFE0FFF5EFE0FFF6F0E2FFCCA656FFB07500FFB07300FFB173
      00FFB27400FFB57B0AFFB78113FF000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A07FFF4ECDAFFF4EC
      DAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF5EEDDFFF6F0E1FFF6F0E2FFF6EF
      E1FFFFFFFFFF0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A07FFF2E9D3FFF2E9
      D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9
      D3FFFFFFFFFF0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A07FFF0E5CCFFF0E6
      CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CDFFF0E6CDFFEFE5
      CCFFFFFFFFFF0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A07FFEDE2C6FFEEE3
      C8FFEEE3C8FFEEE3C8FFEEE3C8FFEEE3C8FFEDE2C6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000001600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A07FFEBDFBFFFECE0
      C2FFECE0C2FFECE0C2FFECE0C2FFECE0C2FFEBDEBFFFAD6E00FFFDFDFBFFF4EC
      DAFFEBDBBCFF0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A08FFE9DBB9FFEADD
      BCFFEADDBCFFEADDBCFFEADDBCFFEADDBCFFE9DBB9FFAE6F00FFF0E6CEFFE9D7
      B4FF000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B57A08FFE7D7B1FFE8D8
      B3FFE8D8B3FFE8D8B3FFE8D8B3FFE8D8B3FFE7D7B0FFAC6C00FFEAD8B6FF0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A3F0BB4B57A08FFB47A
      08FFB47A08FFB47A08FFB47A08FFB47A08FFB47A08FFB57C0BFF000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001C0000004300000037000000060000000000000001000000050000
      000500000005000000050000000500000005000000040000000F000000340000
      0043000000400000002000000003000000000000000000000000000000000000
      00000000000D0000002600000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000190000004200000043000000430000004300000043000000430000
      0035000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001C4D82AAFF25A2FAFF34B8FFFF0000001600000000000000320F0B026C0F0B
      026C0F0B026C0F0B026C0F0B026C0F0B026C0F0A026B00361FB200B678FF00D1
      94FF00CD90FF009151FF0000002D000000010000000000000031000000430000
      004300000046564F4FFF05131E87000000430000004300000043000000430000
      0043000000420000001000000000000000000000000000000000000000000000
      001925329EEB3948C4FF3745C2FF3543C0FF313FBFFF2C3CBFFF2B3BBEFF2E3E
      C2FF000000390000000500000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001C4E82
      A9FF27A0F6FF2BADFFFF40C3FFFF0000001200000000B67D0DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F3F0FF00C98CFF00C788FFFFFF
      FFFF00C380FF00CA8CFF009250FF0000000F00000000B67D0DFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7D8F1FFA5E3FFFF4093D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000001600000000000000000000000000000000000000192431
      9DEB4B5AD1FF6376FFFF6275FEFF6275FEFF6275FEFF6275FEFF6275FEFF6375
      FFFF2D3DC1FF0000003900000005000000000000000000000000000000000000
      00010000000D000000160000001600000014000000050000001C4382B1FF26A0
      F7FF2AADFFFFD1F2FFFF418EC3FF0000000100000000B47A08FFE6D7B0FFE8D8
      B4FFE8D8B4FFE8D8B4FFE8D8B4FFEBD9B5FF00813BFF00C382FF00BC76FFFFFF
      FFFF00B86EFF00BE7BFF00C587FF0000001600000000B47A08FFE6D7B0FFE8D8
      B4FFE8D8B4FFEFDCB3FF73B8DDFF5CBCFFFF0E97FFFFFFE4B2FFE9D9B4FFE7D7
      B3FFFFFFFFFF000000160000000000000000000000000000001923319DEB5562
      D3FF5D71FDFF5A6FFBFF5B6FFBFF5C70FBFF5C70FBFF5C70FBFF5A6FFBFF5C70
      FBFF5E72FEFF2E3DC1FF00000039000000050000000000000000000000090000
      00353B3939C3726F6EFF716E6DFF6C6968F80404045B7A7776FFABA099FF20AD
      FFFFD1F2FFFF408EC3FF000000000000000000000000B47A08FFE6D7B0FFE8D9
      B4FFE8D9B4FFE8D9B4FFE8D9B4FFEBDAB6FF00813BFF00BB75FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF38D3A2FF0000001500000000B47A08FFE6D7B0FFE8D9
      B4FFE8D9B4FFE9D9B4FFFBE0AFFF77DBFFFF61BDFFFF0F97FFFFFFE5B3FFE9D9
      B3FFFFFFFFFF0000001600000000000000000000001023309DEB5E6BD6FF586C
      FBFF5367F9FFCCD1FDFF5368F8FF576BF9FF586CF9FF5166F9FFF5F6FFFF485E
      F8FF586CF9FF596DFBFF2E3EC1FF0000003500000000000000090F0E0E76B4B2
      B1FFE0E1E4FFDADEE4FFD9DEE4FFDCDFE3FFE4E5E5FF726F6EFFB3B2B0FFFAF3
      EFFF388DC6FF00000000000000000000000000000000B47907FFFBF8F1FFFBF8
      F1FFFBF8F1FFFBF8F1FFFBF8F1FFFEF9F2FF3BA673FF27C894FF00B977FFFFFF
      FFFF00B46DFF00BA77FF62C7A0FF0000000600000000B47907FFFBF8F1FFFBF8
      F1FFFBF8F1FFFBF8F1FFFCF9F1FFFFFFEEFF76DAFFFF61BDFFFF0E97FFFFFFFF
      F5FFFFFFFFFF000000160000000000000000000000166A74D1FF5368F9FF5167
      F7FFCAD1FCFFFFFFFFFFFFFFFFFF4259F6FF4D63F7FFC3CBFCFFFFFFFFFFFFFF
      FFFF4A60F7FF5368F7FF566BFBFF2E3EC4FF000000010101013ED5D4D3FFE3DE
      DAFFF6BF74FFECCA85FFF0D58FFFF6D389FFF3C384FFE4E5E8FF72706DFF9490
      8EFF0000000000000000000000000000000000000000B47907FFF7F2E7FFF7F2
      E6FFF7F2E6FFF7F2E6FFF7F2E6FFF7F2E6FFFFF9F1FF009251FF5AD4AAFF00B0
      67FF0ABC7EFF98E4C9FF00311A9C0000000000000000B47907FFF7F2E7FFF7F2
      E6FFF7F2E6FFF7F2E6FFF7F2E6FFF9F3E6FFFFFDE8FF76DAFFFF61BDFFFF0E96
      FFFFFFFFFFFF000000160000000000000000000000167781D3FF4D64F5FF4D64
      F5FF4961F4FFFFFFFFFFFFFFFFFFFFFFFFFFBAC3FBFFFFFFFFFFFFFFFFFFECEF
      FEFF495FF5FF4E64F5FF5067FAFF2E3EC3FF0000000E868482FFE5E9EEFFE7B5
      6CFFEAC480FFF0D18DFFF6DE99FFFAE7A2FFF9E49FFFE9B97BFFEDEDEDFF0303
      03460000000000000000000000000000000000000000B47907FFF5EFE0FFF5EF
      E0FFF5EFE0FFF5EFE0FFF5EFE0FFF5EFE0FFF6EFE1FFFFF5EAFF38A46DFF007D
      35FF00813AFF0005023C000000000000000000000000B47907FFF5EFE0FFF5EF
      E0FFF5EFE0FFF5EFE0FFF5EFE0FFF5EFE0FFF7F0E0FFFFF9E1FF77DBFFFF61BD
      FFFF0D9BFFFF0000003D000000060000000000000016848CD7FF4960F3FF4A60
      F3FF485EF3FF445BF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEDFEFF4259
      F3FF4A60F3FF4A60F3FF4C62F8FF2D3DC3FF00000016DCDBDBFFE1B883FFECCA
      99FFEED09BFFF1D28DFFF7E19BFFFEEFA9FFFAE7A2FFEECB85FFEBEEF2FF7472
      6FF80000000000000000000000000000000000000000B47A07FFF4ECDAFFF4EC
      DAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF7EDDCFFF8ED
      DCFFFFFFFFFF00000016000000000000000000000000B47A07FFF4ECDAFFF4EC
      DAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF4ECDAFFF6EDDAFFFFF6DAFF75DB
      FFFFAB9E93FF72706EFF0000003D00000006000000169097DBFF445CF0FF455D
      F0FF455DF0FF3E57EFFFB6BFFAFFFFFFFFFFFFFFFFFFFFFFFFFF2D48EEFF445C
      F0FF455DF0FF455DF0FF465FF4FF2D3DC3FF00000016F6F6F6FFD09C56FFF4E1
      C5FFF1D8ADFFF2D8A1FFF4DA94FFF7E19BFFF6DE99FFF3D791FFEEF2F8FF7A78
      76FF0000000000000000000000000000000000000000B47A07FFF2E9D3FFF2E9
      D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9
      D3FFFFFFFFFF00000016000000000000000000000000B47A07FFF2E9D3FFF2E9
      D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF2E9D4FFF4EAD4FFFFF2
      D7FFD6D4D3FF868A81FFC184BAFF00000011000000169BA3DFFF3F58EEFF4059
      EEFF3A54EEFFBEC6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D49
      ECFF3F58EEFF4059EEFF405AF2FF2D3DC3FF00000014FCFBFBFFC2904AFFFAEE
      E0FFF3DFBFFFF2DAAFFFF2D8A1FFF1D28DFFF0D18DFFF0CD88FFF4F7FDFF7D7B
      78FF0000000000000000000000000000000000000000B47A07FFF0E5CCFFF0E6
      CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CDFFF0E6CDFFEFE5
      CCFFFFFFFFFF00000016000000000000000000000000B47A07FFF0E5CCFFF0E6
      CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CEFFF0E6CDFFF0E6CDFFF0E6
      CDFFFFFFFFFFE5B1E6FFAB7ACCFF0000000000000016A6ADE2FF3A53ECFF3A53
      ECFFC3CBF9FFFFFFFFFFFFFFFFFFE8ECFDFF3049EBFFFFFFFFFFFFFFFFFFFFFF
      FFFF314CEBFF3C55ECFF3B55F0FF2C3CC2FF00000005C8C7C6FFDFD0BBFFE5B6
      7EFFF7E9D7FFF3DFBFFFF1D8ADFFEED09BFFEBC581FFC19350FFFCFDFFFF3C3C
      3AB30000000000000000000000000000000000000000B47A07FFEDE2C6FFEEE3
      C8FFEEE3C8FFEEE3C8FFEEE3C8FFEEE3C8FFEDE2C6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000016000000000000000000000000B47A07FFEDE2C6FFEEE3
      C8FFEEE3C8FFEEE3C8FFEEE3C8FFEEE3C8FFEDE2C6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000160000000000000000000000057B86D8FF364FEAFF354F
      EAFF314BE9FFFFFFFFFFEAEBFDFF2F4AE9FF354FEAFF304AE9FFFFFFFFFFEAEC
      FDFF314CE9FF3550EBFF5360D2FF2634A2EA00000000595856D5FFFFFFFFAB80
      43FFE6B77EFFFAEFE1FFF5E2C6FFEECB9AFFCB9D5BFFF4F2EFFFCACAC9FF0000
      00050000000000000000000000000000000000000000B47A07FFEBDFBFFFECE0
      C2FFECE0C2FFECE0C2FFECE0C2FFECE0C2FFEBDEBFFFAD6E00FFFDFDFBFFF4EC
      DAFFEBDBBCFF00000005000000000000000000000000B47A07FFEBDFBFFFECE0
      C2FFECE0C2FFECE0C2FFECE0C2FFECE0C2FFEBDEBFFFAD6E00FFFDFDFBFFF4EC
      DAFFEBDBBCFF00000005000000000000000000000000000000058890DBFF304B
      E9FF2F4AE8FF3550E8FF2A47E7FF324DE8FF324DE8FF304BE8FF3550E8FF2A47
      E7FF304BE9FF5E6CD5FF23309AE50000000000000000000000018C8988FFFFFF
      FFFFDFD1BDFFA27435FFA37537FFBB9A6CFFFFFFFFFFF0F0F0FF0B0B0B4F0000
      00000000000000000000000000000000000000000000B47A08FFE9DBB9FFEADD
      BCFFEADDBCFFEADDBCFFEADDBCFFEADDBCFFE9DBB9FFAE6F00FFF0E6CEFFE9D7
      B4FF0000000500000000000000000000000000000000B47A08FFE9DBB9FFEADD
      BCFFEADDBCFFEADDBCFFEADDBCFFEADDBCFFE9DBB9FFAE6F00FFF0E6CEFFE9D7
      B4FF00000005000000000000000000000000000000000000000000000005939A
      DFFF2C47E6FF2C48E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2E49E6FF2B47
      E7FF6977D9FF212E9AE500000000000000000000000000000000000000005D5A
      59D3D1D0CFFFFFFFFFFFFFFFFFFFF2F2F3FF959492FF00000010000000000000
      00000000000000000000000000000000000000000000B57A08FFE7D7B1FFE8D8
      B3FFE8D8B3FFE8D8B3FFE8D8B3FFE8D8B3FFE7D7B0FFAC6C00FFEAD8B6FF0000
      00030000000000000000000000000000000000000000B57A08FFE7D7B1FFE8D8
      B3FFE8D8B3FFE8D8B3FFE8D8B3FFE8D8B3FFE7D7B0FFAC6C00FFEAD8B6FF0000
      0003000000000000000000000000000000000000000000000000000000000000
      000599A0E0FF2541E4FF203DE4FF213EE4FF213FE5FF2240E5FF2240E5FF7380
      DCFF212E9AE50000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A3F0BB4B57A08FFB47A
      08FFB47A08FFB47A08FFB47A08FFB47A08FFB47A08FFB57C0BFF000000040000
      000000000000000000000000000000000000000000005A3F0BB4B57A08FFB47A
      08FFB47A08FFB47A08FFB47A08FFB47A08FFB47A08FFB57C0BFF000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000052636C1FF2737C1FF2838C1FF2839C1FF2939C1FF2A3AC1FF2432
      A1E900000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
