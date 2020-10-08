object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 318
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCEP: TEdit
    Left = 16
    Top = 56
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edtLogradouro: TEdit
    Left = 16
    Top = 80
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edtComplemento: TEdit
    Left = 16
    Top = 104
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edtCidade: TEdit
    Left = 16
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edtUF: TEdit
    Left = 16
    Top = 152
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object edtBairro: TEdit
    Left = 16
    Top = 176
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object edtTipo: TEdit
    Left = 16
    Top = 200
    Width = 249
    Height = 21
    TabOrder = 6
  end
  object edtBuscarCEP: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '95270-000'
  end
  object btnPesq: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 8
    OnClick = btnPesqClick
  end
  object edtIBGE_Municipio: TEdit
    Left = 16
    Top = 224
    Width = 249
    Height = 21
    TabOrder = 9
  end
  object edtIBGE_UF: TEdit
    Left = 16
    Top = 248
    Width = 249
    Height = 21
    TabOrder = 10
  end
  object btn1: TButton
    Left = 272
    Top = 224
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 11
    OnClick = btn1Click
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    WebService = wsDevMedia
    ChaveAcesso = 'ERDZF8JQLP'
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEPBuscaEfetuada
    Left = 280
    Top = 16
  end
  object ACBRIMGE: TACBrIBGE
    ProxyPort = '8080'
    CacheArquivo = 'ACBrIBGE.txt'
    OnBuscaEfetuada = ACBRIMGEBuscaEfetuada
    Left = 352
    Top = 16
  end
end
