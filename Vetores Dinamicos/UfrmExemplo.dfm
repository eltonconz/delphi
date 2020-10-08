object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 338
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 288
    Width = 44
    Height = 13
    Caption = 'Tamanho'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Vetor'
  end
  object edtTamanho: TEdit
    Left = 8
    Top = 304
    Width = 89
    Height = 21
    TabStop = False
    Color = clCream
    ReadOnly = True
    TabOrder = 4
  end
  object mmoListarVetor: TMemo
    Left = 8
    Top = 24
    Width = 161
    Height = 258
    TabStop = False
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnResetar: TButton
    Left = 184
    Top = 296
    Width = 145
    Height = 25
    Caption = 'Resetar o Vetor'
    TabOrder = 5
    OnClick = btnResetarClick
  end
  object btnAlimentar: TButton
    Left = 336
    Top = 296
    Width = 145
    Height = 25
    Caption = 'Carregar Vetor Sequencial'
    TabOrder = 6
    OnClick = btnAlimentarClick
  end
  object grpAdicionar: TGroupBox
    Left = 184
    Top = 24
    Width = 297
    Height = 75
    Caption = ' Adicionar '
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 24
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object edtNumero: TEdit
      Left = 8
      Top = 40
      Width = 97
      Height = 21
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
    end
    object btnAdicionar: TBitBtn
      Left = 112
      Top = 38
      Width = 97
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 1
      OnClick = btnAdicionarClick
    end
  end
  object grpAlterar: TGroupBox
    Left = 184
    Top = 120
    Width = 297
    Height = 73
    Caption = ' Alterar '
    TabOrder = 2
    object Label6: TLabel
      Left = 96
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Novo N'#250'mero'
    end
    object Label5: TLabel
      Left = 12
      Top = 24
      Width = 58
      Height = 13
      Caption = #205'ndice Vetor'
    end
    object edtIndiceVetorAlt: TEdit
      Left = 12
      Top = 40
      Width = 73
      Height = 21
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
    end
    object btnAlterar: TBitBtn
      Left = 184
      Top = 38
      Width = 97
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object edtNumeroAlt: TEdit
      Left = 96
      Top = 40
      Width = 73
      Height = 21
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 1
      Text = '0'
    end
  end
  object grpRemover: TGroupBox
    Left = 184
    Top = 208
    Width = 297
    Height = 75
    Caption = ' Excluir '
    TabOrder = 3
    object Label4: TLabel
      Left = 12
      Top = 24
      Width = 58
      Height = 13
      Caption = #205'ndice Vetor'
    end
    object edtIndiceVetor: TEdit
      Left = 12
      Top = 40
      Width = 97
      Height = 21
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
    end
    object btnRemover: TButton
      Left = 120
      Top = 38
      Width = 97
      Height = 25
      Caption = 'Remover Item'
      TabOrder = 1
      OnClick = btnRemoverClick
    end
  end
end
