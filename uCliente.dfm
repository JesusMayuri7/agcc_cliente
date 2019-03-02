object fCliente: TfCliente
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 512
  ClientWidth = 860
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
    Width = 854
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
      Left = 827
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
      Left = 798
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
      Left = 647
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
      Left = 507
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
    Width = 860
    Height = 473
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 858
      Height = 430
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 672
        ExplicitHeight = 349
        object GroupBox1: TGroupBox
          Left = 51
          Top = 31
          Width = 673
          Height = 368
          Caption = 'Reporte Ceop'
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
            TabOrder = 1
          end
          object edNombres: TEdit
            Left = 128
            Top = 85
            Width = 129
            Height = 21
            TabOrder = 2
          end
          object edPaterno: TEdit
            Left = 128
            Top = 125
            Width = 193
            Height = 21
            TabOrder = 3
          end
          object edMaterno: TEdit
            Left = 128
            Top = 165
            Width = 193
            Height = 21
            TabOrder = 4
          end
          object edDireccion: TEdit
            Left = 123
            Top = 248
            Width = 198
            Height = 21
            TabOrder = 5
          end
          object edTelefono: TEdit
            Left = 123
            Top = 291
            Width = 121
            Height = 21
            TabOrder = 6
          end
          object cxDateEdit1: TcxDateEdit
            Left = 128
            Top = 205
            TabOrder = 7
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
          Width = 850
          Height = 361
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
            Styles.ContentOdd = cxStyle1
            object gridClienteDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 38
            end
            object gridClienteDBTableView1dni: TcxGridDBColumn
              DataBinding.FieldName = 'dni'
              Width = 70
            end
            object gridClienteDBTableView1nombres: TcxGridDBColumn
              DataBinding.FieldName = 'nombres'
              Width = 103
            end
            object gridClienteDBTableView1apellido_paterno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_paterno'
              Width = 100
            end
            object gridClienteDBTableView1apellido_materno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_materno'
              Width = 101
            end
            object gridClienteDBTableView1fecha_nacimiento: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_nacimiento'
              Width = 96
            end
            object gridClienteDBTableView1direccion: TcxGridDBColumn
              DataBinding.FieldName = 'direccion'
              Width = 162
            end
            object gridClienteDBTableView1telefono: TcxGridDBColumn
              DataBinding.FieldName = 'telefono'
              Width = 107
            end
            object gridClienteDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
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
          Width = 850
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Cliente'
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
      Top = 431
      Width = 858
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
      FieldName = 'dni'
    end
    object fdClientenombres: TStringField
      FieldName = 'nombres'
    end
    object fdClienteapellido_paterno: TStringField
      FieldName = 'apellido_paterno'
    end
    object fdClienteapellido_materno: TStringField
      FieldName = 'apellido_materno'
    end
    object fdClientefecha_nacimiento: TDateField
      FieldName = 'fecha_nacimiento'
    end
    object fdClientedireccion: TStringField
      FieldName = 'direccion'
    end
    object fdClientetelefono: TStringField
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
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
end
