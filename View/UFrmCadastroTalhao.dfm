inherited FrmCadastroTalhao: TFrmCadastroTalhao
  Caption = 'FrmCadastroTalhao'
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TJvPanel
    inherited CrdPnlPrincipal: TCardPanel
      ActiveCard = CrdCampos
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
            OnTitleClick = DbGridTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'tbl_descricao'
                Title.Alignment = taCenter
                Title.Caption = 'NOME DO TALH'#195'O'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tbl_TipoTalhao'
                Title.Alignment = taCenter
                Title.Caption = 'TIPO DO TALH'#195'O'
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'tbl_latitude'
                Title.Alignment = taCenter
                Title.Caption = 'LATITUDE'
                Width = 76
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'tbl_longitude'
                Title.Alignment = taCenter
                Title.Caption = 'LONGITUDE'
                Width = 76
                Visible = True
              end
              item
                Alignment = taCenter
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'tbl_AreaTalhao'
                Title.Alignment = taCenter
                Title.Caption = #193'REA DO TALH'#195'O'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tbl_linkMapa'
                Title.Alignment = taCenter
                Title.Caption = 'LINK NO GOOGLE MAPS'
                Width = 322
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
                Width = 157
                Height = 17
                Align = alTop
                Caption = 'DESCRI'#199#195'O DO TALH'#195'O*'
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
                Hint = 'tbl_descricao'
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
                Caption = 'TIPO TALH'#195'O'
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
                ExplicitWidth = 86
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
                Hint = 'tbl_TipoTalhao'
                Align = alTop
                Style = csDropDownList
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ItemIndex = 0
                ParentFont = False
                TabOrder = 0
                Text = 'PR'#211'PRIO'
                Items.Strings = (
                  'PR'#211'PRIO'
                  'ARRENDADO'
                  'NATIVO')
              end
            end
            object PnlCampo3: TJvPanel
              Left = 20
              Top = 155
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 2
              object LbCampo3: TLabel
                Left = 0
                Top = 0
                Width = 157
                Height = 17
                Align = alTop
                Caption = #193'REA TOTAL DO TALH'#195'O'
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
              object CalCampo3: TJvCalcEdit
                Tag = 3
                Left = 0
                Top = 22
                Width = 300
                Height = 23
                Hint = 'tbl_AreaTalhao'
                Align = alTop
                BorderStyle = bsNone
                DecimalPlaces = 6
                DisplayFormat = ',0.######'
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object PnlCampo4: TJvPanel
              Left = 20
              Top = 225
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 3
              object LbCampo4: TLabel
                Left = 0
                Top = 0
                Width = 61
                Height = 17
                Align = alTop
                Caption = 'LATITUDE'
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
              end
              object LineCampo4: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
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
                Hint = 'tbl_latitude'
                Align = alTop
                BorderStyle = bsNone
                DecimalPlaces = 6
                DisplayFormat = ',0.######'
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object PnlCampo5: TJvPanel
              Left = 20
              Top = 295
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 4
              object LbCampo5: TLabel
                Left = 0
                Top = 0
                Width = 74
                Height = 17
                Align = alTop
                Caption = 'LONGITUDE'
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
              end
              object LineCampo5: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
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
                Hint = 'tbl_longitude'
                Align = alTop
                BorderStyle = bsNone
                DecimalPlaces = 6
                DisplayFormat = ',0.######'
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
              end
            end
            object PnlCampo6: TJvPanel
              Left = 20
              Top = 365
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              BevelOuter = bvNone
              TabOrder = 5
              object LbCampo6: TLabel
                Left = 0
                Top = 0
                Width = 149
                Height = 17
                Align = alTop
                Caption = 'LINK DO GOOGLE MAPS'
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
              end
              object LineCampo6: TJvGradient
                Left = 0
                Top = 53
                Width = 300
                Height = 2
                Align = alBottom
                StartColor = 13738918
                EndColor = 13738918
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
              object EdtCampo6: TMaskEdit
                Tag = 6
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'tbl_linkMapa'
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
          end
        end
      end
    end
  end
end
