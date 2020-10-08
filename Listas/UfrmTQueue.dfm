object frmTQueue: TfrmTQueue
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TQueue'
  ClientHeight = 539
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnEnq: TButton
    Left = 8
    Top = 56
    Width = 201
    Height = 33
    Caption = 'Entrar na Fila (Enqueue)'
    TabOrder = 0
    OnClick = btnEnqClick
  end
  object mmoResult: TMemo
    Left = 220
    Top = 0
    Width = 522
    Height = 539
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 232
  end
  object edtElemento: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Pessoa 1'
  end
  object btnPeek: TButton
    Left = 8
    Top = 96
    Width = 201
    Height = 33
    Caption = 'Primeiro da Fila (Peek)'
    TabOrder = 3
    OnClick = btnPeekClick
  end
  object btnDeq: TButton
    Left = 8
    Top = 136
    Width = 201
    Height = 33
    Caption = 'Sai o Primeiro da Fila (Dequeue)'
    TabOrder = 4
    OnClick = btnDeqClick
  end
  object btnExt: TButton
    Left = 8
    Top = 176
    Width = 201
    Height = 33
    Caption = 'Extrair o Primeiro da Fila (Extract)'
    TabOrder = 5
    OnClick = btnExtClick
  end
  object btnLimpar: TButton
    Left = 8
    Top = 216
    Width = 201
    Height = 33
    Caption = 'Limpar Fila (Clear)'
    TabOrder = 6
    OnClick = btnLimparClick
  end
end
