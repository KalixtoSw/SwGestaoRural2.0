unit Classe.NF.ControleEstoque;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud, Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  FireDAC.Comp.Client, Vcl.ComCtrls, JvDBControls, Vcl.Dialogs, Data.DB,
  JvDBDateTimePicker, JvDesktopAlert, JvDBDatePickerEdit, JvSpeedButton,
  JvPanel, System.Math;

type
  TCrtrlEstoque_NF = class
  private
    FNumNF: Integer;
    FTbNotaFiscal: TFDTable;
    FTbNotaFiscalItem: TFDTable;
    FDSNF: TDataSource;
    FDSNFI: TDataSource;
    FDBgrdNF : TJvDBUltimGrid;
    FDbGridNFItens : TJvDBUltimGrid;
    FTbProduto: TFDQuery;
    FTbFornecedor: TFDTable;
    FTbShtLancamentos: TTabSheet;
    FTbShtConsultaNF: TTabSheet;
    FNFIQtde: Integer;
    FNFIVlrUnit: Double;
    FNFIVlrTotal: Double;

    CNFIVlrTotal: TJvDBCalcEdit;
    DtEmissaoNF: TJvDBDatePickerEdit;
    DtVencimentoNF: TJvDBDatePickerEdit;
    DtEntSadNF: TJvDBDatePickerEdit;
    Alert: TJvDesktopAlert;
    BtAddItemNF : TJvSpeedButton;
    BtSavarItemNF : TJvSpeedButton;
    PnlDadosNFItens : TjvPanel;

    procedure setNumNF(const Value: Integer);
    procedure setTbNotaFiscal(const Value: TFDTable);
    procedure setTbNotaFiscalItem(const Value: TFDTable);
    procedure setTbProduto(const Value: TFDQuery);
    procedure setTbFornecedor(const Value: TFDTable);
    procedure setTbShtConsultaNF(const Value: TTabSheet);
    procedure setTbShtLancamentos(const Value: TTabSheet);
    procedure setNFIQtde(const Value: Integer);
    procedure setNFIVlrTotal(const Value: Double);
    procedure setNFIVlrUnit(const Value: Double);


  public
    constructor CreateObjTCrtrlEstoque_NF;
    destructor DestroyObjTCrtrlEstoque_NF;

    procedure pEventoNewNF;
    procedure pEventoBtAddItens;
    procedure pEventoBtSavarNF;
    procedure pEventoBtSavarNFItem;
    procedure pEventoUpdateNF;
    procedure pEventoBtCancelarNF;
    procedure pEventoBtDeleteNF;
    function  fpCalcTotalNF : Double;
    function fCalcTotalNFItem(FNFIVlrUnit: Double; FNFIQtde: Double): Double;
    function fSomaVlrItensNF: Double;
    function fProcNFEstoque : Boolean;

  published
    property NumNF: Integer read FNumNF write setNumNF;
    property TbNotaFiscal: TFDTable read FTbNotaFiscal write setTbNotaFiscal;
    property TbNotaFiscalItem: TFDTable read FTbNotaFiscalItem write setTbNotaFiscalItem;
    property TbProduto: TFDQuery read FTbProduto write setTbProduto;
    property TbFornecedor: TFDTable read FTbFornecedor write setTbFornecedor;
    property TbShtLancamentos: TTabSheet read FTbShtLancamentos write setTbShtLancamentos;
    property TbShtConsultaNF: TTabSheet read FTbShtConsultaNF write setTbShtConsultaNF;
    property NFIQtde: Integer read FNFIQtde write setNFIQtde;
    property NFIVlrUnit: Double read FNFIVlrUnit write setNFIVlrUnit;
    property NFIVlrTotal: Double read FNFIVlrTotal write setNFIVlrTotal;
  end;

var
  ID_NF: Integer;


implementation

uses
  UFrmModuloControleEstoque, Classe.Sistema.Mensagens;

{ TCrtrlEstoque_NF }

constructor TCrtrlEstoque_NF.CreateObjTCrtrlEstoque_NF;
begin
  FNumNF := 0;
  ID_NF := 0;
  FTbNotaFiscal := DMPrincipal.TbNotaFiscal;
  FTbNotaFiscalItem := DMPrincipal.TbNotaFiscalItem;
  FTbProduto := DMPrincipal.QryProduto;
  FTbFornecedor := DMPrincipal.TbFornecedor;
  TbShtLancamentos := FrmModuloControleEstoque.TbShtLancamentos;
  TbShtConsultaNF := FrmModuloControleEstoque.TbShtConsultaNF;
  FDSNF := DMPrincipal.DsTbNotaFiscal;
  FDSNFI := DMPrincipal.DsTbNotaFiscalItem;
  DtEmissaoNF := FrmModuloControleEstoque.EdtDtFldDtEmissaoNF;
  DtVencimentoNF := FrmModuloControleEstoque.EdtFldDtVencimentoNF;
  DtEntSadNF := FrmModuloControleEstoque.EdtDtFldDtESNF;
  Alert := FrmModuloControleEstoque.Alert;
  FDBgrdNF := FrmModuloControleEstoque.DbGrdConsultaNF;
  BtAddItemNF := FrmModuloControleEstoque.BtNFAddItens;
  BtSavarItemNF := FrmModuloControleEstoque.BtDNFIBtSavar;
  FDbGridNFItens := FrmModuloControleEstoque.DbGridNFItens;
  PnlDadosNFItens := FrmModuloControleEstoque.PnlDadosNFItens;
end;

destructor TCrtrlEstoque_NF.DestroyObjTCrtrlEstoque_NF;
begin

end;

function TCrtrlEstoque_NF.fCalcTotalNFItem(FNFIVlrUnit: Double; FNFIQtde: Double): Double;
begin
  if (FNFIQtde > 0) and (FNFIVlrUnit > 0) then
  begin
    Result := FNFIQtde * FNFIVlrUnit;
  end;
end;

function TCrtrlEstoque_NF.fpCalcTotalNF: Double;
var
        VlrIcms,VlrIcmsSt,VlrFrete,VlrSeguro,VlrDesconto,
        VlrOutDesp,VlrIpi, VlrProduto : Double;
begin
        Result := 0;
        VlrIcms     := FrmModuloControleEstoque.EdtImpostoNFIcms.Value;
        VlrIcmsSt   := FrmModuloControleEstoque.EdtImpostoNFIcmsST.Value;
        VlrFrete    := FrmModuloControleEstoque.EdtImpostoNFVlrFrete.Value;
        VlrSeguro   := FrmModuloControleEstoque.EdtImpostoNFVlrSeguro.Value;
        VlrDesconto := ((FrmModuloControleEstoque.EdtImpostoNFVlrDesconto.Value) * -1);
        VlrOutDesp  := FrmModuloControleEstoque.EdtImpostoNFVlrOutrasDespesas.Value;
        VlrIpi      := FrmModuloControleEstoque.EdtImpostoNFVlrIPI.Value;
        VlrProduto  := FrmModuloControleEstoque.EdtImpostoNFVlrProdutos.Value;

        Result := Result + VlrIcms+VlrIcmsSt+VlrFrete+VlrDesconto+VlrOutDesp+VlrIpi+VlrProduto;
end;


function TCrtrlEstoque_NF.fProcNFEstoque: Boolean;
var
        IDMov : Integer;
        TpMov : string;
        FDSNF,FDSNFI,FDSENTRADA,FDSENTRADAITEM : Tdatasource;
begin
        try
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
               FDSENTRADA.DataSet.FieldByName('mov_descricao').AsString := 'MOVIMENTA��O ('+TpMov+') NO ESTOQUE';
               FDSENTRADA.DataSet.FieldByName('mov_origem').Asstring := 'M�DULO NF';
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
        Result := True;
        except on E: Exception do
                Result := False;
        end;

end;

function TCrtrlEstoque_NF.fSomaVlrItensNF: Double;
var
  SumT: Double;
begin
  SumT := 0;
  FDSNFI.DataSet.First;
  while not FDSNFI.DataSet.Eof do
  begin
    SumT := SumT + FDSNFI.DataSet.FieldByName('nfi_vlrtotal').AsFloat;
    FDSNFI.DataSet.Next;
  end;

  Result := SumT;

end;

procedure TCrtrlEstoque_NF.pEventoBtCancelarNF;
begin
        FDSNF.DataSet.Cancel;
        DMPrincipal.FDConnection.Rollback;
        PnlDadosNFItens.Enabled := True;
        TbShtConsultaNF.Show;
end;

procedure TCrtrlEstoque_NF.pEventoBtDeleteNF;
begin
        if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
             FDSNF.DataSet.Delete;
             FDSNF.DataSet.Close;
             FDSNF.DataSet.Open;
             TbShtConsultaNF.Show;
             Alert.HeaderText := 'Gest�o Rural';
             Alert.MessageText := 'Nota Fiscal Exclu�da com sucesso!';
             Alert.Execute();
             pAtivarDBGrid(FDBgrdNF);
        end;
end;

procedure TCrtrlEstoque_NF.pEventoBtAddItens;
begin
  FDSNFI.DataSet.Insert;
  FDSNFI.DataSet.FieldByName('nf_id').AsInteger := ID_NF;
  PnlDadosNFItens.Enabled := True;
  BtAddItemNF.Enabled := False;
  BtSavarItemNF.Enabled := True;


end;

procedure TCrtrlEstoque_NF.pEventoBtSavarNF;
begin
  FDSNF.DataSet.FieldByName('nf_procEstoque').AsInteger := 0;
  FDSNF.DataSet.Post;
  FDSNF.DataSet.Refresh;
  DMPrincipal.FDConnection.Commit;
  TbShtConsultaNF.Show;
end;

procedure TCrtrlEstoque_NF.pEventoBtSavarNFItem;
begin
  FDSNFI.DataSet.Post;
  FDSNFI.DataSet.Close;
  FDSNFI.DataSet.Open;
  BtAddItemNF.Enabled := True;
  BtSavarItemNF.Enabled := False;
  PnlDadosNFItens.Enabled := False;
  pAtivarDBGrid(FDbGridNFItens);
  FDSNF.DataSet.FieldByName('nf_vlrprodutos').AsFloat := fSomaVlrItensNF;
end;

procedure TCrtrlEstoque_NF.pEventoNewNF;
begin

    DMPrincipal.FDConnection.InTransaction;
    TbNotaFiscal.Active := True;
    TbNotaFiscalItem.Active := True;
    TbFornecedor.Active := True;
    TbProduto.Active := True;
    BtAddItemNF.Enabled := True;
    BtSavarItemNF.Enabled := False;
    PnlDadosNFItens.Enabled := False;

    FDSNF.DataSet.Insert;
    FDSNF.DataSet.Post;
    FDSNF.DataSet.Last;
    FDSNF.DataSet.Edit;
    ID_NF := FDSNF.DataSet.FieldByName('nf_id').AsInteger;

    DtEmissaoNF.Date := fAjustaDataNull(DtEmissaoNF.Date);
    DtVencimentoNF.Date := fAjustaDataNull(DtVencimentoNF.Date);
    DtEntSadNF.Date := fAjustaDataNull(DtEntSadNF.Date);
  
end;

procedure TCrtrlEstoque_NF.pEventoUpdateNF;
begin
  FDSNFI.DataSet.Open;
  FDSNF.DataSet.Edit;
  ID_NF := FDSNF.DataSet.FieldByName('nf_id').AsInteger;
  BtAddItemNF.Enabled := True;
  BtSavarItemNF.Enabled := False;
  PnlDadosNFItens.Enabled := False;
  pAtivarDBGrid(FDbGridNFItens);
  TbShtLancamentos.Show;
end;

procedure TCrtrlEstoque_NF.setNFIQtde(const Value: Integer);
begin
  FNFIQtde := Value;
end;

procedure TCrtrlEstoque_NF.setNFIVlrTotal(const Value: Double);
begin
  FNFIVlrTotal := Value;
end;

procedure TCrtrlEstoque_NF.setNFIVlrUnit(const Value: Double);
begin
  FNFIVlrUnit := Value;
end;

procedure TCrtrlEstoque_NF.setNumNF(const Value: Integer);
begin
  FNumNF := Value;
end;

procedure TCrtrlEstoque_NF.setTbFornecedor(const Value: TFDTable);
begin
  FTbFornecedor := Value;
end;

procedure TCrtrlEstoque_NF.setTbNotaFiscal(const Value: TFDTable);
begin
  FTbNotaFiscal := Value;
end;

procedure TCrtrlEstoque_NF.setTbNotaFiscalItem(const Value: TFDTable);
begin
  FTbNotaFiscalItem := Value;
end;

procedure TCrtrlEstoque_NF.setTbProduto(const Value: TFDQuery);
begin
  FTbProduto := Value;
end;

procedure TCrtrlEstoque_NF.setTbShtConsultaNF(const Value: TTabSheet);
begin
  FTbShtConsultaNF := Value;
end;

procedure TCrtrlEstoque_NF.setTbShtLancamentos(const Value: TTabSheet);
begin
  FTbShtLancamentos := Value;
end;

end.

