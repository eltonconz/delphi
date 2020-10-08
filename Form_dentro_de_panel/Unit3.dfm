object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 32
    object cds1DATA_HORA: TStringField
      FieldName = 'DATA_HORA'
    end
  end
end
