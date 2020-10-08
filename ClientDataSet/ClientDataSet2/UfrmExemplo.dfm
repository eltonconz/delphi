object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo'
  ClientHeight = 284
  ClientWidth = 573
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
  PixelsPerInch = 96
  TextHeight = 13
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 573
    Height = 241
    Align = alTop
    DataSource = dmExemplo.dsPessoa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 286
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Title.Caption = 'Nascimento'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Title.Caption = 'Sexo'
        Width = 55
        Visible = True
      end>
  end
  object btnPopular: TButton
    Left = 8
    Top = 248
    Width = 113
    Height = 25
    Caption = 'Popular'
    TabOrder = 1
    OnClick = btnPopularClick
  end
  object btnExcluir: TButton
    Left = 152
    Top = 248
    Width = 137
    Height = 25
    Caption = 'Excluir Selecionado'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
end
