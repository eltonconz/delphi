object dmExemplo: TdmExemplo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 289
  Width = 344
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 32
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      EditMask = '##/##/####'
    end
    object cdsPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 40
    Top = 96
  end
end
