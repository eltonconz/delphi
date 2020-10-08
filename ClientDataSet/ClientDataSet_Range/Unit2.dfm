object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 32
    object cdsDadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsDadosUF: TStringField
      FieldName = 'UF'
      Size = 3
    end
  end
end
