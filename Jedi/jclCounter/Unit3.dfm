object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Testes - JclCounter'
  ClientHeight = 140
  ClientWidth = 431
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
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Decorrido'
  end
  object btn1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btn1Click
  end
  object Button1: TButton
    Left = 104
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Parar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edt1: TEdit
    Left = 16
    Top = 72
    Width = 273
    Height = 21
    TabOrder = 2
    Text = 'edt1'
  end
  object Button2: TButton
    Left = 304
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
end
