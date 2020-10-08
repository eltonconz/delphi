object frmGenerics_4: TfrmGenerics_4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo 4'
  ClientHeight = 434
  ClientWidth = 336
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
  object btnCarregar: TButton
    Left = 16
    Top = 16
    Width = 161
    Height = 25
    Caption = '1. Carregar lista'
    TabOrder = 0
    OnClick = btnCarregarClick
  end
  object Button1: TButton
    Left = 16
    Top = 48
    Width = 161
    Height = 25
    Caption = '2. Exibir Lista'
    TabOrder = 1
    OnClick = Button1Click
  end
  object mmo1: TMemo
    Left = 16
    Top = 96
    Width = 297
    Height = 313
    Lines.Strings = (
      'mmo1')
    TabOrder = 2
  end
end
