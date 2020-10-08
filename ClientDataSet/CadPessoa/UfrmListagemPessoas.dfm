object frmListagemPessoas: TfrmListagemPessoas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 367
  ClientWidth = 689
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
  PixelsPerInch = 96
  TextHeight = 13
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 561
    Height = 367
    Align = alLeft
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
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASC'
        Title.Caption = 'Nascimento'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALARIO'
        Title.Caption = 'Sal'#225'rio'
        Width = 90
        Visible = True
      end>
  end
  object btnNovo: TButton
    Left = 576
    Top = 16
    Width = 97
    Height = 33
    Caption = '&Nova Pessoa'
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnExcluir: TButton
    Left = 576
    Top = 56
    Width = 97
    Height = 33
    Caption = '&Excluir Pessoa'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object btnAjuste: TButton
    Left = 576
    Top = 96
    Width = 97
    Height = 33
    Caption = 'Ajustar'
    TabOrder = 3
    OnClick = btnAjusteClick
  end
  object dsCad: TDataSource
    DataSet = dmPessoa.cdsPessoa
    Left = 64
    Top = 72
  end
end
