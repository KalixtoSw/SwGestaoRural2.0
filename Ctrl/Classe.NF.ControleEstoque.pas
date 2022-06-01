unit Classe.NF.ControleEstoque;

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  FireDAC.Comp.Client, Vcl.ComCtrls;

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
    procedure setNumNF(const Value: Integer);
    procedure setTbNotaFiscal(const Value: TFDTable);
    procedure setTbNotaFiscalItem(const Value: TFDTable);
    procedure setTbProduto(const Value: TFDQuery);
    procedure setTbFornecedor(const Value: TFDTable);
    procedure setTbShtConsultaNF(const Value: TTabSheet);
    procedure setTbShtLancamentos(const Value: TTabSheet);

  Public
        constructor CreateObjTCrtrlEstoque_NF;
        destructor DestroyObjTCrtrlEstoque_NF;

        procedure pEventoNewNF;
        procedure pEventoBtAddItens;
        procedure pEventoBtSavarNF;

  Published
        property NumNF : Integer                read FNumNF                     write setNumNF;
        property TbNotaFiscal : TFDTable        read FTbNotaFiscal              write setTbNotaFiscal;
        property TbNotaFiscalItem : TFDTable    read FTbNotaFiscalItem          write setTbNotaFiscalItem;
        property TbProduto : TFDQuery           read FTbProduto                 write setTbProduto;
        property TbFornecedor : TFDTable        read FTbFornecedor              write setTbFornecedor;
        property TbShtLancamentos : TTabSheet   read FTbShtLancamentos          write setTbShtLancamentos;
        property TbShtConsultaNF : TTabSheet    read FTbShtConsultaNF           write setTbShtConsultaNF;

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
end;

destructor TCrtrlEstoque_NF.DestroyObjTCrtrlEstoque_NF;
begin

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

procedure TCrtrlEstoque_NF.pEventoNewNF;
begin

        TbNotaFiscal.Active         := True;
        TbFornecedor.Active         := True;
        TbProduto.Active           := True;
        TbNotaFiscalItem.Active     := True;
        TbNotaFiscal.Insert;

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
