object frmTelaEntrada: TfrmTelaEntrada
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmTelaEntrada'
  ClientHeight = 170
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 50
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label4: TLabel
    Left = 88
    Top = 50
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label2: TLabel
    Left = 18
    Top = 98
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 112
    Top = 98
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object edtCodigo: TDBEdit
    Left = 16
    Top = 66
    Width = 57
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsDados
    TabOrder = 0
  end
  object edtDescricao: TDBEdit
    Left = 88
    Top = 66
    Width = 217
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsDados
    TabOrder = 1
  end
  object edtData: TDBEdit
    Left = 18
    Top = 114
    Width = 73
    Height = 21
    DataField = 'DATA'
    DataSource = dsDados
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 114
    Width = 89
    Height = 21
    DataField = 'VALOR'
    DataSource = dsDados
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 436
    Height = 41
    DataSource = dsDados
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 426
  end
  object dsDados: TDataSource
    Left = 368
    Top = 72
  end
end
