unit Classe.Safra;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants;
      type
      TSafra = class
      Private


      FStatusSafra          : string;
      FNomeSafra            : string;
      FDtInicioSafra        : TDate;
      FDtTerminoSafra       : TDate;

      Frm: TForm;
      Dbgrd: TJvDBUltimGrid;
      Table: string;
      IDKey: string;
      IDKeyVaue: string;
      NCampos: Integer;
      InsUpd: string;
      IDKeyFilter: string;


      Public

           constructor CreateObjTSafra;
           destructor DestroyObjTSafra;

           procedure setStatusSafra       (pStatusSafra          : string );
           procedure setNomeSafra         (pNomeSafra            : string );
           procedure setDtInicioSafra     (pDtInicioSafra        : TDate );
           procedure setDtTerminoSafra    (pDtTerminoSafra       : TDate );

           function  geStatusSafra     : string;
           function  geNomeSafra       : string;
           function  geDtInicioSafra   : TDate;
           function  geDtTerminoSafra  : TDate;

           function  getSavarSafra: Boolean;
           function  getCancelarSafra: Boolean;
           procedure setPesquisaCampo(Campo: string; Key: string);
           procedure setAcaoAdicionarEditar(ActInsUpd: string);
           procedure setFrmOnShow;
           procedure setDeleteSafra;

      end;

implementation

uses
     UFrmCadastroSafra;






{ TTalha }

constructor TSafra.CreateObjTSafra;
begin

      FStatusSafra       := EmptyStr;
      FNomeSafra         := EmptyStr;
      FDtInicioSafra     := 0;
      FDtTerminoSafra    := 0;

      Frm         := FrmCadastroSafra;
      Dbgrd       := FrmCadastroSafra.DbGrid;
      Table       := 'Safra';
      IDKey       := ' sf_IdSafra = ';
      IDKeyVaue   := 'sf_IdSafra';
      IDKeyFilter := 'sf_descricao LIKE ';
      NCampos     := 4;
      InsUpd      := EmptyStr;


end;

destructor TSafra.DestroyObjTSafra;
begin

end;


function TSafra.geDtInicioSafra: TDate;
begin
      Result := FDtInicioSafra;
end;

function TSafra.geDtTerminoSafra: TDate;
begin
      Result := FDtTerminoSafra;
end;

function TSafra.geNomeSafra: string;
begin
      Result := FNomeSafra;
end;

function TSafra.geStatusSafra: string;
begin
      Result := FStatusSafra;
end;

function TSafra.getCancelarSafra: Boolean;
begin
    Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
    plimpaDadosInterface(Frm, 1);
    setFrmOnShow;
end;

function TSafra.getSavarSafra: Boolean;
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


procedure TSafra.setAcaoAdicionarEditar(ActInsUpd: string);
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

procedure TSafra.setDeleteSafra;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
end;

procedure TSafra.setDtInicioSafra(pDtInicioSafra: TDate);
begin
      FDtInicioSafra :=  pDtInicioSafra;
end;

procedure TSafra.setDtTerminoSafra(pDtTerminoSafra: TDate);
begin
      FDtTerminoSafra := pDtTerminoSafra;
end;

procedure TSafra.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
end;

procedure TSafra.setNomeSafra(pNomeSafra: string);
begin
      FNomeSafra := pNomeSafra;
end;

procedure TSafra.setPesquisaCampo(Campo, Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if FrmCadastroSafra.RbConsBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if FrmCadastroSafra.RbConsFull.Checked then
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

procedure TSafra.setStatusSafra(pStatusSafra: string);
begin
      FStatusSafra := pStatusSafra;
end;

end.
