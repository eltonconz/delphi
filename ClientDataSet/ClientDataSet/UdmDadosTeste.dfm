object dmDadosTeste: TdmDadosTeste
  OldCreateOrder = False
  Height = 317
  Width = 357
  object cdsDados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = cdsDadosBeforePost
    OnNewRecord = cdsDadosNewRecord
    Left = 56
    Top = 32
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDadosDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '##/##/####'
    end
    object cdsDadosVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.00'
    end
    object agrgtfldcdsDadosAG_VALOR_TOTAL: TAggregateField
      FieldName = 'AG_VALOR_TOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = ',##0.00'
      Expression = 'sum(VALOR)'
    end
    object agrgtfldcdsDadosAG_PROX_COD: TAggregateField
      FieldName = 'AG_PROX_COD'
      Active = True
      DisplayName = ''
      Expression = 'max(CODIGO) + 1'
    end
  end
end
