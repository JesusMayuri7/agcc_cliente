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
              Column = 0
              Control = Panel9
              Row = 0
            end
            item
              Column = 1
              Control = pgc1
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
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 519
            Height = 707
            Align = alClient
            TabOrder = 0
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
                Left = 389
                Top = 36
                Width = 42
                Height = 22
                Caption = 'Nuevo'
                OnClick = SpeedButton3Click
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
                Properties.OnChange = cbbGiroNegocioPropertiesChange
                Properties.OnCloseUp = cbbGiroNegocioPropertiesCloseUp
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
          object pgc1: TPageControl
            Left = 520
            Top = 1
            Width = 519
            Height = 707
            ActivePage = ts2
            Align = alClient
            TabOrder = 1
            object ts1: TTabSheet
              Caption = 'Informacion'
              ExplicitWidth = 281
              ExplicitHeight = 165
              object GridPanel1: TGridPanel
                Left = 0
                Top = 0
                Width = 511
                Height = 679
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
                  end
                  item
                    Column = 0
                    Control = cxGrid2
                    Row = 1
                  end>
                Padding.Left = 5
                Padding.Top = 5
                Padding.Right = 5
                Padding.Bottom = 5
                RowCollection = <
                  item
                    Value = 82.402731815365140000
                  end
                  item
                    Value = 17.597268184634860000
                  end
                  item
                    SizeStyle = ssAuto
                  end>
                ShowCaption = False
                TabOrder = 0
                ExplicitWidth = 281
                ExplicitHeight = 165
                object grid3: TcxGrid
                  Left = 11
                  Top = 11
                  Width = 489
                  Height = 539
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  ExplicitWidth = 259
                  ExplicitHeight = 116
                  object gridInfo: TcxGridDBBandedTableView
                    Navigator.Buttons.CustomButtons = <>
                    OnEditValueChanged = gridInfoEditValueChanged
                    DataController.DataSource = dmData.dsTipoInfo
                    DataController.Summary.DefaultGroupSummaryItems = <
                      item
                        Format = '#,##0.00'
                        Kind = skSum
                        FieldName = 'monto'
                        Column = gridInfovalor
                      end>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.GroupFooterMultiSummaries = True
                    OptionsView.GroupFooters = gfAlwaysVisible
                    OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
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
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.SpinButtons.Visible = False
                      Properties.OnEditValueChanged = gridInfovalorPropertiesEditValueChanged
                      OnGetDataText = gridInfovalorGetDataText
                      HeaderAlignmentHorz = taCenter
                      Width = 81
                      Position.BandIndex = 0
                      Position.ColIndex = 5
                      Position.RowIndex = 0
                    end
                    object gridInfotipo: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'tipo'
                      Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 6
                      Position.RowIndex = 0
                    end
                  end
                  object cxGridLevel3: TcxGridLevel
                    GridView = gridInfo
                  end
                end
                object cxGrid2: TcxGrid
                  Left = 11
                  Top = 560
                  Width = 489
                  Height = 107
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  ExplicitTop = 137
                  ExplicitWidth = 259
                  ExplicitHeight = 16
                  object gridCostoVenta: TcxGridBandedTableView
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
                        Caption = 'Calculo Costo Venta'
                        Width = 407
                      end>
                    object cxGridBandedColumn2: TcxGridBandedColumn
                      Caption = 'Descripcion'
                      HeaderAlignmentHorz = taCenter
                      Width = 214
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGridBandedColumn1: TcxGridBandedColumn
                      Caption = 'Monto'
                      DataBinding.ValueType = 'Float'
                      PropertiesClassName = 'TcxSpinEditProperties'
                      Properties.DisplayFormat = '#,##0.00'
                      Properties.SpinButtons.Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                  end
                  object cxGridLevel4: TcxGridLevel
                    GridView = gridCostoVenta
                  end
                end
              end
            end
            object ts2: TTabSheet
              Caption = 'Resumen'
              ImageIndex = 1
              object pnl1: TPanel
                Left = 0
                Top = 0
                Width = 511
                Height = 41
                Align = alTop
                TabOrder = 0
                ExplicitLeft = 112
                ExplicitTop = 536
                ExplicitWidth = 185
                object btn2: TButton
                  Left = 16
                  Top = 8
                  Width = 73
                  Height = 25
                  Caption = 'Actualizar'
                  TabOrder = 0
                  OnClick = btn2Click
                end
                object btn3: TButton
                  Left = 424
                  Top = 8
                  Width = 75
                  Height = 25
                  Caption = 'Imprimir'
                  TabOrder = 1
                  OnClick = btn3Click
                end
              end
              object cxGrid3: TcxGrid
                Left = 0
                Top = 41
                Width = 511
                Height = 638
                Align = alClient
                TabOrder = 1
                ExplicitLeft = 2
                ExplicitTop = 39
                object cxGrid3DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = dsResumenInfo
                  DataController.Summary.DefaultGroupSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                      FieldName = 'monto'
                      Column = cxGrid3DBTableView1monto
                    end>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.Footer = True
                  OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
                  object cxGrid3DBTableView1informacion: TcxGridDBColumn
                    DataBinding.FieldName = 'informacion'
                    Visible = False
                    GroupIndex = 1
                  end
                  object cxGrid3DBTableView1detalle: TcxGridDBColumn
                    DataBinding.FieldName = 'detalle'
                    GroupIndex = 0
                    Width = 204
                  end
                  object cxGrid3DBTableView1tipo: TcxGridDBColumn
                    DataBinding.FieldName = 'tipo'
                  end
                  object cxGrid3DBTableView1monto: TcxGridDBColumn
                    DataBinding.FieldName = 'monto'
                  end
                end
                object cxGrid3Level1: TcxGridLevel
                  GridView = cxGrid3DBTableView1
                end
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
            object gridSolicitudnro_solicitud: TcxGridDBColumn
              Caption = '#'
              DataBinding.FieldName = 'nro_solicitud'
              HeaderAlignmentHorz = taCenter
              Width = 37
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
                  HeaderAlignmentHorz = taCenter
                  Width = 177
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid5DBBandedTableView1tipo: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'tipo'
                  HeaderAlignmentHorz = taCenter
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
      object btn1: TButton
        Left = 520
        Top = 6
        Width = 89
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 4
        OnClick = btn1Click
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
    object fdSolicitudnro_solicitud: TStringField
      FieldName = 'nro_solicitud'
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
      DisplayLabel = 'Nombres'
      FieldName = 'full_name'
      Size = 100
    end
    object fdAvalestipo: TStringField
      DisplayLabel = 'Tipo'
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
    Left = 341
    Top = 288
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
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43556.860920057900000000
    ReportOptions.LastChange = 43576.500534965280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 744
    Top = 96
    Datasets = <
      item
        DataSet = frxDBAvales
        DataSetName = 'frxDBAvales'
      end
      item
        DataSet = frxDBSolicitud
        DataSetName = 'frxDBSolicitud'
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
          Left = -22.677180000000000000
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
            'Solicitud de Cliente')
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
          Width = 94.488250000000000000
          Height = 20.787401574803150000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.763760000000000000
          Top = 100.047310000000000000
          Width = 187.606370000000000000
          Height = 18.897650000000000000
          DataField = 'nro_solicitud'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."nro_solicitud"]')
          ParentFont = False
          Style = 'Data'
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 99.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Solicitud')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 96.267780000000000000
          Width = 83.149660000000000000
          Height = 20.787401574803150000
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
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."estado"]')
          ParentFont = False
          Style = 'Data'
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 97.267780000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 593.063390000000000000
        ParentFont = False
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSolicitud
        DataSetName = 'frxDBSolicitud'
        RowCount = 0
        object Shape14: TfrxShapeView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 142.866141732283500000
          Width = 49.133890000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape13: TfrxShapeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 143.960730000000000000
          Width = 49.133890000000000000
          Height = 18.897637795275590000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 63.252010000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 328.819110000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 176.315090000000000000
          Width = 687.874460000000000000
          Height = 18.897637795275590000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 63.252010000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 63.252010000000000000
          Width = 139.842610000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 63.252010000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 63.252010000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 11.275510000000000000
          Top = 33.015770000000000000
          Width = 324.858380000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_full_name'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."cliente_full_name"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 18.834570000000000000
          Top = 90.488250000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'monto'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."monto"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 597.102660000000000000
          Top = 90.330708661417320000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cuota'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."cuota"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 166.236240000000000000
          Top = 90.488250000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'plazo'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."plazo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 11.275510000000000000
          Top = 205.992270000000000000
          Width = 683.913730000000000000
          Height = 45.354360000000000000
          DataField = 'comentario'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."comentario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 427.023810000000000000
          Top = 90.330708661417320000
          Width = 128.322820000000000000
          Height = 18.897650000000000000
          DataField = 'tipo_interes'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."tipo_interes"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 309.858380000000000000
          Top = 90.330708661417320000
          Width = 70.440940000000000000
          Height = 18.897650000000000000
          DataField = 'ahorro_programado'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."ahorro_programado"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 67.747990000000000000
          Top = 142.866141732283500000
          Width = 47.763760000000000000
          Height = 18.897650000000000000
          DataField = 'ahorro_inicial'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."ahorro_inicial"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 188.913420000000000000
          Top = 142.866141732283500000
          Width = 55.322820000000000000
          Height = 18.897650000000000000
          DataField = 'ahorro_programado'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."ahorro_programado"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 13.338590000000000000
          Top = 142.960730000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 142.960730000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 118.504020000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 36.354360000000000000
          Top = 118.504020000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 7.897650000000000000
          Width = 306.141930000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 64.251968503937010000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 64.252010000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cuota')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 178.315090000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Comentario')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 7.559055118110236000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 376.173470000000000000
          Top = 7.937007870000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo de Prestamo')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 7.559055118110236000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 7.937007870000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo de Cliente')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 33.015770000000000000
          Width = 162.338590000000000000
          Height = 18.897650000000000000
          DataField = 'tipo_prestamo'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."tipo_prestamo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 33.015770000000000000
          Width = 147.220470000000000000
          Height = 18.897650000000000000
          DataField = 'perfil_cliente'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."perfil_cliente"]')
          ParentFont = False
        end
        object Shape22: TfrxShapeView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 118.677165354330700000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 379.173470000000000000
          Top = 118.677165350000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Reputacion Ceop')
          ParentFont = False
        end
        object Shape23: TfrxShapeView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 118.677165354330700000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 118.724490000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Infocorp')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 142.866141732283500000
          Width = 162.338590000000000000
          Height = 18.897650000000000000
          DataField = 'reporte_ceop'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."reporte_ceop"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 142.866141732283500000
          Width = 147.220470000000000000
          Height = 18.897650000000000000
          DataField = 'reporte_info'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."reporte_info"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 540.472790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'INTERVIENEN')
        end
        object Shape18: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 563.149970000000000000
          Width = 702.992580000000000000
          Frame.Typ = []
        end
        object Shape19: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 536.693260000000000000
          Width = 702.992580000000000000
          Frame.Typ = []
        end
        object Shape15: TfrxShapeView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 571.709030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 571.709030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Dni')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 571.709030000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 570.709030000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nombres')
          ParentFont = False
        end
        object Shape17: TfrxShapeView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 571.709030000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 570.709030000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 907.087200000000000000
        Width = 718.110700000000000000
        object Memo28: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 98.488250000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 102.047310000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo30: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 102.047244094488200000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 40.574830000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Coordinacion de programa')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 40.574830000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Analista de creditos')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 25.456710000000000000
          Width = 177.637910000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 25.456710000000000000
          Width = 166.299320000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 73.031540000000000000
          Width = 113.385900000000000000
          Height = 18.897637795275590000
          Fill.BackColor = cl3DLight
          Frame.Typ = []
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 139.779530000000000000
          Top = 74.913420000000000000
          Width = 404.228510000000000000
          Height = 18.897650000000000000
          DataField = 'empleado'
          DataSet = frxDBSolicitud
          DataSetName = 'frxDBSolicitud'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSolicitud."empleado"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 73.031540000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Analista')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 827.717070000000000000
        Width = 718.110700000000000000
        DataSet = frxDBAvales
        DataSetName = 'frxDBAvales'
        RowCount = 0
        object frxDBDataset1dni: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 2.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'dni'
          DataSet = frxDBAvales
          DataSetName = 'frxDBAvales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAvales."dni"]')
          ParentFont = False
        end
        object frxDBDataset1full_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 2.559060000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataField = 'full_name'
          DataSet = frxDBAvales
          DataSetName = 'frxDBAvales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAvales."full_name"]')
          ParentFont = False
        end
        object frxDBDataset1tipo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 2.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'tipo'
          DataSet = frxDBAvales
          DataSetName = 'frxDBAvales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAvales."tipo"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBSolicitud: TfrxDBDataset
    UserName = 'frxDBSolicitud'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'plazo=plazo'
      'cuota=cuota'
      'interes=interes'
      'estado=estado'
      'avales=avales'
      'garantia=garantia'
      'tipo_prestamo=tipo_prestamo'
      'empleado=empleado'
      'tipo_producto=tipo_producto'
      'comentario=comentario'
      'perfil_cliente=perfil_cliente'
      'perfil_cliente_id=perfil_cliente_id'
      'linea_credito=linea_credito'
      'linea_credito_id=linea_credito_id'
      'cliente_full_name=cliente_full_name'
      'cliente_dni=cliente_dni'
      'tipo_prestamo_id=tipo_prestamo_id'
      'tipo_producto_id=tipo_producto_id'
      'giro_negocio=giro_negocio'
      'giro_negocio_id=giro_negocio_id'
      'garantia_id=garantia_id'
      'reporte_ceop=reporte_ceop'
      'reporte_ceop_id=reporte_ceop_id'
      'reporte_info=reporte_info'
      'reporte_info_id=reporte_info_id'
      'monto=monto'
      'tipo_info_detalle=tipo_info_detalle'
      'created_at=created_at'
      'perfil_cliente_tipo_producto_id=perfil_cliente_tipo_producto_id'
      'ahorro_inicial=ahorro_inicial'
      'ahorro_programado=ahorro_programado'
      'tipo_interes=tipo_interes'
      'resolucion_id=resolucion_id'
      'nro_solicitud=nro_solicitud')
    DataSet = fdSolicitud
    BCDToCurrency = False
    Left = 1021
    Top = 240
  end
  object frxDBAvales: TfrxDBDataset
    UserName = 'frxDBAvales'
    CloseDataSource = False
    DataSet = fdAvales
    BCDToCurrency = False
    Left = 725
    Top = 144
  end
  object fdResumenInfo: TFDMemTable
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
    Left = 1065
    Top = 313
    object fdResumenInfodetalle: TStringField
      FieldName = 'detalle'
      Size = 50
    end
    object fdResumenInfoinformacion: TStringField
      FieldName = 'informacion'
    end
    object fdResumenInfomonto: TFloatField
      FieldName = 'monto'
      DisplayFormat = '#,##0.00'
    end
    object fdResumenInfotipo: TStringField
      FieldName = 'tipo'
    end
  end
  object dsResumenInfo: TDataSource
    DataSet = fdResumenInfo
    Left = 1065
    Top = 369
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link3
    PrintTitle = 'Y AHORA'
    Version = 0
    Left = 896
    Top = 312
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxCompositionReportLink
      Active = True
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'ASDFASDF')
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -19
      PrinterPage.PageHeader.Font.Name = 'Times New Roman'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43577.502816446760000000
      ReportDocument.IsCaptionAssigned = True
      Items = <
        item
          ReportLink = dxComponentPrinter1Link2
          BuiltInCompositionItem = True
        end
        item
          ReportLink = dxComponentPrinter1Link3
          BuiltInCompositionItem = True
        end>
      StartEachItemFromNewPage = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Active = True
      Component = cxGrid3
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'LEVANTAMIENTO DE INFORMACION')
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43577.505731354170000000
      ReportDocument.Description = 'LEVANTAMIENTO DE INFORMACION'
      ReportTitle.Text = 'CLIENTE'
      TimeFormat = 0
      OptionsExpanding.ExpandGroupRows = True
      OptionsOnEveryPage.FilterBar = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      Active = True
      Component = grid3
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43577.505871875000000000
      OptionsOnEveryPage.FilterBar = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
