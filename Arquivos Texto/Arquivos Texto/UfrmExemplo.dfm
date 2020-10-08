object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo de Arquivo'
  ClientHeight = 564
  ClientWidth = 920
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
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object Label1: TLabel
    Left = 472
    Top = 8
    Width = 115
    Height = 13
    Caption = 'Informa'#231#245'es do Arquivo'
  end
  object Label2: TLabel
    Left = 8
    Top = 456
    Width = 56
    Height = 13
    Caption = 'Copiar para'
  end
  object edtCaminhoArquivo: TEdit
    Left = 8
    Top = 24
    Width = 441
    Height = 21
    TabOrder = 0
    Text = 
      'C:\WORK\TREINAMENTOS DELPHI\003 - Exemplos\Arquivos Texto\exempl' +
      'o.txt'
  end
  object btnSelecionarArquivo: TButton
    Left = 8
    Top = 52
    Width = 153
    Height = 25
    Caption = '1. Selecionar Arquivo'
    TabOrder = 1
    OnClick = btnSelecionarArquivoClick
  end
  object btnAbrir: TButton
    Left = 8
    Top = 104
    Width = 153
    Height = 25
    Caption = '2. Abrir / Ler'
    TabOrder = 2
    OnClick = btnAbrirClick
  end
  object mmoConteudoArquivo: TMemo
    Left = 8
    Top = 136
    Width = 441
    Height = 265
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnSalvar: TButton
    Left = 8
    Top = 408
    Width = 153
    Height = 25
    Caption = '3. Salvar Arquivo'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object mmoInfoArquivo: TMemo
    Left = 472
    Top = 24
    Width = 433
    Height = 225
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 5
  end
  object btnExcluir: TButton
    Left = 176
    Top = 408
    Width = 153
    Height = 25
    Caption = '4. Excluir Arquivo'
    TabOrder = 6
    OnClick = btnExcluirClick
  end
  object edtCaminhoArquivoNovo: TEdit
    Left = 8
    Top = 472
    Width = 441
    Height = 21
    TabOrder = 7
    Text = 
      'C:\WORK\TREINAMENTOS DELPHI\003 - Exemplos\Arquivos Texto\exempl' +
      'o.txt'
  end
  object btnCopiar: TButton
    Left = 8
    Top = 504
    Width = 153
    Height = 25
    Caption = '5. Copiar Para'
    TabOrder = 8
    OnClick = btnCopiarClick
  end
  object dlgSelecionaArq: TOpenDialog
    Filter = 'Arquivos Texto|*.txt'
    Left = 276
    Top = 56
  end
end
