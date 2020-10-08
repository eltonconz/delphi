object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Procedural Types'
  ClientHeight = 184
  ClientWidth = 205
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
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label3: TLabel
    Left = 16
    Top = 84
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label4: TLabel
    Left = 8
    Top = 148
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtValor1: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '5'
  end
  object edtValor2: TEdit
    Left = 64
    Top = 80
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '3'
  end
  object edtResultado: TEdit
    Left = 64
    Top = 144
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '0'
  end
  object cboOperador: TComboBox
    Left = 64
    Top = 48
    Width = 57
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '+'
    Items.Strings = (
      '+'
      '-'
      '*'
      '/')
  end
  object btnCalcular: TButton
    Left = 64
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
