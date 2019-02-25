object fCalcular: TfCalcular
  Left = 0
  Top = 0
  Caption = 'Calcular Cuota'
  ClientHeight = 736
  ClientWidth = 1121
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
    Width = 1121
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
    Top = 695
    Width = 1121
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 676
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1121
    Height = 654
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 264
      Height = 652
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 633
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
          Top = 35
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
          Properties.ListSource = dsLineaCredito
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
          Properties.ListSource = dsPerfilCliente
          Properties.OnChange = cbbPerfilClientePropertiesChange
          TabOrder = 1
          Width = 231
        end
        object cbbTipoProducto: TcxLookupComboBox
          Left = 10
          Top = 128
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
              FieldName = 'desc_tipo_producto'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsTipoProducto
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
        ExplicitTop = 209
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
        Height = 354
        Align = alClient
        TabOrder = 2
        ExplicitLeft = 25
        ExplicitTop = 392
        ExplicitHeight = 224
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
        object cxGrid4: TcxGrid
          Left = 12
          Top = 216
          Width = 245
          Height = 81
          Enabled = False
          TabOrder = 0
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAhorro
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
      end
    end
    object GridPanel1: TGridPanel
      Left = 265
      Top = 1
      Width = 855
      Height = 652
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
      TabOrder = 1
      ExplicitHeight = 647
      object grid3: TcxGrid
        Left = 21
        Top = 319
        Width = 396
        Height = 312
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 510
        ExplicitTop = 63
        ExplicitWidth = 250
        ExplicitHeight = 200
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
        Width = 396
        Height = 278
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 510
        ExplicitTop = 63
        ExplicitWidth = 250
        ExplicitHeight = 200
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
        Left = 437
        Top = 21
        Width = 397
        Height = 278
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 510
        ExplicitTop = 63
        ExplicitWidth = 250
        ExplicitHeight = 200
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
        Left = 437
        Top = 319
        Width = 397
        Height = 312
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ExplicitLeft = 510
        ExplicitTop = 63
        ExplicitWidth = 250
        ExplicitHeight = 200
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
    Left = 457
    Top = 122
    object fdLineaCreditoid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object fdLineaCreditodesc_linea_credito: TWideStringField
      FieldName = 'desc_linea_credito'
      Size = 255
    end
    object fdLineaCreditotipo_interes: TWideStringField
      FieldName = 'tipo_interes'
      Size = 255
    end
    object fdLineaCreditomonto_minimo: TWideStringField
      FieldName = 'monto_minimo'
      Size = 255
    end
    object fdLineaCreditomonto_maximo: TWideStringField
      FieldName = 'monto_maximo'
      Size = 255
    end
    object fdLineaCreditoperfil_cliente: TMemoField
      FieldName = 'perfil_cliente'
      BlobType = ftMemo
    end
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = fdPerfilCliente
    FieldDefs = <>
    Left = 312
    Top = 152
  end
  object RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter
    Dataset = fdTipoProducto
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 312
    Top = 208
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 809
    Top = 154
  end
  object RESTRequest1: TRESTRequest
    Client = dmData.RESTClient1
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Value = 
          '[{"query":"query calcular {linea_creditoQuery { data { id,desc_l' +
          'inea_credito,tipo_interes,monto_minimo,monto_maximo,perfil_clien' +
          'te {id,desc_perfil_cliente,tipo_producto {id,desc_tipo_producto,' +
          'interes,mora,plazo_minimo,plazo_maximo}}}}}"},{"query":"query ah' +
          'orro {ahorroQuery {data {id,desc_ahorro,porcentaje}}}"}]'
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 817
    Top = 90
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = fdLineaCredito
    FieldDefs = <>
    Response = RESTResponse1
    RootElement = '[0].data.linea_creditoQuery.data'
    Left = 312
    Top = 88
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
    Left = 425
    Top = 154
    object fdPerfilClienteid: TIntegerField
      FieldName = 'id'
    end
    object fdPerfilClientedesc_perfil_cliente: TStringField
      FieldName = 'desc_perfil_cliente'
    end
    object fdPerfilClientetipo_producto: TMemoField
      FieldName = 'tipo_producto'
      BlobType = ftMemo
    end
  end
  object dsLineaCredito: TDataSource
    DataSet = fdLineaCredito
    Left = 553
    Top = 82
  end
  object dsPerfilCliente: TDataSource
    DataSet = fdPerfilCliente
    Left = 553
    Top = 146
  end
  object fdTipoProducto: TFDMemTable
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
    Left = 457
    Top = 218
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object fdTipoProductodesc_tipo_producto: TStringField
      FieldName = 'desc_tipo_producto'
    end
    object fdTipoProductointeres: TFloatField
      FieldName = 'interes'
    end
    object fdTipoProductomora: TFloatField
      FieldName = 'mora'
    end
    object fdTipoProductoplazo_minimo: TIntegerField
      FieldName = 'plazo_minimo'
    end
    object fdTipoProductoplazo_maximo: TIntegerField
      FieldName = 'plazo_maximo'
    end
  end
  object dsTipoProducto: TDataSource
    DataSet = fdTipoProducto
    Left = 553
    Top = 218
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = fdLineaCredito
    ScopeMappings = <>
    Left = 696
    Top = 272
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
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
    object LinkPropertyToFieldCaption7: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'desc_linea_credito'
      Component = lblTipoProducto
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = fdPerfilCliente
    ScopeMappings = <>
    Left = 896
    Top = 272
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = fdTipoProducto
    ScopeMappings = <>
    Left = 800
    Top = 272
  end
  object RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter
    Dataset = fdAhorro
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[1].data.ahorroQuery.data'
    Left = 312
    Top = 280
  end
  object fdAhorro: TFDMemTable
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
    Left = 457
    Top = 282
    object IntegerField2: TIntegerField
      FieldName = 'id'
    end
    object fdAhorrodesc_ahorro: TStringField
      FieldName = 'desc_ahorro'
    end
    object fdAhorroporcentaje: TFloatField
      FieldName = 'porcentaje'
      DisplayFormat = '0.00'
    end
  end
  object dsAhorro: TDataSource
    DataSet = fdAhorro
    Left = 561
    Top = 282
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clCream
    end
  end
end
