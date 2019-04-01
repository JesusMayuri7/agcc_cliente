object fAhorro: TfAhorro
  Left = 0
  Top = 0
  Caption = 'Ahorro'
  ClientHeight = 459
  ClientWidth = 494
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
    Width = 488
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 61
      Top = 8
      Width = 43
      Height = 14
      Alignment = taCenter
      Caption = 'Ahorro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10245176
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object spbPagSiguiente: TSpeedButton
      AlignWithMargins = True
      Left = 461
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
      Left = 432
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
      Left = 281
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
      Left = 158
      Top = 4
      Width = 117
      Height = 25
      Align = alRight
      TabOrder = 1
      object Label11: TLabel
        Left = 9
        Top = 4
        Width = 49
        Height = 13
        Caption = 'Registros:'
      end
      object cbbRegistros: TComboBox
        Left = 64
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
    Width = 494
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 492
      Height = 375
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 15
          Top = 31
          Width = 550
          Height = 202
          Caption = 'Ahorro'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label3: TLabel
            Left = 35
            Top = 83
            Width = 52
            Height = 13
            Caption = 'Porcentaje'
          end
          object spbPorcentaje: TcxSpinEdit
            Left = 136
            Top = 80
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 0
            Width = 112
          end
          object spbDescripcion: TComboBox
            Left = 136
            Top = 37
            Width = 112
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = 'INICIAL'
            Items.Strings = (
              'INICIAL'
              'PROGRAMADO')
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridAhorro: TcxGrid
          Left = 0
          Top = 41
          Width = 484
          Height = 306
          Align = alClient
          TabOrder = 0
          LevelTabs.Style = 9
          LookAndFeel.NativeStyle = False
          object gridAhorroDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAhorro
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
            Styles.ContentOdd = cxStyle3
            Styles.Header = cxStyle3
            object gridAhorroDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 58
            end
            object gridAhorroDBTableView1desc_ahorro: TcxGridDBColumn
              DataBinding.FieldName = 'desc_ahorro'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 260
            end
            object gridAhorroDBTableView1porcentaje: TcxGridDBColumn
              DataBinding.FieldName = 'porcentaje'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle2
              Width = 156
            end
          end
          object gridAhorroLevel1: TcxGridLevel
            GridView = gridAhorroDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 484
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 14
            Width = 293
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            TextHint = 'Ahorro'
          end
          object btnBuscar: TButton
            Left = 345
            Top = 8
            Width = 98
            Height = 27
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
      Top = 376
      Width = 492
      Height = 43
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 47
        Top = 6
        Width = 82
        Height = 27
        Caption = 'Nuevo'
        ImageIndex = 1
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 0
        OnClick = btnNuevoClick
      end
      object btnEditar: TButton
        Left = 150
        Top = 6
        Width = 78
        Height = 27
        Caption = 'Editar'
        ImageIndex = 2
        ImageMargins.Left = 7
        Images = dmData.ImageList1
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 262
        Top = 6
        Width = 83
        Height = 27
        Caption = 'Cancelar'
        Enabled = False
        ImageIndex = 3
        ImageMargins.Left = 3
        Images = dmData.ImageList1
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnGuardar: TButton
        Left = 372
        Top = 6
        Width = 85
        Height = 27
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
  object fdAhorro: TFDMemTable
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
    Left = 365
    Top = 146
    object fdAhorroid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdAhorrodesc_ahorro: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'desc_ahorro'
    end
    object fdAhorroporcentaje: TFloatField
      DisplayLabel = 'Porcentaje'
      FieldName = 'porcentaje'
    end
  end
  object dsAhorro: TDataSource
    DataSet = fdAhorro
    Left = 357
    Top = 210
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 600
    Top = 304
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16273415
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svBitmap, svColor, svFont, svTextColor]
      Color = 10245176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnHighlight
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 352
    Top = 272
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15269864
    end
  end
end
