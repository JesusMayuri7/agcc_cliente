object fGiroNegocio: TfGiroNegocio
  Left = 0
  Top = 0
  Caption = 'GiroNegocio'
  ClientHeight = 459
  ClientWidth = 619
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
    Width = 613
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 99
      Height = 16
      Alignment = taCenter
      Caption = 'Giro de Negocio'
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
      Left = 586
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      OnClick = spbPagSiguienteClick
      ExplicitTop = 5
    end
    object spbPaginaAnteriorrr: TSpeedButton
      AlignWithMargins = True
      Left = 557
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
      Left = 406
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
      Left = 266
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
    Width = 619
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 617
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
          Caption = 'Giro Negocio'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label4: TLabel
            Left = 35
            Top = 91
            Width = 71
            Height = 13
            Caption = 'Margen Minimo'
          end
          object Label6: TLabel
            Left = 35
            Top = 131
            Width = 75
            Height = 13
            Caption = 'Margen Maximo'
          end
          object Label7: TLabel
            Left = 35
            Top = 181
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object edDescripcion: TEdit
            Left = 127
            Top = 37
            Width = 215
            Height = 21
            TabOrder = 0
          end
          object spbMinimo: TcxSpinEdit
            Left = 128
            Top = 88
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            Properties.Increment = 0.100000000000000000
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 121
          end
          object spbMaximo: TcxSpinEdit
            Left = 128
            Top = 128
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            Properties.Increment = 0.100000000000000000
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 121
          end
          object chkActivo: TCheckBox
            Left = 128
            Top = 180
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 3
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridGiroNegocio: TcxGrid
          Left = 0
          Top = 41
          Width = 609
          Height = 308
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridGiroNegocioDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsGiroNegocio
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
            object gridGiroNegocioDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 58
            end
            object gridGiroNegocioDBTableView1desc_giro_negocio: TcxGridDBColumn
              DataBinding.FieldName = 'desc_giro_negocio'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 271
            end
            object gridGiroNegocioDBTableView1margen_minimo: TcxGridDBColumn
              DataBinding.FieldName = 'margen_minimo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 100
            end
            object gridGiroNegocioDBTableView1margen_maximo: TcxGridDBColumn
              DataBinding.FieldName = 'margen_maximo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 106
            end
            object gridGiroNegocioDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 59
            end
          end
          object gridGiroNegocioLevel1: TcxGridLevel
            GridView = gridGiroNegocioDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 609
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
            TextHint = 'Giro Negocio'
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
      Width = 617
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 55
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
        Left = 192
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
        Left = 321
        Top = 6
        Width = 81
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 3
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnGuardar: TButton
        Left = 464
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
  object fdGiroNegocio: TFDMemTable
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
    Left = 525
    Top = 162
    object fdGiroNegocioid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdGiroNegociodesc_giro_negocio: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'desc_giro_negocio'
    end
    object fdGiroNegociomargen_minimo: TFloatField
      DisplayLabel = 'Margen Minimo'
      FieldName = 'margen_minimo'
    end
    object fdGiroNegociomargen_maximo: TFloatField
      DisplayLabel = 'Margen Maximo'
      FieldName = 'margen_maximo'
    end
    object fdGiroNegocioactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
  end
  object dsGiroNegocio: TDataSource
    DataSet = fdGiroNegocio
    Left = 525
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 496
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
