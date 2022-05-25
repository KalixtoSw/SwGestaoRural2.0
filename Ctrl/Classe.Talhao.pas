unit Classe.Talhao;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes;
      type
      TTalhao = class
      Private

      FAreaTalhao : Double;
      FTipoTalhao : string;
      FNomeTalhao : string;
      FLatitude   : Double;
      FLongitude  : Double;
      FLinkMapa   : string;

      Frm: TForm;
      Dbgrd: TJvDBUltimGrid;
      Table: string;
      IDKey: string;
      IDKeyVaue: string;
      NCampos: Integer;
      InsUpd: string;
      IDKeyFilter: string;


      Public

            constructor CreateObjTTalhao;
            destructor DestroyObjTTalhao;


           procedure setAreaTalhao(pAreaTalhao       : Double );
           procedure setTipoTalhao(pTipoTalhao       : string );
           procedure setNomeTalhao(pNomeTalhao       : string );
           procedure setLatitude(pLatitude           : Double );
           procedure setLongitude(pLongitude         : Double );
           procedure setLinkMapa(pLinkMapa           : string );

           function  getAreaTalhao  : Double;
           function  getTipoTalhao  : string;
           function  getNomeTalhao  : string;
           function  getLatitude    : Double;
           function  getLongitude   : Double;
           function  getLinkMapa    : string;

           function getSavarTalhao: Boolean;
           function getCancelarTalhao: Boolean;
           procedure setPesquisaCampo(Campo: string; Key: string);
           procedure setAcaoAdicionarEditar(ActInsUpd: string);
           procedure setFrmOnShow;
           procedure setDeleteTalhao;

      end;

implementation

uses
     UFrmCadastroTalhao;






{ TTalha }

constructor TTalhao.CreateObjTTalhao;
begin
      FAreaTalhao := 0;
      FTipoTalhao := EmptyStr;
      FNomeTalhao := EmptyStr;
      FLatitude   := 0;
      FLongitude  := 0;
      FLinkMapa   := EmptyStr;

      Frm         := FrmCadastroTalhao;
      Dbgrd       := FrmCadastroTalhao.DbGrid;
      Table       := 'Talhao';
      IDKey       := ' tbl_idTalhao = ';
      IDKeyVaue   := 'tbl_idTalhao';
      IDKeyFilter := 'tbl_descricao LIKE ';
      NCampos     := 6;
      InsUpd      := EmptyStr;


end;

destructor TTalhao.DestroyObjTTalhao;
begin

end;

function TTalhao.getAreaTalhao: Double;
begin

end;

function TTalhao.getCancelarTalhao: Boolean;
begin
    Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
    plimpaDadosInterface(Frm, 1);
    setFrmOnShow;
end;

function TTalhao.getLatitude: Double;
begin

end;

function TTalhao.getLinkMapa: string;
begin

end;

function TTalhao.getLongitude: Double;
begin

end;

function TTalhao.getNomeTalhao: string;
begin

end;

function TTalhao.getSavarTalhao: Boolean;
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

function TTalhao.getTipoTalhao: string;
begin

end;

procedure TTalhao.setAcaoAdicionarEditar(ActInsUpd: string);
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

procedure TTalhao.setAreaTalhao(pAreaTalhao: Double);
begin

end;

procedure TTalhao.setDeleteTalhao;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
end;

procedure TTalhao.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
end;
procedure TTalhao.setLatitude(pLatitude: Double);
begin

end;

procedure TTalhao.setLinkMapa(pLinkMapa: string);
begin

end;

procedure TTalhao.setLongitude(pLongitude: Double);
begin

end;

procedure TTalhao.setNomeTalhao(pNomeTalhao: string);
begin

end;

procedure TTalhao.setPesquisaCampo(Campo, Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if FrmCadastroTalhao.RbConsBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if FrmCadastroTalhao.RbConsFull.Checked then
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

procedure TTalhao.setTipoTalhao(pTipoTalhao: string);
begin

end;

end.
