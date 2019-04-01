object fTipoInfo: TfTipoInfo
  Left = 0
  Top = 0
  Caption = 'TipoInfo'
  ClientHeight = 459
  ClientWidth = 518
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
    Width = 512
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 6
      Width = 107
      Height = 16
      Alignment = taCenter
      Caption = 'Tipo Informacion'
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
      Left = 485
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
      Left = 456
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
      Left = 305
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
      Left = 165
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
    Width = 518
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 516
      Height = 377
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 3
          Top = 31
          Width = 550
          Height = 274
          Caption = 'Tipo de Informacion'
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
            Top = 109
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object Label3: TLabel
            Left = 30
            Top = 77
            Width = 57
            Height = 13
            Caption = 'Informacion'
          end
          object edDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 311
            Height = 21
            TabOrder = 0
          end
          object chkActivo: TCheckBox
            Left = 110
            Top = 101
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 1
          end
          object cbbInformacion: TComboBox
            Left = 112
            Top = 74
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'NEGOCIO'
            Items.Strings = (
              'NEGOCIO'
              'FAMILIAR')
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridTipoInfo: TcxGrid
          Left = 0
          Top = 41
          Width = 508
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridTipoInfoDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsTipoInfo
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
            object gridTipoInfoDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 58
            end
            object gridTipoInfoDBTableView1desc_tipo_info: TcxGridDBColumn
              DataBinding.FieldName = 'desc_tipo_info'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 305
            end
            object gridTipoInfoDBTableView1Column1: TcxGridDBColumn
              Caption = 'Informacion'
              DataBinding.FieldName = 'informacion'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 110
            end
          end
          object gridTipoInfoLevel1: TcxGridLevel
            GridView = gridTipoInfoDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 508
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 19
            Top = 14
            Width = 305
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            TextHint = 'Tipo Informacion'
          end
          object btnBuscar: TButton
            Left = 339
            Top = 10
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
      Width = 516
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 41
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
        Left = 158
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
        Left = 274
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
        Left = 389
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
    Left = 301
    Top = 162
    object fdTipoInfoid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdTipoInfodesc_tipo_info: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'desc_tipo_info'
    end
    object fdTipoInfoactivo: TBooleanField
      FieldName = 'activo'
    end
    object fdTipoInfoinformacion: TStringField
      FieldName = 'informacion'
    end
  end
  object dsTipoInfo: TDataSource
    DataSet = fdTipoInfo
    Left = 301
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 296
    Top = 280
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
end
