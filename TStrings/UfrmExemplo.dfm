object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  Caption = 'Exemplo'
  ClientHeight = 482
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Memo'
  end
  object Label1: TLabel
    Left = 280
    Top = 8
    Width = 34
    Height = 13
    Caption = 'Listbox'
  end
  object Label2: TLabel
    Left = 552
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Combobox'
  end
  object mmoDados: TMemo
    Left = 8
    Top = 24
    Width = 249
    Height = 153
    Lines.Strings = (
      'Linha 1'
      'Linha 2'
      'Linha 3'
      'Linha 4')
    TabOrder = 0
  end
  object lstDados: TListBox
    Left = 280
    Top = 24
    Width = 249
    Height = 153
    ItemHeight = 13
    TabOrder = 1
  end
  object btnCopiarMemoList: TButton
    Left = 8
    Top = 184
    Width = 249
    Height = 25
    Caption = 'Copiar Memo para Listbox'
    TabOrder = 2
    OnClick = btnCopiarMemoListClick
  end
  object cboDados: TComboBox
    Left = 552
    Top = 24
    Width = 249
    Height = 21
    TabOrder = 3
    Text = 'cboDados'
  end
  object btnCopiarMemoCombo: TButton
    Left = 8
    Top = 216
    Width = 249
    Height = 25
    Caption = 'Copiar Memo para Combobox'
    TabOrder = 4
    OnClick = btnCopiarMemoComboClick
  end
  object Button1: TButton
    Left = 280
    Top = 184
    Width = 249
    Height = 25
    Caption = 'Copiar Listbox para Combobox'
    TabOrder = 5
    OnClick = Button1Click
  end
end
