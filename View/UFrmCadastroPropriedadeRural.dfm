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
      inherited CrdConsulta: TCard
        inherited PnlPesquisa: TJvPanel
          inherited LbPesquisa: TLabel
            Width = 1024
          end
        end
        inherited PnlBtsInsertDelete: TJvPanel
          object JvXPButton1: TJvXPButton
            Left = 450
            Top = 15
            Width = 96
            Caption = 'JvXPButton1'
            TabOrder = 0
            OnClick = JvXPButton1Click
          end
          object Combo: TJvComboBox
            Left = 185
            Top = 14
            Width = 251
            Height = 23
            TabOrder = 1
            Text = ''
            OnExit = ComboExit
          end
        end
      end
    end
  end
end
