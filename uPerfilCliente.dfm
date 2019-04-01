object fPerfilCliente: TfPerfilCliente
  Left = 0
  Top = 0
  Caption = 'PerfilCliente'
  ClientHeight = 459
  ClientWidth = 648
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
    Width = 642
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 73
      Top = 6
      Width = 81
      Height = 16
      Alignment = taCenter
      Caption = 'Perfil Cliente'
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
      Left = 615
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
      Left = 586
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
      Left = 435
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
      Left = 295
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
    Width = 648
    Height = 420
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 646
      Height = 343
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
          Height = 162
          Caption = 'Perfil Cliente'
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
            Width = 63
            Height = 13
            Caption = 'Linea Credito'
          end
          object edDescripcion: TEdit
            Left = 112
            Top = 37
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object cbbLineaCredito: TcxLookupComboBox
            Left = 113
            Top = 80
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                FieldName = 'desc_linea_credito'
              end>
            Properties.ListSource = dsLineaCredito
            TabOrder = 1
            Width = 160
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridPerfilCliente: TcxGrid
          Left = 0
          Top = 41
          Width = 638
          Height = 274
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridPerfilClienteDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPerfilCliente
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
            object gridPerfilClienteDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 58
            end
            object gridPerfilClienteDBTableView1desc_perfil_cliente: TcxGridDBColumn
              DataBinding.FieldName = 'desc_perfil_cliente'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 271
            end
            object gridPerfilClienteDBTableView1linea_credito_id: TcxGridDBColumn
              DataBinding.FieldName = 'linea_credito_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  FieldName = 'desc_linea_credito'
                end>
              Properties.ListSource = dsLineaCredito
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 181
            end
          end
          object gridPerfilClienteLevel1: TcxGridLevel
            GridView = gridPerfilClienteDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 638
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
            TextHint = 'Perfil Cliente'
          end
          object btnBuscar: TButton
            Left = 367
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
      Top = 344
      Width = 646
      Height = 75
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 128
        Top = 38
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
        Left = 230
        Top = 38
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
        Left = 334
        Top = 38
        Width = 84
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
        Left = 444
        Top = 38
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
    Left = 485
    Top = 146
    object fdPerfilClienteid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdPerfilClientelinea_credito_id: TIntegerField
      DisplayLabel = 'Linea de Credito'
      FieldName = 'linea_credito_id'
    end
    object fdPerfilClientedesc_perfil_cliente: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'desc_perfil_cliente'
    end
  end
  object dsPerfilCliente: TDataSource
    DataSet = fdPerfilCliente
    Left = 485
    Top = 210
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 272
    Top = 272
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10245176
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnFace
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
    Left = 405
    Top = 146
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
    Left = 405
    Top = 208
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 312
    Top = 152
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 3779658
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 64
    Top = 288
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15269864
    end
  end
end
