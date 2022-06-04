unit Classe.NF.ControleEstoque;

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  FireDAC.Comp.Client, Vcl.ComCtrls, JvDBControls, Vcl.Dialogs;

  type
      TCrtrlEstoque_NF = class
  Private
    FNumNF: Integer;
    FTbNotaFiscal: TFDTable;
    FTbNotaFiscalItem: TFDTable;
    FTbProduto: TFDQuery;
    FTbFornecedor: TFDTable;
    FTbShtLancamentos: TTabSheet;
    FTbShtConsultaNF: TTabSheet;
    FNFIQtde: Integer;
    FNFIVlrUnit: Double;
    FNFIVlrTotal: Double;

    CNFIQtde    : TJvDBCalcEdit;
    CNFIVlrUnit : TJvDBCalcEdit;
    CNFIVlrTotal: TJvDBCalcEdit;
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

  Public
        constructor CreateObjTCrtrlEstoque_NF;
        destructor DestroyObjTCrtrlEstoque_NF;

        procedure pEventoNewNF;
        procedure pEventoBtAddItens;
        procedure pEventoBtSavarNF;
        procedure pEventoBtSavarNFItem;
        function  fCalcTotalNFItem : Double;

  Published
        property NumNF : Integer                read FNumNF                     write setNumNF;
        property TbNotaFiscal : TFDTable        read FTbNotaFiscal              write setTbNotaFiscal;
        property TbNotaFiscalItem : TFDTable    read FTbNotaFiscalItem          write setTbNotaFiscalItem;
        property TbProduto : TFDQuery           read FTbProduto                 write setTbProduto;
        property TbFornecedor : TFDTable        read FTbFornecedor              write setTbFornecedor;
        property TbShtLancamentos : TTabSheet   read FTbShtLancamentos          write setTbShtLancamentos;
        property TbShtConsultaNF : TTabSheet    read FTbShtConsultaNF           write setTbShtConsultaNF;
        property NFIQtde        : Integer       read FNFIQtde                   write setNFIQtde;
        property NFIVlrUnit     : Double        read FNFIVlrUnit                write setNFIVlrUnit;
        property NFIVlrTotal    : Double        read FNFIVlrTotal               write setNFIVlrTotal;
  end;


implementation

uses
     UFrmModuloControleEstoque;

{ TCrtrlEstoque_NF }

constructor TCrtrlEstoque_NF.CreateObjTCrtrlEstoque_NF;
begin
        FNumNF  := 0;
        FTbNotaFiscal           :=      DMPrincipal.TbNotaFiscal;
        FTbNotaFiscalItem       :=      DMPrincipal.TbNotaFiscalItem;
        FTbProduto              :=      DMPrincipal.QryProduto;
        FTbFornecedor           :=      DMPrincipal.TbFornecedor;
        TbShtLancamentos        :=      FrmModuloControleEstoque.TbShtLancamentos;
        TbShtConsultaNF         :=      FrmModuloControleEstoque.TbShtConsultaNF;
        CNFIQtde                :=      FrmModuloControleEstoque.EdtDNFIQdte;
        CNFIVlrUnit             :=      FrmModuloControleEstoque.EdtDNFIVlrUnit;
end;

destructor TCrtrlEstoque_NF.DestroyObjTCrtrlEstoque_NF;
begin

end;

function TCrtrlEstoque_NF.fCalcTotalNFItem: Double;
begin
        setNFIQtde(CNFIQtde.AsInteger);
        setNFIVlrUnit(CNFIVlrUnit.Value);

        if (FNFIQtde > 0) and (FNFIVlrUnit > 0) then
        begin
             Result := FNFIQtde * FNFIVlrUnit;
        end;
end;

procedure TCrtrlEstoque_NF.pEventoBtAddItens;
begin
        TbNotaFiscal.Post;
        TbNotaFiscal.Last;
        TbNotaFiscal.Edit;
        TbNotaFiscalItem.Insert;
end;

procedure TCrtrlEstoque_NF.pEventoBtSavarNF;
begin
        DMPrincipal.TbNotaFiscal.Post;
        TbShtConsultaNF.Show;
end;

procedure TCrtrlEstoque_NF.pEventoBtSavarNFItem;
begin
        try
             TbNotaFiscalItem.Post;
             TbNotaFiscalItem.Refresh;
        except on E: Exception do


        end;
end;

procedure TCrtrlEstoque_NF.pEventoNewNF;
begin

        TbNotaFiscal.Active         := True;
        TbFornecedor.Active         := True;
        TbProduto.Active            := True;
        TbNotaFiscalItem.Active     := True;
        TbNotaFiscal.Insert;

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
