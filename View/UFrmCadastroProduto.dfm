inherited FrmCadastroProduto: TFrmCadastroProduto
  Caption = 'FrmCadastroProduto'
  OnClose = FormClose
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
                Expanded = False
                FieldName = 'prd_nome'
                Title.Alignment = taCenter
                Title.Caption = 'PRODUTO'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prd_tipo'
                Title.Alignment = taCenter
                Title.Caption = 'TIPO'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'prd_fabricante'
                Title.Alignment = taCenter
                Title.Caption = 'FABRICANTE'
                Width = 200
                Visible = True
              end>
          end
        end
      end
      inherited CrdCampos: TCard
        inherited PnlFundoCampos: TJvPanel
          inherited PnlFundoCamposInterno: TJvPanel
            object PnlCampo1: TJvPanel
              Left = 20
              Top = 10
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 0
              object LbCampo1: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'PRODUTO'
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
                ExplicitWidth = 63
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
                Hint = 'prd_nome'
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
            object PnlCampo2: TJvPanel
              Left = 20
              Top = 85
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 1
              object LbCampo2: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'CATEGORIA DE PRODUTO'
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
                ExplicitWidth = 159
              end
              object LineCampo2: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
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
              object CbbCampo2: TComboBox
                Tag = 2
                Left = 0
                Top = 22
                Width = 300
                Height = 23
                Hint = 'prd_tipo'
                Align = alTop
                Style = csDropDownList
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                Items.Strings = (
                  'SEMENTE'
                  'FUNGICIDA'
                  'INSETICIDA'
                  'HERBICIDA'
                  'INSUMO'
                  'PE'#199'A')
              end
            end
            object PnlCampo3: TJvPanel
              Left = 20
              Top = 165
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 2
              object LbCampo3: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'FABRICANTE'
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
                ExplicitWidth = 77
              end
              object LineCampo3: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
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
              object EdtCampo3: TMaskEdit
                Tag = 3
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'prd_fabricante'
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
