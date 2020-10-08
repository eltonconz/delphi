object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 417
  ClientWidth = 772
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
    Width = 772
    Height = 161
    Align = alTop
    DataSource = dsDados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object grdCopia: TDBGrid
    Left = 0
    Top = 250
    Width = 772
    Height = 167
    Align = alBottom
    DataSource = dsCopia
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 8
    Top = 168
    Width = 161
    Height = 25
    Caption = 'Copiar'
    TabOrder = 2
    OnClick = btn1Click
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 64
    object cdsDadosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsDadosDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDadosVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 136
    Top = 64
  end
  object cdsCopia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 288
  end
  object dsCopia: TDataSource
    DataSet = cdsCopia
    Left = 176
    Top = 288
  end
end
