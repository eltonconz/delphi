object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 155
  ClientWidth = 675
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
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label2: TLabel
    Left = 360
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtValor1: TEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 16
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btnDividir: TButton
    Left = 176
    Top = 24
    Width = 137
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = btnDividirClick
  end
  object edtResultado: TEdit
    Left = 360
    Top = 64
    Width = 289
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object btnDividirTratando: TButton
    Left = 176
    Top = 64
    Width = 137
    Height = 25
    Caption = 'Dividir com Tratamento'
    TabOrder = 4
    OnClick = btnDividirTratandoClick
  end
  object btnDividirTratando2: TButton
    Left = 176
    Top = 104
    Width = 137
    Height = 25
    Caption = 'Dividir com Tratamento 2'
    TabOrder = 5
    OnClick = btnDividirTratando2Click
  end
end
