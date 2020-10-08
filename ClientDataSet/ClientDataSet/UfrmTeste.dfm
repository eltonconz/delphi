object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo - TClientDataSet'
  ClientHeight = 417
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 328
    Width = 55
    Height = 13
    Caption = 'Informa'#231#227'o'
  end
  object Label7: TLabel
    Left = 808
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Pesquisar'
  end
  object Label8: TLabel
    Left = 808
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Filtrar'
  end
  object grpNavegacao: TGroupBox
    Left = 8
    Top = 120
    Width = 337
    Height = 65
    Caption = ' Navega'#231#227'o '
    TabOrder = 1
    object btnPrimeiro: TButton
      Left = 6
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Primeiro'
      TabOrder = 0
      OnClick = btnPrimeiroClick
    end
    object btnProximo: TButton
      Left = 166
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Pr'#243'ximo'
      TabOrder = 2
      OnClick = btnProximoClick
    end
    object btnAnterior: TButton
      Left = 86
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 1
      OnClick = btnAnteriorClick
    end
    object btnUltimo: TButton
      Left = 246
      Top = 24
      Width = 75
      Height = 25
      Caption = #218'ltimo'
      TabOrder = 3
      OnClick = btnUltimoClick
    end
  end
  object grpManDados: TGroupBox
    Left = 8
    Top = 200
    Width = 337
    Height = 113
    Caption = ' Manipular Dados '
    TabOrder = 2
    object btnAdicionar: TButton
      Left = 6
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = btnAdicionarClick
    end
    object btnSalvar: TButton
      Left = 86
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 166
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 246
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnOrdenar: TButton
      Left = 6
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Ordenar por'
      TabOrder = 4
      OnClick = btnOrdenarClick
    end
    object edtCampoOrdem: TEdit
      Left = 86
      Top = 66
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
  end
  object grpFuncoes: TGroupBox
    Left = 8
    Top = 8
    Width = 337
    Height = 97
    Caption = 'Fun'#231#245'es'
    TabOrder = 0
    object btnNumregistros: TButton
      Left = 6
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Contar'
      TabOrder = 2
      OnClick = btnNumregistrosClick
    end
    object btnEstaVazio: TButton
      Left = 86
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Tem dados?'
      TabOrder = 3
      OnClick = btnEstaVazioClick
    end
    object btnAberto: TButton
      Left = 166
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Aberto?'
      TabOrder = 4
      OnClick = btnAbertoClick
    end
    object btnCriar: TButton
      Left = 6
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 0
      OnClick = btnCriarClick
    end
    object btnDestruir: TButton
      Left = 86
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Destruir'
      TabOrder = 1
      OnClick = btnDestruirClick
    end
    object btnEstado: TButton
      Left = 246
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Estado'
      TabOrder = 5
      OnClick = btnEstadoClick
    end
  end
  object edtAuxResposta: TEdit
    Left = 8
    Top = 344
    Width = 209
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 'Info'
  end
  object grpDados: TGroupBox
    Left = 360
    Top = 8
    Width = 428
    Height = 393
    Caption = 'Dados'
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 288
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 8
      Top = 336
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 242
      Top = 336
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label5: TLabel
      Left = 328
      Top = 336
      Width = 32
      Height = 13
      Caption = 'Sal'#225'rio'
    end
    object lbl1: TLabel
      Left = 288
      Top = 216
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label6: TLabel
      Left = 152
      Top = 216
      Width = 62
      Height = 13
      Caption = 'Pr'#243'x. C'#243'digo'
    end
    object grdDados: TDBGrid
      Left = 8
      Top = 16
      Width = 409
      Height = 193
      DataSource = dsDados
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Sal'#225'rio'
          Width = 74
          Visible = True
        end>
    end
    object edtCodigo: TDBEdit
      Left = 8
      Top = 304
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsDados
      TabOrder = 1
    end
    object edtDescricao: TDBEdit
      Left = 8
      Top = 352
      Width = 217
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dsDados
      TabOrder = 2
    end
    object edtData: TDBEdit
      Left = 242
      Top = 352
      Width = 73
      Height = 21
      DataField = 'DATA'
      DataSource = dsDados
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 328
      Top = 352
      Width = 89
      Height = 21
      DataField = 'VALOR'
      DataSource = dsDados
      TabOrder = 4
    end
    object edtValorTotal: TDBEdit
      Left = 288
      Top = 232
      Width = 121
      Height = 21
      DataField = 'AG_VALOR_TOTAL'
      DataSource = dsDados
      TabOrder = 5
    end
    object edtProx_Cod: TDBEdit
      Left = 152
      Top = 232
      Width = 121
      Height = 21
      DataField = 'AG_PROX_COD'
      DataSource = dsDados
      TabOrder = 6
    end
  end
  object btnPovoar: TButton
    Left = 8
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Povoar'
    TabOrder = 5
    OnClick = btnPovoarClick
  end
  object btnLoop: TButton
    Left = 88
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Loop'
    TabOrder = 6
    OnClick = btnLoopClick
  end
  object edtPesquisa: TEdit
    Left = 808
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 7
    Text = 'edtPesquisa'
  end
  object btnPesquisar: TButton
    Left = 952
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    Enabled = False
    TabOrder = 8
    OnClick = btnPesquisarClick
  end
  object edtFiltro: TEdit
    Left = 808
    Top = 80
    Width = 137
    Height = 21
    TabOrder = 9
    Text = 'edtPesquisa'
  end
  object btnFiltrar: TButton
    Left = 952
    Top = 80
    Width = 75
    Height = 25
    Caption = 'filtrar'
    TabOrder = 10
    OnClick = btnFiltrarClick
  end
  object btnExportarDados: TButton
    Left = 848
    Top = 152
    Width = 145
    Height = 25
    Caption = 'Exportar Dados'
    TabOrder = 11
    OnClick = btnExportarDadosClick
  end
  object btnImportarDados: TButton
    Left = 848
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Importar Dados'
    TabOrder = 12
    OnClick = btnImportarDadosClick
  end
  object btnTelaEntrada: TButton
    Left = 832
    Top = 256
    Width = 129
    Height = 25
    Caption = 'Tela Entrada'
    TabOrder = 13
    OnClick = btnTelaEntradaClick
  end
  object dsDados: TDataSource
    DataSet = dmDadosTeste.cdsDados
    OnStateChange = dsDadosStateChange
    Left = 448
    Top = 96
  end
end
