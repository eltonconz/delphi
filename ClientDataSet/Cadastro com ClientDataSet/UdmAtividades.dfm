object dmAtividades: TdmAtividades
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 215
  Width = 243
  object cdsAtividades: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Data_Hora'
        Fields = 'DATA;HORA_INICIO'
      end>
    IndexName = 'Data_Hora'
    Params = <>
    StoreDefs = True
    BeforePost = cdsAtividadesBeforePost
    OnNewRecord = cdsAtividadesNewRecord
    Left = 48
    Top = 32
    object cdsAtividadesTITULO: TStringField
      FieldName = 'TITULO'
      Size = 150
    end
    object cdsAtividadesDATA: TDateField
      FieldName = 'DATA'
      EditMask = '##/##/####'
    end
    object cdsAtividadesHORA_INICIO: TTimeField
      FieldName = 'HORA_INICIO'
      EditMask = '##:##:##;1;_'
    end
    object cdsAtividadesHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
      EditMask = '##:##:##;1;_'
    end
    object cdsAtividadesTEMPO_TOTAL: TFloatField
      FieldName = 'TEMPO_TOTAL'
      DisplayFormat = ',##0.000'
    end
    object agrgtfldAtividadesAG_TEMPO_TOTAL: TAggregateField
      FieldName = 'AG_TEMPO_TOTAL'
      Active = True
      DisplayName = ''
      DisplayFormat = ',##0.000'
      Expression = 'sum(TEMPO_TOTAL)'
    end
    object agrgtfldAtividadesAG_CONTADOR: TAggregateField
      FieldName = 'AG_CONTADOR'
      Active = True
      DisplayName = ''
      Expression = 'count(DATA)'
    end
  end
end
