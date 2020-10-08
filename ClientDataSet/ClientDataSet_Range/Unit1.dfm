object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 583
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 528
    Top = 72
    Width = 63
    Height = 13
    Caption = 'C'#243'digo Inicial'
  end
  object Label2: TLabel
    Left = 608
    Top = 72
    Width = 58
    Height = 13
    Caption = 'C'#243'digo Final'
  end
  object Label3: TLabel
    Left = 528
    Top = 216
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label4: TLabel
    Left = 528
    Top = 264
    Width = 63
    Height = 13
    Caption = 'Cidade Inicial'
  end
  object Label5: TLabel
    Left = 528
    Top = 312
    Width = 58
    Height = 13
    Caption = 'Cidade Final'
  end
  object grdDados: TDBGrid
    Left = 0
    Top = 0
    Width = 513
    Height = 583
    Align = alLeft
    DataSource = dsDados
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
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 25
        Visible = True
      end>
  end
  object btn2: TButton
    Left = 680
    Top = 88
    Width = 145
    Height = 25
    Caption = 'SetRange'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 520
    Top = 24
    Width = 145
    Height = 25
    Caption = 'CancelRange'
    TabOrder = 2
    OnClick = btn3Click
  end
  object edtCod_Inicial: TEdit
    Left = 528
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object edtCodigo_Final: TEdit
    Left = 608
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '10'
  end
  object btn1: TButton
    Left = 680
    Top = 120
    Width = 145
    Height = 25
    Caption = 'ApplyRange'
    TabOrder = 5
    OnClick = btn1Click
  end
  object edtUF: TEdit
    Left = 528
    Top = 232
    Width = 65
    Height = 21
    TabOrder = 6
    Text = 'RS'
  end
  object edtCidade1: TEdit
    Left = 528
    Top = 280
    Width = 153
    Height = 21
    TabOrder = 7
    Text = 'ALVORADA'
  end
  object edtCidade2: TEdit
    Left = 528
    Top = 328
    Width = 153
    Height = 21
    TabOrder = 8
    Text = 'FLORES DA CUNHA'
  end
  object Button1: TButton
    Left = 704
    Top = 232
    Width = 145
    Height = 25
    Caption = 'SetRange'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 264
    Width = 145
    Height = 25
    Caption = 'ApplyRange'
    TabOrder = 10
    OnClick = Button2Click
  end
  object dsDados: TDataSource
    DataSet = DataModule2.cdsDados
    Left = 88
    Top = 80
  end
end
