object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 344
  ClientWidth = 1328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 96
    Width = 73
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object btn1: TButton
    Left = 248
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 2
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 248
    Top = 64
    Width = 1009
    Height = 241
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn2: TButton
    Left = 416
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
    OnClick = btn2Click
  end
end
