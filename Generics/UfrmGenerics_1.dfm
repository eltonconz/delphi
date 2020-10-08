object frmGenerics_1: TfrmGenerics_1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo 1'
  ClientHeight = 210
  ClientWidth = 357
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
  object btnTestar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Exemplo 1'
    TabOrder = 0
    OnClick = btnTestarClick
  end
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 273
    Height = 145
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object btnExmeplo2: TButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Exemplo 2'
    TabOrder = 2
    OnClick = btnExmeplo2Click
  end
end
