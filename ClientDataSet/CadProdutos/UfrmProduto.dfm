object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 232
  ClientWidth = 421
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 311
    Height = 232
    ActivePage = sheetDados
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -5
    ExplicitTop = 2
    object sheetDados: TTabSheet
      Caption = 'Dados'
      ExplicitWidth = 424
      ExplicitHeight = 310
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 303
        Height = 204
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 7
        object lbl1: TLabel
          Left = 8
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label1: TLabel
          Left = 8
          Top = 64
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label2: TLabel
          Left = 8
          Top = 112
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object edtCodigo: TDBEdit
          Left = 8
          Top = 32
          Width = 65
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsCad
          TabOrder = 0
        end
        object edtDescricao: TDBEdit
          Left = 8
          Top = 79
          Width = 281
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = dsCad
          TabOrder = 1
        end
        object edtValor: TDBEdit
          Left = 8
          Top = 128
          Width = 65
          Height = 21
          DataField = 'VALOR'
          DataSource = dsCad
          TabOrder = 2
        end
        object nvgDados: TDBNavigator
          Left = 160
          Top = 6
          Width = 140
          Height = 18
          DataSource = dsCad
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 3
        end
      end
    end
  end
  object panMenu: TPanel
    Left = 311
    Top = 0
    Width = 110
    Height = 232
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 313
    object btnNovo: TBitBtn
      Left = 6
      Top = 20
      Width = 100
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TBitBtn
      Left = 5
      Top = 47
      Width = 100
      Height = 25
      Caption = '&Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnSair: TBitBtn
      Left = 6
      Top = 74
      Width = 100
      Height = 25
      Caption = 'Sai&r'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object dsCad: TDataSource
    DataSet = dmProduto.cdsProduto
    OnStateChange = dsCadStateChange
    Left = 328
    Top = 120
  end
end
