object frmZip: TfrmZip
  Left = 0
  Top = 0
  Caption = 'frmZip'
  ClientHeight = 261
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnMultiplos: TButton
    Left = 16
    Top = 24
    Width = 177
    Height = 57
    Caption = 'Compactar Arquivos Diversos'
    TabOrder = 0
    OnClick = btnMultiplosClick
  end
  object btnPasta: TButton
    Left = 16
    Top = 88
    Width = 177
    Height = 57
    Caption = 'Compactar Pasta'
    TabOrder = 1
    OnClick = btnPastaClick
  end
end
