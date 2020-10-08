object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Pessoa'
  ClientHeight = 226
  ClientWidth = 431
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 321
    Height = 226
    ActivePage = sheetDados
    Align = alClient
    TabOrder = 0
    TabStop = False
    object sheetDados: TTabSheet
      Caption = 'Dados'
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 313
        Height = 198
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 8
          Top = 64
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 8
          Top = 120
          Width = 96
          Height = 13
          Caption = 'Data de Nascimento'
        end
        object Label4: TLabel
          Left = 152
          Top = 120
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
        end
        object edtCodigo: TDBEdit
          Left = 8
          Top = 32
          Width = 97
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsCad
          TabOrder = 0
        end
        object edtNome: TDBEdit
          Left = 8
          Top = 80
          Width = 289
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsCad
          TabOrder = 1
        end
        object edtDataNasc: TDBEdit
          Left = 8
          Top = 136
          Width = 97
          Height = 21
          DataField = 'DATANASC'
          DataSource = dsCad
          TabOrder = 2
        end
        object edtSalario: TDBEdit
          Left = 152
          Top = 136
          Width = 113
          Height = 21
          DataField = 'SALARIO'
          DataSource = dsCad
          TabOrder = 3
        end
      end
    end
  end
  object panMenu: TPanel
    Left = 321
    Top = 0
    Width = 110
    Height = 226
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 1
    object btnSalvar: TButton
      Left = 7
      Top = 24
      Width = 100
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnSair: TButton
      Left = 7
      Top = 51
      Width = 100
      Height = 25
      Caption = 'Sai&r'
      TabOrder = 1
      OnClick = btnSairClick
    end
  end
  object dsCad: TDataSource
    DataSet = dmPessoa.cdsPessoa
    OnStateChange = dsCadStateChange
    Left = 168
    Top = 40
  end
end
