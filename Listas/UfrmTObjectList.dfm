object frmTObjectList: TfrmTObjectList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TObjectList'
  ClientHeight = 675
  ClientWidth = 747
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
    Left = 130
    Top = 0
    Width = 617
    Height = 675
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
