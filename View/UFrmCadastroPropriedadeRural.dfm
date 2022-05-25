inherited FrmCadastroPropriedadeRural: TFrmCadastroPropriedadeRural
  Caption = 'CADASTRO DE PROPRIEDADE RURAL'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TJvPanel
    inherited PnlTituloJanela: TJvPanel
      inherited LbTituloJanela: TLabel
        Height = 32
      end
    end
    inherited CrdPnlPrincipal: TCardPanel
      ActiveCard = CrdCampos
      inherited CrdConsulta: TCard
        inherited PnlPesquisa: TJvPanel
          inherited LbPesquisa: TLabel
            Width = 1024
          end
        end
        inherited PnlDbGrid: TJvPanel
          inherited DbGrid: TJvDBUltimGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'pr_nomeResumido'
                Title.Alignment = taCenter
                Title.Caption = 'NOME DA PROPRIEDADE'
                Width = 395
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'pr_areaAgricultavel'
                Title.Alignment = taCenter
                Title.Caption = #193'REA AGRICULT'#193'VEL (HA)'
                Width = 180
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'pr_numMatricula'
                Title.Alignment = taCenter
                Title.Caption = 'MATR'#205'CULA'
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'pr_codigoIncra'
                Title.Alignment = taCenter
                Title.Caption = 'INCRA'
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'pr_dtcompra'
                Title.Alignment = taCenter
                Title.Caption = 'ADQUIRIDA EM:'
                Width = 150
                Visible = True
              end>
          end
        end
      end
      inherited CrdCampos: TCard
        inherited PnlSubMenus: TJvPanel
          Visible = True
          object PnlSubMenu1: TJvPanel
            Left = 0
            Top = 0
            Width = 150
            Height = 32
            Transparent = True
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object BtSubMenu1: TJvSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 32
              Cursor = crHandPoint
              Align = alClient
              Caption = 'CADASTRO'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Glyph.Data = {
                42100000424D4210000000000000420000002800000020000000200000000100
                20000300000000100000983A0000983A000000000000000000000000FF0000FF
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
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000001000000120000001C0000001D0000001D0000
                001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000
                001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000
                001D0000001D0000001D0000001D0000001D0000001D0000001D0000001C0000
                000D00000000000000001D1F1F701D1E1EC81E1E1ED31F1F1FD4202121D42224
                24D4252526D4272728D42A2B2BD42D2D2ED4313132D4343436D4383839D43C3C
                3CD43E3E3FD43D3D3DD4383939D4363636D4323232D42E2E2ED42B2C2CD4282A
                2AD4262627D4242425D4212222D4202020D41E1F1FD41C1C1CD41A1A1CD10F0F
                0F840000000C1C1C1C12202222FD222424FF252727FF282929FF2A2C2CFF2E30
                30FF323333FF353737FF3A3B3BFF3D3E3EFF414343FF464747FF4A4B4BFF4E4F
                4FFF515252FF505151FF4C4D4DFF484949FF434545FF3F4141FF3B3C3CFF3739
                39FF333535FF303131FF2C2E2EFF292A2AFF262828FF232525FF212323FF1B1D
                1DDB000000181C1C1C1B202121FE222424FF242626FF282929FF2A2C2CFF2E2F
                2FFF313232FF343636FF393A3AFF3C3D3DFF404141FF444646FF484848FF4A4C
                4CFF4C4D4DFF4C4D4DFF494A4AFF464747FF424444FF3E3F3FFF3A3B3BFF3738
                38FF333434FF2F3131FF2C2E2EFF292A2AFF262828FF232525FF212222FF1C1D
                1DDF0000001A1919191E202121FE212323FF242626FF272828FF2A2B2BFF2C2E
                2EFF303131FF333535FF383939FF3A3B3BFF3E3F3FFF414343FF454646FF4748
                48FF484949FF484848FF464747FF434444FF404141FF3C3D3DFF393A3AFF3537
                37FF323333FF2E3030FF2B2D2DFF282929FF252727FF232525FF202222FF1C1D
                1DDF0000001B1E1E1E22202121FE212222FF232525FF262828FF292A2AFF2C2D
                2DFF2F3030FF323333FF353737FF383A3AFF3B3C3CFF3E4040FF414242FF4344
                44FF444545FF434545FF424343FF404141FF3D3E3EFF3A3B3BFF363838FF3335
                35FF303232FF2D2F2FFF2A2B2BFF272929FF242626FF222424FF202222FF1C1D
                1DE10000001C1A212126202121FE212222FF222424FF252727FF282929FF2A2B
                2BFF2D2F2FFF303131FF333535FF363838FF393A3AFF3B3C3CFF3D3E3EFF3E40
                40FF3F4040FF3F4040FF3D3F3FFF3C3D3DFF3A3B3BFF373939FF353636FF3132
                32FF2F3030FF2B2D2DFF292A2AFF262828FF232525FF212323FF202121FF1D1E
                1EE40000001D1F1F1F29202121FE202121FF212323FF242525FF262828FF292A
                2AFF2B2D2DFF2E2F2FFF313232FF333535FF353737FF383939FF393A3AFF3B3C
                3CFF3B3C3CFF3B3C3CFF3A3B3BFF393A3AFF373838FF343636FF323333FF3031
                31FF2D2E2EFF2A2B2BFF272929FF252727FF222424FF202222FF202121FF1C1D
                1DE60000001E1C1C1C2D202121FE202121FF212222FF222424FF252626FF2728
                28FF292B2BFF2B2D2DFF2F3030FF313232FF323434FF343636FF363737FF3738
                38FF373838FF373838FF363838FF353737FF333535FF323333FF2F3131FF2D2F
                2FFF2A2C2CFF282929FF262828FF232525FF212323FF202121FF202121FF1D1E
                1EE9000000201E1E1E32202121FE202121FF202121FF212323FF232525FF2527
                27FF272929FF292B2BFF2B2D2DFF2E2F2FFF303131FF313232FF323333FF3234
                34FF333535FF333434FF323434FF323333FF303131FF2E3030FF2C2E2EFF2A2C
                2CFF292A2AFF262828FF242626FF222424FF212222FF202121FF202121FF1D1E
                1EEC000000221B202037202121FE202121FF202121FF202222FF222424FF2325
                25FF252727FF282929FF292A2AFF2A2C2CFF2C2E2EFF2E2F2FFF2F3030FF3031
                31FF303131FF303131FF2F3030FF2E3030FF2D2F2FFF2B2D2DFF2A2B2BFF2829
                29FF262828FF242626FF222424FF212222FF202121FF202121FF202121FF1D1E
                1EEF000000231D1D1D3C202121FE1F2020FF202121FF202121FF212222FF2123
                23FF232525FF252626FF272828FF282929FF292A2AFF2A2C2CFF2B2D2DFF2C2E
                2EFF2C2E2EFF2C2E2EFF2C2D2DFF2B2C2CFF2A2B2BFF292A2AFF272929FF2627
                27FF242626FF222424FF212222FF202121FF202121FF202121FF202121FF1E1F
                1FF2000000261E1E1E431F2020FE202121FF202121FF202121FF202121FF2021
                21FF212323FF222424FF242626FF252727FF272828FF282929FF292A2AFF292A
                2AFF292A2AFF292A2AFF292A2AFF282929FF272929FF262828FF252727FF2325
                25FF222323FF212222FF202121FF202121FF202121FF202121FF202121FF1F20
                20F5000000291F1F1F49202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF212222FF212323FF232525FF242626FF252626FF252727FF2627
                27FF262828FF262828FF262828FF252727FF242626FF232525FF222424FF2123
                23FF202222FF202121FF202121FF202121FF202121FF202121FF202121FF1E1F
                1FF80000002C1F1F1F501F2020FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF212222FF212323FF222424FF222424FF2325
                25FF232525FF232525FF232525FF222424FF222424FF212323FF212222FF2021
                21FF202121FF202121FF1F2020FF1F2020FF202121FF202121FF202121FF1F20
                20FC000000311F1F1F58202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202222FF212222FF2122
                22FF212222FF212222FF212222FF202222FF202121FF202121FF1F2020FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FE040004381F1F1F621F2020FF202020FF202121FF202121FF202121FF2021
                21FF202121FF1F2020FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FE070307411E20206D202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF1F2020FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FE0909094F1E20207D202121FF1F2020FF202121FF1F2020FF202121FF2021
                21FF202121FF202121FF1F2121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FE0D0D0D5C1F21218A202121FE1F2020FF202121FF202121FF202121FF2021
                21FF202020FF1F2020FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF202121FF202121FF2021
                21FF202121FF202121FF202121FF202121FF202121FF1F2020FF202121FF2021
                21FE1818184A343434223133338C2C2E2ECD2A2B2BFF292A2AFF292A2AFF292A
                2AFF2B2C2CFF2D2E2EFF303131FF343535FF383939FF3D3F3FFF434444FF494A
                4AFF494A4AFF434444FF3C3D3DFF373838FF313232FF2C2E2EFF282929FF2526
                26FF222424FF212323FF212222FF212222FF202121FF202121FE1C1D1DAD1E20
                207C0000000500000000000000001E20208E202121FF202222FF292A2AFF3436
                36FF2D2E2EFF343435FF363636FF3D3E3EFF3A3B3BFF313232FF2C2D2DFF2D2E
                2EFF2E2F2FFF2D2E2EFF2C2D2DFF2B2C2CFF2A2B2BFF282929FF262727FF2526
                26FF232525FF222424FF212323FF202222FF202121FF202121FE141414250000
                00000000000000000000000000001E20208E202121FF202222FF2F3030FF4142
                42FF2F2F30FF434344FF424243FF393A3AFF4A4B4BFF3B3C3CFF2A2B2BFF2A2B
                2BFC262727863437375C3D3D3D5B4646465B4B4B4B5B5454545B5959595B5454
                545B4B4B4B5B4343435B3A3A3A5B3232325B2A2A2A5B28282846000000000000
                000000000000000000000000000026292957272828E22B2C2CE42E3030E43334
                34E4363939E43A3B3BE4373939E4363636E4343535E4313232E42E3030E42F2F
                2FB2000000070000000000000000000000000000000000000000000000000000
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
              OnClick = BtSubMenu1Click
              ExplicitLeft = 100
              ExplicitTop = 20
              ExplicitWidth = 25
              ExplicitHeight = 25
            end
          end
          object PnlSubmenu2: TJvPanel
            Left = 150
            Top = 0
            Width = 150
            Height = 32
            Transparent = True
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object BtSubMenu2: TJvSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 32
              Cursor = crHandPoint
              Align = alClient
              Caption = 'TALH'#213'ES'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clCream
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Glyph.Data = {
                42100000424D4210000000000000420000002800000020000000200000000100
                20000300000000100000983A0000983A000000000000000000000000FF0000FF
                0000FF0000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000006DF6EF0969F0E93C4DD0C64867EEE7446CF5EE446CF4ED446CF4
                ED446CF4ED446DF5EE4457DCD34656DBD2466DF5EF446CF4ED446CF4ED446CF4
                ED446CF4ED446DF5EE445FE5DC4550D4CA466CF5EE446CF4ED446CF4ED446CF4
                ED446CF4ED446CF5EE444FD3C9475DE3DA456DF5EE446CF4ED446CF4ED446CF4
                ED406CF4ED116CF4EE216BF3ECD94ED1C7FA60E6DEF86DF5EEF86CF4EDF86CF4
                EDF86CF4EDF86DF5EEF85EE4DBF850D4CAF86CF4EDF86CF4EDF86CF4EDF86CF4
                EDF86CF4EDF86DF5EEF865EBE4F84CD0C5F869F1EAF86CF4EDF86CF4EDF86CF4
                EDF86CF4EDF86DF5EEF855DAD1F856DBD1F86DF5EEF86CF4EDF86CF4EDF86CF4
                EDE96CF4ED3F6CF4ED226DF5EEDF58DDD4FF54D9CFFF6DF5EFFF63EAE2FF59DE
                D5FF58DDD4FF5FE5DDFF69F0E9FF4CCFC5FF66EDE5FF6DF5EEFF5EE4DCFF5DE3
                DAFF59DED5FF5FE5DDFF6CF4EDFF4ED1C7FF60E6DEFF6DF5EEFF5FE5DDFF57DC
                D3FF5EE4DCFF60E6DEFF63EAE2FF4DD0C7FF69F1EAFF5CE2D9FF5AE0D7FF68EF
                E8F06DF5EE416CF4ED226CF5EEDF65EBE4FF4CD0C6FF6AF2EBFF55DAD1FF50D4
                CAFF4DD1C7FF5DE3DBFF6DF5EEFF51D5CCFF5AE0D7FF6CF4EDFF4FD3C9FF52D6
                CDFF52D6CDFF55DAD1FF6CF4EDFF58DDD4FF54D8CFFF6CF4EDFF56DBD1FF52D6
                CCFF54D8CFFF50D4CBFF69F0E9FF4DD0C6FF5FE4DCFF4FD3C9FF4DD0C6FF60E6
                DEF06FF7F1416CF4EE226CF5EEDF6CF4EDFF4ED1C8FF60E6DEFF5FE6DDFF5EE3
                DBFF56DAD1FF6DF5EEFF6DF5EEFF5FE5DDFF50D4CAFF61E8E0FF55D9D0FF66ED
                E6FF68F0E8FF6AF2EBFF6CF5EEFF66EDE5FF4CD0C5FF69F1E9FF6BF3ECFF69F0
                E9FF67EEE7FF55DAD1FF60E6DEFF58DCD3FF51D5CCFF5BE1D8FF66EDE5FF69F1
                EAF06DF5EE4165ECE42265ECE4DF66EDE5FF52D7CDFF50D4CAFF66EDE5FF63E9
                E1FF60E7DFFF65ECE4FF65ECE4FF62E8E0FF48CBC1FF5DE3DAFF63EAE2FF65EC
                E5FF65ECE5FF65ECE5FF65ECE4FF64EBE3FF4ACCC2FF5ADFD7FF65ECE5FF65EC
                E4FF65ECE5FF63EAE2FF63EAE2FF5DE2DAFF49CCC2FF63EAE2FF65ECE5FF65EC
                E4F165ECE44153D7CD2253D7CDDF53D7CEFF52D5CCFF50D3C9FF53D7CDFF47C9
                BEFF4ED1C7FF53D7CDFF53D7CDFF53D7CEFF50D3C9FF52D6CCFF53D7CEFF53D7
                CEFF4ACDC3FF49CCC2FF53D7CEFF53D7CDFF4FD3C9FF51D5CBFF53D7CEFF53D7
                CEFF53D7CEFF4CCFC4FF49CBC1FF52D7CDFF4FD2C8FF53D7CDFF53D7CEFF53D7
                CDF253D8CE436CF4ED226BF3EBDF5FE5DDFF5FE5DDFF5DE3DBFF67EEE7FF53D7
                CEFF58DDD4FF6DF5EEFF69F0E9FF5EE4DBFF60E6DEFF60E6DEFF67EEE7FF6DF5
                EEFF5FE5DDFF4ED2C8FF6BF3ECFF6CF4EDFF6AF1EAFF60E6DEFF60E7DFFF5DE3
                DAFF69F0E9FF62E9E1FF4DD0C7FF6BF2EBFF6BF3EBFF5EE4DCFF5EE4DCFF6AF2
                EBF06CF4ED416DF5EF2268F0E9DF52D6CCFF50D4CAFF50D3CAFF62E9E1FF61E7
                DFFF4ED2C8FF6CF4EDFF60E6DEFF4ED1C7FF54D9D0FF59DED5FF56DBD2FF6CF4
                EDFF6AF1EAFF4CCFC5FF64EBE3FF6DF5EEFF62E8E0FF51D4CBFF51D5CCFF53D8
                CEFF65ECE4FF6BF3ECFF4DD0C6FF62E9E1FF65ECE4FF51D5CBFF4ED2C8FF69F0
                E9F06DF5EE416DF5EE226BF3ECDF67EEE7FF61E7DFFF55DAD1FF6CF4EDFF6AF2
                EBFF4CD0C6FF64EBE3FF5BE0D8FF5FE5DDFF6AF2EBFF6BF3ECFF66EDE5FF6CF4
                EDFF6DF5EEFF53D7CEFF58DDD4FF6DF6EFFF62E9E1FF60E6DEFF63E9E1FF6BF3
                EBFF6CF4EDFF6DF5EEFF56DBD2FF56DBD2FF6CF4EDFF66EDE5FF58DED5FF6BF3
                ECF06CF5EE4169EEE82268EDE7DE68EDE6FF68EDE6FF65EAE3FF67EDE6FF68EE
                E7FF51D3CAFF55D8CFFF67ECE6FF67ECE6FF69EEE7FF6AF0E8FF6AF0E9FF6AF0
                E8FF6AF0E9FF5EE3DAFF4ED0C6FF69EFE7FF69EFE8FF68EDE7FF68EDE6FF68ED
                E6FF68EDE6FF68EDE7FF5FE3DBFF4BCCC3FF66EBE4FF68EDE6FF67ECE5FF67EC
                E5F264E6E0442E8B872D31918CE432928DFF32928DFF32928DFF32928DFF3292
                8DFF2E8E89FF2D8C87FF32938EFF3EA49BFF49B5A8FF4BB8ABFF4CB8ABFF4CB8
                ABFF4CB8ABFF4AB7AAFF45B1A3FF4BB8AAFF4BB8AAFF45AEA3FF369992FF3191
                8CFF31918DFF32928DFF31918CFF2C8B86FF31918CFF32928DFF32928DFF3292
                8DEB3495913821767239217571EC217571FF217571FF217571FF217571FF2175
                71FF267D78FF267D77FF318D84FF41A596FF43A798FF42A798FF42A798FF42A7
                98FF42A798FF43A798FF43A798FF43A798FF43A798FF43A798FF3B9D90FF2E89
                81FF257B75FF217571FF217571FF217672FF217571FF217571FF217571FF2175
                71AA1F716D0E2277731B227773D3227773FF227773FF237874FF29827BFF308B
                83FF3FA294FF40A395FF43A799FF43A899FF43A899FF42A798FF43A899FF44A9
                9BFF43A899FF42A798FF43A898FF43A899FF43A899FF43A899FF43A899FF43A8
                99FF3A9B8FFF28807AF7227773E7227773FB227773FF227773FF227773F82277
                7346227773000000000023797485227773FF217672FF29817BFF40A395FF43A8
                99FF43A899FF43A899FF43A899FF43A899FF45AA9CFF50B5B0FF59BFC2FF5DC3
                C9FF59BEC1FF51B7B3FF48AEA3FF43A899FF42A798FF43A898FF43A899FF43A8
                99FF43A899E53D9F926921767229227773AC227773FF227773FF227773DD2277
                73282277730038988C0037978C33328F86ED308C83FF3B9C90FF43A899FF43A8
                99FF43A899FF43A899FF43A899FF45AA9DFF59BEC1FF66CCD8FF67CDDAF467CD
                DAD367CDDACD66CCD9EF62C8D2FF58BDBFFF4DB3ACFF48ADA2FF47ADA1FF45AA
                9DCF43A8994543A89900257B76002277731B2277737E22777397227773472578
                75002277730045AA9B0045AA9B0B43A999BC43A899FF43A899FF43A899FF43A8
                99FF43A899FF43A899FF44A99BFF57BCBDFF66CCD9FF66CCD9BE66CCD94B66CC
                D91566CCD91166CCD93767CDDA8367CDDAC565CBD7E261C7D1D55FC4CC9357BC
                BD2565CAD60043A8990000000000000000000000000000000000000000000000
                00000000000043A89A0043A8990043A8996F43A899FE43A899FF43A899FF43A8
                99FF43A899FF43A899FF52B8B5FF65CBD7FF66CCD9B066CCD91B66CCD9000000
                00000000000066CBD90066CBD90066CCD90F67CDDA1F69CFDE1671D7EA036ED4
                E700000000000000000000000000000000000000000000000000000000000000
                0000000000000000000043A8990043A8991B43A899CC43A899FF43A899FF43A8
                99FF43A898FF4FB5AFFF64CAD5FF66CCDAAF66CCD91B66CCD900000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000044A7990043A8990043A8995A43A899F243A899FF45AA
                9CFF50B6B1FF63C8D3FF66CCDAAE66CCD91B66CCD90000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000043A899003CA18C054AAFA66053B9B7C65BC1
                C5E265CBD7D766CDDA8866CCD91866CCD9000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000086E2FA00000000006ED4E7106AD0
                E01F67CDDB1766CBD80366CCD900000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000734FF700734FF701734F
                F723734FF75A734FF74E734FF715734FF700734FF70000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700754EF700734FF757734F
                F7DB734FF7FD734FF7FA734FF7C2734FF733734FF7006D49EA00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700734FF729734FF7DE734F
                F7FF734FF7FF734FF7FF734FF7FF734FF7B6734FF70D734FF700000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700734FF763734FF7FF734F
                F7FF734FF7FF734FF7FF734FF7FF734FF7EF734FF735734FF700000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700734FF761734FF7FF734F
                F7FF734FF7FF734FF7FF734FF7FF734FF7EE734FF733734FF700000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700734FF727734FF7DA734F
                F7FF734FF7FF734FF7FF734FF7FF734FF7AE734FF70A734FF700000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000734FF700714FF500734FF74F734F
                F7D2734FF7F7734FF7F4734FF7B8734FF72C734FF70000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000734FF700734FF600734F
                F71B734FF73E734FF739734FF710734FF7000000000000000000000000000000
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
              OnClick = BtSubMenu2Click
              ExplicitLeft = 100
              ExplicitTop = 20
              ExplicitWidth = 25
              ExplicitHeight = 25
            end
          end
        end
        inherited PnlFundoCampos: TJvPanel
          inherited PnlFundoCamposInterno: TJvPanel
            object CrdPnlSubMenu: TCardPanel
              Left = 1
              Top = 1
              Width = 1012
              Height = 651
              Align = alClient
              ActiveCard = CrdAddTalhao
              Caption = 'CrdPnlSubMenu'
              TabOrder = 0
              object CrdCadastroBase: TCard
                Left = 1
                Top = 1
                Width = 1010
                Height = 649
                Caption = 'CadastroBase'
                CardIndex = 0
                TabOrder = 0
                object PnlCampo1: TJvPanel
                  Left = 20
                  Top = 10
                  Width = 300
                  Height = 46
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 0
                  object LbCampo1: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    Caption = 'NOME DA PROPRIEDADE RURAL'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clRed
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 200
                  end
                  object LineCampo1: TJvGradient
                    Left = 0
                    Top = 44
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
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
                    Hint = 'pr_nomeResumido'
                    Align = alTop
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
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
                object PnlCampo2: TJvPanel
                  Left = 400
                  Top = 10
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object LbCampo2: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    Caption = 'DATA DE AQUISI'#199#195'O'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 129
                  end
                  object LineCampo2: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo2_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object DtCampo2: TCalendarPicker
                    Tag = 2
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Cursor = crHandPoint
                    Hint = 'pr_dtcompra'
                    Align = alTop
                    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
                    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
                    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
                    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
                    CalendarHeaderInfo.DaysOfWeekFont.Style = []
                    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
                    CalendarHeaderInfo.Font.Color = clWindowText
                    CalendarHeaderInfo.Font.Height = -20
                    CalendarHeaderInfo.Font.Name = 'Segoe UI'
                    CalendarHeaderInfo.Font.Style = []
                    Color = clWindow
                    FirstDayOfWeek = dwMonday
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGray
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    HighlightToday = False
                    MinYear = 1900
                    OnChange = DtCampo2Change
                    ParentFont = False
                    ShowFirstOfGroupLabel = True
                    TabOrder = 0
                    TabStop = False
                    TextHint = 'Seleciona a Data'
                    TodayColor = 8421440
                  end
                end
                object PnlCampo3: TJvPanel
                  Left = 20
                  Top = 65
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 2
                  object LbCampo3: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    Caption = #193'REA TOTAL DA PROPRIEDADE(HA)'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 222
                  end
                  object LineCampo3: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo3_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CalCampo3: TJvCalcEdit
                    Tag = 3
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Hint = 'pr_areaTotal'
                    Align = alTop
                    BorderStyle = bsNone
                    DecimalPlaces = 6
                    DisplayFormat = ',0.######'
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                    OnExit = CalCampo3Exit
                  end
                end
                object PnlCampo4: TJvPanel
                  Left = 400
                  Top = 65
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 3
                  object LbCampo4: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    Caption = #193'REA TOTAL AGRICULT'#193'VEL(HA)'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 201
                  end
                  object LineCampo4: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo4_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CalCampo4: TJvCalcEdit
                    Tag = 4
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Hint = 'pr_areaAgricultavel'
                    Align = alTop
                    BorderStyle = bsNone
                    DecimalPlaces = 6
                    DisplayFormat = ',0.######'
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                    OnExit = CalCampo4Exit
                  end
                end
                object PnlCampo5: TJvPanel
                  Left = 20
                  Top = 120
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 4
                  object LbCampo5: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    BiDiMode = bdRightToLeftNoAlign
                    Caption = 'N'#218'MERO DA MATR'#205'CULA'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentBiDiMode = False
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 156
                  end
                  object LineCampo5: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo5_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CalCampo5: TJvCalcEdit
                    Tag = 5
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Hint = 'pr_numMatricula'
                    Align = alTop
                    BorderStyle = bsNone
                    DecimalPlaces = 0
                    DisplayFormat = '0'
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                  end
                end
                object PnlCampo6: TJvPanel
                  Left = 400
                  Top = 120
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 5
                  object LbCampo6: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    BiDiMode = bdRightToLeftNoAlign
                    Caption = 'C'#211'DIGO DO INCRA'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentBiDiMode = False
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 118
                  end
                  object lineCampo6: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo6_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CalCampo6: TJvCalcEdit
                    Tag = 6
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Hint = 'pr_codigoIncra'
                    Align = alTop
                    BorderStyle = bsNone
                    DecimalPlaces = 0
                    DisplayFormat = '0'
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                  end
                end
                object PnlCampo7: TJvPanel
                  Left = 20
                  Top = 175
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 6
                  object LbCampo7: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    BiDiMode = bdRightToLeftNoAlign
                    Caption = 'C'#211'DIGO NA RECEITA FEDERAL'
                    Color = 4671041
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 15461355
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentBiDiMode = False
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    ExplicitWidth = 187
                  end
                  object LineCampo7: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCampo7_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CalCampo7: TJvCalcEdit
                    Tag = 7
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Hint = 'pr_numReceitaFederal'
                    Align = alTop
                    BorderStyle = bsNone
                    DecimalPlaces = 0
                    DisplayFormat = '0'
                    ShowButton = False
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                  end
                end
                object PnlCampo8: TJvPanel
                  Left = 20
                  Top = 230
                  Width = 680
                  Height = 125
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 7
                  object LbCampo8: TLabel
                    Left = 0
                    Top = 0
                    Width = 680
                    Height = 17
                    Align = alTop
                    Caption = 'OBSERVA'#199#195'O'
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
                    ExplicitWidth = 84
                  end
                  object LineCampo8: TJvGradient
                    Left = 0
                    Top = 123
                    Width = 680
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                    ExplicitWidth = 300
                  end
                  object LineCampo8_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 680
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                    ExplicitWidth = 300
                  end
                  object MmCampo8: TMemo
                    Tag = 8
                    Left = 0
                    Top = 22
                    Width = 680
                    Height = 101
                    Hint = 'pr_observacao'
                    Align = alClient
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    Lines.Strings = (
                      '')
                    TabOrder = 0
                  end
                end
              end
              object CrdAddTalhao: TCard
                Left = 1
                Top = 1
                Width = 1010
                Height = 649
                Caption = 'CrdAddTalhao'
                CardIndex = 1
                TabOrder = 1
                object PnlCbbTalhao: TJvPanel
                  Left = 20
                  Top = 10
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 0
                  object LbCbbTalhao: TLabel
                    Left = 0
                    Top = 0
                    Width = 300
                    Height = 17
                    Align = alTop
                    Caption = 'SELECIONE O TALH'#195'O'
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
                    ExplicitWidth = 137
                  end
                  object LineCbbTalhao: TJvGradient
                    Left = 0
                    Top = 45
                    Width = 300
                    Height = 2
                    Align = alBottom
                    StartColor = 13738918
                    EndColor = 13738918
                    ExplicitTop = 53
                  end
                  object LineCbbTalhao_1: TJvGradient
                    Left = 0
                    Top = 17
                    Width = 300
                    Height = 5
                    Align = alTop
                    StartColor = clWhite
                    EndColor = clWhite
                    ExplicitTop = 25
                  end
                  object CbbTalhao: TJvComboBox
                    Left = 0
                    Top = 22
                    Width = 300
                    Height = 23
                    Align = alClient
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    Style = csDropDownList
                    CharCase = ecUpperCase
                    TabOrder = 0
                    Text = ''
                  end
                end
                object PnlBtsAddTalhao: TJvPanel
                  Left = 20
                  Top = 65
                  Width = 300
                  Height = 47
                  FlatBorderColor = clBtnHighlight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object BtRemoveTalhao: TJvSpeedButton
                    Left = 150
                    Top = 0
                    Width = 150
                    Height = 47
                    Cursor = crHandPoint
                    Align = alLeft
                    Caption = 'REMOVER'
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      42100000424D4210000000000000420000002800000020000000200000000100
                      20000300000000100000983A0000983A000000000000000000000000FF0000FF
                      0000FF0000000000000000000000000000000000000000000000000000000000
                      000000000000312D2D3E322E2EC4332F2FFA333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF332F2FFA322E
                      2EC4322D2D3D0000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000332F2F41332F2FFA322F2FB1312F2F5C3330305533303055333030553330
                      3055333030553330305533303055333030553330305533303055312F2F5C322F
                      2FB1322F2FF9312D2D3E00000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000332F2FCD333030AF00000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000332E2EAF323030C900000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000001F1F
                      1F08322F2FFD312E2E5300000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000312E2E53322F2FFD3319190A000000000000000000000000000000000000
                      000000000000000000000000000000000000000000000000000000000000332C
                      2C28333030FF2F2F2F3000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00002F2F2F30333030FF2F2F2F2B000000000000000000000000000000000000
                      000000000000000000000000000000000000000000000000000000000000302D
                      2D49333030FF3333330F00000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00003322220F333030FE322E2E4C000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000003230
                      306A322F2FEE0000000000000000F74F7B63F9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF94F7B630000
                      000000000000322F2FED312E2E6D000000000000000000000000000000000000
                      000000000000000000000000000000000000000000000000000000000000312F
                      2F8B332F2FCD0000000000000000F8507C7FF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF8507C7F0000
                      000000000000322F2FCC322E2E8E000000000000000000000000000000000000
                      000000000000000000000000000000000000000000000000000000000000322F
                      2FAC322F2FAC0000000000000000FA4E7D9BF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF84E7C9C0000
                      000000000000322F2FAB333030AF000000000000000000000000000000000000
                      000000000000000000000000000000000000000000000000000000000000322F
                      2FCE312F2F8B0000000000000000F84E7CB8F9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF94E7CB80000
                      0000000000003130308A322F2FD0000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000003230
                      30EF3230306A0000000000000000F84F7DD4F9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF84F7DD40000
                      000000000000332E2E69322F2FF1000000000000000000000000000000000000
                      00000000000000000000000000000000000000000000000000002D2D2D113330
                      30FF302D2D490000000000000000F94F7DF0F9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF84F7CF10000
                      000000000000312E2E48333030FF282828130000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000332D2D323330
                      30FF332C2C2800000000FF4E750DF9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFEC48
                      6D0E000000002D2D2D27333030FF312C2C340000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000312E2E53322F
                      2FFD1F1F1F0800000000F84E792AF9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFF84E
                      792A0000000024242407322F2FFD333030550000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000322E2E74322F
                      2FE50000000000000000F7507B46F9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFFB50
                      7B460000000000000000322E2EE4312F2F760000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000312F2F953230
                      30C40000000000000000F9507C62F9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFF74F
                      7B630000000000000000332F2FC3322F2F970000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000322F2FB6322E
                      2EA30000000000000000F84E7C7FF9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFF850
                      7C7F0000000000000000322F2FA1312F2FB80000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000332F2FD7332F
                      2F820000000000000000F84E7D9BF9507DFFF9507DFF0000000000000000F94E
                      7B55F9507DFFF9507DFFF94E7B550000000000000000F9507DFFF9507DFFFA4E
                      7D9B0000000000000000312F2F80322F2FDA0000000000000000000000000000
                      0000000000000000000000000000000000000000000000000001322F2FF7312F
                      2F61000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000003330305F322F2FF80000000200000000000000000000
                      000000000000000000000000000000000000000000003127271A333030FF2F2F
                      2F40000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000312D2D3E333030FF2B2B2B1D00000000000000000000
                      000000000000000000000000000000000000000000002F2F2F3B333030FF3129
                      291F000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000002B2B2B1D333030FF312D2D3E00000000000000000000
                      00000000000000000000000000000000000000000000312F2F6C332F2FF50000
                      0003000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000002322F2FF1322F2F7500000000000000000000
                      0000000000000000000000000000322F2F56312F2F7B322F2FF1332F2FC83330
                      3055333030553330305533303055333030553330305533303055333030553330
                      3055333030553330305533303055333030553330305533303055333030553330
                      3055333030553330305533303055322F2FC5322F2FF7312F2F85322F2F560000
                      0000000000000000000000000000333030FF333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF333030FF0000
                      0000000000000000000000000000333030FF3330305500000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000033303055333030FF0000
                      0000000000000000000000000000322F2FF83330305F00000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000000000003330305F322F2FF80000
                      0000000000000000000000000000322F2FB1332F2FDC3330305F333030553330
                      3055333030553330305533303055333030553330305533303055333030553330
                      3055333030553330305533303055333030553330305533303055333030553330
                      3055333030553330305533303055333030553330305F332F2FDC322F2FB20000
                      000000000000000000000000000030303015322F2FB1322F2FF8333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF333030FF333030FF333030FF3330
                      30FF333030FF333030FF333030FF333030FF322F2FF8322F2FB1303030150000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000033303055333030FF000000003130309A3330
                      30FF333030FF333030FF333030FF332F2F9B00000000333030FF333030550000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000312D2D4E333030FF3333330A3322220F312E
                      2E523330305533303055312E2E523322220F3319190A333030FF312D2D4E0000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000033262614322F2FF2322F2FAD322F2F563330
                      3055333030553330305533303055322F2F56322F2FAC322F2FF2332626140000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000322E2E42322F2FD5322F2FFD3330
                      30FF333030FF333030FF333030FF322F2FFD322F2FD5322E2E42000000000000
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
                    Transparent = True
                    ExplicitLeft = 0
                  end
                  object BtAddTalhao: TJvSpeedButton
                    Left = 0
                    Top = 0
                    Width = 150
                    Height = 47
                    Cursor = crHandPoint
                    Align = alLeft
                    Caption = 'ADICIONAR'
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
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
                    Transparent = True
                    OnClick = BtAddTalhaoClick
                    ExplicitLeft = 5
                  end
                end
                object PnlDbGridAddTalhao: TJvPanel
                  Left = 0
                  Top = 249
                  Width = 1010
                  Height = 400
                  Align = alBottom
                  BevelOuter = bvLowered
                  TabOrder = 2
                  object DbGridTalhao: TJvDBUltimGrid
                    Left = 1
                    Top = 1
                    Width = 1008
                    Height = 398
                    Align = alClient
                    TabOrder = 0
                    TitleFont.Charset = ANSI_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -12
                    TitleFont.Name = 'Segoe UI'
                    TitleFont.Style = []
                    AlternateRowColor = clHighlight
                    AlternateRowFontColor = clHighlightText
                    SelectColumnsDialogStrings.Caption = 'Select columns'
                    SelectColumnsDialogStrings.OK = '&OK'
                    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                    EditControls = <>
                    RowsHeight = 19
                    TitleRowHeight = 19
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited DsktpAlertSistema: TJvDesktopAlert
    StyleOptions.DisplayDuration = 6400
    HeaderText = 'GEST'#195'O RURAL 2.0'
    Image.Data = {
      055449636F6E0000010001002020000001002000A81000001600000028000000
      2000000040000000010020000000000000100000111700001117000000000000
      00000000CC804D0AC8874633C8874633C8874633C8874633C8874633C8874633
      C8874633C8874633C8874633C8874633C8874633C8874633C8874633C8874633
      C8874633C8874633C8874633C8874633C8874633C8874633C8874633C8874633
      C8874633C8874633C8874633C8874633C8874633C8874633C8874633C8874633
      CC804D0AC8874633CD9459F0D9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEB
      E5B785F1E8BA87F3DFB281EED9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEB
      E5B785F1E8BA87F3DFB281EED9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEBE2B583F0
      E8BA87F3E2B483F0D9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEBD9AD7CEBCD9458F0
      C8874633C8874633DBAE7DECFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDD5A9FFFDCC98FFFDE1C2FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDD4A8FFFDCC98FFFDE1C2FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEDCB8FF
      FDCC98FFFEDAB4FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633DFB281EEFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FED8B0FFFDCC98FFFDDEBCFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FED7ACFFFDCC98FFFDE0BFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFDDEBCFF
      FDCC98FFFED8B0FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633E5B785F1FEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDDEBCFFFDCC98FFFED9B2FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEDAB4FFFDCC98FFFEDCB8FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFDE1C0FF
      FDCC98FFFED7ADFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633E8BA87F3FEEAD3FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEE7CEFFFDCC98FFFDD2A3FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDE0BFFFFDCC98FFFED7AFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFDE3C4FF
      FDCC98FFFDD4A9FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633E8BA87F3FDDFBDFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DEFFFDD09FFFFDCC98FFFEEBD5FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDE7CCFFFDCC98FFFDCFA0FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEE8CEFF
      FDCC98FFFDD0A1FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633E6B885F1FDD4A7FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEDAB4FFFDCC98FFFDE1C1FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEEFDCFFFDCD99FFFDCC98FFFEEBD5FFFEF0DFFFFEF0DFFFFEF0DFFFFEEEDBFF
      FDCC98FFFDCC99FFFEEFDCFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633E0B381EEFDCC98FFFEEAD2FFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEE9D2FFFDCC98FFFDD4A8FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFED6ABFFFDCC98FFFDE3C4FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FDD0A0FFFDCC98FFFEEAD3FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7DEBFDD2A4FFFED9B1FFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEF0DFFFFED7AEFFFDCC98FFFEE8CFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFDE3C4FFFDCC98FFFED9B1FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FED7AEFFFDCC98FFFDE4C7FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFDE1C0FFFDCD99FFFEEAD5FFFEF0DFFFFEF0DFFF
      FEF0DFFFFEF0DFFFFEE9D1FFFDCC98FFFED7AFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEEEDDFFFDCF9EFFFDCE9AFFFEEDD9FFFEF0DFFFFEF0DFFFFEF0DFFF
      FDE1C1FFFDCC98FFFEDCB6FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEEFDDFFFDD1A2FFFED6ABFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEF0DFFFFEF0DFFFFEDAB4FFFDCC99FFFEE8D0FFFEF0DFFFFEF0DFFF
      FEF0DFFFFEF0DFFFFEDEBBFFFDCC98FFFDE0BFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEEBD6FFFDCC98FFFDD3A5FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEF0DFFFFDE5CBFFFDCC98FFFDE3C4FFFEF0DFFF
      FEF0DFFFFEF0DFFFFEF0DFFFFEEEDBFFFDD0A0FFFDD2A5FFFEEFDDFFFEF0DFFF
      FEF0DFFFFEF0DFFFFEECD8FFFDCD9BFFFDD2A3FFFEEFDEFFFEF0DFFFFEF0DFFF
      FEF0DFFFFDD2A4FFFDCC99FFFEEEDAFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEF0DFFFFEF0DFFFFEDBB7FFFDCE9DFFFEECD6FF
      FEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFDE6CBFFFDCC99FFFDDFBEFFFEF0DFFF
      FEF0DFFFFEF0DFFFFEF0DFFFFDE0BFFFFDCC98FFFDE3C4FFFEF0DFFFFEF0DFFF
      FEF0DFFFFDDFBEFFFDCC98FFFDE3C5FFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEF0DFFFFEF0DFFFFEEFDEFFFDD4A8FFFDD3A6FF
      FEEFDCFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFDDEBCFFFDCD9AFFFEE8D0FF
      FEF0DFFFFEF0DFFFFEF0DFFFFEEFDEFFFDD2A4FFFDCFA0FFFEEFDCFFFEF0DFFF
      FEF0DFFFFEEDD9FFFDCD99FFFED7ACFFFEF0DFFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEF0DFFFFEF0DFFFFEF0DFFFFEEDD9FFFDD2A2FF
      FED9B1FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFED8B0FFFDD0A0FF
      FEEDDAFFFEF0DFFFFEF0DFFFFEF0DFFFFEE8D0FFFDCD99FFFEDEBBFFFEF0DFFF
      FEF0DFFFFEF0DFFFFED9B1FFFDCD99FFFEEDDAFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D9AD7CEBFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEECD6FF
      FDD0A1FFFEDBB6FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEEFDCFFFDD4A9FF
      FDD5A9FFFEEFDCFFFEF0DFFFFEF0DFFFFEF0DFFFFDE0C1FFFDCD99FFFEE8CFFF
      FEF0DFFFFEF0DFFFFEEAD3FFFDCD99FFFDDFBDFFFEF0DFFFFEF0DFFFD9AD7CEB
      C8874633C8874633D4A16BEFFBEAD6FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEECD6FFFDD1A2FFFEDCB8FFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEEEDCFF
      FDD4A7FFFED6ADFFFEEFDDFFFEF0DFFFFEF0DFFFFEF0DFFFFED9B1FFFDD1A2FF
      FEEEDBFFFEF0DFFFFEF0DFFFFED9B2FFFDD09FFFFEEFDEFFFEF0DFFFD9AD7CEB
      C8874633BF804008C9904F77CB9052E6D9AA77EDEED2B3FFFCEDDAFFFEF0DFFF
      FEF0DFFFFEEDDAFFFDD5A9FFFED9B3FFFEEFDDFFFEF0DFFFFEF0DFFFFEF0DFFF
      FEEEDBFFFDD4A9FFFED8B0FFFEEFDEFFFEF0DFFFFEF0DFFFFEEFDEFFFED7ACFF
      FED6ACFFFEEFDDFFFEF0DFFFFEECD7FFFDCD9BFFFDE2C3FFFEF0DFFFD9AD7CEB
      C887463300000000BF804004CA904FC1CB9052E7CD9154F8D19B62FFD6A470FF
      E3BC92FFEED2B3FFFAE7D3FFFEDBB5FFFED6ACFFFEEDDAFFFEF0DFFFFEF0DFFF
      FEF0DFFFFEEEDDFFFED8B0FFFED7ADFFFEEFDCFFFEF0DFFFFEF0DFFFFEEFDCFF
      FED6ACFFFEDAB4FFFEF0DEFFFEF0DFFFFDE1C0FFFDD0A0FFFEEFDCFFD9AD7CEB
      C88746330000000000000000CA8F5079E3BC95F5FEF0DFFFFEF0DFFFF9E5CDFF
      ECC59AFFE2B17FFFD7A16BFFD0995FFFDFAD79FFE7BB8CFFE6C39DFFECCFAFFF
      F2DABFFFF9E5D0FFFEF0DEFFFDDFBDFFFDD5A8FFFEEDD7FFFEF0DFFFFEF0DFFF
      FEEFDDFFFEDBB5FFFED9B1FFFEEFDDFFFEF0DFFFFED6ADFFFEDCB8FFD9AD7CEB
      C88746330000000000000000C880490ECD9459ECFEF0DFFFFEEFDEFFFEDFBDFF
      FEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFF9DFC1FFF2D9BEFFE2BB93FFCC9253DC
      CD9357AFCC9357CFCD9357E0CD9559E4D59D65EBD8A169EDD4A06BE8D8A876EA
      DDB082EDDFB589EFEABE8FF5E9C095F7E3BD95F6E4BE95F7F4CA9DFED49F67F4
      C887463300000000C68A493FCC9156DFE8C7A2F5FEF0DFFFFEEBD4FFFEDCB6FF
      FEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDFBCFFFEF0DFFFFCECD9FFD5A16DED
      CD9355ACC68E4712000000000000000000000000BF804008C489451AC6884A2D
      C8894938C7874744C7874744C6874748C6874855C6874855C6874859C8874666
      CC8C4D14D5805506CB8E52ACD29E67F1F8E5CFFFFEF0DFFFFEE9D2FFFEDCB6FF
      FEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEDDB9FFFEF0DFFFFEF0DFFFEED0B0FC
      CA8F51F0C8874753000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C8894A45D19B61ECFEF0DFFFFEEEDAFFFEDCB8FF
      FEDCB6FFFEDCB6FFFEDCB6FFFEDCB6FFFEE3C4FFFEF0DFFFF4DEC5FFCC9053D6
      C286491500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C688463AD5A36FEBFEF0DFFFFEF0DFFFFEE8D1FF
      FEDCB8FFFEDCB6FFFEDCB6FFFEDFBDFFFEEEDBFFFEF0DFFFF8E4CEFFCC9256DC
      FF80800200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CB8F51CDD4A16BF1DEB486F1FCEDDAFFFEF0DFFF
      FEEEDAFFFEE9D2FFFEEBD4FFFEEFDEFFFEF0DFFFF1D9BDFEDAAD7DEBCC9154F5
      C789495B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000BF804004C8874633C8874633CA8B4E7DDEB486F1FEF0DFFF
      FEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFFEF0DFFFCC9053EEC888483CC8874633
      CB87442200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000C8874633D4A16BF1D6A36FEC
      D19B62ECF8E5CFFFE8C7A2F5CC9358EDE3BD94F5CC9255E00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000C8874633CB8F51CDC688463A
      C8894A45D29E68F1CC9156DFC880490ECA915178CA8F4FC10000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF8040040000000000000000
      00000000CB8E52ACC68A493F0000000000000000BF8040040000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000D5805506000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000C0000000C000000080007000
      00007FFFC000FFFFC000FFFFC000FFFF8000FFFFF007FFFFF007FFFFF737FFFF
      FF7FFFFF}
  end
end
