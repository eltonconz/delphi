object frmAtividades: TfrmAtividades
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Atividades'
  ClientHeight = 288
  ClientWidth = 629
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 519
    Height = 288
    ActivePage = sheetDaods
    Align = alClient
    TabOrder = 0
    TabStop = False
    object sheetDaods: TTabSheet
      Caption = 'Dados'
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 511
        Height = 260
        Align = alClient
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        object grdDados: TDBGrid
          Left = 1
          Top = 57
          Width = 509
          Height = 151
          Align = alClient
          DataSource = dsCad
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdDadosDblClick
          OnKeyDown = grdDadosKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_INICIO'
              Title.Caption = 'In'#237'cio'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_FINAL'
              Title.Caption = 'Final'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TEMPO_TOTAL'
              Title.Caption = 'Total'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITULO'
              Title.Caption = 'T'#237'tulo'
              Width = 233
              Visible = True
            end>
        end
        object panTotais: TPanel
          Left = 1
          Top = 208
          Width = 509
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          object lbl1: TLabel
            Left = 16
            Top = 8
            Width = 59
            Height = 13
            Caption = 'Tempo Total'
          end
          object Label1: TLabel
            Left = 128
            Top = 8
            Width = 62
            Height = 13
            Caption = 'Nro registros'
          end
          object edtTempoTotal: TDBEdit
            Left = 16
            Top = 24
            Width = 97
            Height = 21
            DataField = 'AG_TEMPO_TOTAL'
            DataSource = dsCad
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 128
            Top = 22
            Width = 97
            Height = 21
            DataField = 'AG_CONTADOR'
            DataSource = dsCad
            TabOrder = 1
          end
        end
        object panFiltro: TPanel
          Left = 1
          Top = 1
          Width = 509
          Height = 56
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label2: TLabel
            Left = 16
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Titulo'
          end
          object edtFiltroTitulo: TEdit
            Left = 16
            Top = 24
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object btnPesquisar: TBitBtn
            Left = 152
            Top = 16
            Width = 89
            Height = 25
            Caption = 'Pesquisar'
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000420B0000420B00000000000000000000FF00FF2173B5
              636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2173B5218CEF
              2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948CB5BDC6B5BDC69C948CFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF52BDFF
              218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31A5FF
              52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              31A5FF52BDFF218CEF2173B5636B73FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6B5BDC69C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF31A5FF52BDFF218CEF5A6B73FF00FFD5B9B4D6ADA5D6ADA5D6ADA5D5B9
              B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C496474B5BDC6A5948CFF
              00FF9C948C9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF31A5FF31A5FF4A4239B69B8BF0E2C0F9EFC8FDF2CBFEF4CCECD8
              C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948C9C948CB5BDC69C
              948CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFBB9F88F3E3B6FCF3D1FEF6CDFEF7CFFEF9D0FDF7
              D2F5E6C2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4EFE1B5FAEDBDFFF1C1FFF3C2FFF5C4FFF7C5FFFA
              C7FDF8D2D6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EFE3B6FBECBEFDEFBFFEF1C1FFF2C2FFF4C4FFF7
              C5FFF9C7EEE2BBD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EDE1B4F6E9BEFCF1D3FCF0C9FEF0C1FFF1C2FFF4
              C3FFF6C5F6E9C2CBAF9CFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD6ADA5EBDEB2F2E6BBFCF2D7FCF1D3FCEEC0FEEFC2FFF2
              C2FEF2C2EFE1BBD2B3A3FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFB5BDC6B5BDC6FF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FF
              FF00FFFF00FFFF00FFD5B9B4E4D8B0EDE1B6F3E7BCF8EBC0F9EBBCFBEDBEFAEC
              BDF5E9BAD6ADA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFD6ADA5EADFBCECE0B6F0E3B6F1E5B7F2E5B7EFE3
              B5F5E7BCD5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C948CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFD6ADA5E0D4B5EADEB4EBDEB1E8DBB1D6AD
              A5D5B9B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C
              948CFF00FFFF00FFFF00FFFF00FF9C948C9C948CFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD5B9B4D6ADA5D6ADA5D9B7A3FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF9C948C9C948C9C948C9C948CFF00FFFF00FFFF00FFFF00FF}
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btnPesquisarClick
          end
          object rbLocalizar: TRadioButton
            Left = 248
            Top = 8
            Width = 113
            Height = 17
            Caption = 'Localizar'
            Checked = True
            TabOrder = 2
            TabStop = True
          end
          object rbFiltrar: TRadioButton
            Left = 248
            Top = 25
            Width = 113
            Height = 17
            Caption = 'Filtrar'
            TabOrder = 3
          end
        end
      end
    end
  end
  object panMenu: TPanel
    Left = 519
    Top = 0
    Width = 110
    Height = 288
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 6
      Top = 20
      Width = 100
      Height = 25
      Caption = '&Novo'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
        83B78183B78183FF00FFFF00FFFF00FF9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
        9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CFF00FFFF00FFFF00FF
        C7A79CFEEED4F7E3C5F6DFBCF5DBB4F3D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF
        98F5D49AB78183FF00FFFF00FFFF00FF9C9C9CE9E9E9DEDEDED9D9D9D4D4D4CF
        CFCFCACACAC5C5C5C3C3C3C4C4C4C4C4C4C7C7C79C9C9CFF00FFFF00FFFF00FF
        C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
        97F3D199B78183FF00FFFF00FFFF00FF9C9C9CEBEBEBE0E0E0DBDBDBD7D7D7D2
        D2D2CDCDCDC9C9C9C3C3C3C2C2C2C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
        C7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC
        97F3D199B78183FF00FFFF00FFFF00FF959595F0F0F0E5E5E5E0E0E0DCDCDCD7
        D7D7D2D2D2CECECEC9C9C9C4C4C4C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
        C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
        99F3D198B78183FF00FFFF00FFFF00FF959595F5F5F5E9E9E9E4E4E4E0E0E0DB
        DBDBD6D6D6D2D2D2CDCDCDC8C8C8C4C4C4C5C5C59C9C9CFF00FFFF00FFFF00FF
        CEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0
        A1F3D29BB78183FF00FFFF00FFFF00FF9F9F9FF9F9F9EFEFEFE9E9E9E5E5E5E0
        E0E0DBDBDBD7D7D7D1D1D1CDCDCDC8C8C8C7C7C79C9C9CFF00FFFF00FFFF00FF
        D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
        A9F5D5A3B78183FF00FFFF00FFFF00FF9F9F9FFEFEFEF3F3F3EEEEEEE9E9E9E4
        E4E4DFDFDFDBDBDBD7D7D7D1D1D1CCCCCCCCCCCC9C9C9CFF00FFFF00FFFF00FF
        D7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8
        B2F6D9ACB78183FF00FFFF00FFFF00FFA6A6A6FFFFFFF9F9F9F3F3F3EEEEEEE9
        E9E9E5E5E5DFDFDFDBDBDBD7D7D7D2D2D2D1D1D19C9C9CFF00FFFF00FFFF00FF
        DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
        B9F8DDB4B78183FF00FFFF00FFFF00FFA6A6A6FFFFFFFEFEFEF8F8F8F3F3F3EE
        EEEEE9E9E9E4E4E4E0E0E0DBDBDBD6D6D6D6D6D69C9C9CFF00FFFF00FFFF00FF
        DEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1
        C2F0DAB7B78183FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFFEFEFEF9F9F9F3
        F3F3EEEEEEE9E9E9E4E4E4DFDFDFDCDCDCD3D3D39C9C9CFF00FFFF00FFFF00FF
        E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
        C4C6BCA9B78183FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFFFFFFFFEFEFEF8
        F8F8F3F3F3EEEEEEEBEBEBEAEAEAD5D5D5B7B7B79C9C9CFF00FFFF00FFFF00FF
        E5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FDF6ECF1E1D5C6A194B594
        89B08F81B78183FF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFEF8F8F8F4F4F4E3E3E39999999999999999999C9C9CFF00FFFF00FFFF00FF
        E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
        70ECA54AC58768FF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFDFCFCFCD6D6D6999999ACACAC9B9B9B969696FF00FFFF00FFFF00FF
        ECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D4D2C89A7FFAC5
        77CD9377FF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDBDBDB999999B8B8B8A2A2A2FF00FFFF00FFFF00FFFF00FF
        EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
        86FF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFF8F8F8F7F7F7F7F7F7F7F7F7F6
        F6F6F6F6F6F6F6F6D7D7D7999999AAAAAAFF00FFFF00FFFF00FFFF00FFFF00FF
        E9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EACBB8EACBB8EACCB9DABBB0B8857AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFB1B1B1B1B1B1B1B1B1B1B1B1B1
        B1B1B1B1B1B1B1B1B1B1B1999999FF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnExcluir: TBitBtn
      Left = 6
      Top = 47
      Width = 100
      Height = 25
      Caption = '&Excluir'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFF4C692F4C692F4C692F4C692F4C692F4C692F4C692FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4B4B4B4B4B4B4B4B4B4
        B4B4B4B4B4B4B4B4B4B4B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFF4C692FDF4D1FEF9D8FCF0CEF5E6C2FBE3C3F3DAB5F8D1A9F4C692FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4B4B4D8D8D8DCDCDCD6D6D6CC
        CCCCD0D0D0C5C5C5C1C1C1B4B4B4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        F4C692FFFDDEFFFFE0FFFDDEFFF8DDB6D49245A9320C9A0C40A226EAD3A9F4C6
        92FF00FFFF00FFFF00FFFF00FFFF00FFB4B4B4DFDFDFE0E0E0DFDFDFDFDFDFD6
        D6D6909090767676878787BABABAB4B4B4FF00FFFF00FFFF00FFFF00FFFF00FF
        F4C692FEFBDCFFFFE1FFFEE0FFFFE8ACD791008D0030A3233EA72D73C367FFE3
        C4FF00FFFF00FFFF00FFFF00FFFF00FFB4B4B4DEDEDEE1E1E1E0E0E0E4E4E4D7
        D7D76969698686868D8D8DB8B8B8D2D2D2FF00FFFF00FFFF00FFFF00FFFF00FF
        F2B475F9C78DFBE1B4FEF2CFFEF8DFB9DC9D36A2246EB855FFF8F087C672FCE5
        C6F4C692FF00FFFF00FFFF00FFFF00FFA4A4A4B4B4B4C8C8C8D7D7D7DFDFDFDF
        DFDF868686A9A9A9E8E8E8BFBFBFD2D2D2B4B4B4FF00FFFF00FFFF00FFF2BC84
        F5B776F8BB7CF9C185FCD09BFEE3C085C269FDF4DB89C36C4EB14662B953FCF4
        DCF4C692FF00FFFF00FFFF00FFACACACA6A6A6ABABABB0B0B0BCBCBCD0D0D0B8
        B8B8DDDDDDBABABA9E9E9EA9A9A9DDDDDDB4B4B4FF00FFFF00FFFF00FFF3BA81
        F7B776F8BE81FAC68DFDD09CFFE7C55EAF417DC46BA7D694008F0021A320FFFC
        ECF4C692FF00FFFF00FFFF00FFABABABA7A7A7ADADADB4B4B4BDBDBDD3D3D39B
        9B9BBABABAD8D8D86A6A6A848484E6E6E6B4B4B4FF00FFFF00FFFF00FFF0B77A
        F7B877F8BF82FBC88EFDD29DFFE5C0D0DEAA06980600940000960027A526FFFC
        F1F2C084FF00FFFF00FFFF00FFA6A6A6A8A8A8AEAEAEB5B5B5BEBEBED0D0D0E7
        E7E77272726D6D6D6E6E6E888888E9E9E9ACACACFF00FFFF00FFF2BD87F5B97A
        F7B776F8BD7FF7C48AF9CC96FBD4A4FDE1BDCBCE9170AF49A3C87CAFD593F9FB
        E5F2C084F3C18BFF00FFADADADA8A8A8A7A7A7ACACACB1B1B1B8B8B8C0C0C0CE
        CECED2D2D29F9F9FC5C5C5D7D7D7E1E1E1ACACACB0B0B0FF00FFF1BA82F5B97A
        F6C995F6C995F6C995EFC087EFC087EFC087F1C896F2CD9FFFDFB9FED8ADF3D6
        A7F6DCB1F3C18BFF00FFAAAAAAA8A8A8B6B6B6B6B6B6B6B6B6ACACACACACACAC
        ACACB4B4B4B9B9B9CDCDCDC6C6C6BEBEBEC4C4C4B0B0B0FF00FFF3C18AF6C995
        F0B87CECAE6EEEB475F1BF86F4CD99F7DCAFFBEBC6FEF8D9FFFCDEFEF9DAFBE9
        C1F5D09BF2C088FF00FFAFAFAFB6B6B6A7A7A79E9E9EA2A2A2ACACACB7B7B7C4
        C4C4D1D1D1DCDCDCDFDFDFDDDDDDCFCFCFB9B9B9AEAEAEFF00FFF6C995EDAF6F
        ECAB6AECAD6CEEB577F1C188F4CE9BF7DCAFFBEBC4FEF9D8FFFCDEFFFCDDFFFE
        E1FEFBDBF1C084FF00FFB6B6B69F9F9F9C9C9C9D9D9DA3A3A3ADADADB8B8B8C4
        C4C4D0D0D0DCDCDCDFDFDFDFDFDFE1E1E1DDDDDDABABABFF00FFF2BE86EBAA68
        ECAD6CECAD6CEEB679F2C28AF4CF9DF8DDB1FBECC6FEFAD9FFFCDDFFFCDDFFFC
        DDFFFFE5F1C084FF00FFADADAD9A9A9A9D9D9D9D9D9DA4A4A4AFAFAFB9B9B9C5
        C5C5D1D1D1DCDCDCDFDFDFDFDFDFDFDFDFE3E3E3ABABABFF00FFF5C894EFB579
        ECAC6AECAD6CEFB67AF2C48DF5D29FF8DFB4FCEEC9FFFCDDFFFEE0FFFFE1FFFE
        DFFBE8BFF1C084FF00FFB5B5B5A5A5A59C9C9C9D9D9DA5A5A5B0B0B0BBBBBBC7
        C7C7D3D3D3DFDFDFE0E0E0E1E1E1E0E0E0CECECEABABABFF00FFFF00FFF2C084
        F2C084EEB475F0B97EF2C58FF5D4A4F9E3BAFDF2CFFEF8D7FDF1CCFBE8C0F6D0
        9DF2C084FF00FFFF00FFFF00FFACACACACACACA2A2A2A8A8A8B1B1B1BDBDBDCA
        CACAD7D7D7DBDBDBD5D5D5CECECEBABABAACACACFF00FFFF00FFFF00FFFF00FF
        FF00FFF2C084F2C084F2C084F2C084F2C084F2C084F2C084F2C084F2C084FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFACACACACACACACACACACACACAC
        ACACACACACACACACACACACACACACFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 6
      Top = 74
      Width = 100
      Height = 25
      Caption = 'Sai&r'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90
        9090808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF9A66669A6666B96666BB6868693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9494949494948F8F8F91
        9191808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FF9494949494949898989D9D9D9D9D9D95
        9595808080949494949494949494949494949494949494FF00FFFF00FFFF00FF
        9A6666DE7374D77071D56F70D56D6EC76A6D693334FEA2A3FCAFB0FABCBDF9C5
        C6F9C5C69A6666FF00FFFF00FFFF00FF949494A8A8A8A3A3A3A2A2A2A1A1A198
        9898808080D0D0D0D5D5D5DBDBDBDFDFDFDFDFDF949494FF00FFFF00FFFF00FF
        9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
        5BF9C5C69A6666FF00FFFF00FFFF00FF949494ABABABA8A8A8A7A7A7A6A6A69D
        9D9D8080808F8F8F8E8E8E8E8E8E868686DFDFDF949494FF00FFFF00FFFF00FF
        9A6666E57D7EE07A7BDF797ADF7778D0727569333442C46830CD6733CB6724CB
        60F9C5C69A6666FF00FFFF00FFFF00FF949494B1B1B1ADADADACACACABABABA1
        A1A18080809292929292929393938B8B8BDFDFDF949494FF00FFFF00FFFF00FF
        9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
        5EF9C5C69A6666FF00FFFF00FFFF00FF949494B6B6B6B2B2B2B0B0B0B3B3B3A3
        A3A38080808F8F8F8E8E8E909090898989DFDFDF949494FF00FFFF00FFFF00FF
        9A6666F08788E98182EC9697FBDDDED8888A693334B8E1AC6BDC895DD58046D4
        73F9C5C69A6666FF00FFFF00FFFF00FF949494BBBBBBB5B5B5C1C1C1ECECECB0
        B0B0808080DADADAB7B7B7ADADADA1A1A1DFDFDF949494FF00FFFF00FFFF00FF
        9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
        D4F9C5C69A6666FF00FFFF00FFFF00FF949494C0C0C0BABABAC4C4C4ECECECB1
        B1B1808080F1F1F1EFEFEFEEEEEEE8E8E8DFDFDF949494FF00FFFF00FFFF00FF
        9A6666FA9192F48E8FF28B8CF48C8DDC7F80693334FDF3D4FFFFDFFFFFDDFFFF
        E0F9C5C69A6666FF00FFFF00FFFF00FF949494C5C5C5C1C1C1BEBEBEC0C0C0AD
        ADAD808080EEEEEEEFEFEFEEEEEEEFEFEFDFDFDF949494FF00FFFF00FFFF00FF
        9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF949494CACACAC6C6C6C5C5C5C4C4C4B2
        B2B2808080EEEEEEEFEFEFEEEEEEEFEFEFDFDFDF949494FF00FFFF00FFFF00FF
        9A6666FF9B9CFD9798FC9697FE9798E38889693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF949494CDCDCDCACACAC9C9C9CACACAB5
        B5B5808080EEEEEEEFEFEFEEEEEEEFEFEFDFDFDF949494FF00FFFF00FFFF00FF
        9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF949494CFCFCFCCCCCCCCCCCCCCCCCCB9
        B9B9808080E8E8E8EFEFEFEEEEEEEFEFEFDFDFDF949494FF00FFFF00FFFF00FF
        9A66669A6666E98E8FFE999AFF9D9EEB8F90693334FBF0D2FDFCDCFDFCDAFDFC
        DCF9C5C69A6666FF00FFFF00FFFF00FF949494949494BBBBBBCBCBCBCECECEBD
        BDBD808080E6E6E6ECECECEBEBEBECECECDFDFDF949494FF00FFFF00FFFF00FF
        FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FF949494A4A4A4AEAEAEB1
        B1B1808080949494949494949494949494949494949494FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF9A66669A6666693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF92929290
        9090808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object dsCad: TDataSource
    DataSet = dmAtividades.cdsAtividades
    Left = 48
    Top = 120
  end
end
