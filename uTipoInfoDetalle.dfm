object fTipoInfoDetalle: TfTipoInfoDetalle
  Left = 0
  Top = 0
  Caption = 'TipoInfoDetalle'
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
      Width = 156
      Height = 16
      Alignment = taCenter
      Caption = 'Tipo Informacion Detalle'
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
      Caption = '>'
      OnClick = spbPagSiguienteClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbPaginaAnteriorrr: TSpeedButton
      AlignWithMargins = True
      Left = 620
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
      Height = 287
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 51
          Top = 38
          Width = 550
          Height = 218
          Caption = 'Tipo Informacion Detalle'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label3: TLabel
            Left = 33
            Top = 83
            Width = 43
            Height = 13
            Caption = 'Tipo Info'
          end
          object Label7: TLabel
            Left = 33
            Top = 165
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object Label6: TLabel
            Left = 33
            Top = 126
            Width = 20
            Height = 13
            Caption = 'Tipo'
          end
          object edDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object cbbTipoInfo: TcxLookupComboBox
            Left = 113
            Top = 80
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                FieldName = 'desc_tipo_info'
              end>
            Properties.ListSource = dsTipoInfo
            TabOrder = 1
            Width = 129
          end
          object chkActivo: TCheckBox
            Left = 104
            Top = 161
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 2
          end
          object cbbTipo: TComboBox
            Left = 113
            Top = 123
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 3
            TextHint = 'DATOS'
            Items.Strings = (
              'DATOS'
              'DEUDAS FINANCIERAS'
              'INGRESOS'
              'POR_PAGAR_PROVEEDOR')
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridTipoInfoDetalle: TcxGrid
          Left = 0
          Top = 41
          Width = 672
          Height = 218
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridTipoInfoDetalleDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsTipoInfoDetalle
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
            object gridTipoInfoDetalleDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 58
            end
            object gridTipoInfoDetalleDBTableView1desc_tipo_info_detalle: TcxGridDBColumn
              DataBinding.FieldName = 'desc_tipo_info_detalle'
              HeaderAlignmentHorz = taCenter
              Width = 177
            end
            object gridTipoInfoDetalleDBTableView1tipo_info_id: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_info_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  FieldName = 'desc_tipo_info'
                end>
              Properties.ListSource = dsTipoInfo
              Width = 136
            end
            object gridTipoInfoDetalleDBTableView1tipo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo'
              Width = 158
            end
            object gridTipoInfoDetalleDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
            end
          end
          object gridTipoInfoDetalleLevel1: TcxGridLevel
            GridView = gridTipoInfoDetalleDBTableView1
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
            TabOrder = 0
            TextHint = 'Tipo informacion al detalle'
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
      Top = 288
      Width = 680
      Height = 131
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
  object fdTipoInfoDetalle: TFDMemTable
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
    Left = 621
    Top = 138
    object fdTipoInfoDetalleid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdTipoInfoDetalledesc_tipo_info_detalle: TStringField
      FieldName = 'desc_tipo_info_detalle'
    end
    object fdTipoInfoDetalletipo_info_id: TIntegerField
      FieldName = 'tipo_info_id'
    end
    object fdTipoInfoDetalletipo: TStringField
      FieldName = 'tipo'
    end
    object fdTipoInfoDetalleactivo: TBooleanField
      FieldName = 'activo'
    end
  end
  object dsTipoInfoDetalle: TDataSource
    DataSet = fdTipoInfoDetalle
    Left = 605
    Top = 186
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 392
    Top = 400
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  object fdTipoInfo: TFDMemTable
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
    Left = 589
    Top = 330
    object fdTipoInfoid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdTipoInfodesc_tipo_info: TStringField
      FieldName = 'desc_tipo_info'
    end
  end
  object dsTipoInfo: TDataSource
    DataSet = fdTipoInfo
    Left = 589
    Top = 392
  end
end
