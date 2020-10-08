object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Forms instanciados'
  ClientHeight = 306
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 57
    Width = 446
    Height = 249
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object pan1: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 527
    object btn2: TButton
      Left = 16
      Top = 16
      Width = 153
      Height = 25
      Caption = 'Abrir Form 2 - N'#227'o Modal'
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn1: TButton
      Left = 192
      Top = 16
      Width = 145
      Height = 25
      Caption = 'Abrir Form 3 - Modal'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object JvThreadTimer1: TJvThreadTimer
    Enabled = True
    Interval = 250
    OnTimer = JvThreadTimer1Timer
    Left = 80
    Top = 96
  end
end
