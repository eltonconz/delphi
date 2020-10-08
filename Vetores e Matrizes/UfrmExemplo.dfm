object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  Caption = 'Exemplos de Vetores e Matrizes'
  ClientHeight = 298
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnVetorNumerico: TButton
    Left = 16
    Top = 16
    Width = 209
    Height = 25
    Caption = 'Vetor Num'#233'rico'
    TabOrder = 0
    OnClick = btnVetorNumericoClick
  end
  object mmoExemplo: TMemo
    Left = 240
    Top = 16
    Width = 361
    Height = 257
    TabOrder = 1
  end
  object btnVetorTexto: TButton
    Left = 16
    Top = 56
    Width = 209
    Height = 25
    Caption = 'Vetor Texto'
    TabOrder = 2
    OnClick = btnVetorTextoClick
  end
  object btnMatrizNumeros: TButton
    Left = 16
    Top = 192
    Width = 209
    Height = 25
    Caption = 'Matriz Num'#233'rica'
    TabOrder = 3
    OnClick = btnMatrizNumerosClick
  end
  object btnVetorDatas: TButton
    Left = 16
    Top = 96
    Width = 209
    Height = 25
    Caption = 'Vetor Datas'
    TabOrder = 4
    OnClick = btnVetorDatasClick
  end
  object btnVetorTipoDefinido: TButton
    Left = 16
    Top = 136
    Width = 209
    Height = 25
    Caption = 'Vetor Tipo Definido'
    TabOrder = 5
    OnClick = btnVetorTipoDefinidoClick
  end
  object btnVetrorComoParametro: TButton
    Left = 16
    Top = 248
    Width = 209
    Height = 25
    Caption = 'Vetor como Par'#226'metro'
    TabOrder = 6
    OnClick = btnVetrorComoParametroClick
  end
end
