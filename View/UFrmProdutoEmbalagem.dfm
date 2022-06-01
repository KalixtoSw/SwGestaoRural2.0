inherited FrmProdutoEmbalagem: TFrmProdutoEmbalagem
  Caption = 'FrmProdutoEmbalagem'
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
                Expanded = False
                FieldName = 'prde_descricao'
                Title.Alignment = taCenter
                Title.Caption = 'EMBALAGEM'
                Width = 250
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'prde_unimedida'
                Title.Alignment = taCenter
                Title.Caption = 'UN MEDIDA'
                Width = 120
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'prde_conversor'
                Title.Alignment = taCenter
                Title.Caption = 'CONVERSOR'
                Width = 120
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'prde_qtdereferencial'
                Title.Alignment = taCenter
                Title.Caption = 'REFERENCIAL'
                Width = 120
                Visible = True
              end>
          end
        end
      end
      inherited CrdCampos: TCard
        inherited PnlFundoCampos: TJvPanel
          inherited PnlFundoCamposInterno: TJvPanel
            Left = 0
            ExplicitLeft = 0
            object PnlCampo2: TJvPanel
              Left = 15
              Top = 93
              Width = 300
              Height = 40
              BevelOuter = bvNone
              Color = 14067595
              ParentBackground = False
              TabOrder = 1
              object LbCampo2: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 15
                Align = alTop
                Caption = 'UNIDADE DE MEDIDA'
                Color = 4671041
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                ExplicitWidth = 122
              end
              object CbbCampo2: TJvComboBox
                Tag = 2
                Left = 0
                Top = 15
                Width = 300
                Height = 23
                Hint = 'prde_unimedida'
                Align = alTop
                Style = csDropDownList
                TabOrder = 0
                Text = 'BALDE'
                Items.Strings = (
                  'AMPOLA'
                  'BALDE'
                  'BANDEJ'
                  'BARRA'
                  'BISNAG'
                  'BLOCO'
                  'BOBINA'
                  'CM'
                  'CX'
                  'CX2'
                  'CX3'
                  'CX5'
                  'CX10'
                  'CX15'
                  'CX20'
                  'CX25'
                  'CX50'
                  'CX100'
                  'DUZIA'
                  'EMBAL'
                  'FARDO'
                  'FRASCO'
                  'GALAO'
                  'GF'
                  'GRAMAS'
                  'KG'
                  'LITRO'
                  'M'
                  'M2'
                  'M3'
                  'MILHEI'
                  'PALETE'
                  'SACO'
                  'TANQUE'
                  'TON')
                ItemIndex = 1
              end
            end
            object PnlCampo3: TJvPanel
              Left = 15
              Top = 166
              Width = 166
              Height = 40
              BevelOuter = bvNone
              Color = 14067595
              ParentBackground = False
              TabOrder = 2
              object LbCampo3: TLabel
                Left = 0
                Top = 0
                Width = 166
                Height = 15
                Align = alTop
                Caption = 'CONVERSOR'
                Color = 4671041
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                ExplicitWidth = 71
              end
              object EdtCampo3: TJvCalcEdit
                Tag = 3
                Left = 0
                Top = 15
                Width = 166
                Height = 21
                Hint = 'prde_conversor'
                BevelInner = bvNone
                BevelOuter = bvNone
                Flat = True
                ParentFlat = False
                Align = alTop
                Alignment = taCenter
                BorderStyle = bsNone
                TabOrder = 0
                Value = 1.000000000000000000
                DecimalPlacesAlwaysShown = False
              end
            end
            object PnlCampo4: TJvPanel
              Left = 15
              Top = 240
              Width = 166
              Height = 40
              BevelOuter = bvNone
              Color = 14067595
              ParentBackground = False
              TabOrder = 3
              object LbCampo4: TLabel
                Left = 0
                Top = 0
                Width = 166
                Height = 15
                Align = alTop
                Caption = 'QUANTIDADE REFERENCIAL'
                Color = 4671041
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                ExplicitWidth = 155
              end
              object EdtCampo4: TJvCalcEdit
                Tag = 4
                Left = 0
                Top = 15
                Width = 166
                Height = 21
                Hint = 'prde_qtdereferencial'
                BevelInner = bvNone
                BevelOuter = bvNone
                Flat = True
                ParentFlat = False
                Align = alTop
                Alignment = taCenter
                BorderStyle = bsNone
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object PnlCampo1: TJvPanel
              Left = 15
              Top = 20
              Width = 300
              Height = 40
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              Color = 14067595
              ParentBackground = False
              TabOrder = 0
              object LbCampo1: TLabel
                Left = 0
                Top = 0
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'EMBALAGEM DE PRODUTO'
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
                ExplicitWidth = 168
              end
              object ObrEdtCampo1: TMaskEdit
                Tag = 1
                Left = 0
                Top = 17
                Width = 300
                Height = 22
                Hint = 'prde_descricao'
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
