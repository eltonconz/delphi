object frmListaProdutos: TfrmListaProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 338
  ClientWidth = 542
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
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 432
    Height = 338
    ActivePage = sheetDados
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    object sheetDados: TTabSheet
      Caption = 'Dados'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 424
        Height = 310
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 357
        ExplicitWidth = 110
        ExplicitHeight = 338
        object grdDados: TDBGrid
          Left = 1
          Top = 1
          Width = 422
          Height = 308
          Align = alClient
          DataSource = dsCad
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdDadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 238
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 81
              Visible = True
            end>
        end
      end
    end
  end
  object panMenu: TPanel
    Left = 432
    Top = 0
    Width = 110
    Height = 338
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 357
    object btnNovo: TBitBtn
      Left = 6
      Top = 20
      Width = 100
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnExcluir: TBitBtn
      Left = 6
      Top = 47
      Width = 100
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
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
    object btnTeste: TBitBtn
      Left = 16
      Top = 160
      Width = 75
      Height = 33
      Caption = 'btnTeste'
      TabOrder = 3
      OnClick = btnTesteClick
    end
  end
  object dsCad: TDataSource
    DataSet = dmProduto.cdsProduto
    Left = 56
    Top = 104
  end
end
