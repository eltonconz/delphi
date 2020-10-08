object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 444
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 370
    Width = 409
    Height = 26
    Caption = 
      'Pode-se ocultar a coluna ID (duplo click na grade - campo - opti' +
      'ons - coVisible = false) '#13#10'e o funcionamento '#233' o mesmo.'
  end
  object VirtualStringTree1: TVirtualStringTree
    Left = 0
    Top = 0
    Width = 662
    Height = 257
    Align = alTop
    Header.AutoSizeIndex = 0
    Header.Height = 20
    Header.Options = [hoColumnResize, hoDrag, hoHotTrack, hoShowSortGlyphs, hoVisible]
    Header.ParentFont = True
    TabOrder = 0
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
    TreeOptions.SelectionOptions = [toFullRowSelect]
    OnFreeNode = VirtualStringTree1FreeNode
    OnGetText = VirtualStringTree1GetText
    Columns = <
      item
        Options = [coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
        Position = 0
        Width = 100
        WideText = 'Codigo'
      end
      item
        Options = [coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
        Position = 1
        Width = 150
        WideText = 'Descricao'
      end
      item
        Alignment = taRightJustify
        Options = [coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
        Position = 2
        Width = 150
        WideText = 'Valor'
      end
      item
        Options = [coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
        Position = 3
        WideText = 'ID'
      end>
  end
  object btn2: TButton
    Left = 8
    Top = 264
    Width = 145
    Height = 41
    Caption = 'Adicionar Elementos'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 24
    Top = 312
    Width = 113
    Height = 25
    Caption = 'Inserir Item'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 24
    Top = 344
    Width = 225
    Height = 25
    Caption = 'Inserir item - Filho do Item com ID informado'
    TabOrder = 3
    OnClick = btn4Click
  end
  object edt1: TEdit
    Left = 256
    Top = 346
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '1'
  end
  object btn1: TButton
    Left = 480
    Top = 264
    Width = 153
    Height = 25
    Caption = 'Expandir Tudo'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn5: TButton
    Left = 480
    Top = 296
    Width = 153
    Height = 25
    Caption = 'Retrair Tudo'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 480
    Top = 328
    Width = 153
    Height = 25
    Caption = 'Limpar Tudo'
    TabOrder = 7
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 24
    Top = 408
    Width = 113
    Height = 25
    Caption = 'Remover Item'
    TabOrder = 8
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 480
    Top = 360
    Width = 153
    Height = 25
    Caption = 'Nro N'#237'veis Raiz'
    TabOrder = 9
    OnClick = btn8Click
  end
end
