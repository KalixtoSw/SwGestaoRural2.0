unit Classe.Semente;//Modulo Genetica de Cultivares

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics, Vcl.WinXPanels, System.Math, JvDesktopAlert, Classe.Sistema.Mensagens,
  Vcl.Dialogs, JvCombobox, FireDAC.Comp.Client, Data.DB, System.UITypes,
  Vcl.StdCtrls, Winapi.Windows, Vcl.DBGrids, Vcl.Grids;
type
        RetTecGenetica = record

                tcs_descricao,tcs_genetica,tcs_tipo   : string;
                tcs_ciclofull    : Integer;
                QryTecGenetica   : TFDQuery;
                DsQryTecGenetica : TDataSource;

        end;

type
        TSemente = Class

        private

        Frm                  : TForm;
        DbgrdTecGenetica     : TJvDBUltimGrid;
        Table                : string;
        IDKey                : string;
        IDKeyVaue            : string;
        IDKeyFilter          : string;
        NCampos              : Integer;
        InsUpd               : string;
        FAlert               : string;
        Dbgrd                : TJvDBUltimGrid;
        FNomeSemente         : string;

        DsTecGenetica        : TDataSet;

        public



        constructor CreateObjTSemente;
        destructor  DestroyObjTSemente;

        procedure setNomeSemente (pNomeSemente : string);
        procedure setAlert        ( pAlert         : string);
        function  getNomeSemente : string;
        function getAlert         : string;


        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;
        function  getSavar: Boolean;
        function  getCancelar: Boolean;

        //functions e procedures adicionais ao projeto
        function  fMontaGrdTecGenetica(Act : string;IdKeyValue : Integer) : RetTecGenetica;
        procedure pAdicionaTecGenetica;
        procedure pSalvarTecGenetica;
        procedure pEventoClickDbGridTec;
        procedure pConectaCamposTecSem;
End;

implementation

uses
     UFrmCadastroSemente;

{ TSemente }

constructor TSemente.CreateObjTSemente;
begin
        FNomeSemente := EmptyStr;

        Frm         := FrmCadastroSemente;
        Dbgrd       := FrmCadastroSemente.DbGrid;
        Table       := 'semente';
        IDKey       := ' smt_Id = ';
        IDKeyVaue   := 'smt_Id';
        IDKeyFilter := 'smt_descricao LIKE ';
        NCampos     := 1;
        InsUpd      := EmptyStr;

        DbgrdTecGenetica := FrmCadastroSemente.DbGrdTecGenetica;
end;

destructor TSemente.DestroyObjTSemente;
begin

end;

function TSemente.getAlert: string;
begin
     Result := FAlert;
end;

function TSemente.getCancelar: Boolean;
begin
        Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
        plimpaDadosInterface(Frm, 1);
        DbgrdTecGenetica.DataSource.DataSet.Cancel;
        setFrmOnShow;
end;

function TSemente.getNomeSemente: string;
begin
        Result  :=      FNomeSemente;
end;

function TSemente.getSavar: Boolean;
var
      VlrKeyUpd : Integer;
begin
      VlrKeyUpd := 0;

              if (InsUpd = 'INSERT') then
               begin
                setAlert('Registro inserido com sucesso! ');
                Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

               end else if (InsUpd = 'UPDATE') then begin
                setAlert('Registro alterado com sucesso! ');
                VlrKeyUpd := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
                Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IntToStr(VlrKeyUpd), NCampos);

              end;
                plimpaDadosInterface(Frm, 1);
                Result := True;
                DbgrdTecGenetica.DataSource.DataSet.Cancel;
end;

procedure TSemente.pAdicionaTecGenetica;
begin
     FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height  := 160;
     FrmCadastroSemente.PnlTecnologiaFields.Visible := True;
     FrmCadastroSemente.EdTecDescricao.SetFocus;
     DbgrdTecGenetica.DataSource.DataSet.Insert;
     pConectaCamposTecSem;
end;

procedure TSemente.pConectaCamposTecSem;
begin
     FrmCadastroSemente.EdTecDescricao.DataSource            := DbgrdTecGenetica.DataSource;
     FrmCadastroSemente.EdTecDescricao.DataField             := 'tcs_descricao';
     FrmCadastroSemente.EdtTecGenetica.DataSource            := DbgrdTecGenetica.DataSource;
     FrmCadastroSemente.EdtTecGenetica.DataField             := 'tcs_genetica';
     FrmCadastroSemente.CbbTecGeneticaTipo.DataSource        := DbgrdTecGenetica.DataSource;
     FrmCadastroSemente.CbbTecGeneticaTipo.DataField         := 'tcs_tipo';
     FrmCadastroSemente.EdtTecGeneticaCiclo.DataSource       := DbgrdTecGenetica.DataSource;
     FrmCadastroSemente.EdtTecGeneticaCiclo.DataField        := 'tcs_ciclofull';
end;

procedure TSemente.pSalvarTecGenetica;
begin
     DbgrdTecGenetica.DataSource.DataSet.FieldByName('smt_Id').AsInteger := Dbgrd.DataSource.DataSet.FieldByName('smt_Id').AsInteger;
     DbgrdTecGenetica.DataSource.DataSet.Post;
end;

procedure TSemente.pEventoClickDbGridTec;
begin
     FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height  := 160;
     FrmCadastroSemente.PnlTecnologiaFields.Visible := True;
     FrmCadastroSemente.EdTecDescricao.SetFocus;

     try
        DbgrdTecGenetica.DataSource.DataSet.Edit;
        pConectaCamposTecSem;

     except on E: Exception do
     end;

end;

function TSemente.fMontaGrdTecGenetica(Act : string; IdKeyValue : Integer) : RetTecGenetica;
var
        Qry : TFDQuery;
        SqlCond : string;
        DsQry   : TDataSource;
begin
        if Act = 'UPDATE' then
         BEGIN
              try
                  SqlCond := 'SELECT * FROM tecnologia_semente WHERE smt_Id = '+IntToStr(IdKeyValue);
                  Qry        := TFDQuery.Create(nil);
                  DsQry      := TDataSource.Create(nil);
                  Qry.Connection := DMPrincipal.FDConnection;
                  Qry.Close;
                  Qry.SQL.Clear;
                  Qry.SQL.Add(SqlCond);
                  Qry.Open;
                  Qry.Active := True;
                  Qry.Refresh;
              finally
                  Result.QryTecGenetica := Qry;
                  DsQry.DataSet         := Qry;
              end;

             Result.DsQryTecGenetica     := DsQry;
             DbgrdTecGenetica.DataSource :=  DsQry;

             Result.tcs_descricao  := DsQry.DataSet.FieldByName('tcs_descricao').AsString;
             Result.tcs_genetica   := DsQry.DataSet.FieldByName('tcs_genetica').AsString;
             Result.tcs_tipo       := DsQry.DataSet.FieldByName('tcs_tipo').AsString;
             Result.tcs_ciclofull  := DsQry.DataSet.FieldByName('tcs_ciclofull').AsInteger;
         END;
         // Espa�o para Insert

end;

procedure TSemente.setAcaoAdicionarEditar(ActInsUpd: string);
begin
        if ActInsUpd = 'INSERT' then
        begin
            FrmCadastroSemente.PnlTecnologiaBtsSaveCancel.Visible       := False;
            FrmCadastroSemente.PnlTecnologiaFields.Visible              := False;
            FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height           := 34;

            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

        end
        else if ActInsUpd = 'UPDATE' then
        begin

            FrmCadastroSemente.PnlTecnologiaBtsSaveCancel.Visible       := True;
            FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height           := 34;
            fMontaGrdTecGenetica(ActInsUpd,Dbgrd.DataSource.DataSet.FieldByName('smt_Id').AsInteger);
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKeyVaue,IDKey, NCampos);
            pCarregaDadosInterface(Frm);
        end;
end;

procedure TSemente.setAlert(pAlert: string);
begin
        FAlert  :=      pAlert;
end;

procedure TSemente.setDelete;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
      setAlert('Registro exclu�do com sucesso! ');
end;

procedure TSemente.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
      FrmCadastroSemente.PnlTecnologiaBtsSaveCancel.Visible     := False;
      FrmCadastroSemente.PnlTecnologiaFields.Visible            := False;
      FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height           := 34;
end;

procedure TSemente.setNomeSemente(pNomeSemente: string);
begin
        FNomeSemente    :=      pNomeSemente;
end;

procedure TSemente.setPesquisaCampo(Campo, Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if FrmCadastroSemente.RbConsBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if FrmCadastroSemente.RbConsFull.Checked then
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
