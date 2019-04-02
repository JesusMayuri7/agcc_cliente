object fResolucion: TfResolucion
  Left = 0
  Top = 0
  Caption = 'Resolucion'
  ClientHeight = 594
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnDetalle: TPanel
    Left = 0
    Top = 39
    Width = 958
    Height = 504
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 956
      Height = 502
      ActivePage = tabListado
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        object GroupBox1: TGroupBox
          Left = 35
          Top = 39
          Width = 726
          Height = 410
          Caption = 'Resolucion'
          TabOrder = 0
          object Label2: TLabel
            Left = 33
            Top = 40
            Width = 66
            Height = 13
            Caption = 'N'#176' Resoluci'#243'n'
          end
          object Label7: TLabel
            Left = 33
            Top = 105
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object des: TLabel
            Left = 32
            Top = 72
            Width = 54
            Height = 13
            Caption = 'N'#176' Solicitud'
          end
          object Label3: TLabel
            Left = 31
            Top = 214
            Width = 55
            Height = 13
            Caption = 'Comentario'
          end
          object Label4: TLabel
            Left = 32
            Top = 140
            Width = 33
            Height = 13
            Caption = 'Cliente'
          end
          object Label5: TLabel
            Left = 32
            Top = 173
            Width = 38
            Height = 13
            Caption = 'Analista'
          end
          object Label16: TLabel
            Left = 255
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Tipo Interes'
          end
          object Label17: TLabel
            Left = 237
            Top = 70
            Width = 85
            Height = 16
            Caption = 'Garantia Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 218
            Top = 105
            Width = 117
            Height = 16
            Caption = 'Garantia Progamado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbEstado: TComboBox
            Left = 105
            Top = 102
            Width = 104
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'PENDIENTE'
            Items.Strings = (
              'PENDIENTE'
              'APROBADO'
              'OBSERVADO'
              'RECHAZADO')
          end
          object txtComentario: TMemo
            Left = 105
            Top = 211
            Width = 327
            Height = 182
            TabOrder = 1
          end
          object txtResolucion: TEdit
            Left = 105
            Top = 37
            Width = 104
            Height = 21
            Enabled = False
            TabOrder = 2
          end
          object txtSolicitud: TEdit
            Left = 105
            Top = 69
            Width = 104
            Height = 21
            Enabled = False
            TabOrder = 3
          end
          object txtCliente: TEdit
            Left = 105
            Top = 137
            Width = 327
            Height = 21
            Enabled = False
            TabOrder = 4
          end
          object txtAnalista: TEdit
            Left = 105
            Top = 170
            Width = 327
            Height = 21
            Enabled = False
            TabOrder = 5
          end
          object GroupBox2: TGroupBox
            Left = 464
            Top = 211
            Width = 241
            Height = 182
            Caption = 'Aprobado'
            TabOrder = 6
            object Label8: TLabel
              Left = 30
              Top = 44
              Width = 49
              Height = 19
              Caption = 'Monto '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 30
              Top = 77
              Width = 37
              Height = 19
              Caption = 'Plazo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 30
              Top = 144
              Width = 41
              Height = 19
              Caption = 'Cuota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 207
              Top = 139
              Width = 23
              Height = 27
              OnClick = SpeedButton1Click
            end
            object Label20: TLabel
              Left = 30
              Top = 109
              Width = 49
              Height = 19
              Caption = 'Interes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object spnMonto2: TcxSpinEdit
              Left = 104
              Top = 41
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 97
            end
            object spnPlazo2: TcxSpinEdit
              Left = 104
              Top = 74
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '0'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 97
            end
            object spnCuota2: TcxSpinEdit
              Left = 104
              Top = 139
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 97
            end
            object spnInteres2: TcxSpinEdit
              Left = 104
              Top = 106
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 97
            end
          end
          object GroupBox3: TGroupBox
            Left = 464
            Top = 21
            Width = 241
            Height = 170
            Caption = 'Solicitado'
            TabOrder = 7
            object Label14: TLabel
              Left = 30
              Top = 36
              Width = 49
              Height = 19
              Caption = 'Monto '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 30
              Top = 136
              Width = 41
              Height = 19
              Caption = 'Cuota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 30
              Top = 69
              Width = 37
              Height = 19
              Caption = 'Plazo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 30
              Top = 101
              Width = 49
              Height = 19
              Caption = 'Interes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object spnMonto: TcxSpinEdit
              Left = 104
              Top = 33
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 97
            end
            object spnPlazo: TcxSpinEdit
              Left = 104
              Top = 66
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '0'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtInt
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 97
            end
            object spnCuota: TcxSpinEdit
              Left = 104
              Top = 131
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 97
            end
            object spnInteres: TcxSpinEdit
              Left = 104
              Top = 98
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 97
            end
          end
          object cbbTipoInteres: TComboBox
            Left = 339
            Top = 37
            Width = 93
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 8
            Text = 'SIMPLE'
            Items.Strings = (
              'SIMPLE'
              'REBATIR'
              'PARALELO')
          end
          object spnInicial: TSpinEdit
            Left = 339
            Top = 69
            Width = 93
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 9
            Value = 0
          end
          object spnProgramado: TSpinEdit
            Left = 339
            Top = 102
            Width = 95
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 10
            Value = 0
          end
        end
      end
      object tabListado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 41
          Width = 763
          Height = 433
          Align = alClient
          TabOrder = 0
          object gridResolucion: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsResolucion
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            object gridResolucionnro_resolucion: TcxGridDBColumn
              DataBinding.FieldName = 'nro_resolucion'
              Width = 75
            end
            object gridResolucionestado: TcxGridDBColumn
              DataBinding.FieldName = 'estado'
              Width = 79
            end
            object gridResolucionsolicitud_id: TcxGridDBColumn
              DataBinding.FieldName = 'solicitud_id'
              Width = 82
            end
            object gridResolucioncliente_full_name: TcxGridDBColumn
              DataBinding.FieldName = 'cliente_full_name'
            end
            object gridResolucionmonto: TcxGridDBColumn
              DataBinding.FieldName = 'monto'
            end
            object gridResolucioncuota: TcxGridDBColumn
              DataBinding.FieldName = 'cuota'
            end
            object gridResolucionplazo: TcxGridDBColumn
              DataBinding.FieldName = 'plazo'
            end
            object gridResolucionempleado_full_name: TcxGridDBColumn
              Caption = 'Analista'
              DataBinding.FieldName = 'empleado_full_name'
              HeaderAlignmentHorz = taCenter
              Width = 187
            end
            object gridResolucioncreated_at: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'created_at'
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridResolucion
          end
        end
        object Panel1: TPanel
          Left = 763
          Top = 41
          Width = 185
          Height = 433
          Align = alRight
          Caption = 'Panel1'
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 1
            Top = 1
            Width = 183
            Height = 431
            Align = alClient
            DataField = 'comentario'
            DataSource = dsResolucion
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 948
          Height = 41
          Align = alTop
          TabOrder = 2
          object edCriterio: TEdit
            Left = 127
            Top = 11
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Resolucion'
          end
          object btnBuscar: TButton
            Left = 445
            Top = 9
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
            OnClick = btnBuscarClick
          end
          object dtpDate: TDateTimePicker
            Left = 16
            Top = 11
            Width = 105
            Height = 21
            Date = 43556.000000000000000000
            Time = 0.954545844906533600
            ShowCheckbox = True
            TabOrder = 2
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 958
    Height = 51
    Align = alBottom
    TabOrder = 1
    object btnEditar: TButton
      Left = 145
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Editar'
      Enabled = False
      ImageIndex = 2
      ImageMargins.Left = 7
      Images = dmData.ImageList1
      TabOrder = 0
      OnClick = btnEditarClick
    end
    object btnCancelar: TButton
      Left = 269
      Top = 14
      Width = 84
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 3
      ImageMargins.Left = 7
      Images = dmData.ImageList1
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnGuardar: TButton
      Left = 399
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Guardar'
      Enabled = False
      ImageIndex = 4
      ImageMargins.Left = 7
      Images = dmData.ImageList1
      TabOrder = 2
      OnClick = btnGuardarClick
    end
    object btn1: TButton
      Left = 519
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      ImageIndex = 4
      ImageMargins.Left = 7
      Images = dmData.ImageList1
      TabOrder = 3
      OnClick = btn1Click
    end
  end
  object pnCabecera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 952
    Height = 33
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 207
      Top = 6
      Width = 69
      Height = 16
      Alignment = taCenter
      Caption = 'Resolucion'
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
      Tag = 1
      AlignWithMargins = True
      Left = 925
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Caption = '>'
      Enabled = False
      OnClick = spbPagSiguienteClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbPaginaAnteriorrr: TSpeedButton
      Tag = 1
      AlignWithMargins = True
      Left = 896
      Top = 4
      Width = 23
      Height = 25
      Align = alRight
      Caption = '<'
      Enabled = False
      OnClick = spbPaginaAnteriorrrClick
      ExplicitLeft = 680
      ExplicitTop = 5
      ExplicitHeight = 22
    end
    object spbActualizar: TSpeedButton
      Tag = 1
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 23
      Height = 25
      Align = alLeft
      Caption = '<'
      Enabled = False
      OnClick = spbActualizarClick
      ExplicitLeft = 46
      ExplicitTop = 5
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 745
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
      Left = 605
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
        Tag = 1
        Left = 72
        Top = 1
        Width = 49
        Height = 21
        Style = csDropDownList
        Enabled = False
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
  object fdResolucion: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'solicitud_id'
        DataType = ftInteger
      end
      item
        Name = 'nro_resolucion'
        DataType = ftInteger
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cliente_full_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'empleado_full_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'monto'
        DataType = ftFloat
      end
      item
        Name = 'cuota'
        DataType = ftFloat
      end
      item
        Name = 'plazo'
        DataType = ftInteger
      end
      item
        Name = 'comentario'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipo_interes'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'interes'
        DataType = ftFloat
      end
      item
        Name = 'ahorro_inicial'
        DataType = ftFloat
      end
      item
        Name = 'ahorro_programado'
        DataType = ftFloat
      end
      item
        Name = 'plazo_maximo'
        DataType = ftInteger
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
    Left = 837
    Top = 202
    object fdResolucionid: TIntegerField
      FieldName = 'id'
    end
    object fdResolucionsolicitud_id: TIntegerField
      FieldName = 'solicitud_id'
    end
    object fdResolucionnro_resolucion: TIntegerField
      FieldName = 'nro_resolucion'
    end
    object fdResolucionestado: TStringField
      FieldName = 'estado'
    end
    object fdResolucioncliente_full_name: TStringField
      FieldName = 'cliente_full_name'
    end
    object fdResolucionempleado_full_name: TStringField
      FieldName = 'empleado_full_name'
    end
    object fdResolucionmonto: TFloatField
      FieldName = 'monto'
      DisplayFormat = '#,##0.00'
    end
    object fdResolucioncuota: TFloatField
      FieldName = 'cuota'
      DisplayFormat = '#,##0.00'
    end
    object fdResolucionplazo: TIntegerField
      FieldName = 'plazo'
      DisplayFormat = '0'
    end
    object fdResolucioncomentario: TStringField
      FieldName = 'comentario'
    end
    object fdResoluciontipo_interes: TStringField
      FieldName = 'tipo_interes'
    end
    object fdResolucioninteres: TFloatField
      FieldName = 'interes'
    end
    object fdResolucionahorro_inicial: TFloatField
      FieldName = 'ahorro_inicial'
    end
    object fdResolucionahorro_programado: TFloatField
      FieldName = 'ahorro_programado'
    end
    object fdResolucionplazo_maximo: TIntegerField
      FieldName = 'plazo_maximo'
    end
    object fdResolucioncreated_at: TDateField
      FieldKind = fkCalculated
      FieldName = 'created_at'
      Calculated = True
    end
  end
  object dsResolucion: TDataSource
    DataSet = fdResolucion
    Left = 845
    Top = 282
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43556.860920057900000000
    ReportOptions.LastChange = 43557.003087175920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 840
    Top = 80
    Datasets = <
      item
        DataSet = frxDBResolucion
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        Description = 'CEOP ILO'
        FillType = ftBrush
        Frame.Typ = []
        Height = 131.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = -22.677180000000050000
          Top = 34.015770000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Fill.BackColor = clNavy
          HAlign = haRight
          Memo.UTF8W = (
            '"Fortaleciendo confianza"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Resoluci'#243'n de Comit'#233' de Cr'#233'ditos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 1.000000000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'MICROFINANZAS')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 97.267780000000000000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 173.795300000000000000
          Top = 100.047310000000000000
          Width = 266.976500000000000000
          Height = 18.897650000000000000
          DataField = 'nro_resolucion'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nro_resolucion"]')
          ParentFont = False
          Style = 'Data'
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 99.267780000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Resolucion')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 96.267780000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 587.102660000000000000
          Top = 100.267780000000000000
          Width = 113.204700000000000000
          Height = 18.897650000000000000
          DataField = 'estado'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."estado"]')
          ParentFont = False
          Style = 'Data'
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 97.267780000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CEOP ILO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 657.638220000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBResolucion
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 228.992270000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 228.992270000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 101.047310000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 336.378170000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 622.622450000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 195.535560000000000000
          Width = 404.409710000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 101.047310000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 101.047310000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 101.047310000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 101.047310000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 11.275510000000000000
          Top = 34.015770000000000000
          Width = 336.196970000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_full_name'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cliente_full_name"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 162.456710000000000000
          Top = 624.504330000000000000
          Width = 528.953000000000000000
          Height = 18.897650000000000000
          DataField = 'empleado_full_name'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."empleado_full_name"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.834570000000000000
          Top = 130.283550000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'monto'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."monto"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 597.102660000000000000
          Top = 130.283550000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cuota'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cuota"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 166.236240000000000000
          Top = 130.283550000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'plazo'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."plazo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 302.299320000000000000
          Top = 228.992270000000000000
          Width = 396.669450000000000000
          Height = 154.960730000000000000
          DataField = 'comentario'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."comentario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 427.023810000000000000
          Top = 130.283550000000000000
          Width = 128.322820000000000000
          Height = 18.897650000000000000
          DataField = 'tipo_interes'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."tipo_interes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 309.858380000000000000
          Top = 130.283550000000000000
          Width = 70.440940000000000000
          Height = 18.897650000000000000
          DataField = 'interes'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."interes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 67.747990000000000000
          Top = 230.771800000000000000
          Width = 47.763760000000000000
          Height = 18.897650000000000000
          DataField = 'ahorro_inicial'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ahorro_inicial"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 188.913420000000000000
          Top = 230.771800000000000000
          Width = 55.322820000000000000
          Height = 18.897650000000000000
          DataField = 'ahorro_programado'
          DataSet = frxDBResolucion
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ahorro_programado"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 13.338590000000000000
          Top = 228.992270000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inicial')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 133.283550000000000000
          Top = 229.992270000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Progra.')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 195.535560000000000000
          Width = 234.330860000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 47.692950000000000000
          Top = 195.535560000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fondo de Garantia (%)')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 18.118120000000000000
          Top = 6.897650000000000000
          Width = 306.141930000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Apellidos y Nombres del Solicitante')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 100.047310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Monto')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 100.047310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Plazo')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 100.047310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Interes')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 100.047310000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Interes')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 100.047310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cuota')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 194.535560000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Comentario')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000010000
          Top = 621.622450000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Analista')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 929.764380000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo30: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 68.031539999999950000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Coordinacion de programa')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 68.031539999999950000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Analista de creditos')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 52.913419999999970000
          Width = 177.637910000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 52.913419999999970000
          Width = 166.299320000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBResolucion: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = fdResolucion
    BCDToCurrency = False
    Left = 845
    Top = 144
  end
end
