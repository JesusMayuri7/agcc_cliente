object dmData: TdmData
  OldCreateOrder = False
  Height = 565
  Width = 1057
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://ceopilo.test/graphql/query'
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
    Dataset = fdLineaCredito
    FieldDefs = <>
    Response = RESTResponse1
    RootElement = '[0].data.linea_creditoQuery.data'
    Left = 56
    Top = 160
  end
  object adapAhorro: TRESTResponseDataSetAdapter
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
    Left = 177
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
    Dataset = fdPerfilCliente
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 56
    Top = 224
  end
  object RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter
    Dataset = fdTipoProducto
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 56
    Top = 280
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 833
    Top = 90
  end
  object RESTRequest2: TRESTRequest
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
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 841
    Top = 26
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 945
    Top = 178
  end
  object FDMemTable1: TFDMemTable
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
    Left = 857
    Top = 170
    object WideStringField1: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object WideStringField2: TWideStringField
      FieldName = 'desc_linea_credito'
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = 'tipo_interes'
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'monto_minimo'
      Size = 255
    end
    object WideStringField5: TWideStringField
      FieldName = 'monto_maximo'
      Size = 255
    end
    object MemoField1: TMemoField
      FieldName = 'perfil_cliente'
      BlobType = ftMemo
    end
  end
  object RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse2
    RootElement = '[0].data.linea_creditoQuery.data'
    Left = 736
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable3
    Left = 945
    Top = 242
  end
  object DataSource3: TDataSource
    DataSet = FDMemTable2
    Left = 945
    Top = 306
  end
  object FDMemTable2: TFDMemTable
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
    Left = 849
    Top = 298
    object IntegerField7: TIntegerField
      FieldName = 'id'
    end
    object StringField1: TStringField
      FieldName = 'desc_tipo_producto'
    end
    object FloatField1: TFloatField
      FieldName = 'interes'
    end
    object FloatField2: TFloatField
      FieldName = 'mora'
    end
    object IntegerField8: TIntegerField
      FieldName = 'plazo_minimo'
    end
    object IntegerField9: TIntegerField
      FieldName = 'plazo_maximo'
    end
  end
  object FDMemTable3: TFDMemTable
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
    Left = 857
    Top = 234
    object IntegerField10: TIntegerField
      FieldName = 'id'
    end
    object StringField2: TStringField
      FieldName = 'desc_perfil_cliente'
    end
    object MemoField2: TMemoField
      FieldName = 'tipo_producto'
      BlobType = ftMemo
    end
  end
  object RESTResponseDataSetAdapter5: TRESTResponseDataSetAdapter
    Dataset = FDMemTable3
    FieldDefs = <>
    ResponseJSON = RESTResponse2
    Left = 736
    Top = 232
  end
  object RESTResponseDataSetAdapter6: TRESTResponseDataSetAdapter
    Dataset = FDMemTable2
    FieldDefs = <>
    ResponseJSON = RESTResponse2
    Left = 736
    Top = 288
  end
end
