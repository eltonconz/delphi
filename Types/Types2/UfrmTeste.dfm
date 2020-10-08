object frmTeste: TfrmTeste
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Teste'
  ClientHeight = 356
  ClientWidth = 490
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
  object btn1: TButton
    Left = 8
    Top = 16
    Width = 113
    Height = 41
    Caption = 'Exemplo'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 72
    Width = 473
    Height = 129
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object lst1: TListBox
    Left = 8
    Top = 208
    Width = 473
    Height = 129
    ItemHeight = 13
    TabOrder = 2
  end
  object btn2: TButton
    Left = 328
    Top = 16
    Width = 153
    Height = 41
    Caption = 'Abrir Segundo Form'
    TabOrder = 3
    OnClick = btn2Click
  end
end
