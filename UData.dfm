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
    Left = 185
    Top = 186
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
          'orro {ahorroQuery {data {id,desc_ahorro,porcentaje}}}"}]'
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 193
    Top = 122
  end
  object dsLineaCredito: TDataSource
    DataSet = fdLineaCredito
    Left = 273
    Top = 258
  end
  object dsPerfilCliente: TDataSource
    DataSet = fdPerfilCliente
    Left = 273
    Top = 322
  end
  object dsTipoProducto: TDataSource
    DataSet = fdTipoProducto
    Left = 273
    Top = 394
  end
  object dsAhorro: TDataSource
    DataSet = fdAhorro
    Left = 273
    Top = 458
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
    Left = 185
    Top = 450
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
    Left = 185
    Top = 386
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
    Left = 185
    Top = 314
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
    Left = 185
    Top = 242
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
    Left = 72
    Top = 248
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = fdPerfilCliente
    FieldDefs = <>
    Left = 72
    Top = 320
  end
  object RESTResponseDataSetAdapter3: TRESTResponseDataSetAdapter
    Dataset = fdTipoProducto
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 72
    Top = 368
  end
  object RESTResponseDataSetAdapter4: TRESTResponseDataSetAdapter
    Dataset = fdAhorro
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = '[1].data.ahorroQuery.data'
    Left = 72
    Top = 440
  end
end
