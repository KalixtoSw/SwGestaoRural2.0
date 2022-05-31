unit UFrmModuloControleEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Classe.Conexao, Classe.Comum.ControleEstoque, Classe.Functions,
  Classe.FunctionsSQL, UFrmMensagemSistema, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExControls, JvSpeedButton, Vcl.WinXPanels,
  Vcl.WinXCtrls, JvNavigationPane, Vcl.ComCtrls, JvgTab, JvComponentBase,
  JvXPCore, JvExComCtrls, JvComCtrls, Vcl.StdCtrls, JvGradient, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TFrmModuloControleEstoque = class(TForm)
    PnlFrmCtrlEstoque: TJvPanel;
    PnlTituloJanela: TJvPanel;
    BtClose: TJvSpeedButton;
    PnlStatusBar: TJvPanel;
    PnlFundoBtsNav1: TJvPanel;
    PnlFundoBtsNavPosicaoFisica: TJvPanel;
    PnlFundoBtsNavEntradas: TJvPanel;
    PnlFundoBtsNavCadProduto: TJvPanel;
    PnlFundoBtsNavSaida: TJvPanel;
    PnlFundoBtsNavCadGerais: TJvPanel;
    BtPosicaoFisica: TJvSpeedButton;
    BtCtrlEntradas: TJvSpeedButton;
    BtCadProdutos: TJvSpeedButton;
    BtCtrlSaidas: TJvSpeedButton;
    BtCadGerais: TJvSpeedButton;
    PnlCtrlEstoqueModulo: TJvPanel;
    BvlCtrlEstoqueModulo: TBevel;
    CrdPnlCtrlEstoque: TCardPanel;
    CrdPrincipal: TCard;
    CrdConsultaEstoque: TCard;
    CrdCtrlEntradas: TCard;
    CrdCadastroProdutos: TCard;
    CrdCtrlSaidas: TCard;
    CrdCadastrosGerais: TCard;
    PnlQdr_A: TJvPanel;
    PnlQdr_B: TJvPanel;
    PnlQdr_C: TJvPanel;
    PnlQdr_D: TJvPanel;
    PnlQdr_E: TJvPanel;
    PnlQdr_F: TJvPanel;
    PnlMenuBtCtrlEntradas: TJvPanel;
    PnlHdeCtrlEntrada1: TJvNavPanelHeader;
    PnlCtrlEntradaMenu1: TRelativePanel;
    PnlHdeCtrlEntrada2: TJvNavPanelHeader;
    PnlCtrlEntradaMenu2: TRelativePanel;
    PnlMenuCtrlEntradaNF: TJvPanel;
    BtMenuCtrlEntradaNF: TJvSpeedButton;
    PnlMenuCtrlEntradaLancamento: TJvPanel;
    BtMenuCtrlEntradaLancamento: TJvSpeedButton;
    PnlMenuCtrlEntradaArqTxt: TJvPanel;
    BtMenuCtrlEntradaArqTxt: TJvSpeedButton;
    PnlMenuCtrlEntradaArqXml: TJvPanel;
    BtMenuCtrlEntradaArqXml: TJvSpeedButton;
    CrdPnlCtrlEntrada: TCardPanel;
    CrdNotaFiscal: TCard;
    PgCntrlCtrlEntradaNF: TJvPageControl;
    TbShtConsultaNF: TTabSheet;
    TbShtLancamentos: TTabSheet;
    JvXPStyleManager1: TJvXPStyleManager;
    PnlInformeModuloNF: TRelativePanel;
    FundoInformeModuloNF: TJvGradient;
    LbInformeModuloNF: TLabel;
    BtBackMenuPrincipal: TJvSpeedButton;
    PnlConsultaNFFiltros: TJvPanel;
    PnlBtFiltroNFDataEmissao: TJvPanel;
    FundoBtFiltroNFDataEmissao: TJvGradient;
    BtFiltroNFDataEmissao: TJvSpeedButton;
    PnlConsultaNFDbGrd: TJvPanel;
    DbGrdConsultaNF: TJvDBUltimGrid;
    PnlSplit1: TJvPanel;
    procedure FormResize(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCtrlEntradasMouseEnter(Sender: TObject);
    procedure PnlQdr_AMouseEnter(Sender: TObject);
    procedure PnlFundoBtsNavCadProdutoMouseEnter(Sender: TObject);
    procedure BtPosicaoFisicaMouseEnter(Sender: TObject);
    procedure PnlTituloJanelaMouseEnter(Sender: TObject);
    procedure PnlHdeCtrlEntrada1Click(Sender: TObject);
    procedure PnlHdeCtrlEntrada2Click(Sender: TObject);
    procedure BtMenuCtrlEntradaNFClick(Sender: TObject);
    procedure BtBackMenuPrincipalClick(Sender: TObject);
  private    { Private declarations }
        CtrlEstoque : TCrtlEstoque;


  public    { Public declarations }
  end;

var
  FrmModuloControleEstoque: TFrmModuloControleEstoque;


implementation

{$R *.dfm}

procedure TFrmModuloControleEstoque.BtBackMenuPrincipalClick(Sender: TObject);
begin
        CrdPrincipal.Show;
end;

procedure TFrmModuloControleEstoque.BtCloseClick(Sender: TObject);
begin
        Close;
end;

procedure TFrmModuloControleEstoque.BtCtrlEntradasMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
        pCtrlMenu(Self,TComponent(Sender) AS TJvSpeedButton , True,400,0);
end;

procedure TFrmModuloControleEstoque.BtMenuCtrlEntradaNFClick(Sender: TObject);
begin
        CrdNotaFiscal.Show;
end;

procedure TFrmModuloControleEstoque.BtPosicaoFisicaMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmModuloControleEstoque.FormCreate(Sender: TObject);
begin
        CtrlEstoque := TCrtlEstoque.CreateObjTCrtlEstoque;
end;

procedure TFrmModuloControleEstoque.FormResize(Sender: TObject);
begin
        pCentralizaPanel(PnlFrmCtrlEstoque,self);
end;

procedure TFrmModuloControleEstoque.FormShow(Sender: TObject);
begin
        CtrlEstoque.pCtrlPosicaopnlBt1(PnlFundoBtsNav1,10);
        CtrlEstoque.pCtrlPosicaopnlBt2(PnlFundoBtsNav1,215);
        CtrlEstoque.pCtrlPosicaopnlBt3(PnlFundoBtsNav1,420);
        CtrlEstoque.pCtrlPosicaopnlBt4(PnlFundoBtsNav1,625);
        CtrlEstoque.pCtrlPosicaopnlBt5(PnlFundoBtsNav1,830);
        CrdPrincipal.Show;
end;

procedure TFrmModuloControleEstoque.PnlFundoBtsNavCadProdutoMouseEnter(
  Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmModuloControleEstoque.PnlHdeCtrlEntrada1Click(Sender: TObject);
begin
        pMenuRetratilVariavel(PnlCtrlEntradaMenu1,200,0);
end;

procedure TFrmModuloControleEstoque.PnlHdeCtrlEntrada2Click(Sender: TObject);
begin
     pMenuRetratilVariavel(PnlCtrlEntradaMenu2,200,0);
end;

procedure TFrmModuloControleEstoque.PnlQdr_AMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmModuloControleEstoque.PnlTituloJanelaMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

end.
