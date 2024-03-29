inherited FrmCadastroSemente: TFrmCadastroSemente
  Caption = 'CADASTRO DE CULTIVARES'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TJvPanel
    inherited CrdPnlPrincipal: TCardPanel
      inherited CrdConsulta: TCard
        inherited PnlPesquisa: TJvPanel
          inherited EdtPesquisa: TMaskEdit
            OnKeyPress = EdtPesquisaKeyPress
          end
        end
        inherited PnlBtsInsertDelete: TJvPanel
          inherited BtExcluir: TJvSpeedButton
            OnClick = BtExcluirClick
          end
        end
        inherited PnlDbGrid: TJvPanel
          inherited DbGrid: TJvDBUltimGrid
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'smt_Id'
                Title.Alignment = taCenter
                Title.Caption = 'C'#211'DIGO'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'smt_descricao'
                Title.Alignment = taCenter
                Title.Caption = 'CULTIVARES'
                Width = 250
                Visible = True
              end>
          end
        end
      end
      inherited CrdCampos: TCard
        inherited PnlFundoCampos: TJvPanel
          inherited PnlFundoCamposInterno: TJvPanel
            object LbTituloTecnologia: TLabel
              Left = 1
              Top = 92
              Width = 1012
              Height = 28
              Align = alBottom
              Alignment = taCenter
              Caption = 'TECNOLOGIA GEN'#201'TICA'
              Font.Charset = ANSI_CHARSET
              Font.Color = 14934499
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              ExplicitWidth = 229
            end
            object PnlTecnologia: TJvPanel
              Left = 1
              Top = 120
              Width = 1012
              Height = 532
              Transparent = True
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object DbGrdTecGenetica: TJvDBUltimGrid
                Left = 0
                Top = 160
                Width = 1012
                Height = 372
                Cursor = crHandPoint
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DrawingStyle = gdsGradient
                GradientEndColor = 9323579
                GradientStartColor = 9323579
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -12
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = [fsBold]
                OnCellClick = DbGrdTecGeneticaCellClick
                AutoAppend = False
                ClearSelection = False
                AlternateRowColor = 8279822
                AlternateRowFontColor = clWhite
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                CellHintPosition = gchpMouse
                EditControls = <>
                RowsHeight = 19
                TitleRowHeight = 19
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'tcs_descricao'
                    Title.Alignment = taCenter
                    Title.Caption = 'TECNOLOGIA'
                    Width = 300
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'tcs_tipo'
                    Title.Alignment = taCenter
                    Title.Caption = 'TIPO'
                    Width = 100
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'tcs_ciclofull'
                    Title.Alignment = taCenter
                    Title.Caption = 'CICLO DE VIDA'
                    Width = 150
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'tcs_genetica'
                    Title.Alignment = taCenter
                    Title.Caption = 'TRANSGENIA'
                    Width = 200
                    Visible = True
                  end>
              end
              object PnlCtrlFieldTecGenetica: TJvPanel
                Left = 0
                Top = 0
                Width = 1012
                Height = 160
                Align = alTop
                Color = 4671041
                ParentBackground = False
                TabOrder = 1
                object PnlTecnologiaBtsSaveCancel: TJvPanel
                  Left = 1
                  Top = 1
                  Width = 1010
                  Height = 33
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clSilver
                  ParentBackground = False
                  TabOrder = 0
                  object PnlTecnBtAdicionar: TJvPanel
                    Left = 0
                    Top = 0
                    Width = 150
                    Height = 33
                    Cursor = crHandPoint
                    Transparent = True
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object BtAddTecn: TJvSpeedButton
                      Left = 0
                      Top = 0
                      Width = 150
                      Height = 33
                      Align = alClient
                      Caption = 'ADICIONAR'
                      Flat = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      Glyph.Data = {
                        42100000424D4210000000000000420000002800000020000000200000000100
                        20000300000000100000983A0000983A000000000000000000000000FF0000FF
                        0000FF0000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0002000000030000000300000002000000010000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000030000000D0000001E00000032110A
                        004828160059251600590D0A004900000034000000210000000F000000040000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000004000000171C0E0047603911967F4F1CCE8A5215F19155
                        12FE92550FFF92550CFF925409FE8A5107EF794705CC5A350195140A004A0000
                        001C000000050000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000E24120046774B1DB792581DFA905110FF8A4700FF8C4900FF8D4B
                        00FF8F4D00FF914F00FF935100FF945300FF965600FF985901FF945700F77144
                        00B3180D004A0000001200000001000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000010000
                        00185A370F81965C24F38F4C0AFF8C4600FF8D4800FF8F4A00FF904C00FF924E
                        00FF945000FF955300FF975500FF995700FF9B5900FF9C5C00FF9E5E00FFA060
                        00FF985D00EF5032007F0000001F000000020000000000000000000000000000
                        00000000000000000000000000000000000000000000000000010000001C774A
                        1DA599591DFE8E4600FF8F4800FF914900FF924B00FF944E00FF955000FF9752
                        00FF985400FF9A5600FF9C5900FF9D5B00FF9F5D00FFA16000FFA36200FFA564
                        00FFA66700FFA76800FD6B44009F000000250000000200000000000000000000
                        00000000000000000000000000000000000000000000000000177C4B1CA89B57
                        17FF924700FF934900FF944B00FF964D00FF974F00FF995100FF9A5300FF9A54
                        00FF965706FF9A5E10FF9A5900FFA25F00FFA46100FFA66400FFA86600FFAA69
                        00FFAB6B00FFAD6E00FFAF7000FE724A00A00000001F00000001000000000000
                        0000000000000000000000000000000000000000000B6D401583A05B1CFE9649
                        00FF974A00FF984C00FF9A4F00FF9B5100FF9D5300FF9E5500FF9F5700FFA166
                        1BFFF5F1EBFFFFFFFFFFD0B590FFA36100FFA96600FFAB6900FFAC6B00FFAE6E
                        00FFB07000FFB27300FFB47600FFB47700FD5C3E007F00000011000000000000
                        0000000000000000000000000000000000023A1F0041A46124F59A4A00FF9B4C
                        00FF9D4E00FF9E5000FF9F5200FFA15500FFA25700FFA45900FFA45B00FFB07F
                        3FFFFFFFFFFFFFFFFFFFE7DBC8FFA56400FFAE6B00FFB06D00FFB27000FFB373
                        00FFB57500FFB77800FFB97B00FFBA7D00FFB27900EF21160045000000040000
                        000000000000000000000000000000000010935922B9A15107FFA04E00FFA150
                        00FFA25200FFA45400FFA55700FFA65900FFA85B00FFA95E00FFAA6000FFB382
                        3FFFFFFFFFFFFFFFFFFFE8DBC8FFAA6800FFB47000FFB57200FFB77500FFB878
                        00FFBA7B00FFBC7E00FFBD8000FFBF8300FFC08500FF8F6300B0000000180000
                        000000000000000000000000000143230040AD621DFCA45000FFA65200FFA754
                        00FFA85600FFA95900FFAB5B00FFAC5D00FFAD6000FFAF6200FFAF6500FFB785
                        3FFFFFFFFFFFFFFFFFFFE9DCC8FFAF6D00FFB97500FFBA7800FFBC7B00FFBE7E
                        00FFBF8000FFC18300FFC28600FFC48900FFC58B00FFC08900F6221600430000
                        00020000000000000000000000068F541B97AD5809FFAB5400FFAC5600FFAD58
                        00FFAE5B00FFB05D00FFB16000FFB26200FFB36500FFB56700FFB56A00FFBB89
                        3FFFFFFFFFFFFFFFFFFFEADDC8FFB47200FFBE7B00FFC07E00FFC18000FFC383
                        00FFC48600FFC68900FFC78C00FFC88E00FFCA9100FFCB9401FF846101900000
                        000B000000000000000000000011A9611BD6B05700FFB15900FFB25B00FFB35E
                        00FFB46000FFB56300FFB66500FFB86800FFB96A00FFBA6D00FFBB6F00FFBF8C
                        3FFFFFFFFFFFFFFFFFFFEADEC8FFB97800FFC38100FFC58300FFC68600FFC889
                        00FFC98C00FFCA8F00FFCB9100FFCD9400FFCE9700FFCF9900FFB08406CA0000
                        001A0000000000000000150E0023B86715FBB65D00FFB75F00FFB86100FFB964
                        00FFBA6600FFBA6800FFBB6B00FFBD6D00FFBE7000FFBF7300FFBF7500FFC290
                        3FFFFFFFFFFFFFFFFFFFEBDFC8FFBD7D00FFC88600FFC98800FFCA8B00FFCB8E
                        00FFCD9100FFCE9300FFD09600FFD19900FFD29C00FFD49E00FFCA9A08EF0000
                        002B000000000000000060360042C06D13FFBC6300FFBD6600FFBE6800FFBD69
                        00FFBB771FFFC38E46FFC38F46FFC49146FFC59246FFC69446FFC69646FFCEAD
                        74FFFFFFFFFFFFFFFFFFF0E8D7FFC69B46FFCBA046FFCCA246FFCCA446FFCDA6
                        46FFCEA746FFD0A841FFCC9603FFD59E00FFD7A100FFD8A300FFDAA809FE1D14
                        043D00000001000000007A430053C77619FFC46E07FFC36C00FFC46E00FFBA6B
                        02FFF7F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFDEC479FFD8A408FFDCA807FFDCA904FFDEAE0CFF4F3B
                        004D000000010000000081490053CE7F1FFFCC7B15FFCD7D13FFCC7A0BFFBE73
                        09FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFE5D297FFDCAC14FFE1B115FFE2B315FFE4B81EFF533F
                        004C000000010000000075420041D48724FFD48721FFD48921FFD58B21FFCF88
                        1FFFDFC08FFFEDDFC7FFEDDEC6FFECDDC3FFECDCBFFFECDDC0FFEDDFC3FFF0E7
                        D4FFFFFFFFFFFFFFFFFFFBF8F3FFEDE2C7FFEEE3C7FFEFE3C7FFEFE4C7FFEFE4
                        C7FFEFE5C7FFEFE4C2FFDBB747FFE3B620FFE6B921FFE7BB21FFE8BE26FE2B1E
                        043B00000000000000002F170020D88D26FCDB942EFFDC952EFFDC972EFFDC99
                        2EFFD9982DFFD5972DFFD6982CFFD69A2CFFD79C2CFFD79E2CFFD79F2CFFD3AD
                        5EFFFFFFFFFFFFFFFFFFF0E7D0FFD2A22AFFDCAB2CFFDDAD2CFFDDAF2CFFDEB1
                        2CFFDFB22CFFE1B52DFFE7BB2EFFEABF2EFFEAC12EFFEBC22EFFE2BC2DF10000
                        002500000000000000000000000DD28C28D8E29F3DFFE2A13DFFE3A33DFFE3A5
                        3DFFE4A63DFFE4A83DFFE5AA3DFFE5AB3DFFE6AD3DFFE7AF3DFFE6B03DFFDCB8
                        69FFFFFFFFFFFFFFFFFFF2E9D3FFDFB13AFFEABB3DFFEBBD3DFFEBBF3DFFECC0
                        3DFFEDC23DFFEDC43DFFEDC53DFFEEC73DFFEEC83DFFEFCA3DFFD1AF2FCA0000
                        0014000000000000000000000004C2801C97E8AB4DFFE8AD4DFFE8AE4DFFE9B0
                        4DFFE9B14DFFEAB34DFFEAB44DFFEBB64DFFEBB84DFFECB94DFFEBBA4CFFDFBE
                        73FFFFFFFFFFFFFFFFFFF2EBD6FFE3B949FFEFC44DFFEFC64DFFEFC74DFFF0C8
                        4DFFF0CA4DFFF1CB4DFFF1CD4DFFF2CE4DFFF2CF4DFFF3D355FFB091178C0000
                        00070000000000000000000000008855003CEAAF4EFEEDB75DFFEEB95DFFEEBA
                        5DFFEEBB5DFFEEBD5DFFEFBE5DFFEFC05DFFF0C15DFFF0C35DFFEFC35CFFE2C5
                        7EFFFFFFFFFFFFFFFFFFF3ECD9FFE6C158FFF3CC5DFFF3CE5DFFF3CF5DFFF3D0
                        5DFFF3D15DFFF4D25DFFF4D45DFFF5D55DFFF5D65DFFF1D153F94D3B00380000
                        000100000000000000000000000000000008DA9F3ABBF1C16DFFF2C36DFFF2C4
                        6DFFF2C56DFFF2C66DFFF3C86DFFF3C96DFFF3CA6DFFF4CB6DFFF3CC6CFFE4CA
                        89FFFFFFFFFFFFFFFFFFF4EDDBFFE9C967FFF6D46DFFF6D56DFFF6D66DFFF6D7
                        6DFFF6D86DFFF7D96DFFF7DA6DFFF7DB6DFFF7DD72FFCEB03CAD0000000E0000
                        0000000000000000000000000000000000009160083AF0C067F9F5CC7DFFF6CD
                        7DFFF6CE7DFFF6CF7DFFF6D07DFFF7D17DFFF7D27DFFF7D37DFFF6D37CFFE6CF
                        93FFFFFFFFFFFFFFFFFFF4EFDEFFECCF77FFF8DA7DFFF8DB7DFFF9DC7DFFF9DD
                        7DFFF9DE7DFFF9DF7DFFF9E07DFFF9E17DFFF2D970F259460036000000010000
                        00000000000000000000000000000000000000000004CC972F82F7D185FFF8D5
                        8CFFF8D68CFFF9D78CFFF9D88CFFF9D98CFFF9D98CFFF9DA8CFFF8DA8CFFE9D5
                        9CFFFFFFFFFFFFFFFFFFF5EFDEFFF1D787FFFAE08CFFFAE18CFFFAE28CFFFAE3
                        8CFFFBE38CFFFBE48CFFFBE58CFFFAE58CFEB0962D7500000007000000000000
                        000000000000000000000000000000000000000000000000000ADFAA3EACFADB
                        97FFFBDD9BFFFBDE9BFFFBDE9BFFFBDF9BFFFBE09BFFFBE19BFFFBE19BFFF1D9
                        95FFEDE1BCFFEFE6C9FFEBDAA3FFF8E299FFFBE69BFFFCE69BFFFCE79BFFFCE8
                        9BFFFCE89BFFFCE99BFFFCE999FFD1B33E9C0000000E00000000000000000000
                        00000000000000000000000000000000000000000000000000002222000FE4B2
                        49ABFCE1A3FFFCE3A9FFFCE4A9FFFCE5A9FFFCE5A9FFFCE6A9FFFCE7A9FFFCE7
                        A8FFF9E5A7FFF8E5A6FFFBE8A8FFFCE9A9FFFDEAA9FFFDEBA9FFFDEBA9FFFDEC
                        A9FFFDECA9FFFCEBA0FED4B53D9D000000110000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0009D7AF4D80FBE1A2F8FDE9B5FFFDE9B5FFFDEAB5FFFDEBB5FFFDEBB5FFFDEC
                        B5FFFDECB5FFFDECB5FFFDEDB5FFFDEDB5FFFDEEB5FFFDEEB5FFFEEFB5FFFEF0
                        B7FFF9E697F3C1A532750000000D000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000003A3812B35EDD085B9FFE9B3FDFEEEC0FFFEEEC0FFFEEFC0FFFEEF
                        C0FFFEEFC0FFFEF0C0FFFEF0C0FFFEF1C0FFFEF1C0FFFEF2C2FFFCEBA7FCE3CB
                        6AB17C6205310000000500000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000007A8841F38E1C46D93F3D88AD6FDE599FCFFEC
                        B0FFFFF0BCFFFFF0BCFFFFEDAFFFFDE796FAF1DA82D1DBBE548E897004340000
                        0009000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000200000009513D0A19AB83
                        043ABB93034CBB92064BA37F0438332800190000000A00000003000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000}
                      GrayedInactive = False
                      HotTrackFont.Charset = ANSI_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -13
                      HotTrackFont.Name = 'Segoe UI'
                      HotTrackFont.Style = []
                      Layout = blGlyphLeft
                      ParentFont = False
                      Spacing = 20
                      OnClick = BtAddTecnClick
                      ExplicitTop = -1
                    end
                  end
                  object PnlTecnBtCancelar: TJvPanel
                    Left = 150
                    Top = 0
                    Width = 150
                    Height = 33
                    Cursor = crHandPoint
                    Transparent = True
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 1
                  end
                end
                object PnlTecnologiaFields: TJvPanel
                  Left = 1
                  Top = 39
                  Width = 1010
                  Height = 120
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 4671041
                  ParentBackground = False
                  TabOrder = 1
                  Visible = False
                  object LbTecDescricao: TLabel
                    Left = 10
                    Top = 15
                    Width = 74
                    Height = 15
                    Caption = 'TECNOLOGIA'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LbTecTipo: TLabel
                    Left = 10
                    Top = 56
                    Width = 104
                    Height = 15
                    Caption = 'TECNOLOGIA TIPO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label1: TLabel
                    Left = 445
                    Top = 15
                    Width = 208
                    Height = 15
                    Caption = 'N'#218'MERO DE DIAS DO CICLO DE VIDA'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label2: TLabel
                    Left = 445
                    Top = 60
                    Width = 126
                    Height = 15
                    Caption = 'TRANSGENIA PADR'#195'O'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object PnlTecDescricao: TJvPanel
                    Left = 125
                    Top = 10
                    Width = 300
                    Height = 25
                    TabOrder = 0
                    object LineTecDescricao: TJvGradient
                      Left = 1
                      Top = 22
                      Width = 298
                      Height = 2
                      StartColor = 14067595
                      EndColor = 14067595
                      ExplicitLeft = 90
                      ExplicitTop = 30
                      ExplicitWidth = 100
                      ExplicitHeight = 41
                    end
                    object EdTecDescricao: TDBEdit
                      Left = 1
                      Top = 1
                      Width = 298
                      Height = 21
                      Align = alTop
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                  end
                  object PnlTecTipo: TJvPanel
                    Left = 125
                    Top = 50
                    Width = 300
                    Height = 27
                    TabOrder = 1
                    object lineTecTipo: TJvGradient
                      Left = 1
                      Top = 24
                      Width = 298
                      Height = 2
                      Align = alBottom
                      StartColor = 14067595
                      EndColor = 14067595
                      ExplicitTop = 1
                    end
                    object CbbTecGeneticaTipo: TDBComboBox
                      Left = 1
                      Top = 1
                      Width = 298
                      Height = 23
                      Style = csDropDownList
                      Align = alTop
                      BevelInner = bvNone
                      BevelOuter = bvNone
                      CharCase = ecUpperCase
                      Items.Strings = (
                        'R'
                        'RR'
                        'RRR')
                      TabOrder = 0
                    end
                  end
                  object PnlTecCicloVida: TJvPanel
                    Left = 680
                    Top = 10
                    Width = 150
                    Height = 27
                    TabOrder = 2
                    object LineTecCicloVida: TJvGradient
                      Left = 1
                      Top = 24
                      Width = 148
                      Height = 2
                      StartColor = 14067595
                      EndColor = 14067595
                      ExplicitLeft = 90
                      ExplicitTop = 30
                      ExplicitWidth = 100
                      ExplicitHeight = 41
                    end
                    object EdtTecGeneticaCiclo: TJvDBCalcEdit
                      Left = 1
                      Top = 1
                      Width = 148
                      Height = 23
                      Align = alTop
                      Alignment = taCenter
                      DecimalPlaces = 0
                      DisplayFormat = '0'
                      TabOrder = 0
                      DecimalPlacesAlwaysShown = False
                    end
                  end
                  object PnlTecGenetica: TJvPanel
                    Left = 680
                    Top = 50
                    Width = 150
                    Height = 25
                    TabOrder = 3
                    object LineTecGenetica: TJvGradient
                      Left = 1
                      Top = 22
                      Width = 148
                      Height = 2
                      StartColor = 14067595
                      EndColor = 14067595
                      ExplicitLeft = 90
                      ExplicitTop = 30
                      ExplicitWidth = 100
                      ExplicitHeight = 41
                    end
                    object EdtTecGenetica: TDBEdit
                      Left = 1
                      Top = 1
                      Width = 148
                      Height = 21
                      Align = alTop
                      BorderStyle = bsNone
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                  end
                  object PnlTecFieldBtsSalvarCancelar: TJvPanel
                    Left = 0
                    Top = 79
                    Width = 1010
                    Height = 41
                    Transparent = True
                    Align = alBottom
                    BevelOuter = bvNone
                    Color = -4862336
                    ParentBackground = False
                    TabOrder = 4
                    object BtTecFieldSalvar: TJvSpeedButton
                      Left = 0
                      Top = 0
                      Width = 150
                      Height = 41
                      Cursor = crHandPoint
                      Align = alLeft
                      Caption = 'SALVAR'
                      Color = 4671041
                      Flat = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -12
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      Glyph.Data = {
                        42190000424D4219000000000000420000002800000028000000280000000100
                        20000300000000190000111700001117000000000000000000000000FF0000FF
                        0000FF0000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000C78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFCF9962FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFCF9962FFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFCF9962FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFCF9962FFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFCF9962FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFCF9962FFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFEED2B3FFCB9053FFC98B4BFFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFCD9357FFEED2B4FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFCD9357FFC98B4BFFF1C89CFFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFF1C89BFFCD9357FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FF0000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFF0D5B7FFC88A4AF70000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFF1D8BBFFCA8C4DF4C88947410000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFF1D8BBFFCA8C4DF4C8894741000000000000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFF1D8BBFFCA8C4DF4C889474100000000000000000000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFFEF0DFFFF1D8BBFFCA8C4DF4C88947410000000000000000000000000000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFFEF0
                        DFFFF1D8BBFFCA8C4DF4C8894741000000000000000000000000000000000000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC78847FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFFEF0DFFFF1D8
                        BBFFCA8C4DF4C889474100000000000000000000000000000000000000000000
                        0000000000000000000000000000C78847FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0
                        DFFFFEF0DFFFFEF0DFFFFEF0DFFFC78847FFC98B4BFFF1C99DFFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDC
                        B6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFC78847FFF1D8BBFFCA8C
                        4DF4C88947410000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000C78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78947FFC98C4BFFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
                        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78A49F8C889
                        4741000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000}
                      GrayedInactive = False
                      HotTrackFont.Charset = ANSI_CHARSET
                      HotTrackFont.Color = clWindowText
                      HotTrackFont.Height = -12
                      HotTrackFont.Name = 'Segoe UI'
                      HotTrackFont.Style = []
                      Layout = blGlyphLeft
                      ParentFont = False
                      Spacing = 20
                      OnClick = BtTecFieldSalvarClick
                    end
                  end
                end
              end
            end
            object PnlCampo1: TJvPanel
              Left = 20
              Top = 10
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 1
              object LbCampo1: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'CULTIVARES'
                Color = 4671041
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
                ExplicitWidth = 74
              end
              object LineCampo1: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
              end
              object LineCampo1_1: TJvGradient
                Left = 0
                Top = 17
                Width = 300
                Height = 5
                Align = alTop
                StartColor = clWhite
                EndColor = clWhite
                ExplicitTop = 25
              end
              object ObrEdtCampo1: TMaskEdit
                Tag = 1
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'smt_descricao'
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = ''
              end
            end
          end
        end
      end
    end
  end
end
