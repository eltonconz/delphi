object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 463
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Maiandra GD'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 8
    Top = 80
    Width = 186
    Height = 14
    Caption = 'Evento OnExit memoriza valor do edit'
  end
  object btn1: TButton
    Left = 8
    Top = 376
    Width = 289
    Height = 65
    Caption = 'Teste'
    TabOrder = 4
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 8
    Top = 96
    Width = 289
    Height = 22
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Text = 'edt1'
  end
  object edt4: TEdit
    Left = 400
    Top = 224
    Width = 177
    Height = 22
    TabOrder = 8
    Text = 'edt1'
    OnExit = edt4Exit
  end
  object edt3: TEdit
    Left = 384
    Top = 136
    Width = 177
    Height = 22
    TabOrder = 6
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 400
    Top = 184
    Width = 177
    Height = 22
    TabOrder = 7
    Text = 'edt2'
  end
  object mmo1: TMemo
    Left = 8
    Top = 160
    Width = 289
    Height = 185
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn2: TButton
    Left = 8
    Top = 128
    Width = 289
    Height = 25
    Caption = 'Exibe Hist'#243'rico e Limpa Ele'
    TabOrder = 2
    TabStop = False
    OnClick = btn2Click
  end
  object btnConfirmacaoSaidaForm: TButton
    Left = 8
    Top = 8
    Width = 289
    Height = 49
    Caption = 'Desabilitar Confirma'#231#227'o ao Sair do Formul'#225'rio'
    TabOrder = 0
    OnClick = btnConfirmacaoSaidaFormClick
  end
  object btn5: TButton
    Left = 320
    Top = 8
    Width = 289
    Height = 49
    Caption = 'Form 2'
    TabOrder = 5
    OnClick = btn5Click
  end
end
