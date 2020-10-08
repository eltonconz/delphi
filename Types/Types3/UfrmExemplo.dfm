object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 430
  ClientWidth = 514
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
    Width = 105
    Height = 33
    Caption = 'Exemplo 1'
    TabOrder = 0
    OnClick = btnExemplo1Click
  end
  object btnExemplo2: TButton
    Left = 16
    Top = 56
    Width = 105
    Height = 33
    Caption = 'Exemplo 2'
    TabOrder = 1
    OnClick = btnExemplo2Click
  end
  object btnExemplo3: TButton
    Left = 16
    Top = 96
    Width = 105
    Height = 33
    Caption = 'Exemplo 3'
    TabOrder = 2
    OnClick = btnExemplo3Click
  end
  object mmo1: TMemo
    Left = 136
    Top = 8
    Width = 329
    Height = 345
    TabOrder = 3
  end
  object btnExemplo4: TButton
    Left = 16
    Top = 136
    Width = 105
    Height = 33
    Caption = 'Exemplo 4'
    TabOrder = 4
    OnClick = btnExemplo4Click
  end
end
