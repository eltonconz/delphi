object frmExemplo: TfrmExemplo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Exemplo Fast Report'
  ClientHeight = 455
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object btnRel01: TButton
    Left = 8
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Listagem'
    TabOrder = 0
    OnClick = btnRel01Click
  end
  object btnPorEstado: TButton
    Left = 136
    Top = 16
    Width = 105
    Height = 33
    Caption = 'Por Estado'
    TabOrder = 1
    OnClick = btnPorEstadoClick
  end
  object grdDados: TDBGrid
    Left = 0
    Top = 120
    Width = 341
    Height = 335
    Align = alBottom
    DataSource = dsDados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 31
        Visible = True
      end>
  end
  object edtObs: TEdit
    Left = 8
    Top = 80
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    Text = 'TESTE DE RELAT'#211'RIO'
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 176
    object cdsCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsCidadesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsCidadesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsDados: TDataSource
    DataSet = cdsCidades
    Left = 32
    Top = 240
  end
  object fdsCidades: TfrxDBDataset
    UserName = 'fdsCidades'
    CloseDataSource = False
    DataSet = cdsCidades
    BCDToCurrency = False
    Left = 160
    Top = 160
  end
  object Rel_Listagem: TfrxReport
    Version = '4.13.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43578.438871354170000000
    ReportOptions.LastChange = 43578.438871354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  ShapeCor.Visible := not(ShapeCor.Visible);                    ' +
        '          '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnNewGetValue = Rel_ListagemNewGetValue
    Left = 232
    Top = 160
    Datasets = <
      item
        DataSet = fdsCidades
        DataSetName = 'fdsCidades'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000010000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 205.984385000000000000
          Top = 7.559059999999999000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem das Cidades')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 311.811225000000000000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[var_Obs]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000001000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g [Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = fdsCidades
        DataSetName = 'fdsCidades'
        RowCount = 0
        Stretched = True
        object ShapeCor: TfrxShapeView
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Color = clBtnFace
          Frame.Color = clBtnFace
          Frame.ShadowColor = clBtnFace
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsCidades."CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 109.606370000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = fdsCidades
          DataSetName = 'fdsCidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsCidades."NOME"] / [fdsCidades."UF"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999937000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[var_Obs]')
          ParentFont = False
        end
      end
    end
  end
  object Rel_PorEstado: TfrxReport
    Version = '4.13.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43578.453368634260000000
    ReportOptions.LastChange = 43578.453368634260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnNewGetValue = Rel_PorEstadoNewGetValue
    Left = 232
    Top = 216
    Datasets = <
      item
        DataSet = fdsCidades
        DataSetName = 'fdsCidades'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Child = Rel_PorEstado.Child1
        object Memo1: TfrxMemoView
          Left = 205.984385000000000000
          Top = 7.559059999999999000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem das Cidades')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 311.811225000000000000
          Top = 34.015770000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[var_Obs]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000001000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g [Page#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 34.015770000000010000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        Condition = 'fdsCidades."UF"'
        KeepTogether = True
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado: [fdsCidades."UF"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = fdsCidades
        DataSetName = 'fdsCidades'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fdsCidades
          DataSetName = 'fdsCidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsCidades."CODIGO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779529999999994000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsCidades
          DataSetName = 'fdsCidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[fdsCidades."NOME"]/[fdsCidades."UF"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fdsCidades
          DataSetName = 'fdsCidades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Cidades: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 22.677180000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 117.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -15.118120000000000000
          Top = 18.897650000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 208
    Top = 304
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = False
    Left = 208
    Top = 360
  end
end
