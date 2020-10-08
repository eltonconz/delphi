object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Teste com Arquivos texto via Streaming'
  ClientHeight = 333
  ClientWidth = 309
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
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 22
    Height = 14
    Caption = 'lbl1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 8
    Top = 48
    Width = 137
    Height = 25
    Caption = 'Salvar um Arquivo'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 8
    Top = 96
    Width = 137
    Height = 25
    Caption = 'Ler um Arquivo'
    TabOrder = 1
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 128
    Width = 289
    Height = 193
    TabOrder = 2
  end
  object btn3: TButton
    Left = 160
    Top = 96
    Width = 137
    Height = 25
    Caption = 'Ler um Arquivo 2'
    TabOrder = 3
    OnClick = btn3Click
  end
end
