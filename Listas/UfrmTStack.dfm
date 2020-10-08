object frmTStack: TfrmTStack
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'TStack'
  ClientHeight = 731
  ClientWidth = 745
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
  object btnPush: TButton
    Left = 8
    Top = 56
    Width = 201
    Height = 33
    Caption = 'Empilhar (Push)'
    TabOrder = 0
    OnClick = btnPushClick
  end
  object mmoResult: TMemo
    Left = 223
    Top = 0
    Width = 522
    Height = 731
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitHeight = 539
  end
  object edtElemento: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Item 1'
  end
  object btnPeek: TButton
    Left = 8
    Top = 96
    Width = 201
    Height = 33
    Caption = 'Topo da Pilha (Peek)'
    TabOrder = 3
    OnClick = btnPeekClick
  end
  object btnPop: TButton
    Left = 8
    Top = 136
    Width = 201
    Height = 33
    Caption = 'Desempilhar (Pop)'
    TabOrder = 4
    OnClick = btnPopClick
  end
  object btnLimpar: TButton
    Left = 8
    Top = 176
    Width = 201
    Height = 33
    Caption = 'Limpar Fila (Clear)'
    TabOrder = 5
    OnClick = btnLimparClick
  end
end
