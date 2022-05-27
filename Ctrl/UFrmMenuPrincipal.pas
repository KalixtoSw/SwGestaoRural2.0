unit UFrmMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Classe.Functions, JvExControls, JvSpeedButton,
  JvGradientHeaderPanel, Vcl.WinXPanels, JvXPCore, JvXPBar, Classe.Sistema.Mensagens,
  Vcl.StdCtrls, Vcl.Mask, JvGradient, JvExMask, JvToolEdit, JvMaskEdit,
  JvEmbeddedForms, Vcl.Imaging.jpeg, JvScrollText, Vcl.ToolWin, JvExForms,
  JvScrollPanel, UFrmCadastroSemente, JvaScrollText;

type
  TFrmMenuPrincipal = class(TForm)
    PnlFundoMenuPrincipal: TJvPanel;
    PnlTituloJanela: TJvPanel;
    PnlBtClose: TJvPanel;
    BtClose: TJvSpeedButton;
    PnlStatusSistema: TJvPanel;
    PnlMenuLateral1: TJvPanel;
    BtFerramentas: TJvSpeedButton;
    BtManejoAgricola: TJvSpeedButton;
    BtParametros: TJvSpeedButton;
    PnlMenuLateral2: TJvPanel;
    HdrBtParametros: TJvGradientHeaderPanel;
    CrdPnlMenuLateral2: TCardPanel;
    CrdBtParametros: TCard;
    CrdBtManejoAgricola: TCard;
    CrdBtFerramentas: TCard;
    HdrBtManejoAgricola: TJvGradientHeaderPanel;
    HdrBtFerramentas: TJvGradientHeaderPanel;
    ImgBtFerramentas: TImage;
    ImgBtManejoAgricola: TImage;
    ImgBtParametros: TImage;
    BarParametros1: TJvXPBar;
    BarParametros2: TJvXPBar;
    CrdPnlMenuPrincipal: TCardPanel;
    CrdDashboard: TCard;
    PnlIndicadoresAgricolas: TJvPanel;
    PnlDolar: TJvPanel;
    LbTituloDolar: TLabel;
    PnlImgDolar: TPanel;
    ImgDolar: TImage;
    PnlDolar1: TJvPanel;
    LbCotacaoDolar: TLabel;
    PnlSoja: TJvPanel;
    LbTituloSoja: TLabel;
    PnlImgSoja: TPanel;
    ImgSoja: TImage;
    Pnl2Soja: TJvPanel;
    LbVlrSoja: TLabel;
    PnlMilho: TJvPanel;
    LbTituloMilho: TLabel;
    PnlImgMilho: TPanel;
    ImgMilho: TImage;
    Pnl2Milho: TJvPanel;
    LbVlrMilho: TLabel;
    PnlTrigo: TJvPanel;
    LbTituloTrigo: TLabel;
    PnlImgTrigo: TPanel;
    ImgTrigo: TImage;
    Pnl2Trigo: TJvPanel;
    LbVlrTrigo: TLabel;
    BtNotificação: TJvSpeedButton;
    PnlViewNotificacoes: TJvPanel;
    PnlTituloNotificacoes: TJvPanel;
    ImgNotificacao: TImage;
    LbtituloNotificacao: TLabel;
    PnlStatusSistema1: TJvPanel;
    LinePnlNotificacao: TJvGradient;
    JvScrollText1: TJvScrollText;
    JvXPBar1: TJvXPBar;
    LbMenuPNoticiasRodaPe: TJvScrollText;
    procedure FormResize(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure BtParametrosClick(Sender: TObject);
    procedure BtManejoAgricolaClick(Sender: TObject);
    procedure BtFerramentasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BarParametros1Items0Click(Sender: TObject);
    procedure BarParametros2Items2Click(Sender: TObject);
    procedure BarParametros2Items3Click(Sender: TObject);
    procedure BarParametros2Items1Click(Sender: TObject);
    procedure BtNotificaçãoMouseEnter(Sender: TObject);
    procedure CrdDashboardMouseEnter(Sender: TObject);
    procedure PnlIndicadoresAgricolasMouseEnter(Sender: TObject);
    procedure PnlStatusSistema1MouseEnter(Sender: TObject);
    procedure PnlTituloJanelaMouseEnter(Sender: TObject);
    procedure JvXPBar1Items0Click(Sender: TObject);
    procedure JvXPBar1Items1Click(Sender: TObject);
    procedure JvScrollText1MouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses
     UFrmModel1, UFrmMensagemSistema, UFrmCadastroUsuario, UFrmPesquisaAuxiliar, UFrmCadastroTalhao,
  UFrmCadastroSafra, UFrmConfigServidor, UFrmCadastroPropriedadeRural, U_FachadaWSSGS1, UFrmCadastroProduto;

{$R *.dfm}

procedure TFrmMenuPrincipal.BtFerramentasClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtFerramentas,PnlMenuLateral2,BtFerramentas.Tag);
end;

procedure TFrmMenuPrincipal.BtManejoAgricolaClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtManejoAgricola,PnlMenuLateral2,BtManejoAgricola.Tag);
end;

procedure TFrmMenuPrincipal.BtNotificaçãoMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,TComponent(Sender) AS TJvSpeedButton , True);
end;

procedure TFrmMenuPrincipal.BtParametrosClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtParametros,PnlMenuLateral2,BtParametros.Tag);
end;

procedure TFrmMenuPrincipal.CrdDashboardMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False);
end;

procedure TFrmMenuPrincipal.FormResize(Sender: TObject);
begin
      pCentralizaPanel(PnlFundoMenuPrincipal,FrmMenuPrincipal);
end;

procedure TFrmMenuPrincipal.FormShow(Sender: TObject);
var
      y: WSSerieVO;
begin
      PnlMenuLateral2.Width := 0;
      y := GetFachadaWSSGS.getUltimosValoresSerieVO(1, 1);
      LbCotacaoDolar.Caption := ' R$: '+ y.valores[0].valor.DecimalString;
end;

procedure TFrmMenuPrincipal.JvScrollText1MouseEnter(Sender: TObject);
begin
        JvScrollText1.Active := True;
        pdelay(2500);
        JvScrollText1.Visible := False;

end;

procedure TFrmMenuPrincipal.JvXPBar1Items0Click(Sender: TObject);
begin
      try
           Application.CreateForm(TFrmCadastroSemente,FrmCadastroSemente);
           FrmCadastroSemente.ShowModal;
      finally
            FreeAndNil(FrmCadastroSemente);
      end;
end;

procedure TFrmMenuPrincipal.JvXPBar1Items1Click(Sender: TObject);
begin
     try
           Application.CreateForm(TFrmCadastroProduto,FrmCadastroProduto);
           FrmCadastroProduto.ShowModal;
      finally
            FreeAndNil(FrmCadastroProduto);
      end;
end;

procedure TFrmMenuPrincipal.PnlIndicadoresAgricolasMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False);
end;

procedure TFrmMenuPrincipal.PnlStatusSistema1MouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False);
end;

procedure TFrmMenuPrincipal.PnlTituloJanelaMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False);
end;

procedure TFrmMenuPrincipal.BarParametros1Items0Click(Sender: TObject);
begin
      try
           Application.CreateForm(TFrmCadastroUsuario,FrmCadastroUsuario);
           FrmCadastroUsuario.ShowModal;
      finally
            FreeAndNil(FrmCadastroUsuario);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items1Click(Sender: TObject);
begin
     try
           Application.CreateForm(TFrmCadastroPropriedadeRural,FrmCadastroPropriedadeRural);
           FrmCadastroPropriedadeRural.ShowModal;
      finally
            FreeAndNil(FrmCadastroPropriedadeRural);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items2Click(Sender: TObject);
begin
     try
           Application.CreateForm(TFrmCadastroTalhao,FrmCadastroTalhao);
           FrmCadastroTalhao.ShowModal;
      finally
            FreeAndNil(FrmCadastroTalhao);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items3Click(Sender: TObject);
begin
       try
           Application.CreateForm(TFrmCadastroSafra,FrmCadastroSafra);
           FrmCadastroSafra.ShowModal;
      finally
            FreeAndNil(FrmCadastroSafra);
      end;

end;

procedure TFrmMenuPrincipal.BtCloseClick(Sender: TObject);
begin
      Application.Terminate;
end;

end.
