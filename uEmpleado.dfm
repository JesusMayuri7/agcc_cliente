object fEmpleado: TfEmpleado
  Left = 0
  Top = 0
  Caption = 'Empleado'
  ClientHeight = 615
  ClientWidth = 845
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
    Width = 839
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 61
      Height = 16
      Alignment = taCenter
      Caption = 'Empleado'
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
      Left = 812
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
      Left = 783
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
      Left = 632
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
      Left = 492
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
    Width = 845
    Height = 576
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 843
      Height = 533
      ActivePage = tabFormulario
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        object GroupBox1: TGroupBox
          Left = 51
          Top = 31
          Width = 673
          Height = 458
          Caption = 'Empleado'
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
            Top = 330
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
            Width = 36
            Height = 13
            Caption = 'Usuario'
          end
          object Label13: TLabel
            Left = 34
            Top = 293
            Width = 24
            Height = 13
            Caption = 'Email'
          end
          object Label14: TLabel
            Left = 33
            Top = 249
            Width = 46
            Height = 13
            Caption = 'Password'
          end
          object edDni: TEdit
            Left = 128
            Top = 41
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object chkActivo: TCheckBox
            Left = 128
            Top = 329
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
          object edEmail: TEdit
            Left = 128
            Top = 290
            Width = 193
            Height = 21
            TabOrder = 5
          end
          object edUsuario: TEdit
            Left = 128
            Top = 205
            Width = 121
            Height = 21
            TabOrder = 6
          end
          object edPassword: TEdit
            Left = 128
            Top = 246
            Width = 121
            Height = 21
            TabOrder = 7
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridEmpleado: TcxGrid
          Left = 0
          Top = 41
          Width = 835
          Height = 464
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridEmpleadoDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsEmpleado
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
            object gridEmpleadoDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 45
            end
            object gridEmpleadoDBTableView1dni: TcxGridDBColumn
              DataBinding.FieldName = 'dni'
            end
            object gridEmpleadoDBTableView1nombres: TcxGridDBColumn
              DataBinding.FieldName = 'nombres'
              Width = 103
            end
            object gridEmpleadoDBTableView1apellido_paterno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_paterno'
              Width = 100
            end
            object gridEmpleadoDBTableView1apellido_materno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_materno'
              Width = 101
            end
            object gridEmpleadoDBTableView1usuario: TcxGridDBColumn
              DataBinding.FieldName = 'usuario'
              Width = 70
            end
            object gridEmpleadoDBTableView1password: TcxGridDBColumn
              DataBinding.FieldName = 'password'
              Width = 91
            end
            object gridEmpleadoDBTableView1email: TcxGridDBColumn
              DataBinding.FieldName = 'email'
              Width = 141
            end
            object gridEmpleadoDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
          end
          object gridEmpleadoLevel1: TcxGridLevel
            GridView = gridEmpleadoDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 835
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Empleado'
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
      Top = 534
      Width = 843
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
  object fdEmpleado: TFDMemTable
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
    object fdEmpleadoid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdEmpleadodni: TStringField
      FieldName = 'dni'
    end
    object fdEmpleadonombres: TStringField
      FieldName = 'nombres'
    end
    object fdEmpleadoapellido_paterno: TStringField
      FieldName = 'apellido_paterno'
    end
    object fdEmpleadoapellido_materno: TStringField
      FieldName = 'apellido_materno'
    end
    object fdEmpleadousuario: TStringField
      FieldName = 'usuario'
    end
    object fdEmpleadopassword: TStringField
      FieldName = 'password'
    end
    object fdEmpleadoemail: TStringField
      FieldName = 'email'
    end
    object fdEmpleadoactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
  end
  object dsEmpleado: TDataSource
    DataSet = fdEmpleado
    Left = 597
    Top = 226
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 600
    Top = 336
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
end
