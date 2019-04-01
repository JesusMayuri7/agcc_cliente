object fEmpleado: TfEmpleado
  Left = 0
  Top = 0
  Caption = 'Empleado'
  ClientHeight = 615
  ClientWidth = 996
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
    Width = 990
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 851
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
      Left = 963
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
      Left = 934
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
      Left = 783
      Top = 4
      Width = 145
      Height = 25
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 644
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
      Left = 643
      Top = 4
      Width = 134
      Height = 25
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 504
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
    Width = 996
    Height = 576
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 857
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 994
      Height = 533
      ActivePage = tabLIstado
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 855
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        TabVisible = False
        ExplicitWidth = 847
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
          object Label9: TLabel
            Left = 33
            Top = 370
            Width = 15
            Height = 13
            Caption = 'Rol'
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
          object cbbRol: TcxLookupComboBox
            Left = 128
            Top = 368
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                Caption = 'Rol'
                FieldName = 'desc_rol'
              end>
            Properties.ListSource = dsRol
            TabOrder = 8
            Width = 193
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        ExplicitWidth = 847
        object gridEmpleado: TcxGrid
          Left = 0
          Top = 41
          Width = 986
          Height = 464
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 847
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
            Styles.ContentOdd = cxStyle2
            Styles.Header = cxStyle2
            object gridEmpleadoDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 42
            end
            object gridEmpleadoDBTableView1dni: TcxGridDBColumn
              DataBinding.FieldName = 'dni'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 87
            end
            object gridEmpleadoDBTableView1nombres: TcxGridDBColumn
              DataBinding.FieldName = 'nombres'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 103
            end
            object gridEmpleadoDBTableView1apellido_paterno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_paterno'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 113
            end
            object gridEmpleadoDBTableView1apellido_materno: TcxGridDBColumn
              DataBinding.FieldName = 'apellido_materno'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 124
            end
            object gridEmpleadoDBTableView1usuario: TcxGridDBColumn
              DataBinding.FieldName = 'usuario'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 70
            end
            object gridEmpleadoDBTableView1email: TcxGridDBColumn
              DataBinding.FieldName = 'email'
              HeaderAlignmentHorz = taCenter
              MinWidth = 45
              Styles.Header = cxStyle1
              Width = 233
            end
            object gridEmpleadoDBTableView1rol: TcxGridDBColumn
              DataBinding.FieldName = 'rol'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 148
            end
            object gridEmpleadoDBTableView1activo: TcxGridDBColumn
              DataBinding.FieldName = 'activo'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 47
            end
          end
          object gridEmpleadoLevel1: TcxGridLevel
            GridView = gridEmpleadoDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 986
          Height = 41
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 847
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 485
            Height = 21
            TabOrder = 0
            TextHint = 'Empleado'
          end
          object btnBuscar: TButton
            Left = 519
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
      Top = 534
      Width = 994
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 855
      object btnNuevo: TButton
        Left = 131
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
        Left = 300
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
        Left = 476
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
      DisplayLabel = 'Dni'
      FieldName = 'dni'
    end
    object fdEmpleadonombres: TStringField
      DisplayLabel = 'Nombres'
      FieldName = 'nombres'
    end
    object fdEmpleadoapellido_paterno: TStringField
      DisplayLabel = 'Apellido Paterno'
      FieldName = 'apellido_paterno'
    end
    object fdEmpleadoapellido_materno: TStringField
      DisplayLabel = 'Apellido Materno'
      FieldName = 'apellido_materno'
    end
    object fdEmpleadousuario: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'usuario'
    end
    object fdEmpleadoemail: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 50
      FieldName = 'email'
      Size = 50
    end
    object fdEmpleadoactivo: TBooleanField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
    end
    object fdEmpleadorol_id: TIntegerField
      FieldName = 'rol_id'
    end
    object fdEmpleadorol: TStringField
      FieldName = 'rol'
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
  object fdRol: TFDMemTable
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
    Top = 170
    object IntegerField1: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdRoldesc_rol: TStringField
      FieldName = 'desc_rol'
    end
  end
  object dsRol: TDataSource
    DataSet = fdRol
    Left = 485
    Top = 234
  end
end
