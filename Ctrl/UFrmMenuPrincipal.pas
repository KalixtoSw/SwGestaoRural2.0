unit UFrmMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Classe.Functions, JvExControls, JvSpeedButton,
  JvGradientHeaderPanel, Vcl.WinXPanels, JvXPCore, JvXPBar, Classe.Sistema.Mensagens,
  Vcl.StdCtrls, Vcl.Mask, JvGradient, JvExMask, JvToolEdit, JvMaskEdit,
  JvEmbeddedForms, Vcl.Imaging.jpeg, JvScrollText, Vcl.ToolWin, JvExForms,
  JvScrollPanel, UFrmCadastroSemente, JvaScrollText, Vcl.Imaging.pngimage,
  JvComponentBase, JvBalloonHint, JvHint, UFrmModuloControleEstoque, Classe.Comum.ControleEstoque,
  Data.DB, Classe.Conexao, System.Math;

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
    XPBarManejoAgricola1: TJvXPBar;
    LbMenuPNoticiasRodaPe: TJvScrollText;
    ImgConectado: TImage;
    ImgDesconectado: TImage;
    Timer1: TTimer;
    JvHint1: TJvHint;
    JvBalloonHint1: TJvBalloonHint;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
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
    procedure Timer1Timer(Sender: TObject);
    procedure JvXPBar1Items2Click(Sender: TObject);
    procedure XPBarManejoAgricola1Items3Click(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
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
  UFrmCadastroSafra, UFrmConfigServidor, UFrmCadastroPropriedadeRural, U_FachadaWSSGS1, UFrmCadastroProduto, UFrmProdutoEmbalagem;

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
        pCtrlMenu(Self,TComponent(Sender) AS TJvSpeedButton , True,48,72);
end;

procedure TFrmMenuPrincipal.BtParametrosClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtParametros,PnlMenuLateral2,BtParametros.Tag);
end;

procedure TFrmMenuPrincipal.CrdDashboardMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
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

procedure TFrmMenuPrincipal.JvSpeedButton2Click(Sender: TObject);
var
        IDMov : Integer;
        TpMov : string;
        FDSNF,FDSNFI,FDSENTRADA,FDSENTRADAITEM : Tdatasource;

begin
        DMPrincipal.QryProcNotaFiscal.Active := True;
        DMPrincipal.QryProcNotaFiscalItem.Active := True;
        DMPrincipal.TbMovimentacao.Active := True;
        DMPrincipal.TbMov_Produto.Active := True;
        TpMov := EmptyStr;
        IDMov := 0;

        FDSNF           := DMPrincipal.DsQryProcNotaFiscal;
        FDSNFI          := DMPrincipal.DsQryProcNotaFiscalItem;
        FDSENTRADA      := DMPrincipal.DsTbMovimentacao;
        FDSENTRADAITEM  := DMPrincipal.DsTbMov_Produto;
        FDSNF.DataSet.Active := True;
        FDSNFI.DataSet.Active := True;
        FDSENTRADA.DataSet.Active := True;
        FDSENTRADAITEM.DataSet.Active := True;

        while not (FDSNF.DataSet.Eof) do
        begin
               TpMov := FDSNF.DataSet.FieldByName('nf_tipoES').AsString;
               FDSENTRADA.DataSet.Insert;
               FDSENTRADA.DataSet.FieldByName('mov_tipo').AsString := TpMov;
               FDSENTRADA.DataSet.FieldByName('mov_datamov').AsDateTime := Now;
               FDSENTRADA.DataSet.FieldByName('mov_descricao').AsString := 'MOVIMENTAÇÃO ('+TpMov+') NO ESTOQUE';
               FDSENTRADA.DataSet.FieldByName('mov_origem').Asstring := 'MÓDULO NF';
               FDSENTRADA.DataSet.FieldByName('nf_id').AsInteger := FDSNF.DataSet.FieldByName('nf_id').AsInteger;
               FDSENTRADA.DataSet.Post;
               FDSENTRADA.DataSet.Last;
               IDMov := FDSENTRADA.DataSet.FieldByName('mov_id').AsInteger;

                while not FDSNFI.DataSet.Eof do
                begin
                       FDSENTRADAITEM.DataSet.Insert;
                       FDSENTRADAITEM.DataSet.FieldByName('prd_idproduto').AsInteger := IDMov;
                       FDSENTRADAITEM.DataSet.FieldByName('prd_idproduto').AsInteger := FDSNFI.DataSet.FieldByName('prd_idproduto').AsInteger;
                       FDSENTRADAITEM.DataSet.FieldByName('mp_qtdUnit').AsFloat :=  FDSNFI.DataSet.FieldByName('nfi_qtde').AsFloat;
                       FDSENTRADAITEM.DataSet.FieldByName('mp_precoCompra').AsFloat :=  FDSNFI.DataSet.FieldByName('nfi_vlrunit').AsFloat;
                       FDSENTRADAITEM.DataSet.FieldByName('mp_precoTotal').AsFloat :=  FDSNFI.DataSet.FieldByName('nfi_vlrtotal').AsFloat;
                       FDSENTRADAITEM.DataSet.FieldByName('mp_tipo').AsString := TpMov;
                       FDSENTRADAITEM.DataSet.FieldByName('mp_qtdContabil').AsFloat := IfThen(TpMov = 'S',(FDSNFI.DataSet.FieldByName('nfi_vlrunit').AsFloat * -1),FDSNFI.DataSet.FieldByName('nfi_vlrunit').AsFloat);

                       FDSENTRADAITEM.DataSet.Post;
                       FDSNFI.DataSet.Next;
                end;
                FDSNF.DataSet.Edit;
                FDSNF.DataSet.FieldByName('nf_procEstoque').AsInteger := 1;
                FDSNF.DataSet.Post;
                FDSNF.DataSet.Next;
        end;

      Application.Terminate;
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

procedure TFrmMenuPrincipal.JvXPBar1Items2Click(Sender: TObject);
begin
       try
           Application.CreateForm(TFrmModuloControleEstoque,FrmModuloControleEstoque);
           FrmModuloControleEstoque.ShowModal;
      finally
            FreeAndNil(FrmModuloControleEstoque);
      end;
end;

procedure TFrmMenuPrincipal.PnlIndicadoresAgricolasMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmMenuPrincipal.PnlStatusSistema1MouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmMenuPrincipal.PnlTituloJanelaMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmMenuPrincipal.Timer1Timer(Sender: TObject);

begin
        if IsConnectedToInternet then
        begin
             ImgConectado.Visible       := True;
             ImgDesconectado.Visible    := False;
        end else begin
             ImgConectado.Visible       := False;
             ImgDesconectado.Visible    := True;
        end;
end;

procedure TFrmMenuPrincipal.XPBarManejoAgricola1Items3Click(Sender: TObject);
begin
        try
           Application.CreateForm(TFrmProdutoEmbalagem,FrmProdutoEmbalagem);
           FrmProdutoEmbalagem.ShowModal;
        finally
            FreeAndNil(FrmProdutoEmbalagem);
        end;
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
