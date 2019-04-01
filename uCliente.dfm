object fCliente: TfCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 508
  ClientWidth = 903
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
    Width = 897
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 44
      Height = 16
      Alignment = taCenter
      Caption = 'Cliente'
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
      Left = 870
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
      Left = 841
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
      Left = 690
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
      Left = 550
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
    Width = 903
    Height = 469
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 901
      Height = 426
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 51
          Top = 31
          Width = 673
          Height = 368
          Caption = 'Cliente'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 49
            Width = 15
            Height = 13
            Caption = 'Dni'
          end
          object Label7: TLabel
            Left = 33
            Top = 325
            Width = 30
            Height = 13
            Caption = 'Activo'
          end
          object Label3: TLabel
            Left = 33
            Top = 88
            Width = 42
            Height = 13
            Caption = 'Nombres'
          end
          object TLabel
            Left = 56
            Top = 128
            Width = 3
            Height = 13
          end
          object Label4: TLabel
            Left = 33
            Top = 128
            Width = 83
            Height = 13
            Caption = 'Apellidos Paterno'
          end
          object Label6: TLabel
            Left = 33
            Top = 168
            Width = 80
            Height = 13
            Caption = 'Apellido Materno'
          end
          object Label8: TLabel
            Left = 33
            Top = 208
            Width = 84
            Height = 13
            Caption = 'Fecha Nacimiento'
          end
          object Label9: TLabel
            Left = 32
            Top = 248
            Width = 43
            Height = 13
            Caption = 'Direccion'
          end
          object Label13: TLabel
            Left = 33
            Top = 288
            Width = 42
            Height = 13
            Caption = 'Telefono'
          end
          object edDni: TEdit
            Left = 128
            Top = 41
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object chkActivo: TCheckBox
            Left = 113
            Top = 318
            Width = 25
            Height = 17
            Alignment = taLeftJustify
            TabOrder = 4
          end
          object edNombres: TEdit
            Left = 128
            Top = 85
            Width = 129
            Height = 21
            TabOrder = 1
          end
          object edPaterno: TEdit
            Left = 128
            Top = 125
            Width = 193
            Height = 21
            TabOrder = 2
          end
          object edMaterno: TEdit
            Left = 128
            Top = 165
            Width = 193
            Height = 21
            TabOrder = 3
          end
          object edDireccion: TEdit
            Left = 123
            Top = 248
            Width = 198
            Height = 21
            TabOrder = 6
          end
          object edTelefono: TEdit
            Left = 123
            Top = 291
            Width = 121
            Height = 21
            TabOrder = 7
          end
          object cxDateEdit1: TcxDateEdit
            Left = 128
            Top = 205
            EditValue = 0d
            Properties.DisplayFormat = 'YYYY/dd/mm'
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            TabOrder = 5
            Width = 121
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridCliente: TcxGrid
          Left = 0
          Top = 41
          Width = 893
          Height = 357
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridClienteDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCliente
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
            object gridClienteDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 38
            end
            object gridClienteDBTableView1dni: TcxGridDBColumn
              DataBinding.FieldName = 'dni'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 70
            end
            object gridClienteDBTableView1nombres: TcxGridDBColumn
              DataBinding.FieldName = 'nombres'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 103
            end
            object gridClienteDBTableView1apellido_paterno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_paterno'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 113
            end
            object gridClienteDBTableView1apellido_materno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_materno'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 112
            end
            object gridClienteDBTableView1fecha_nacimiento: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_nacimiento'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 134
            end
            object gridClienteDBTableView1direccion: TcxGridDBColumn
              DataBinding.FieldName = 'direccion'
              HeaderAlignmentHorz = taCenter
              MinWidth = 45
              Styles.Header = cxStyle1
              Width = 199
            end
            object gridClienteDBTableView1telefono: TcxGridDBColumn
              DataBinding.FieldName = 'telefono'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 90
            end
            object gridClienteDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 40
            end
          end
          object gridClienteLevel1: TcxGridLevel
            GridView = gridClienteDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 893
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
            TextHint = 'Cliente'
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
      Top = 427
      Width = 901
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnNuevo: TButton
        Left = 148
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
        Left = 310
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
        Left = 478
        Top = 6
        Width = 75
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
        Left = 654
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
  object fdCliente: TFDMemTable
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
    object fdClienteid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdClientedni: TStringField
      DisplayLabel = 'Dni'
      FieldName = 'dni'
    end
    object fdClientenombres: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'nombres'
    end
    object fdClienteapellido_paterno: TStringField
      DisplayLabel = 'Apellido Paterno'
      FieldName = 'apellido_paterno'
    end
    object fdClienteapellido_materno: TStringField
      DisplayLabel = 'Apellido Materno'
      FieldName = 'apellido_materno'
    end
    object fdClientefecha_nacimiento: TDateField
      DisplayLabel = 'Fecha de Nacimiento'
      FieldName = 'fecha_nacimiento'
    end
    object fdClientedireccion: TStringField
      DisplayLabel = 'Direccion'
      DisplayWidth = 50
      FieldName = 'direccion'
      Size = 50
    end
    object fdClientetelefono: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'telefono'
    end
    object fdClienteactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
  end
  object dsCliente: TDataSource
    DataSet = fdCliente
    Left = 597
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 552
    Top = 288
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
