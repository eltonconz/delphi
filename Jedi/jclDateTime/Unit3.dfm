object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Exemplo - JclDateTime'
  ClientHeight = 320
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtData: TMaskEdit
    Left = 16
    Top = 16
    Width = 65
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object btn1: TButton
    Left = 176
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Analisar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object mmoDados: TMemo
    Left = 16
    Top = 48
    Width = 233
    Height = 249
    Lines.Strings = (
      'mmoDados')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object edtHora: TMaskEdit
    Left = 88
    Top = 16
    Width = 57
    Height = 21
    EditMask = '##:##:##'
    MaxLength = 8
    TabOrder = 3
    Text = '  :  :  '
  end
end
