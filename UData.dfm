object dmData: TdmData
  OldCreateOrder = False
  Height = 565
  Width = 1057
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://ceopilo.test/graphql/query'
    ContentType = 'application/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 456
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 153
    Top = 82
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Value = 
          '[{"query":"query calcular {linea_creditoQuery { data { id,desc_l' +
          'inea_credito,tipo_interes,monto_minimo,monto_maximo,perfil_clien' +
          'te {id,desc_perfil_cliente,tipo_producto {id,desc_tipo_producto,' +
          'interes,mora,plazo_minimo,plazo_maximo}}}}}"},{"query":"query ah' +
          'orro {ahorroQuery {data {id,desc_ahorro,porcentaje}}}"},{"query"' +
          ':"query riesgoceop {reporte_ceopQuery {data {id,desc_reporte_ceo' +
          'p}}}"},{"query":"query riesgoinfo {reporte_crediticioQuery {data' +
          ' {id,desc_historial_crediticio}}}"},{"query":"query tipoprestamo' +
          ' {tipo_prestamoQuery {data {id,desc_tipo_prestamo}}}"}, {"query"' +
          ':"query garantia {garantiaQuery {data {id,desc_garantia}}}"}]'
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 161
    Top = 18
  end
  object dsLineaCredito: TDataSource
    DataSet = fdLineaCredito
    Left = 257
    Top = 170
  end
  object dsAhorro: TDataSource
    DataSet = fdAhorro
    Left = 257
    Top = 370
  end
  object fdAhorro: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_ahorro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'porcentaje'
        DataType = ftFloat
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
    Left = 169
    Top = 362
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
  object fdLineaCredito: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'desc_linea_credito'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'tipo_interes'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'monto_minimo'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'monto_maximo'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'perfil_cliente'
        DataType = ftMemo
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
    Left = 169
    Top = 162
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
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdLineaCredito
    FieldDefs = <>
    Response = RESTResponse1
    RootElement = '[0].data.linea_creditoQuery.data'
    Left = 56
    Top = 160
  end
  object adapAhorro: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdAhorro
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[1].data.ahorroQuery.data'
    Left = 56
    Top = 352
  end
  object dsReporteCeop: TDataSource
    DataSet = fdReporteCeop
    Left = 257
    Top = 434
  end
  object fdReporteCeop: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_reporte_ceop'
        DataType = ftString
        Size = 20
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
    Left = 169
    Top = 426
    object IntegerField3: TIntegerField
      FieldName = 'id'
    end
    object fdReporteCeopdesc_reporte_ceop: TStringField
      FieldName = 'desc_reporte_ceop'
    end
  end
  object adapReporteCeop: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdReporteCeop
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[2].data.reporte_ceopQuery.data'
    Left = 56
    Top = 432
  end
  object dsReporteInfo: TDataSource
    DataSet = fdReporteInfo
    Left = 257
    Top = 498
  end
  object fdReporteInfo: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_historial_crediticio'
        DataType = ftString
        Size = 20
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
    Left = 169
    Top = 490
    object IntegerField4: TIntegerField
      FieldName = 'id'
    end
    object fdReporteInfodesc_historial_crediticio: TStringField
      FieldName = 'desc_historial_crediticio'
    end
  end
  object adapReporteInfo: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdReporteInfo
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[3].data.reporte_crediticioQuery.data'
    Left = 56
    Top = 496
  end
  object dsTipoPrestamo: TDataSource
    DataSet = fdTipoPrestamo
    Left = 609
    Top = 498
  end
  object fdTipoPrestamo: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_tipo_prestamo'
        DataType = ftString
        Size = 20
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
    Left = 513
    Top = 498
    object IntegerField5: TIntegerField
      FieldName = 'id'
    end
    object fdTipoPrestamodesc_tipo_prestamo: TStringField
      FieldName = 'desc_tipo_prestamo'
    end
  end
  object adapTipoPrestamo: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdTipoPrestamo
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[4].data.tipo_prestamoQuery.data'
    Left = 384
    Top = 496
  end
  object dsGarantia: TDataSource
    DataSet = fdGarantia
    Left = 609
    Top = 434
  end
  object fdGarantia: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_garantia'
        DataType = ftString
        Size = 20
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
    Left = 505
    Top = 434
    object IntegerField6: TIntegerField
      FieldName = 'id'
    end
    object fdGarantiadesc_garantia: TStringField
      FieldName = 'desc_garantia'
    end
  end
  object adapGarantia: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdGarantia
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[5].data.garantiaQuery.data'
    Left = 384
    Top = 432
  end
  object dsPerfilCliente: TDataSource
    DataSet = fdPerfilCliente
    Left = 257
    Top = 234
  end
  object dsTipoProducto: TDataSource
    DataSet = fdTipoProducto
    Left = 257
    Top = 306
  end
  object fdTipoProducto: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_tipo_producto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'interes'
        DataType = ftFloat
      end
      item
        Name = 'mora'
        DataType = ftFloat
      end
      item
        Name = 'plazo_minimo'
        DataType = ftInteger
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
    Left = 169
    Top = 298
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
  object fdPerfilCliente: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'desc_perfil_cliente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipo_producto'
        DataType = ftMemo
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
    Left = 169
    Top = 226
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
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdPerfilCliente
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 56
    Top = 224
  end
  object RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter
    Active = True
    Dataset = fdTipoProducto
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 56
    Top = 280
  end
end
