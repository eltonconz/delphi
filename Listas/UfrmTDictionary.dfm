object frmTDictionary: TfrmTDictionary
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TDictionary'
  ClientHeight = 604
  ClientWidth = 750
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
  object btnExemplo01: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 33
    Caption = 'Exemplo 01'
    TabOrder = 0
    OnClick = btnExemplo01Click
  end
  object mmoResult: TMemo
    Left = 133
    Top = 0
    Width = 617
    Height = 604
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 61
    ExplicitTop = -71
    ExplicitHeight = 675
  end
  object btnExemplo02: TButton
    Left = 8
    Top = 48
    Width = 113
    Height = 33
    Caption = 'Exemplo 02'
    TabOrder = 2
    OnClick = btnExemplo02Click
  end
end
