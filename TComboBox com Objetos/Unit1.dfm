object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 138
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cbo1: TComboBox
    Left = 8
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
  end
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = '1. Preencher'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 72
    Width = 145
    Height = 25
    Caption = '2. Exibir Detlahes'
    TabOrder = 2
    OnClick = btn2Click
  end
end
