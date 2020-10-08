object dmProduto: TdmProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 294
  Width = 247
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsProdutoBeforePost
    AfterPost = cdsProdutoAfterPost
    AfterDelete = cdsProdutoAfterDelete
    OnNewRecord = cdsProdutoNewRecord
    Left = 48
    Top = 32
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      KeyFields = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsProdutoVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = ',##0.00'
    end
  end
end
