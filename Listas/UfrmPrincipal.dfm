object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cole'#231#245'es - Generics.Collections'
  ClientHeight = 629
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 14
    Caption = 'LISTAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 256
    Top = 8
    Width = 98
    Height = 14
    Caption = 'CHAVE / VALOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 160
    Width = 35
    Height = 14
    Caption = 'FILAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 160
    Width = 46
    Height = 14
    Caption = 'PILHAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnList: TButton
    Left = 8
    Top = 32
    Width = 209
    Height = 41
    Caption = 'TList'
    TabOrder = 0
    OnClick = btnListClick
  end
  object btnObjList: TButton
    Left = 8
    Top = 80
    Width = 209
    Height = 41
    Caption = 'TObjectList'
    TabOrder = 1
    OnClick = btnObjListClick
  end
  object btnDic: TButton
    Left = 256
    Top = 32
    Width = 209
    Height = 41
    Caption = 'TDictionary'
    TabOrder = 2
    OnClick = btnDicClick
  end
  object btnObjDic: TButton
    Left = 256
    Top = 80
    Width = 209
    Height = 41
    Caption = 'TObjectDictionary'
    TabOrder = 3
    OnClick = btnObjDicClick
  end
  object mmo1: TMemo
    Left = 8
    Top = 296
    Width = 713
    Height = 321
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'TObjectList'
      
        '* Quando o objeto TObjectList '#233' desinstanciado, todos os objetos' +
        ' da lista s'#227'o automaticamente desinstanciados. '
      '* Melhor op'#231#227'o para listas de objetos'
      ''
      'TList '
      
        '* Quando o objeto TList '#233' desinstanciado, todos os objetos da li' +
        'sta N'#195'O s'#227'o automaticamente desinstanciados. '
      
        '* Melhor op'#231#227'o para listas de tipos primitivos (string, integer,' +
        ' etc.)'
      ''
      ''
      'O mesmo ocorre entre TDictionary e TObjectDictionary'
      ''
      'O mesmo ocorre entre TQueue e TObjectQueue'
      ''
      'O mesmo ocorre entre TStack e TObjectStack'
      ''
      ''
      'Documenta'#231#227'o'
      
        'http://docwiki.embarcadero.com/Libraries/Tokyo/en/System.Generic' +
        's.Collections')
    ParentFont = False
    TabOrder = 8
  end
  object btnTQueue: TButton
    Left = 8
    Top = 184
    Width = 209
    Height = 41
    Caption = 'TQueue'
    TabOrder = 4
    OnClick = btnTQueueClick
  end
  object btnTObjectQueue: TButton
    Left = 8
    Top = 232
    Width = 209
    Height = 41
    Caption = 'TObjectQueue'
    Enabled = False
    TabOrder = 5
  end
  object btnTStack: TButton
    Left = 256
    Top = 184
    Width = 209
    Height = 41
    Caption = 'TStack'
    TabOrder = 6
    OnClick = btnTStackClick
  end
  object btnTObjectStack: TButton
    Left = 256
    Top = 232
    Width = 209
    Height = 41
    Caption = 'TObjectStack'
    Enabled = False
    TabOrder = 7
  end
end
