object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisa de Arquivos'
  ClientHeight = 650
  ClientWidth = 865
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grdDados: TDBGrid
    Left = 0
    Top = 185
    Width = 865
    Height = 465
    Align = alClient
    DataSource = dsDados
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
        FieldName = 'MARCA'
        Title.Caption = 'Sel'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARQUIVO'
        Title.Caption = 'Arquivos'
        Width = 569
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Caption = 'Tamanho (bytes)'
        Width = 89
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 865
    Height = 185
    ActivePage = sheetDados
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 916
    object sheetDados: TTabSheet
      Caption = 'Dados'
      ExplicitLeft = -4
      ExplicitWidth = 281
      ExplicitHeight = 165
      object pan1: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 157
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 232
        ExplicitTop = 16
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 41
          Height = 13
          Caption = 'Diret'#243'rio'
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 65
          Height = 13
          Caption = 'M'#225'scara filtro'
        end
        object edtPasta: TEdit
          Left = 16
          Top = 24
          Width = 201
          Height = 21
          TabOrder = 0
          Text = 'C:\WORK\ATICOM_V5\'
        end
        object edtFiltro: TEdit
          Left = 16
          Top = 72
          Width = 201
          Height = 21
          TabOrder = 1
          Text = '*.*'
        end
        object btn1: TButton
          Left = 16
          Top = 112
          Width = 113
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 2
          OnClick = btn1Click
        end
        object chkRecursivo: TCheckBox
          Left = 240
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Recursivo'
          TabOrder = 3
        end
        object rgOrdem: TRadioGroup
          Left = 440
          Top = 16
          Width = 121
          Height = 105
          Caption = ' Ordenar por '
          ItemIndex = 0
          Items.Strings = (
            'Arquivo'
            'Data / Hora'
            'Tamanho')
          TabOrder = 4
        end
      end
    end
  end
  object ListBox1: TListBox
    Left = 8
    Top = 440
    Width = 841
    Height = 101
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 248
    object cdsDadosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 1
    end
    object cdsDadosARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 5000
    end
    object cdsDadosDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDadosHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsDadosTAMANHO: TFloatField
      FieldName = 'TAMANHO'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 64
    Top = 320
  end
end
