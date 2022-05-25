unit Classe.PropriedadeRural;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics;

type
        TPropriedadeRural = class
        private

        FNomeResumido   : string;
        FAreaTotal      : Double;
        FAreaAgricola   : Double;
        FnumReceita     : integer;
        FCodigoIncra    : Integer;
        FNumMatricula   : Integer;
        FObservacao     : string;
        Ffoto           : TPicture;

        Frm: TForm;
        Dbgrd: TJvDBUltimGrid;
        Table: string;
        IDKey: string;
        IDKeyVaue: string;
        NCampos: Integer;
        InsUpd: string;
        IDKeyFilter: string;

        public

        constructor CreateObjTPropriedadeRural;
        destructor DestryObtTPropriedadeRural;

        procedure setNomeResumido ( pNomeResumido  : string);
        procedure setAreaTotal    ( pAreaTotal     : Double);
        procedure setAreaAgricola ( pAreaAgricola  : Double);
        procedure setnumReceita   ( pnumReceita    : integer);
        procedure setCodigoIncra  ( pCodigoIncra   : Integer);
        procedure setNumMatricula ( pNumMatricula  : Integer);
        procedure setObservacao   ( pObservacao    : string);
        procedure setfoto         ( pfoto          : TPicture);

        function getNomeResumido  : string;
        function getAreaTotal     : Double;
        function getAreaAgricola  : Double;
        function getnumReceita    : integer;
        function getCodigoIncra   : Integer;
        function getNumMatricula  : Integer;
        function getObservacao    : string;
        function getfoto          : TPicture;

        function  getSavar: Boolean;
        function  getCancelar: Boolean;
        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;

        end;


implementation

uses
        UFrmCadastroPropriedadeRural;


{ TPropriedadeRural }

constructor TPropriedadeRural.CreateObjTPropriedadeRural;
begin
        FNomeResumido   := EmptyStr;
        FAreaTotal      := 0;
        FAreaAgricola   := 0;
        FnumReceita     := 0;
        FCodigoIncra    := 0;
        FNumMatricula   := 0;
        FObservacao     := EmptyStr;
        Ffoto           := nil;

        Frm         := FrmCadastroPropriedadeRural;
        Dbgrd       := FrmCadastroPropriedadeRural.DbGrid;
        Table       := 'PropriedadeRural';
        IDKey       := ' pr_idPropriedadeRural = ';
        IDKeyVaue   := 'pr_idPropriedadeRural';
        IDKeyFilter := 'pr_nomeResumido LIKE ';
        NCampos     := 8;
        InsUpd      := EmptyStr;
end;

destructor TPropriedadeRural.DestryObtTPropriedadeRural;
begin

end;

function TPropriedadeRural.getAreaAgricola: Double;
begin

end;

function TPropriedadeRural.getAreaTotal: Double;
begin

end;

function TPropriedadeRural.getCancelar: Boolean;
begin
        Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
        plimpaDadosInterface(Frm, 1);
        setFrmOnShow;
end;

function TPropriedadeRural.getCodigoIncra: Integer;
begin

end;

function TPropriedadeRural.getfoto: TPicture;
begin

end;

function TPropriedadeRural.getNomeResumido: string;
begin

end;

function TPropriedadeRural.getNumMatricula: Integer;
begin

end;

function TPropriedadeRural.getnumReceita: integer;
begin

end;

function TPropriedadeRural.getObservacao: string;
begin

end;

function TPropriedadeRural.getSavar: Boolean;
var
      VlrKeyUpd : Integer;
begin
      VlrKeyUpd := 0;
      if (InsUpd = 'INSERT') then
      begin
            Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end else if (InsUpd = 'UPDATE') then begin
            VlrKeyUpd := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
            Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IntToStr(VlrKeyUpd), NCampos);
      end;
      plimpaDadosInterface(Frm, 1);
end;

procedure TPropriedadeRural.setAcaoAdicionarEditar(ActInsUpd: string);
begin
    if ActInsUpd = 'INSERT' then
      begin
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end
  else if ActInsUpd = 'UPDATE' then
      begin
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKeyVaue,IDKey, NCampos);
            pCarregaDadosInterface(Frm);
      end;
end;

procedure TPropriedadeRural.setAreaAgricola(pAreaAgricola: Double);
begin

end;

procedure TPropriedadeRural.setAreaTotal(pAreaTotal: Double);
begin

end;

procedure TPropriedadeRural.setCodigoIncra(pCodigoIncra: Integer);
begin

end;

procedure TPropriedadeRural.setDelete;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
end;

procedure TPropriedadeRural.setfoto(pfoto: TPicture);
begin

end;

procedure TPropriedadeRural.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
end;

procedure TPropriedadeRural.setNomeResumido(pNomeResumido: string);
begin

end;

procedure TPropriedadeRural.setNumMatricula(pNumMatricula: Integer);
begin

end;

procedure TPropriedadeRural.setnumReceita(pnumReceita: integer);
begin

end;

procedure TPropriedadeRural.setObservacao(pObservacao: string);
begin

end;

procedure TPropriedadeRural.setPesquisaCampo(Campo, Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if FrmCadastroPropriedadeRural.RbConsBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if FrmCadastroPropriedadeRural.RbConsFull.Checked then
    begin
      VlrBusca := '%' + Campo + '%';
    end
    else
    begin
      VlrBusca := Campo;
    end;

    fEventoConsultaQuery(VlrBusca, Table, IDKeyFilter, IDKeyVaue, NCampos);
    pAtivarDBGrid(Dbgrd);

end;
end;

end.
