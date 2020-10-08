object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 172
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnPegarHora: TButton
    Left = 8
    Top = 16
    Width = 257
    Height = 41
    Caption = 'Hor'#225'rio em que o formul'#225'rio foi aberto'
    TabOrder = 0
    OnClick = btnPegarHoraClick
  end
  object edtResultado: TEdit
    Left = 8
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object btnAbrirClone: TButton
    Left = 40
    Top = 112
    Width = 177
    Height = 25
    Caption = 'Abrir Clone deste Form'
    TabOrder = 2
    OnClick = btnAbrirCloneClick
  end
end
