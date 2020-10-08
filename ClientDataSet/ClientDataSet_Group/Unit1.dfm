object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 668
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 858
    Height = 225
    Align = alTop
    DataSource = dsDados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMPRESA'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MASCARA'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MASCARA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_ESTOQUE'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOMA_EMP'
        Width = 73
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 32
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 225
    Width = 858
    Height = 160
    Align = alTop
    DataSource = dsDadosTotais
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMPRESA'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_MASCARA'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_ESTOQUE'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 385
    Width = 858
    Height = 160
    Align = alTop
    DataSource = dsDadosEmpresa
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMPRESA'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE_ESTOQUE'
        Visible = True
      end>
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'IND'
        Fields = 'CODEMPRESA;ID_MASCARA'
        GroupingLevel = 2
      end>
    IndexName = 'IND'
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 72
    object cdsDadosCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object cdsDadosID_MASCARA: TIntegerField
      FieldName = 'ID_MASCARA'
    end
    object cdsDadosMASCARA: TStringField
      FieldName = 'MASCARA'
    end
    object cdsDadosQTDE_ESTOQUE: TFloatField
      FieldName = 'QTDE_ESTOQUE'
    end
    object cdsDadosSOMA: TAggregateField
      FieldName = 'SOMA'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(QTDE_ESTOQUE)'
      GroupingLevel = 2
      IndexName = 'IND'
    end
    object cdsDadosSOMA_EMP: TAggregateField
      FieldName = 'SOMA_EMP'
      Active = True
      DisplayName = ''
      Expression = 'sum(QTDE_ESTOQUE)'
      GroupingLevel = 1
      IndexName = 'IND'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 128
    Top = 72
  end
  object cdsDadosTotais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 288
    object cdsDadosTotaisCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object cdsDadosTotaisID_MASCARA: TIntegerField
      FieldName = 'ID_MASCARA'
    end
    object cdsDadosTotaisQTDE_ESTOQUE: TFloatField
      FieldName = 'QTDE_ESTOQUE'
    end
  end
  object dsDadosTotais: TDataSource
    DataSet = cdsDadosTotais
    Left = 184
    Top = 288
  end
  object cdsdadosEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 432
    object cdsdadosEmpresaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object cdsDadosEmpresaQTDE_ESTOQUE: TFloatField
      FieldName = 'QTDE_ESTOQUE'
    end
  end
  object dsDadosEmpresa: TDataSource
    DataSet = cdsdadosEmpresa
    Left = 176
    Top = 432
  end
end
