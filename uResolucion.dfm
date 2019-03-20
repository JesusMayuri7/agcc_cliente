object fResolucion: TfResolucion
  Left = 0
  Top = 0
  Caption = 'Resolucion'
  ClientHeight = 558
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
    Height = 468
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 956
      Height = 466
      ActivePage = tabFormulario
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        ExplicitLeft = 6
        ExplicitTop = 23
        object GroupBox1: TGroupBox
          Left = 35
          Top = 39
          Width = 726
          Height = 378
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
            Width = 77
            Height = 16
            Caption = 'Interes Inicial'
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
            Width = 109
            Height = 16
            Caption = 'Interes Progamado'
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
            Height = 142
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
            Top = 187
            Width = 241
            Height = 159
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
              Top = 112
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
              Top = 107
              Width = 23
              Height = 27
              OnClick = SpeedButton1Click
            end
            object cxSpinEdit1: TcxSpinEdit
              Left = 104
              Top = 41
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.SpinButtons.Visible = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 97
            end
            object cxSpinEdit2: TcxSpinEdit
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
            object cxSpinEdit3: TcxSpinEdit
              Left = 104
              Top = 107
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 97
            end
          end
          object GroupBox3: TGroupBox
            Left = 464
            Top = 21
            Width = 241
            Height = 145
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
              Top = 104
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
            object spnMonto: TcxSpinEdit
              Left = 104
              Top = 33
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.SpinButtons.Visible = False
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
            object spnCuota: TcxSpinEdit
              Left = 104
              Top = 99
              Enabled = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '0'
              Properties.SpinButtons.Visible = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 97
            end
          end
          object ComboBox1: TComboBox
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
              'REBATIR')
          end
          object SpinEdit1: TSpinEdit
            Left = 339
            Top = 69
            Width = 93
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 9
            Value = 0
          end
          object SpinEdit2: TSpinEdit
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
          Height = 397
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
              DataBinding.FieldName = 'empleado_full_name'
              Width = 187
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
          Height = 397
          Align = alRight
          Caption = 'Panel1'
          TabOrder = 1
          object DBMemo1: TDBMemo
            Left = 1
            Top = 1
            Width = 183
            Height = 395
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
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Resolucion'
          end
          object btnBuscar: TButton
            Left = 330
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 1
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 507
    Width = 958
    Height = 51
    Align = alBottom
    TabOrder = 1
    object btnEditar: TButton
      Left = 157
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Editar'
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
      Left = 379
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
        Top = 5
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
  object fdResolucion: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
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
  end
  object dsResolucion: TDataSource
    DataSet = fdResolucion
    Left = 853
    Top = 282
  end
end
