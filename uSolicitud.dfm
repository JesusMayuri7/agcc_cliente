object fSolicitud: TfSolicitud
  Left = 0
  Top = 0
  Caption = 'Solicitud'
  ClientHeight = 819
  ClientWidth = 1314
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
  object pnCabecera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1308
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 6
      Width = 125
      Height = 16
      Alignment = taCenter
      Caption = 'Solicitud de Credito'
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
      Left = 1281
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
      Left = 1252
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
      ExplicitLeft = 3
      ExplicitTop = 5
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 1101
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
      Left = 961
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
    Width = 1314
    Height = 780
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1312
      Height = 737
      ActivePage = tabFormulario
      Align = alClient
      TabOrder = 0
      object tabFormulario: TTabSheet
        Caption = 'Formulario'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 264
          Height = 709
          Align = alLeft
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 262
            Height = 168
            Align = alTop
            TabOrder = 0
            object Label8: TLabel
              Left = 12
              Top = 16
              Width = 78
              Height = 13
              Caption = 'Linea de Credito'
            end
            object Label9: TLabel
              Left = 12
              Top = 61
              Width = 60
              Height = 13
              Caption = 'Perfil Cliente'
            end
            object Label13: TLabel
              Left = 12
              Top = 109
              Width = 66
              Height = 13
              Caption = 'Tipo Producto'
            end
            object cbbLineaCredito: TcxLookupComboBox
              Left = 10
              Top = 34
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'desc_linea_credito'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsLineaCredito
              Properties.OnChange = cbbLineaCreditoPropertiesChange
              TabOrder = 0
              Width = 231
            end
            object cbbPerfilCliente: TcxLookupComboBox
              Left = 10
              Top = 80
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  Caption = '#'
                  Width = 20
                  FieldName = 'id'
                end
                item
                  Caption = 'Descripcion'
                  FieldName = 'desc_perfil_cliente'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsPerfilCliente
              Properties.OnChange = cbbPerfilClientePropertiesChange
              TabOrder = 1
              Width = 231
            end
            object cbbTipoProducto: TcxLookupComboBox
              Left = 10
              Top = 128
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'perfil_cliente_tipo_producto_id'
              Properties.ListColumns = <
                item
                  Caption = '#'
                  Width = 20
                  FieldName = 'id'
                end
                item
                  Caption = 'Descripcion'
                  FieldName = 'desc_tipo_producto'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsTipoProducto
              TabOrder = 2
              Width = 231
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 169
            Width = 262
            Height = 128
            Align = alTop
            TabOrder = 1
            object Label14: TLabel
              Left = 55
              Top = 6
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
            object Label15: TLabel
              Left = 164
              Top = 6
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
            object spnPlazo: TcxSpinEdit
              Left = 144
              Top = 31
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
              Width = 73
            end
            object spnMonto: TcxSpinEdit
              Left = 24
              Top = 31
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
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
            object Button1: TButton
              Left = 12
              Top = 80
              Width = 229
              Height = 33
              Caption = 'Calcular'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = Button1Click
            end
          end
          object Panel7: TPanel
            Left = 1
            Top = 297
            Width = 262
            Height = 411
            Align = alClient
            TabOrder = 2
            object Label16: TLabel
              Left = 10
              Top = 60
              Width = 91
              Height = 16
              Caption = 'Perfil del cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 10
              Top = 85
              Width = 97
              Height = 16
              Caption = 'Tipo de producto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 10
              Top = 110
              Width = 40
              Height = 16
              Caption = 'Interes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 10
              Top = 135
              Width = 29
              Height = 16
              Caption = 'Mora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 10
              Top = 160
              Width = 76
              Height = 16
              Caption = 'Plazo minimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 10
              Top = 185
              Width = 79
              Height = 16
              Caption = 'Plazo maximo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 86
              Top = 6
              Width = 59
              Height = 16
              Caption = 'Resumen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 10
              Top = 35
              Width = 96
              Height = 16
              Caption = 'Linea de credito:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblInteres: TLabel
              Left = 127
              Top = 110
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblLineaCredito: TLabel
              Left = 127
              Top = 35
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblMora: TLabel
              Left = 127
              Top = 135
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblPerfilCliente: TLabel
              Left = 127
              Top = 60
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblPlazoMaximo: TLabel
              Left = 127
              Top = 185
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblPlazoMinimo: TLabel
              Left = 127
              Top = 160
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblTipoProducto: TLabel
              Left = 127
              Top = 85
              Width = 4
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 12
              Top = 211
              Width = 33
              Height = 16
              Caption = 'Cuota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cxGrid4: TcxGrid
              Left = 12
              Top = 256
              Width = 245
              Height = 81
              Enabled = False
              TabOrder = 0
              object gridAhorro: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmData.dsAhorro
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
                Bands = <
                  item
                    Caption = 'Ahorro'
                  end>
                object gridAhorroColumn1: TcxGridDBBandedColumn
                  Caption = 'Descripcion'
                  DataBinding.FieldName = 'desc_ahorro'
                  HeaderAlignmentHorz = taCenter
                  Width = 160
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object gridAhorroColumn2: TcxGridDBBandedColumn
                  Caption = 'Valor (%)'
                  DataBinding.FieldName = 'porcentaje'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.DisplayFormat = '#,##0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGrid4Level1: TcxGridLevel
                GridView = gridAhorro
              end
            end
            object spnCuota: TcxSpinEdit
              Left = 127
              Top = 210
              Properties.Alignment.Horz = taRightJustify
              Properties.CanEdit = False
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Style.Color = clWhite
              TabOrder = 1
              Width = 90
            end
          end
        end
        object GridPanel2: TGridPanel
          Left = 264
          Top = 0
          Width = 1040
          Height = 709
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 1
              Control = GridPanel1
              Row = 0
            end
            item
              Column = 0
              Control = Panel9
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end
            item
              SizeStyle = ssAuto
            end>
          TabOrder = 1
          object GridPanel1: TGridPanel
            Left = 520
            Top = 1
            Width = 519
            Height = 707
            Align = alClient
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = grid3
                Row = 0
              end>
            Padding.Left = 10
            Padding.Top = 10
            Padding.Right = 10
            Padding.Bottom = 10
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            ShowCaption = False
            TabOrder = 0
            object grid3: TcxGrid
              Left = 21
              Top = 21
              Width = 477
              Height = 665
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object gridInfo: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dmData.dsTipoInfo
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'Informacion del Negocio y Familiar'
                    Width = 455
                  end>
                object gridInfoid: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object gridInfodesc_tipo_info_detalle: TcxGridDBBandedColumn
                  Caption = 'Detalle'
                  DataBinding.FieldName = 'desc_tipo_info_detalle'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 328
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object gridInfotipo_info_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'tipo_info_id'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object gridInfotipo_info: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'tipo_info'
                  Visible = False
                  GroupIndex = 1
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object gridInfoinformacion: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'informacion'
                  Visible = False
                  GroupIndex = 0
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object gridInfovalor: TcxGridDBBandedColumn
                  Caption = 'Monto'
                  DataBinding.FieldName = 'monto'
                  HeaderAlignmentHorz = taCenter
                  Width = 81
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = gridInfo
              end
            end
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 519
            Height = 707
            Align = alClient
            TabOrder = 1
            object grpCliente: TGroupBox
              Left = 19
              Top = 16
              Width = 454
              Height = 73
              Caption = 'Datos del Cliente'
              TabOrder = 0
              object Label2: TLabel
                Left = 16
                Top = 19
                Width = 15
                Height = 13
                Caption = 'Dni'
              end
              object Label3: TLabel
                Left = 91
                Top = 19
                Width = 42
                Height = 13
                Caption = 'Nombres'
              end
              object SpeedButton3: TSpeedButton
                Left = 405
                Top = 36
                Width = 42
                Height = 22
                Caption = 'Agregar'
              end
              object txtDniCliente: TEdit
                Left = 16
                Top = 36
                Width = 65
                Height = 21
                TabOrder = 0
                Text = '74205877'
                OnKeyUp = txtDniClienteKeyUp
              end
              object txtNombresCliente: TEdit
                Left = 91
                Top = 36
                Width = 284
                Height = 21
                TabOrder = 1
              end
            end
            object GroupBox2: TGroupBox
              Left = 19
              Top = 95
              Width = 454
              Height = 201
              Caption = 'Datos del Aval'
              TabOrder = 1
              object Label4: TLabel
                Left = 16
                Top = 19
                Width = 15
                Height = 13
                Caption = 'Dni'
              end
              object Label5: TLabel
                Left = 91
                Top = 17
                Width = 42
                Height = 13
                Caption = 'Nombres'
              end
              object SpeedButton1: TSpeedButton
                Left = 404
                Top = 36
                Width = 42
                Height = 22
                Caption = 'Agregar'
                OnClick = SpeedButton1Click
              end
              object txtDniAval: TEdit
                Left = 16
                Top = 36
                Width = 65
                Height = 21
                TabOrder = 0
                OnKeyUp = txtDniAvalKeyUp
              end
              object cxGrid1: TcxGrid
                Left = 16
                Top = 76
                Width = 425
                Height = 109
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object gridAvales: TcxGridBandedTableView
                  OnKeyUp = gridAvalesKeyUp
                  Navigator.Buttons.CustomButtons = <>
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.GroupByBox = False
                  Styles.ContentOdd = cxStyle1
                  Bands = <
                    item
                      Caption = 'Avales'
                      Width = 407
                    end>
                  object colId: TcxGridBandedColumn
                    Caption = 'id'
                    DataBinding.ValueType = 'Integer'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object colDni: TcxGridBandedColumn
                    Caption = 'Dni'
                    HeaderAlignmentHorz = taCenter
                    Width = 80
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object colNombres: TcxGridBandedColumn
                    Caption = 'Noombres'
                    HeaderAlignmentHorz = taCenter
                    Width = 231
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object colTipo: TcxGridBandedColumn
                    Caption = 'Tipo'
                    HeaderAlignmentHorz = taCenter
                    Width = 96
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gridAvales
                end
              end
              object txtNombresAval: TEdit
                Left = 91
                Top = 36
                Width = 214
                Height = 21
                TabOrder = 2
              end
              object cbbTipo: TComboBox
                Left = 315
                Top = 36
                Width = 84
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 3
                Text = 'CONYUGE'
                Items.Strings = (
                  'CONYUGE'
                  'AVAL')
              end
            end
            object GroupBox3: TGroupBox
              Left = 19
              Top = 302
              Width = 454
              Height = 81
              Caption = 'Historial'
              TabOrder = 2
              object Label6: TLabel
                Left = 18
                Top = 19
                Width = 40
                Height = 13
                Caption = 'Ceop Ilo'
              end
              object Label7: TLabel
                Left = 245
                Top = 19
                Width = 85
                Height = 13
                Caption = 'Central de Riesgo'
              end
              object cbbReporteCeop: TcxLookupComboBox
                Left = 18
                Top = 38
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'desc_reporte_ceop'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsReporteCeop
                TabOrder = 0
                Width = 191
              end
              object cbbReporteInfo: TcxLookupComboBox
                Left = 245
                Top = 38
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'desc_historial_crediticio'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsReporteInfo
                TabOrder = 1
                Width = 188
              end
            end
            object GroupBox4: TGroupBox
              Left = 19
              Top = 406
              Width = 454
              Height = 283
              Caption = 'Datos'
              TabOrder = 3
              object Label24: TLabel
                Left = 18
                Top = 19
                Width = 68
                Height = 13
                Caption = 'Tipo prestamo'
              end
              object Label25: TLabel
                Left = 18
                Top = 155
                Width = 41
                Height = 13
                Caption = 'Garantia'
              end
              object Label30: TLabel
                Left = 18
                Top = 83
                Width = 60
                Height = 13
                Caption = 'Giro Negocio'
              end
              object Label31: TLabel
                Left = 234
                Top = 19
                Width = 55
                Height = 13
                Caption = 'Comentario'
              end
              object cbbTipoPrestamo: TcxLookupComboBox
                Left = 18
                Top = 38
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'desc_tipo_prestamo'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsTipoPrestamo
                TabOrder = 0
                Width = 191
              end
              object cbbGarantia: TcxLookupComboBox
                Left = 18
                Top = 174
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'desc_garantia'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsGarantia
                TabOrder = 1
                Width = 188
              end
              object cbbGiroNegocio: TcxLookupComboBox
                Left = 18
                Top = 102
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'desc_giro_negocio'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsGiroNegocio
                TabOrder = 2
                Width = 191
              end
              object txtComentario: TMemo
                Left = 232
                Top = 40
                Width = 209
                Height = 209
                Lines.Strings = (
                  '')
                TabOrder = 3
              end
            end
          end
        end
      end
      object tabLIstado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object gridTableViewSolicitud: TcxGrid
          Left = 0
          Top = 41
          Width = 992
          Height = 668
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object gridSolicitud: TcxGridDBTableView
            PopupMenu = PopupMenu1
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsSolicitud
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
            object gridSolicitudid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 42
            end
            object gridSolicitudlinea_credito: TcxGridDBColumn
              DataBinding.FieldName = 'linea_credito'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudperfil_cliente: TcxGridDBColumn
              DataBinding.FieldName = 'perfil_cliente'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudtipo_producto: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_producto'
              HeaderAlignmentHorz = taCenter
              Width = 134
            end
            object gridSolicitudtipo_prestamo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_prestamo'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'garantia'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudmonto: TcxGridDBColumn
              DataBinding.FieldName = 'monto'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudplazo: TcxGridDBColumn
              DataBinding.FieldName = 'plazo'
              HeaderAlignmentHorz = taCenter
              Width = 58
            end
            object gridSolicitudcuota: TcxGridDBColumn
              DataBinding.FieldName = 'cuota'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudinteres: TcxGridDBColumn
              DataBinding.FieldName = 'interes'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudestado: TcxGridDBColumn
              DataBinding.FieldName = 'estado'
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object gridSolicitudempleado: TcxGridDBColumn
              DataBinding.FieldName = 'empleado'
              HeaderAlignmentHorz = taCenter
            end
            object gridSolicitudcreated_at: TcxGridDBColumn
              DataBinding.FieldName = 'created_at'
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
          end
          object gridTableViewSolicitudLevel1: TcxGridLevel
            GridView = gridSolicitud
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1304
          Height = 41
          Align = alTop
          TabOrder = 1
          object edCriterio: TEdit
            Left = 12
            Top = 10
            Width = 305
            Height = 21
            TabOrder = 0
            TextHint = 'Linea de Credito'
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
        object Panel10: TPanel
          Left = 992
          Top = 41
          Width = 312
          Height = 668
          Align = alRight
          TabOrder = 2
          object GridPanel3: TGridPanel
            Left = 1
            Top = 1
            Width = 310
            Height = 666
            Align = alClient
            Caption = 'GridPanel3'
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = cxGrid5
                Row = 1
              end
              item
                Column = 0
                Control = Panel11
                Row = 0
              end
              item
                Column = 0
                Control = Panel12
                Row = 2
              end>
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            RowCollection = <
              item
                Value = 15.557519525056900000
              end
              item
                Value = 25.214952384485230000
              end
              item
                Value = 59.227528090457860000
              end
              item
                SizeStyle = ssAuto
              end>
            TabOrder = 0
            object cxGrid5: TcxGrid
              Left = 11
              Top = 112
              Width = 288
              Height = 154
              Align = alClient
              TabOrder = 0
              object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsAvales
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'INTERVIENEN'
                  end>
                object cxGrid5DBBandedTableView1id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id'
                  Visible = False
                  Width = 28
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid5DBBandedTableView1nombres: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'full_name'
                  Width = 177
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid5DBBandedTableView1tipo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'tipo'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGrid5DBBandedTableView1
              end
            end
            object Panel11: TPanel
              Left = 11
              Top = 11
              Width = 288
              Height = 91
              Align = alClient
              TabOrder = 1
              object GroupBox5: TGroupBox
                Left = 1
                Top = 1
                Width = 286
                Height = 89
                Align = alClient
                Caption = 'Cliente'
                TabOrder = 0
                object DBText1: TDBText
                  Left = 72
                  Top = 24
                  Width = 65
                  Height = 17
                  DataField = 'cliente_dni'
                  DataSource = dsSolicitud
                end
                object DBText2: TDBText
                  Left = 72
                  Top = 56
                  Width = 193
                  Height = 17
                  DataField = 'cliente_full_name'
                  DataSource = dsSolicitud
                end
                object Label27: TLabel
                  Left = 16
                  Top = 24
                  Width = 19
                  Height = 13
                  Caption = 'Dni:'
                end
                object Label29: TLabel
                  Left = 16
                  Top = 56
                  Width = 42
                  Height = 13
                  Caption = 'Nombres'
                end
              end
            end
            object Panel12: TPanel
              Left = 11
              Top = 276
              Width = 288
              Height = 377
              Align = alClient
              Caption = 'Panel12'
              TabOrder = 2
              object Label28: TLabel
                Left = 1
                Top = 1
                Width = 286
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 'COMENTARIO'
                ExplicitWidth = 68
              end
              object DBMemo1: TDBMemo
                Left = 1
                Top = 14
                Width = 286
                Height = 362
                Align = alClient
                DataField = 'comentario'
                DataSource = dsSolicitud
                TabOrder = 0
              end
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 738
      Width = 1312
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
        Left = 169
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
  object fdSolicitud: TFDMemTable
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
    Left = 421
    Top = 282
    object fdSolicitudid: TIntegerField
      DisplayLabel = '#'
      FieldName = 'id'
    end
    object fdSolicitudplazo: TIntegerField
      FieldName = 'plazo'
      DisplayFormat = '0'
    end
    object fdSolicitudcuota: TFloatField
      FieldName = 'cuota'
      DisplayFormat = '#,##0.00'
    end
    object fdSolicitudinteres: TFloatField
      FieldName = 'interes'
      DisplayFormat = '#,##0.00'
    end
    object fdSolicitudestado: TStringField
      FieldName = 'estado'
    end
    object fdSolicitudavales: TMemoField
      FieldName = 'avales'
      BlobType = ftMemo
    end
    object fdSolicitudgarantia: TStringField
      FieldName = 'garantia'
    end
    object fdSolicitudtipo_prestamo: TStringField
      FieldName = 'tipo_prestamo'
    end
    object fdSolicitudempleado: TStringField
      FieldName = 'empleado'
    end
    object fdSolicitudtipo_producto: TStringField
      FieldName = 'tipo_producto'
    end
    object fdSolicitudcomentario: TStringField
      DisplayWidth = 20
      FieldName = 'comentario'
      Size = 500
    end
    object fdSolicitudperfil_cliente: TStringField
      FieldName = 'perfil_cliente'
    end
    object fdSolicitudperfil_cliente_id: TIntegerField
      FieldName = 'perfil_cliente_id'
    end
    object fdSolicitudlinea_credito: TStringField
      FieldName = 'linea_credito'
    end
    object fdSolicitudlinea_credito_id: TIntegerField
      FieldName = 'linea_credito_id'
    end
    object fdSolicitudcliente_full_name: TStringField
      FieldName = 'cliente_full_name'
    end
    object fdSolicitudcliente_dni: TStringField
      FieldName = 'cliente_dni'
    end
    object fdSolicitudtipo_prestamo_id: TIntegerField
      FieldName = 'tipo_prestamo_id'
    end
    object fdSolicitudtipo_producto_id: TIntegerField
      FieldName = 'tipo_producto_id'
    end
    object fdSolicitudgiro_negocio: TStringField
      FieldName = 'giro_negocio'
    end
    object fdSolicitudgiro_negocio_id: TIntegerField
      FieldName = 'giro_negocio_id'
    end
    object fdSolicitudgarantia_id: TIntegerField
      FieldName = 'garantia_id'
    end
    object fdSolicitudreporte_ceop: TStringField
      FieldName = 'reporte_ceop'
    end
    object fdSolicitudreporte_ceop_id: TIntegerField
      FieldName = 'reporte_ceop_id'
    end
    object fdSolicitudreporte_info: TStringField
      FieldName = 'reporte_info'
    end
    object fdSolicitudreporte_info_id: TIntegerField
      FieldName = 'reporte_info_id'
    end
    object fdSolicitudmonto: TFloatField
      FieldName = 'monto'
    end
    object fdSolicitudtipo_info_detalle: TMemoField
      FieldName = 'tipo_info_detalle'
      BlobType = ftMemo
    end
    object fdSolicitudcreated_at: TDateField
      DisplayLabel = 'Creado'
      FieldName = 'created_at'
    end
    object fdSolicitudperfil_cliente_tipo_producto_id: TIntegerField
      FieldName = 'perfil_cliente_tipo_producto_id'
    end
    object fdSolicitudahorro_inicial: TFloatField
      FieldName = 'ahorro_inicial'
    end
    object fdSolicitudahorro_programado: TFloatField
      FieldName = 'ahorro_programado'
    end
    object fdSolicitudtipo_interes: TStringField
      FieldName = 'tipo_interes'
    end
    object fdSolicitudresolucion_id: TIntegerField
      FieldName = 'resolucion_id'
    end
  end
  object dsSolicitud: TDataSource
    DataSet = fdSolicitud
    OnDataChange = dsSolicitudDataChange
    Left = 517
    Top = 298
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 96
    Top = 248
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 156
    Top = 29
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'desc_linea_credito'
      Component = lblLineaCredito
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'mora'
      Component = lblMora
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'interes'
      Component = lblInteres
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'plazo_minimo'
      Component = lblPlazoMinimo
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'plazo_maximo'
      Component = lblPlazoMaximo
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption6: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'desc_perfil_cliente'
      Component = lblPerfilCliente
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToField1: TLinkPropertyToField
      DataSource = BindSourceDB4
      FieldName = 'desc_tipo_producto'
      Component = lblTipoProducto
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = dmData.fdPerfilCliente
    ScopeMappings = <>
    Left = 712
    Top = 56
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = dmData.fdLineaCredito
    ScopeMappings = <>
    Left = 720
    Top = 344
  end
  object BindSourceDB3: TBindSourceDB
    ScopeMappings = <>
    Left = 784
    Top = 272
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = dmData.fdTipoProducto
    ScopeMappings = <>
    Left = 784
    Top = 360
  end
  object dsAvales: TDataSource
    DataSet = fdAvales
    Left = 901
    Top = 216
  end
  object fdAvales: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    DetailFields = 'nombres;id'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 1085
    Top = 242
    object fdAvalesid: TIntegerField
      FieldName = 'id'
    end
    object fdAvalesdni: TStringField
      FieldName = 'dni'
    end
    object fdAvalesfull_name: TStringField
      FieldName = 'full_name'
      Size = 100
    end
    object fdAvalestipo: TStringField
      FieldName = 'tipo'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 349
    Top = 184
    object Imprimir1: TMenuItem
      Action = actCerrar
    end
    object Anular1: TMenuItem
      Action = actAnular
    end
    object Imprimirsolicitud1: TMenuItem
      Caption = 'Imprimir solicitud'
    end
    object Resolucion1: TMenuItem
      Action = actResolucion
    end
  end
  object ActionList1: TActionList
    Left = 309
    Top = 352
    object actCerrar: TAction
      Caption = 'Cerrar'
      OnExecute = actCerrarExecute
    end
    object actAnular: TAction
      Caption = 'Anular'
      OnExecute = actAnularExecute
    end
    object actResolucion: TAction
      Caption = 'Generar Resolucion'
      OnExecute = actResolucionExecute
    end
  end
end
