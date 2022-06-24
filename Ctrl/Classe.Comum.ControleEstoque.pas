unit Classe.Comum.ControleEstoque;

interface

uses
  JvPanel, Classe.Functions, Data.DB, System.SysUtils,Classe.Conexao,
  Vcl.Dialogs;

type
      TCrtlEstoque = class
      Private
    FPnlBtEstFisico: TJvPanel;
    FPnlBtEntradas: TJvPanel;
    FPnlBtCadProduto: TJvPanel;
    FPnlBtCadGerais: TJvPanel;
    FPnlBtSaidas: TJvPanel;

    procedure SetPnlBtEstFisico(const Value: TJvPanel);
    procedure setPnlBtEntradas(const Value: TJvPanel);
    procedure setPnlBtCadProduto(const Value: TJvPanel);
    procedure setPnlBtCadGerais(const Value: TJvPanel);
    procedure setPnlBtSaidas(const Value: TJvPanel);

      Public
        constructor CreateObjTCrtlEstoque;
        destructor  DestroyObjTCrtlEstoque;
        procedure pCtrlPosicaopnlBt1(PnlFundo : TJvPanel;Pos : Integer);
        procedure pCtrlPosicaopnlBt2(PnlFundo : TJvPanel;Pos : Integer);
        procedure pCtrlPosicaopnlBt3(PnlFundo : TJvPanel;Pos : Integer);
        procedure pCtrlPosicaopnlBt4(PnlFundo : TJvPanel;Pos : Integer);
        procedure pCtrlPosicaopnlBt5(PnlFundo : TJvPanel;Pos : Integer);


       published
        property PnlBtEstFisico : TJvPanel read FPnlBtEstFisico         write SetPnlBtEstFisico;
        property PnlBtEntradas  : TJvPanel read FPnlBtEntradas          write setPnlBtEntradas;
        property PnlBtCadProduto: TJvPanel read FPnlBtCadProduto        write setPnlBtCadProduto;
        property PnlBtSaidas    : TJvPanel read FPnlBtSaidas            write setPnlBtSaidas;
        property PnlBtRelatorios: TJvPanel read FPnlBtCadGerais        write setPnlBtCadGerais;

      end;

      function fCtrlSaldoEstoqueproduto(IdProduto: Integer; IdEmbalagem : Integer): Double;

implementation

uses
     UFrmModuloControleEstoque ;

{ TCrrlEstoque }

constructor TCrtlEstoque.CreateObjTCrtlEstoque;
begin
        SetPnlBtEstFisico(FrmModuloControleEstoque.PnlFundoBtsNavPosicaoFisica);
        setPnlBtEntradas(FrmModuloControleEstoque.PnlFundoBtsNavEntradas);
        setPnlBtCadProduto(FrmModuloControleEstoque.PnlFundoBtsNavCadProduto);
        setPnlBtSaidas(FrmModuloControleEstoque.PnlFundoBtsNavSaida);
        setPnlBtCadGerais(FrmModuloControleEstoque.PnlFundoBtsNavCadGerais);
end;

destructor TCrtlEstoque.DestroyObjTCrtlEstoque;
begin

end;

procedure TCrtlEstoque.pCtrlPosicaopnlBt1(PnlFundo : TJvPanel;Pos : Integer);
begin
        FPnlBtEstFisico.Height    := PnlFundo.Height - 10;
        FPnlBtEstFisico.Left      := PnlFundo.Left+Pos;
        FPnlBtEstFisico.Top       := 5;
        pMakeRounded(FPnlBtEstFisico);
end;

procedure TCrtlEstoque.pCtrlPosicaopnlBt2(PnlFundo : TJvPanel;Pos : Integer);
begin
        FPnlBtEntradas.Height    := PnlFundo.Height - 10;
        FPnlBtEntradas.Left      := PnlFundo.Left+Pos;
        FPnlBtEntradas.Top       := 5;
        pMakeRounded(FPnlBtEntradas);
end;

procedure TCrtlEstoque.pCtrlPosicaopnlBt3(PnlFundo: TJvPanel; Pos: Integer);
begin
        FPnlBtCadProduto.Height    := PnlFundo.Height - 10;
        FPnlBtCadProduto.Left      := PnlFundo.Left+Pos;
        FPnlBtCadProduto.Top       := 5;
        pMakeRounded(FPnlBtCadProduto);
end;

procedure TCrtlEstoque.pCtrlPosicaopnlBt4(PnlFundo: TJvPanel; Pos: Integer);
begin
        FPnlBtSaidas.Height    := PnlFundo.Height - 10;
        FPnlBtSaidas.Left      := PnlFundo.Left+Pos;
        FPnlBtSaidas.Top       := 5;
        pMakeRounded(FPnlBtSaidas);
end;

procedure TCrtlEstoque.pCtrlPosicaopnlBt5(PnlFundo: TJvPanel; Pos: Integer);
begin
        FPnlBtCadGerais.Height    := PnlFundo.Height - 10;
        FPnlBtCadGerais.Left      := PnlFundo.Left+Pos;
        FPnlBtCadGerais.Top       := 5;
        pMakeRounded(FPnlBtCadGerais);
end;

procedure TCrtlEstoque.setPnlBtCadProduto(const Value: TJvPanel);
begin
  FPnlBtCadProduto := Value;
end;

procedure TCrtlEstoque.setPnlBtEntradas(const Value: TJvPanel);
begin
  FPnlBtEntradas := Value;
end;

procedure TCrtlEstoque.SetPnlBtEstFisico(const Value: TJvPanel);
begin
  FPnlBtEstFisico := Value;
end;

procedure TCrtlEstoque.setPnlBtCadGerais(const Value: TJvPanel);
begin
  FPnlBtCadGerais := Value;
end;

procedure TCrtlEstoque.setPnlBtSaidas(const Value: TJvPanel);
begin
  FPnlBtSaidas := Value;
end;

function fCtrlSaldoEstoqueproduto(IdProduto: Integer; IdEmbalagem : Integer): Double;
Var
        Sql1,Sql2,Sql3,Sql4,SqlAux : string;
begin
        //Montar o controle de estoque para o produto por embalagem, pois pode haver o mesmo produto em embalagens diferentes

        if IdProduto = 0 then
        begin
            SqlAux := '';
        end else begin
                SqlAux := 'WHERE p.prd_idproduto = '+IntToStr(IdProduto);
        end;

        if (IdProduto > 0) and (IdEmbalagem > 0) then
        begin
             SqlAux := SqlAux + ' AND pe.prde_Id = '+IntToStr(IdEmbalagem);
        end;

        Sql1 := 'SELECT p.prd_idproduto,pe.prde_Id, p.prd_nome,pe.prde_descricao, p.prd_nome, p.prd_fabricante, p.prd_tipo, p.prd_status, m.mov_tipo, SUM(mp.mp_qtdUnit),SUM( mp.mp_qtdContabil) AS ''Ctrl_Estoque'',';
        Sql2 := ' AVG(mp.mp_precoCompra) AS ''Preco_Medio'', SUM(mp.mp_precoTotal) AS ''Valor_Geral'' ';
        Sql3 := ' FROM movimentacao m INNER JOIN movimentacao_produto mp ON m.mov_id = mp.mov_id INNER JOIN produto p ON mp.prd_idproduto = p.prd_idproduto INNER JOIN produto_embalagem pe ON pe.prde_Id = mp.prde_Id ';
        Sql4 := SqlAux+' GROUP BY p.prd_idproduto, p.prd_nome,pe.prde_descricao;';

        DMPrincipal.QryCtrlEstProduto.Close;
        DMPrincipal.QryCtrlEstProduto.SQL.Clear;
        DMPrincipal.QryCtrlEstProduto.SQL.Add(Sql1);
        DMPrincipal.QryCtrlEstProduto.SQL.Add(Sql2);
        DMPrincipal.QryCtrlEstProduto.SQL.Add(Sql3);
        DMPrincipal.QryCtrlEstProduto.SQL.Add(Sql4);
        DMPrincipal.QryCtrlEstProduto.Open;
        Result := DMPrincipal.QryCtrlEstProduto.FieldByName('Ctrl_Estoque').AsFloat;

end;

end.
