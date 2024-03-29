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
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, UFrmControleEstoquePesqNF,
  JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.DBCtrls, JvDBControls,
  JvMaskEdit, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDateTimePicker,
  JvDBDateTimePicker, JvDBFindEdit, JvEdit, JvDBSearchEdit, Classe.NF.ControleEstoque,
  JvBaseDlg, JvDesktopAlert, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, System.Math, JvThread, UFrmMenuPrincipal;

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
    PnlBtsSaveCancelNF: TJvPanel;
    PnlBtCancelNF: TJvPanel;
    PnlBtSaveNF: TJvPanel;
    FundoBtCancelarNF: TJvGradient;
    FundoBtSalvarNF: TJvGradient;
    BtSalvarNF: TJvSpeedButton;
    BtCancelarNF: TJvSpeedButton;
    PnlDadosNF: TJvPanel;
    PnlFldTipoMovNF: TJvPanel;
    CbbFldTipoMovNF: TJvDBComboBox;
    LbFldTipoMovNF: TLabel;
    PnlFldFornecNF: TJvPanel;
    LbFldFornecNF: TLabel;
    CbbFldFornecNF: TDBLookupComboBox;
    PnlFldNumeroNF: TJvPanel;
    LbFldNumeroNF: TLabel;
    EdtFldNumeroNF: TJvDBCalcEdit;
    PnlFldSerieNF: TJvPanel;
    LbFldSerieNF: TLabel;
    EdtFldSerieNF: TJvDBCalcEdit;
    PnlFldCnpjNF: TJvPanel;
    FldCnpjNF: TLabel;
    EdtFldCnpjNF: TJvDBMaskEdit;
    PnlFldNatOperNF: TJvPanel;
    LbFldNatOperNF: TLabel;
    EdtFldNatOperNF: TDBEdit;
    PnlFldDtEmissaoNF: TJvPanel;
    LbFldDtEmissaoNF: TLabel;
    PnlFldDtESNF: TJvPanel;
    LbFldDtESNF: TLabel;
    PnlFldHoraESNF: TJvPanel;
    LbFldHoraESNF: TLabel;
    PnlDadosNFItens: TJvPanel;
    PnlDadosNFCalcImpostos: TJvPanel;
    PnlDadosNFDestinatario: TJvPanel;
    LbDadosNFDestinatario: TLabel;
    LbDadosNFCalcImpostos: TLabel;
    PnlImpostoNFBaseIcms: TJvPanel;
    LbImpostoNFBaseIcms: TLabel;
    EdtImpostoNFBaseIcms: TJvDBCalcEdit;
    PnlImpostoNFVlrFrete: TJvPanel;
    LbImpostoNFVlrFrete: TLabel;
    EdtImpostoNFVlrFrete: TJvDBCalcEdit;
    PnlImpostoNFIcms: TJvPanel;
    LbImpostoNFIcms: TLabel;
    EdtImpostoNFIcms: TJvDBCalcEdit;
    PnlImpostoNFBaseIcmsST: TJvPanel;
    LbImpostoNFBaseIcmsST: TLabel;
    EdtImpostoNFBaseIcmsST: TJvDBCalcEdit;
    PnlImpostoNFIcmsST: TJvPanel;
    LbImpostoNFIcmsST: TLabel;
    EdtImpostoNFIcmsST: TJvDBCalcEdit;
    PnlImpostoNFVlrProdutos: TJvPanel;
    LbImpostoNFVlrProdutos: TLabel;
    EdtImpostoNFVlrProdutos: TJvDBCalcEdit;
    PnlImpostoNFVlrSeguro: TJvPanel;
    LbImpostoNFVlrSeguro: TLabel;
    EdtImpostoNFVlrSeguro: TJvDBCalcEdit;
    PnlImpostoNFVlrDesconto: TJvPanel;
    LbImpostoNFVlrDesconto: TLabel;
    EdtImpostoNFVlrDesconto: TJvDBCalcEdit;
    PnlImpostoNFVlrOutrasDespesas: TJvPanel;
    LbImpostoNFVlrOutrasDespesas: TLabel;
    EdtImpostoNFVlrOutrasDespesas: TJvDBCalcEdit;
    PnlImpostoNFVlrIPI: TJvPanel;
    LbImpostoNFVlrIPI: TLabel;
    EdtImpostoNFVlrIPI: TJvDBCalcEdit;
    PnlImpostoNFVlrtNF: TJvPanel;
    LbImpostoNFVlrtNF: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    PnlNFAddItens: TJvPanel;
    BtNFAddItens: TJvSpeedButton;
    FundoNFAddItens: TJvGradient;
    PnlDNFICodProduto: TJvPanel;
    LbDNFICodProduto: TLabel;
    PnlDNFINomeProduto: TJvPanel;
    LbDNFINomeProduto: TLabel;
    CbbDNFICodProduto: TJvDBLookupCombo;
    DbGridNFItens: TJvDBUltimGrid;
    EdtDNFINomeProduto: TJvDBLookupCombo;
    PnlDNFIEmbalagem: TJvPanel;
    LbDNFIEmbalagem: TLabel;
    CbbDNFIEmbalagem: TJvDBLookupCombo;
    PnlDNFIQdte: TJvPanel;
    LbDNFIQdte: TLabel;
    EdtDNFIQdte: TJvDBCalcEdit;
    PnlDNFIVlrUnit: TJvPanel;
    LbDNFIVlrUnit: TLabel;
    EdtDNFIVlrUnit: TJvDBCalcEdit;
    PnlDNFIVlrTotal: TJvPanel;
    LbDNFIVlrTotal: TLabel;
    PnlDNFICFOP: TJvPanel;
    LbDNFICFOP: TLabel;
    EdtDNFICFOP: TJvDBCalcEdit;
    EdtDNFIVlrTotal: TDBEdit;
    PnlDNFIFields: TJvPanel;
    PnlDNFIBtSavar: TJvPanel;
    FundoDNFIBtSavar: TJvGradient;
    BtDNFIBtSavar: TJvSpeedButton;
    pnlFldDtVencimentoNF: TJvPanel;
    LbFldDtVencimentoNF: TLabel;
    PnlBtDeletelNF: TJvPanel;
    FundoBtDeletelNF: TJvGradient;
    BtBtDeletelNF: TJvSpeedButton;
    Alert: TJvDesktopAlert;
    EdtDtFldDtEmissaoNF: TJvDBDatePickerEdit;
    EdtDtFldDtESNF: TJvDBDatePickerEdit;
    EdtFldDtVencimentoNF: TJvDBDatePickerEdit;
    EdtImpostoNFVlrtNF: TDBEdit;
    pnlAlertCtrlEstoque: TRelativePanel;
    LbAlertCtrlEstTitulo: TLabel;
    LbAlertCtrlEstMensagem: TLabel;
    ActivityInd: TActivityIndicator;
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
    procedure BtFiltroNFDataEmissaoClick(Sender: TObject);
    procedure TbShtLancamentosShow(Sender: TObject);
    procedure BtSalvarNFClick(Sender: TObject);
    procedure BtNFAddItensClick(Sender: TObject);
    procedure BtDNFIBtSavarClick(Sender: TObject);
    procedure EdtDNFIVlrUnitExit(Sender: TObject);
    procedure DbGrdConsultaNFDblClick(Sender: TObject);
    procedure TbShtConsultaNFShow(Sender: TObject);
    procedure BtCancelarNFClick(Sender: TObject);
    procedure BtBtDeletelNFClick(Sender: TObject);
    procedure EdtDNFIQdteExit(Sender: TObject);
    procedure EdtImpostoNFVlrProdutosExit(Sender: TObject);
    procedure EdtImpostoNFVlrFreteExit(Sender: TObject);
    procedure EdtImpostoNFVlrSeguroExit(Sender: TObject);
    procedure EdtImpostoNFVlrDescontoExit(Sender: TObject);
    procedure EdtImpostoNFVlrOutrasDespesasExit(Sender: TObject);
    procedure EdtImpostoNFVlrIPIExit(Sender: TObject);
    procedure EdtImpostoNFIcmsExit(Sender: TObject);
    procedure EdtImpostoNFIcmsSTExit(Sender: TObject);
    procedure Thread_NFFinish(Sender: TObject);
    procedure EdtDNFINomeProdutoExit(Sender: TObject);
  private    { Private declarations }
        CtrlEstoque : TCrtlEstoque;

  public    { Public declarations }
        CtrlEst_NF : TCrtrlEstoque_NF;
        CtrlEst_Comum : TCrtlEstoque;


  end;

var
  FrmModuloControleEstoque: TFrmModuloControleEstoque;
  ActInsUpd : string;


implementation

{$R *.dfm}

procedure TFrmModuloControleEstoque.BtBackMenuPrincipalClick(Sender: TObject);
begin
        CrdPrincipal.Show;
end;

procedure TFrmModuloControleEstoque.BtBtDeletelNFClick(Sender: TObject);
begin
        CtrlEst_NF.pEventoBtDeleteNF
end;

procedure TFrmModuloControleEstoque.BtCancelarNFClick(Sender: TObject);
begin
        CtrlEst_NF.pEventoBtCancelarNF
end;

procedure TFrmModuloControleEstoque.BtCloseClick(Sender: TObject);
begin

        CtrlEst_NF.fProcNFEstoque;
        Close;
end;

procedure TFrmModuloControleEstoque.BtCtrlEntradasMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
        pCtrlMenu(Self,TComponent(Sender) AS TJvSpeedButton , True,400,0);
end;

procedure TFrmModuloControleEstoque.BtFiltroNFDataEmissaoClick(Sender: TObject);
begin
        try
           Application.CreateForm(TFrmPesqNF,FrmPesqNF);
           FrmPesqNF.ShowModal;
      finally
            FreeAndNil(FrmPesqNF);
      end;
end;

procedure TFrmModuloControleEstoque.BtMenuCtrlEntradaNFClick(Sender: TObject);
begin
        DMPrincipal.TbNotaFiscal.Open;
        pAtivarDBGrid(DbGrdConsultaNF);
        PgCntrlCtrlEntradaNF.ActivePage := TbShtConsultaNF;
        CrdNotaFiscal.Show;
end;

procedure TFrmModuloControleEstoque.BtNFAddItensClick(Sender: TObject);
begin
        CtrlEst_NF.pEventoBtAddItens;
end;

procedure TFrmModuloControleEstoque.BtPosicaoFisicaMouseEnter(Sender: TObject);
begin
        pCtrlMenu(Self,nil,False,0,0);
end;

procedure TFrmModuloControleEstoque.BtSalvarNFClick(Sender: TObject);
begin
        CtrlEst_NF.pEventoBtSavarNF;
        ActInsUpd := EmptyStr;
end;

procedure TFrmModuloControleEstoque.DbGrdConsultaNFDblClick(Sender: TObject);
begin
        ActInsUpd := 'UPDATE';
        CtrlEst_NF.pEventoUpdateNF;
end;

procedure TFrmModuloControleEstoque.EdtDNFINomeProdutoExit(Sender: TObject);
var
        SldEst : double;
        IdProduto, IdEmbalagem : Integer;
begin
        IdProduto       := DMPrincipal.DsQryProduto.DataSet.FieldByName('prd_idproduto').AsInteger;
        IdEmbalagem     := DMPrincipal.DsTbProdutoEmbalagem.DataSet.FieldByName('prde_Id').AsInteger;

        SldEst := fCtrlSaldoEstoqueproduto(IdProduto,IdEmbalagem);

        if SldEst > 0 then
        begin

        if not(EdtDNFINomeProduto.Text = EmptyStr) then
        begin
                LbDNFINomeProduto.Caption := 'SALDO EM ESTOQUE:  '+FloatToStr(SldEst);
        end;
        end else begin
                LbDNFINomeProduto.Caption := 'PRODUTO ';
        end;

end;

procedure TFrmModuloControleEstoque.EdtDNFIQdteExit(Sender: TObject);
var
        SldEst : double;
        IdProduto, IdEmbalagem : Integer;
begin
        IdProduto       := DMPrincipal.DsQryProduto.DataSet.FieldByName('prd_idproduto').AsInteger;
        IdEmbalagem     := DMPrincipal.DsTbProdutoEmbalagem.DataSet.FieldByName('prde_Id').AsInteger;

        SldEst := fCtrlSaldoEstoqueproduto(IdProduto,IdEmbalagem);

        if CbbFldTipoMovNF.Text = 'SA�DA' then
        begin
             if (CbbDNFIEmbalagem.Text = EmptyStr) and (EdtDNFIQdte.Value > 0) then
             begin
                     LbAlertCtrlEstMensagem.Caption := '� OBRIGAT�RIO INFORMAR O TIPO DE EMBALAGEM';
                     pnlAlertCtrlEstoque.Visible := True;
                     pdelay(6000);
                     LbAlertCtrlEstMensagem.Caption :='';
                     pnlAlertCtrlEstoque.Visible := False;
             end else begin
                if SldEst < EdtDNFIQdte.Value  then
                begin
                     LbAlertCtrlEstMensagem.Caption := 'N�O H� SALDO EM ESTOQUE PARA ESSE LAN�AMENTO';
                     pnlAlertCtrlEstoque.Visible := True;
                     ActivityInd.Animate := True;
                     pdelay(6000);
                     ActivityInd.Animate := False;
                     LbAlertCtrlEstMensagem.Caption :='';
                     pnlAlertCtrlEstoque.Visible := False;
                     EdtDNFIQdte.Value := 0;
                     EdtDNFIQdte.SetFocus;
                end;

             end;
        end;

        if (EdtDNFIQdte.Value > 0) and (EdtDNFIVlrUnit.Value > 0) then
        begin
                CtrlEst_NF.fCtrlEstSaida;

                EdtDNFIVlrTotal.Text := FloatToStr( CtrlEst_NF.fCalcTotalNFItem(EdtDNFIVlrUnit.Value,EdtDNFIQdte.Value));
        end;

end;

procedure TFrmModuloControleEstoque.EdtDNFIVlrUnitExit(Sender: TObject);
begin
        if EdtDNFIVlrUnit.Value > 0 then
        begin
            EdtDNFIVlrTotal.Text := FloatToStr( CtrlEst_NF.fCalcTotalNFItem(EdtDNFIVlrUnit.Value,EdtDNFIQdte.Value));
        end;
end;

procedure TFrmModuloControleEstoque.EdtImpostoNFIcmsExit(Sender: TObject);
begin
        if EdtImpostoNFIcms.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;
end;

procedure TFrmModuloControleEstoque.EdtImpostoNFIcmsSTExit(Sender: TObject);
begin
        if EdtImpostoNFIcmsST.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;
end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrDescontoExit(
  Sender: TObject);
begin
        if EdtImpostoNFVlrDesconto.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;

end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrFreteExit(Sender: TObject);
begin
        if EdtImpostoNFVlrFrete.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;
end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrIPIExit(Sender: TObject);
begin
        if EdtImpostoNFVlrIPI.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;

end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrOutrasDespesasExit(
  Sender: TObject);
begin
        if EdtImpostoNFVlrOutrasDespesas.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;

end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrProdutosExit(
  Sender: TObject);
begin
        if EdtImpostoNFVlrProdutos.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;
end;

procedure TFrmModuloControleEstoque.EdtImpostoNFVlrSeguroExit(Sender: TObject);
begin
        if EdtImpostoNFVlrSeguro.Value > 0 then
        begin
                EdtImpostoNFVlrtNF.text := FloatToStr(CtrlEst_NF.fpCalcTotalNF);
        end;
end;

procedure TFrmModuloControleEstoque.FormCreate(Sender: TObject);
begin
        CtrlEstoque     := TCrtlEstoque.CreateObjTCrtlEstoque;
        CtrlEst_NF      := TCrtrlEstoque_NF.CreateObjTCrtrlEstoque_NF;
        ActInsUpd       := 'UPDATE';

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
        ActInsUpd := EmptyStr;
        if (UFrmMenuPrincipal.Ctr_BtMovEstoque = '') then
        begin
                CrdPrincipal.Show;
        end else if UFrmMenuPrincipal.Ctr_BtMovEstoque = 'CadNF' then
                begin
                     BtMenuCtrlEntradaNF.Click;
                end;
end;

procedure TFrmModuloControleEstoque.Thread_NFFinish(Sender: TObject);
begin
        Exit;
end;

procedure TFrmModuloControleEstoque.BtDNFIBtSavarClick(Sender: TObject);
begin
                CtrlEst_NF.pEventoBtSavarNFItem;
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

procedure TFrmModuloControleEstoque.TbShtConsultaNFShow(Sender: TObject);
begin
        ActInsUpd := EmptyStr;
end;

procedure TFrmModuloControleEstoque.TbShtLancamentosShow(Sender: TObject);
begin
        if not((ActInsUpd = 'UPDATE')) then
        begin
                ActInsUpd := 'INSERT';
                CtrlEst_NF.pEventoNewNF;
        end;
end;

end.

