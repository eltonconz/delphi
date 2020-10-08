object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Exemplos - JclStrings'
  ClientHeight = 651
  ClientWidth = 844
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
    Left = 208
    Top = 144
    Width = 17
    Height = 13
    Caption = 'Car'
  end
  object Label2: TLabel
    Left = 240
    Top = 144
    Width = 20
    Height = 13
    Caption = 'Tam'
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Entrada'
  end
  object Label4: TLabel
    Left = 16
    Top = 72
    Width = 26
    Height = 13
    Caption = 'Sa'#237'da'
  end
  object Label5: TLabel
    Left = 368
    Top = 144
    Width = 16
    Height = 13
    Caption = 'Txt'
  end
  object Label6: TLabel
    Left = 520
    Top = 144
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object Label7: TLabel
    Left = 664
    Top = 144
    Width = 22
    Height = 13
    Caption = 'Lista'
  end
  object Label8: TLabel
    Left = 528
    Top = 264
    Width = 47
    Height = 13
    Caption = 'Comparar'
  end
  object edtEntrada: TEdit
    Left = 16
    Top = 24
    Width = 537
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '12345678901234567890'
  end
  object btn1: TButton
    Left = 16
    Top = 152
    Width = 105
    Height = 25
    Caption = 'Verifica Tipo'
    TabOrder = 1
    OnClick = btn1Click
  end
  object chkLetras: TCheckBox
    Left = 16
    Top = 184
    Width = 97
    Height = 17
    Caption = 'Somente Letras'
    TabOrder = 2
  end
  object chkNumeros: TCheckBox
    Left = 16
    Top = 200
    Width = 97
    Height = 17
    Caption = 'Somente N'#250'meros'
    TabOrder = 3
  end
  object chkLetrasNumero: TCheckBox
    Left = 16
    Top = 216
    Width = 169
    Height = 17
    Caption = 'Somente Letras e/ou N'#250'meros'
    TabOrder = 4
  end
  object btn2: TButton
    Left = 208
    Top = 376
    Width = 121
    Height = 25
    Caption = 'Centralizar'
    TabOrder = 5
    OnClick = btn2Click
  end
  object edtTexto: TEdit
    Left = 368
    Top = 160
    Width = 73
    Height = 21
    TabOrder = 6
    Text = '3'
  end
  object btnPrefixo: TButton
    Left = 368
    Top = 184
    Width = 121
    Height = 25
    Caption = '+ Prefixo'
    TabOrder = 7
    OnClick = btnPrefixoClick
  end
  object Button1: TButton
    Left = 368
    Top = 216
    Width = 121
    Height = 25
    Caption = '- Prefixo'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 248
    Width = 121
    Height = 25
    Caption = '+ Sufixo'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 280
    Width = 121
    Height = 25
    Caption = '- Sufixo'
    TabOrder = 10
    OnClick = Button3Click
  end
  object edtCar: TEdit
    Left = 208
    Top = 160
    Width = 25
    Height = 21
    MaxLength = 1
    TabOrder = 11
    Text = '0'
  end
  object Button4: TButton
    Left = 208
    Top = 184
    Width = 121
    Height = 25
    Caption = 'Alinhar Direita'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 208
    Top = 216
    Width = 121
    Height = 25
    Caption = 'Alinhar Esquerda'
    TabOrder = 13
    OnClick = Button5Click
  end
  object btn3: TButton
    Left = 208
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Preencher'
    TabOrder = 14
    OnClick = btn3Click
  end
  object edtTam: TEdit
    Left = 240
    Top = 160
    Width = 25
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 15
    Text = '10'
  end
  object btn4: TButton
    Left = 16
    Top = 256
    Width = 97
    Height = 25
    Caption = 'Inverter'
    TabOrder = 16
    OnClick = btn4Click
  end
  object Button6: TButton
    Left = 16
    Top = 296
    Width = 97
    Height = 25
    Caption = 'Smart Case'
    TabOrder = 17
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 336
    Width = 97
    Height = 25
    Caption = 'Tamanho'
    TabOrder = 18
    OnClick = Button7Click
  end
  object btn5: TButton
    Left = 208
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Ocorrencias Car'
    TabOrder = 19
    OnClick = btn5Click
  end
  object edtSaida: TEdit
    Left = 16
    Top = 88
    Width = 537
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object btn6: TButton
    Left = 368
    Top = 312
    Width = 121
    Height = 25
    Caption = 'Ocorrencia Txt'
    TabOrder = 21
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 368
    Top = 376
    Width = 121
    Height = 25
    Caption = 'Txt depois de'
    TabOrder = 22
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 368
    Top = 344
    Width = 121
    Height = 25
    Caption = 'Txt antes de'
    TabOrder = 23
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 208
    Top = 312
    Width = 121
    Height = 25
    Caption = 'A esquerda'
    TabOrder = 24
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 208
    Top = 344
    Width = 121
    Height = 25
    Caption = 'A Direita'
    TabOrder = 25
    OnClick = btn10Click
  end
  object edtArquivo: TEdit
    Left = 520
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 26
    Text = 'teste.txt'
  end
  object btn11: TButton
    Left = 520
    Top = 184
    Width = 121
    Height = 25
    Caption = 'Ler arquivo'
    TabOrder = 27
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 520
    Top = 216
    Width = 121
    Height = 25
    Caption = 'Salvar em arquivo'
    TabOrder = 28
    OnClick = btn12Click
  end
  object btn13: TButton
    Left = 208
    Top = 408
    Width = 121
    Height = 25
    Caption = 'Tokens do texto'
    TabOrder = 29
    OnClick = btn13Click
  end
  object lst1: TListBox
    Left = 664
    Top = 160
    Width = 169
    Height = 217
    ItemHeight = 13
    TabOrder = 30
  end
  object edtOrigem: TEdit
    Left = 528
    Top = 280
    Width = 81
    Height = 21
    TabOrder = 31
    Text = 'Eu'
  end
  object edtDestino: TEdit
    Left = 528
    Top = 304
    Width = 81
    Height = 21
    TabOrder = 32
    Text = 'eu'
  end
  object btn15: TButton
    Left = 528
    Top = 352
    Width = 121
    Height = 25
    Caption = 'Conparar'
    TabOrder = 33
    OnClick = btn15Click
  end
  object chkCaseSensitive: TCheckBox
    Left = 528
    Top = 328
    Width = 97
    Height = 17
    Caption = 'Case Sensitive'
    TabOrder = 34
  end
  object btn16: TButton
    Left = 208
    Top = 440
    Width = 121
    Height = 25
    Caption = 'Cercar com'
    TabOrder = 35
    OnClick = btn16Click
  end
  object btn14: TButton
    Left = 440
    Top = 496
    Width = 75
    Height = 25
    Caption = 'btn14'
    TabOrder = 36
    OnClick = btn14Click
  end
end
