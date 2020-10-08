object frmGenerics_2: TfrmGenerics_2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo 2'
  ClientHeight = 248
  ClientWidth = 433
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
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 241
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 0
  end
  object btnTestar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 1
    OnClick = btnTestarClick
  end
end
