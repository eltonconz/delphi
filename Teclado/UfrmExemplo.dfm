object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 535
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 14
    Top = 75
    Width = 229
    Height = 25
    Caption = 'Pressione qualquer tecla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 158
    Top = 451
    Width = 181
    Height = 25
    Caption = 'F1 - Limpa o Memo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 165
    Top = 491
    Width = 168
    Height = 25
    Caption = 'ESC - Fechar Tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 224
    Top = 9
    Width = 88
    Height = 13
    Caption = 'Monitorar Eventos'
  end
  object mmoEventos: TMemo
    Left = 8
    Top = 104
    Width = 481
    Height = 337
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object chkConsiderarOnKeyDown: TCheckBox
    Left = 224
    Top = 27
    Width = 97
    Height = 17
    Caption = 'OnKeyDown'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object chkConsiderarOnKeyPress: TCheckBox
    Left = 328
    Top = 27
    Width = 97
    Height = 17
    Caption = 'OnKeyPress'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object btnIniciarParar: TButton
    Left = 8
    Top = 8
    Width = 201
    Height = 41
    Caption = 'Parar captura de teclado'
    TabOrder = 3
    OnClick = btnIniciarPararClick
  end
end
