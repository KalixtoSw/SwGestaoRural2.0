inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'FrmCadastroUsuario'
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
            Font.Color = 6767104
            Columns = <
              item
                Expanded = False
                FieldName = 'user_nomepessoa'
                Title.Alignment = taCenter
                Title.Caption = 'NOME'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'user_usuario'
                Title.Alignment = taCenter
                Title.Caption = 'USU'#193'RIO'
                Width = 224
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'user_celular'
                Title.Alignment = taCenter
                Title.Caption = 'CELULAR'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'user_email'
                Title.Alignment = taCenter
                Title.Caption = 'E-MAIL'
                Width = 300
                Visible = True
              end>
          end
        end
      end
      inherited CrdCampos: TCard
        inherited PnlBtsSaveCancel: TJvPanel
          inherited PnlBtSavar: TJvPanel
            inherited BtSalvar: TJvSpeedButton
              ExplicitTop = -6
              ExplicitWidth = 150
            end
          end
        end
        inherited PnlFundoCampos: TJvPanel
          inherited PnlFundoCamposInterno: TJvPanel
            object LbHintCampoSenha: TLabel
              Left = 335
              Top = 184
              Width = 228
              Height = 15
              Caption = 'A senha deve ter no m'#225'ximo 8 caracteres'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Visible = False
            end
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
                Width = 119
                Height = 17
                Align = alTop
                Caption = 'NOME COMPLETO*'
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
                Hint = 'user_nomepessoa'
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
                Width = 62
                Height = 17
                Align = alTop
                Caption = 'USU'#193'RIO*'
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
              object ObrEdtCampo2: TMaskEdit
                Tag = 2
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'user_usuario'
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
                MaxLength = 16
                ParentFont = False
                TabOrder = 0
                Text = ''
              end
            end
            object PnlCampo3: TJvPanel
              Left = 20
              Top = 155
              Width = 300
              Height = 55
              FlatBorderColor = clBtnHighlight
              OnMouseEnter = PnlCampo3MouseEnter
              OnMouseLeave = PnlCampo3MouseLeave
              BevelOuter = bvNone
              TabOrder = 2
              object LbCampo3: TLabel
                Left = 0
                Top = 0
                Width = 43
                Height = 17
                Align = alTop
                Caption = 'SENHA'
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
              object EdtCampo3: TMaskEdit
                Tag = 3
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'user_senha'
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                MaxLength = 8
                ParentFont = False
                PasswordChar = '*'
                TabOrder = 0
                Text = ''
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
                Width = 55
                Height = 17
                Align = alTop
                Caption = 'CELULAR'
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
              object EdtCampo4: TMaskEdit
                Tag = 4
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'user_celular'
                Align = alTop
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                EditMask = '!(99) 9 999-9999;1;'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                MaxLength = 15
                ParentFont = False
                TabOrder = 0
                Text = '(  )      -    '
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
                Width = 49
                Height = 17
                Align = alTop
                Caption = 'E-MAIL*'
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
              object ObrEdtCampo5: TMaskEdit
                Tag = 5
                Left = 0
                Top = 22
                Width = 300
                Height = 22
                Hint = 'user_email'
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
                OnExit = ObrEdtCampo5Exit
              end
            end
          end
        end
      end
    end
  end
  inherited JvDesktopAlertStack1: TJvDesktopAlertStack
    Position = dapMainFormBottomRight
  end
end
