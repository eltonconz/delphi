object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 796
    Height = 473
    ActivePage = sheetDados
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 64
    ExplicitWidth = 289
    ExplicitHeight = 193
    object sheetDados: TTabSheet
      Caption = 'Dados'
      ExplicitLeft = 92
      ExplicitTop = 96
      ExplicitWidth = 622
      ExplicitHeight = 428
      object spl1: TSplitter
        Left = 201
        Top = 0
        Width = 16
        Height = 445
        ExplicitLeft = 121
        ExplicitHeight = 428
      end
      object pan1: TPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 445
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'panMenu'
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
      end
      object pan2: TPanel
        Left = 217
        Top = 0
        Width = 571
        Height = 445
        Align = alClient
        BevelOuter = bvNone
        Caption = 'panDados'
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 144
        ExplicitWidth = 478
        ExplicitHeight = 428
      end
    end
  end
end