object frmGenerics: TfrmGenerics
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Generics'
  ClientHeight = 301
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnExemplo1: TButton
    Left = 16
    Top = 16
    Width = 217
    Height = 25
    Caption = 'Exemplo 1 - B'#225'scio'
    TabOrder = 0
    OnClick = btnExemplo1Click
  end
  object btnExemplo2: TButton
    Left = 16
    Top = 48
    Width = 217
    Height = 25
    Caption = 'Exemplo 2 - Arrays'
    TabOrder = 1
    OnClick = btnExemplo2Click
  end
  object btnExemplo3: TButton
    Left = 16
    Top = 80
    Width = 217
    Height = 25
    Caption = 'Exemplo 3 - Constraints'
    TabOrder = 2
    OnClick = btnExemplo3Click
  end
  object btnExemplo4: TButton
    Left = 16
    Top = 112
    Width = 217
    Height = 25
    Caption = 'Exemplo 4 - Listas'
    TabOrder = 3
    OnClick = btnExemplo4Click
  end
end
