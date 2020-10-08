object dmPessoa: TdmPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 281
  Width = 381
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'IND_NOME'
        Fields = 'NOME'
      end
      item
        Name = 'IND_NOME_NASC'
        Fields = 'NOME;DATANASC'
      end>
    Params = <>
    StoreDefs = True
    BeforePost = cdsPessoaBeforePost
    OnNewRecord = cdsPessoaNewRecord
    Left = 48
    Top = 32
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPessoaDATANASC: TDateField
      FieldName = 'DATANASC'
      EditMask = '##/##/####'
    end
    object cdsPessoaSALARIO: TFloatField
      FieldName = 'SALARIO'
      DisplayFormat = ',##0.00'
    end
  end
end
