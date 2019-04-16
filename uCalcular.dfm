object fCalcular: TfCalcular
  Left = 0
  Top = 0
  Caption = 'Calcular Cuota'
  ClientHeight = 750
  ClientWidth = 1134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 433
      Top = 12
      Width = 92
      Height = 16
      Alignment = taCenter
      Caption = 'Calcular cuota'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 699
    Width = 1134
    Height = 51
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1134
    Height = 658
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 264
      Height = 656
      Align = alLeft
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 262
        Height = 168
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 12
          Top = 16
          Width = 78
          Height = 13
          Caption = 'Linea de Credito'
        end
        object Label4: TLabel
          Left = 12
          Top = 61
          Width = 60
          Height = 13
          Caption = 'Perfil Cliente'
        end
        object Label5: TLabel
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
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              Caption = '#'
              Width = 20
              FieldName = 'id'
            end
            item
              Caption = 'Descripcion'
              FieldName = 'desc_linea_credito'
            end>
          Properties.ListFieldIndex = 1
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
              FieldName = 'id'
            end
            item
              FieldName = 'desc_perfil_cliente'
            end
            item
              FieldName = 't'
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
        object Label1: TLabel
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
        object Label2: TLabel
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
      object Panel6: TPanel
        Left = 1
        Top = 297
        Width = 262
        Height = 358
        Align = alClient
        TabOrder = 2
        object Label11: TLabel
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
        object Label13: TLabel
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
        object Label15: TLabel
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
        object Label18: TLabel
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
        object Label8: TLabel
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
        object Label9: TLabel
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
        object Label6: TLabel
          Left = 12
          Top = 210
          Width = 85
          Height = 16
          Caption = 'Cuota mensual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxGrid4: TcxGrid
          Left = 12
          Top = 240
          Width = 245
          Height = 81
          Enabled = False
          TabOrder = 0
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
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
            object cxGrid4DBBandedTableView1Column1: TcxGridDBBandedColumn
              Caption = 'Descripcion'
              DataBinding.FieldName = 'desc_ahorro'
              HeaderAlignmentHorz = taCenter
              Width = 160
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1Column2: TcxGridDBBandedColumn
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
            GridView = cxGrid4DBBandedTableView1
          end
        end
        object spnCuota: TcxSpinEdit
          Left = 127
          Top = 209
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 90
        end
      end
    end
    object PageControl1: TPageControl
      Left = 265
      Top = 1
      Width = 868
      Height = 656
      ActivePage = pgcSimple
      Align = alClient
      TabOrder = 1
      object pgcSimple: TTabSheet
        Caption = 'Simple'
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 860
          Height = 628
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
              Control = grid3
              Row = 1
            end
            item
              Column = 0
              Control = cxGrid5
              Row = 0
            end
            item
              Column = 1
              Control = cxGrid1
              Row = 0
            end
            item
              Column = 1
              Control = cxGrid2
              Row = 1
            end>
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          RowCollection = <
            item
              Value = 47.368421052631580000
            end
            item
              Value = 52.631578947368420000
            end>
          ShowCaption = False
          TabOrder = 0
          object grid3: TcxGrid
            Left = 21
            Top = 308
            Width = 399
            Height = 299
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object gridCuota: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = 'Sin datos'
              Styles.ContentOdd = cxStyle1
              Bands = <
                item
                  Caption = 'Distribuci'#243'n de cuota'
                  Width = 374
                end>
              object gridCuotaColumn3: TcxGridBandedColumn
                Caption = 'Condicion'
                Visible = False
                GroupIndex = 0
                Width = 101
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gridCuotaColumn1: TcxGridBandedColumn
                Caption = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 193
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gridCuotaColumn2: TcxGridBandedColumn
                Caption = 'Valor'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = gridCuota
            end
          end
          object cxGrid5: TcxGrid
            Left = 21
            Top = 21
            Width = 399
            Height = 267
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object gridTotales: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = 'Sin datos'
              OptionsView.GroupByBox = False
              Styles.ContentOdd = cxStyle1
              Bands = <
                item
                  Caption = 'Parametros'
                  Width = 374
                end>
              object cxGridBandedColumn1: TcxGridBandedColumn
                Caption = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 264
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridBandedColumn2: TcxGridBandedColumn
                Caption = 'Valor'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
                Width = 110
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gridTotales
            end
          end
          object cxGrid1: TcxGrid
            Left = 440
            Top = 21
            Width = 399
            Height = 267
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object gridAhorro: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = 'Sin datos'
              OptionsView.GroupByBox = False
              Styles.ContentOdd = cxStyle1
              Bands = <
                item
                  Caption = 'Ahorro'
                  Width = 374
                end>
              object cxGridBandedColumn3: TcxGridBandedColumn
                Caption = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 264
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridBandedColumn4: TcxGridBandedColumn
                Caption = 'Valor'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
                Width = 110
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = gridAhorro
            end
          end
          object cxGrid2: TcxGrid
            Left = 440
            Top = 308
            Width = 399
            Height = 299
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object gridRendicion: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridBandedColumn7
                end>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = 'Sin datos'
              OptionsView.Footer = True
              OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
              Styles.ContentOdd = cxStyle1
              Bands = <
                item
                  Caption = 'Distribuci'#243'n al finalizar pago de cuotas'#9#9#9
                  Width = 374
                end>
              object cxGridBandedColumn5: TcxGridBandedColumn
                Caption = 'Tipo'
                Visible = False
                GroupIndex = 0
                Width = 101
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridBandedColumn6: TcxGridBandedColumn
                Caption = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 193
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridBandedColumn7: TcxGridBandedColumn
                Caption = 'Valor'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                Properties.ValueType = vtFloat
                GroupSummaryAlignment = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = gridRendicion
            end
          end
        end
      end
      object pgcRebatir: TTabSheet
        Caption = 'Rebatir'
        ImageIndex = 1
        object GridPanel2: TGridPanel
          Left = 0
          Top = 0
          Width = 860
          Height = 628
          Align = alClient
          Caption = 'GridPanel2'
          ColumnCollection = <
            item
              Value = 42.857142857142850000
            end
            item
              Value = 57.142857142857150000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = GridPanel3
              Row = 0
            end
            item
              Column = 1
              Control = cxGrid3
              Row = 0
            end>
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object GridPanel3: TGridPanel
            Left = 11
            Top = 11
            Width = 353
            Height = 606
            Align = alClient
            Caption = 'GridPanel3'
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = cxGrid6
                Row = 0
              end
              item
                Column = 0
                Control = cxGrid7
                Row = 1
              end
              item
                Column = 0
                Control = cxGrid8
                Row = 2
              end>
            RowCollection = <
              item
                Value = 40.066382171645330000
              end
              item
                Value = 24.371740161213850000
              end
              item
                Value = 35.561877667140830000
              end>
            TabOrder = 0
            object cxGrid6: TcxGrid
              Left = 1
              Top = 1
              Width = 351
              Height = 242
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object gridParametrosRebatir: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.NoDataToDisplayInfoText = 'Sin datos'
                OptionsView.GroupByBox = False
                Styles.ContentOdd = cxStyle1
                Bands = <
                  item
                    Caption = 'Parametros'
                    Width = 348
                  end>
                object cxGridBandedColumn10: TcxGridBandedColumn
                  Caption = 'Descripcion'
                  HeaderAlignmentHorz = taCenter
                  Width = 247
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn11: TcxGridBandedColumn
                  Caption = 'Valor'
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '#,##0.000'
                  Properties.ReadOnly = True
                  Properties.SpinButtons.Visible = False
                  Properties.ValueType = vtFloat
                  HeaderAlignmentHorz = taCenter
                  Width = 127
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel6: TcxGridLevel
                GridView = gridParametrosRebatir
              end
            end
            object cxGrid7: TcxGrid
              Left = 1
              Top = 243
              Width = 351
              Height = 147
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object gridFactorRebatir: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.NoDataToDisplayInfoText = 'Sin datos'
                OptionsView.GroupByBox = False
                Styles.ContentOdd = cxStyle1
                Bands = <
                  item
                    Caption = 'Factor'
                    Width = 348
                  end>
                object cxGridBandedColumn12: TcxGridBandedColumn
                  Caption = 'Descripcion'
                  HeaderAlignmentHorz = taCenter
                  Width = 178
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn13: TcxGridBandedColumn
                  Caption = 'Valor'
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '#,##0.0000000000'
                  Properties.ReadOnly = True
                  Properties.SpinButtons.Visible = False
                  Properties.ValueType = vtFloat
                  HeaderAlignmentHorz = taCenter
                  Width = 170
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel7: TcxGridLevel
                GridView = gridFactorRebatir
              end
            end
            object cxGrid8: TcxGrid
              Left = 1
              Top = 390
              Width = 351
              Height = 215
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object gridInteresRebatir: TcxGridBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.NoDataToDisplayInfoText = 'Sin datos'
                OptionsView.GroupByBox = False
                Styles.ContentOdd = cxStyle1
                Bands = <
                  item
                    Caption = 'Interes'
                    Width = 348
                  end>
                object cxGridBandedColumn14: TcxGridBandedColumn
                  Caption = 'Descripcion'
                  HeaderAlignmentHorz = taCenter
                  Width = 264
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridBandedColumn15: TcxGridBandedColumn
                  Caption = 'Valor'
                  DataBinding.ValueType = 'Float'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = '#,##0.00'
                  Properties.ReadOnly = True
                  Properties.SpinButtons.Visible = False
                  Properties.ValueType = vtFloat
                  HeaderAlignmentHorz = taCenter
                  Width = 110
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel8: TcxGridLevel
                GridView = gridInteresRebatir
              end
            end
          end
          object cxGrid3: TcxGrid
            Left = 374
            Top = 11
            Width = 475
            Height = 606
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object gridCuotasRebatir: TcxGridBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = colSaldoDeuda
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = colInteres
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = colAmortizacion
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = colCuota
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = 'Sin datos'
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.ContentOdd = cxStyle1
              Bands = <
                item
                  Caption = 'Parametros'
                  Width = 467
                end>
              object colId: TcxGridBandedColumn
                Caption = '#'
                DataBinding.ValueType = 'Integer'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 49
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object colSaldoDeuda: TcxGridBandedColumn
                Caption = 'Saldo deuda'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.CanEdit = False
                Properties.DisplayFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 113
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object colInteres: TcxGridBandedColumn
                Caption = 'Interes'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.CanEdit = False
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 108
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object colAmortizacion: TcxGridBandedColumn
                Caption = 'Amortizacion'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.CanEdit = False
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 116
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object colCuota: TcxGridBandedColumn
                Caption = 'Cuota'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.CanEdit = False
                Properties.DisplayFormat = '#,##0.00'
                Properties.ReadOnly = True
                Properties.SpinButtons.Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 81
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = gridCuotasRebatir
            end
          end
        end
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 696
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 164
    Top = 5
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'desc_linea_credito'
      Component = lblLineaCredito
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'mora'
      Component = lblMora
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'interes'
      Component = lblInteres
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'plazo_minimo'
      Component = lblPlazoMinimo
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
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
      DataSource = BindSourceDB3
      FieldName = 'desc_tipo_producto'
      Component = lblTipoProducto
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB2: TBindSourceDB
    ScopeMappings = <>
    Left = 744
    Top = 168
  end
  object BindSourceDB3: TBindSourceDB
    ScopeMappings = <>
    Left = 784
    Top = 272
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 320
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clCream
    end
  end
end
