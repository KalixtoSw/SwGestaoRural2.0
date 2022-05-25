inherited FrmCadastroSafra: TFrmCadastroSafra
  Caption = 'CADASTRO DO PLANO DE SAFRA'
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  inherited PnlFundo: TJvPanel
    inherited CrdPnlPrincipal: TCardPanel
      inherited CrdConsulta: TCard
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
                FieldName = 'sf_descricao'
                Title.Alignment = taCenter
                Title.Caption = 'SAFRA'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sf_Status'
                Title.Alignment = taCenter
                Title.Caption = 'STATUS'
                Width = 125
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sf_dtInicio'
                Title.Alignment = taRightJustify
                Title.Caption = 'IN'#205'CIO DA SAFRA'
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sf_dttermino'
                Title.Alignment = taCenter
                Title.Caption = 'T'#201'RMINO DA SAFRA'
                Width = 150
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
                Caption = 'SAFRA:'
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
                ExplicitWidth = 44
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
                Hint = 'sf_descricao'
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
                Caption = 'STATUS DA SAFRA'
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
                ExplicitWidth = 113
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
              object ComboBox1: TComboBox
                Tag = 2
                Left = 0
                Top = 22
                Width = 300
                Height = 23
                Hint = 'sf_Status'
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
                Text = 'ATIVO'
                Items.Strings = (
                  'ATIVO'
                  'BLOQUEADO'
                  'INATIVO'
                  'CANCELADO'
                  'FINALIZADO')
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
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'DATA DE IN'#205'CIO'
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
                ExplicitWidth = 99
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
              object DtCampo3: TCalendarPicker
                Tag = 3
                Left = 0
                Top = 22
                Width = 300
                Height = 32
                Hint = 'sf_dtInicio'
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
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = 'select a date'
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
                Width = 300
                Height = 17
                Align = alTop
                Caption = 'DATA DE T'#201'RMINO'
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
                ExplicitWidth = 118
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
              object DtCampo4: TCalendarPicker
                Tag = 4
                Left = 0
                Top = 22
                Width = 300
                Height = 32
                Hint = 'sf_dttermino'
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
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = 'select a date'
              end
            end
          end
        end
      end
    end
  end
end
