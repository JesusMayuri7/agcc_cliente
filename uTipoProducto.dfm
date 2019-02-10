object fTipoProducto: TfTipoProducto
  Left = 0
  Top = 0
  Caption = 'Tipo Producto'
  ClientHeight = 459
  ClientWidth = 728
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
    Width = 722
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 105
      Top = 8
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
      Left = 695
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
      Left = 666
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
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 515
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
      Left = 375
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
    Width = 728
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 726
      Height = 377
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Formulario'
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
          object edtDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 353
            Height = 21
            TabOrder = 0
            Text = 'edtDescripcion'
          end
          object cbbInteres: TComboBox
            Left = 112
            Top = 80
            Width = 129
            Height = 21
            TabOrder = 1
            Text = 'cbbInteres'
          end
          object spnMinimo: TcxSpinEdit
            Left = 112
            Top = 128
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            TabOrder = 2
            Width = 121
          end
          object spnMaximo: TcxSpinEdit
            Left = 112
            Top = 178
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
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
      object TabSheet2: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 41
          Width = 718
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          ExplicitTop = 39
          object cxGrid1DBTableView1: TcxGridDBTableView
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
            Styles.ContentOdd = cxStyle1
            object cxGrid1DBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Width = 54
            end
            object cxGrid1DBTableView1desc_tipo_producto: TcxGridDBColumn
              DataBinding.FieldName = 'desc_tipo_producto'
              Width = 256
            end
            object cxGrid1DBTableView1interes: TcxGridDBColumn
              DataBinding.FieldName = 'interes'
            end
            object cxGrid1DBTableView1mora: TcxGridDBColumn
              DataBinding.FieldName = 'mora'
            end
            object cxGrid1DBTableView1plazo_minimo: TcxGridDBColumn
              DataBinding.FieldName = 'plazo_minimo'
            end
            object cxGrid1DBTableView1plazo_maximo: TcxGridDBColumn
              DataBinding.FieldName = 'plazo_maximo'
            end
            object cxGrid1DBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              Width = 36
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Tipo de Producto'
          end
          object btnBuscar: TButton
            Left = 330
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
            OnClick = btnBuscarClick
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 378
      Width = 726
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 48
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Nuevo'
        TabOrder = 0
      end
      object Button1: TButton
        Left = 168
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Editar'
        Enabled = False
        TabOrder = 1
      end
      object Button2: TButton
        Left = 288
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 2
      end
      object Button3: TButton
        Left = 408
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Guardar'
        Enabled = False
        TabOrder = 3
      end
    end
  end
  object fdTipoProducto: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_tipo_producto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'interes'
        DataType = ftFloat
      end
      item
        Name = 'mora'
        DataType = ftFloat
      end
      item
        Name = 'plazo_minimo'
        DataType = ftInteger
      end
      item
        Name = 'plazo_maximo'
        DataType = ftInteger
      end
      item
        Name = 'activo'
        DataType = ftBoolean
      end>
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
    object fdTipoProductoid: TIntegerField
      FieldName = 'id'
    end
    object fdTipoProductodesc_tipo_producto: TStringField
      FieldName = 'desc_tipo_producto'
      Size = 100
    end
    object fdTipoProductointeres: TFloatField
      FieldName = 'interes'
    end
    object fdTipoProductomora: TFloatField
      FieldName = 'mora'
    end
    object fdTipoProductoplazo_minimo: TIntegerField
      FieldName = 'plazo_minimo'
    end
    object fdTipoProductoplazo_maximo: TIntegerField
      FieldName = 'plazo_maximo'
    end
    object fdTipoProductoactivo: TBooleanField
      FieldName = 'activo'
    end
  end
  object dsTipoProducto: TDataSource
    DataSet = fdTipoProducto
    Left = 597
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 216
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
end
