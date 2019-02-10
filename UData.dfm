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
    Left = 392
    Top = 192
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RESTResponse1
    Left = 280
    Top = 304
  end
  object RESTResponse2: TRESTResponse
    Left = 520
    Top = 312
  end
end
