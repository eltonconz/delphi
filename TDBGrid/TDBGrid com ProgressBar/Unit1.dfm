object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 406
  ClientWidth = 493
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
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 493
    Height = 406
    Align = alClient
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = grdDadosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DESC'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Prog'
        Width = 239
        Visible = True
      end>
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 72
    object cdsDadosDESC: TStringField
      FieldName = 'DESC'
      Size = 100
    end
    object cdsDadosPERC: TFloatField
      FieldName = 'PERC'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 136
    Top = 72
  end
end
