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
          object Combo: TJvComboBox
            Left = 185
            Top = 14
            Width = 251
            Height = 23
            TabOrder = 0
            Text = ''
            OnExit = ComboExit
          end
        end
      end
    end
  end
end
