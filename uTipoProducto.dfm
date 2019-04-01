object fTipoProducto: TfTipoProducto
  Left = 0
  Top = 0
  Caption = 'Tipo Producto'
  ClientHeight = 459
  ClientWidth = 669
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
    Width = 663
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 89
      Height = 16
      Alignment = taCenter
      Caption = 'Tipo Producto'
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
      Left = 636
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      OnClick = spbPagSiguienteClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbPaginaAnteriorrr: TSpeedButton
      AlignWithMargins = True
      Left = 607
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
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
      OnClick = spbActualizarClick
      ExplicitLeft = 46
      ExplicitTop = 5
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 456
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
        Font.Color = clHotLight
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
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 316
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
        Text = '30'
        OnChange = cbbRegistrosChange
        Items.Strings = (
          '30'
          '50'
          '100')
      end
    end
  end
  object pnDetalle: TPanel
    Left = 0
    Top = 39
    Width = 669
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 667
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
          Width = 879
          Height = 316
          Caption = 'Tipo Producto'
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
            Top = 171
            Width = 32
            Height = 13
            Caption = 'Minimo'
          end
          object Label6: TLabel
            Left = 55
            Top = 221
            Width = 36
            Height = 13
            Caption = 'Maximo'
          end
          object Label7: TLabel
            Left = 55
            Top = 261
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
          object Label8: TLabel
            Left = 55
            Top = 128
            Width = 24
            Height = 13
            Caption = 'Mora'
          end
          object edDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 217
            Height = 21
            TabOrder = 0
          end
          object spbMinimo: TcxSpinEdit
            Left = 112
            Top = 168
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0'
            TabOrder = 1
            Width = 89
          end
          object spbMaximo: TcxSpinEdit
            Left = 111
            Top = 221
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0'
            TabOrder = 2
            Width = 89
          end
          object chkActivo: TCheckBox
            Left = 112
            Top = 260
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 3
          end
          object spbInteres: TcxSpinEdit
            Left = 112
            Top = 80
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 88
          end
          object spbMora: TcxSpinEdit
            Left = 113
            Top = 125
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 5
            Width = 89
          end
          object GroupBox2: TGroupBox
            Left = 344
            Top = 13
            Width = 513
            Height = 292
            Caption = 'Linea de credito y perfil'
            TabOrder = 6
            object cbbPerfilCliente: TcxLookupComboBox
              Left = 15
              Top = 24
              Properties.Alignment.Horz = taCenter
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  Caption = 'Perfil'
                  FieldName = 'desc_perfil_cliente'
                end
                item
                  Caption = 'Linea Credito'
                  FieldName = 'desc_linea_credito'
                end>
              Properties.ListSource = dsPerfilCliente
              TabOrder = 0
              Width = 450
            end
            object cxGrid1: TcxGrid
              Left = 15
              Top = 51
              Width = 482
              Height = 230
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object gridPerfilCliente: TcxGridTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = '<Sin perfil asignado>'
                OptionsView.GroupByBox = False
                object colId: TcxGridColumn
                  Caption = '#'
                  HeaderAlignmentHorz = taCenter
                  Width = 31
                end
                object colDescripcion: TcxGridColumn
                  Caption = 'Perfil Cliente'
                  HeaderAlignmentHorz = taCenter
                  Width = 291
                end
                object colLineaCredito: TcxGridColumn
                  Caption = 'Linea Credito'
                  HeaderAlignmentHorz = taCenter
                  Width = 146
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = gridPerfilCliente
              end
            end
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridTipoProducto: TcxGrid
          Left = 0
          Top = 41
          Width = 659
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridTipoProductoDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsTipoProducto
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
            OptionsView.RowSeparatorColor = clBlue
            Styles.ContentOdd = cxStyle3
            Styles.Header = cxStyle3
            object gridTipoProductoDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 58
            end
            object gridTipoProductoDBTableView1desc_tipo_producto: TcxGridDBColumn
              DataBinding.FieldName = 'desc_tipo_producto'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 207
            end
            object gridTipoProductoDBTableView1interes: TcxGridDBColumn
              DataBinding.FieldName = 'interes'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
            end
            object gridTipoProductoDBTableView1mora: TcxGridDBColumn
              DataBinding.FieldName = 'mora'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 83
            end
            object gridTipoProductoDBTableView1plazo_minimo: TcxGridDBColumn
              DataBinding.FieldName = 'plazo_minimo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 94
            end
            object gridTipoProductoDBTableView1plazo_maximo: TcxGridDBColumn
              Caption = 'plazo_maximo'
              DataBinding.FieldName = 'plazo_minimo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 93
            end
            object gridTipoProductoDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              Styles.Header = cxStyle2
              Width = 50
            end
          end
          object gridTipoProductoLevel1: TcxGridLevel
            GridView = gridTipoProductoDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 659
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
            TextHint = 'Tipo Producto'
          end
          object btnBuscar: TButton
            Left = 330
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Buscar'
            ImageIndex = 0
            ImageMargins.Left = 7
            Images = dmData.ImageList1
            TabOrder = 1
            OnClick = btnBuscarClick
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 378
      Width = 667
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 111
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Nuevo'
        ImageIndex = 1
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 0
        OnClick = btnNuevoClick
      end
      object btnEditar: TButton
        Left = 246
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Editar'
        ImageIndex = 2
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 371
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 3
        ImageMargins.Left = 3
        Images = dmData.ImageList1
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnGuardar: TButton
        Left = 501
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        Enabled = False
        ImageIndex = 4
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 3
        OnClick = btnGuardarClick
      end
    end
  end
  object fdTipoProducto: TFDMemTable
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
    Left = 493
    Top = 178
    object fdTipoProductoid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdTipoProductodesc_tipo_producto: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'desc_tipo_producto'
    end
    object fdTipoProductointeres: TFloatField
      DisplayLabel = 'Interes'
      FieldName = 'interes'
      DisplayFormat = '#,##0.0000'
    end
    object fdTipoProductomora: TFloatField
      DisplayLabel = 'Mora'
      FieldName = 'mora'
      DisplayFormat = '#,##0.000000'
    end
    object fdTipoProductoplazo_minimo: TIntegerField
      DisplayLabel = 'Plazo Minimo'
      FieldName = 'plazo_minimo'
    end
    object fdTipoProductoplazo_maximo: TIntegerField
      DisplayLabel = 'Plazo Maximo'
      FieldName = 'plazo_maximo'
    end
    object fdTipoProductoactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
    object fdTipoProductoperfil_cliente: TMemoField
      DisplayLabel = 'Perfil Cliente'
      FieldName = 'perfil_cliente'
      BlobType = ftMemo
    end
  end
  object dsTipoProducto: TDataSource
    DataSet = fdTipoProducto
    Left = 581
    Top = 218
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 288
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10245176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15269864
    end
  end
  object fdPerfilCliente: TFDMemTable
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
    Left = 249
    Top = 154
    object fdPerfilClienteid: TIntegerField
      FieldName = 'id'
    end
    object fdPerfilClientedesc_perfil_cliente: TStringField
      DisplayLabel = 'Perfiles'
      FieldName = 'desc_perfil_cliente'
    end
    object fdPerfilClientedesc_linea_credito: TStringField
      FieldName = 'desc_linea_credito'
    end
  end
  object dsPerfilCliente: TDataSource
    DataSet = fdPerfilCliente
    Left = 405
    Top = 218
  end
end
