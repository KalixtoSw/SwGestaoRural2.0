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
                DsQryTecGenetica : TDataSource;
        end;

type
        TSemente = Class

        private

        Frm                  : TForm;
        Dbgrd                : TJvDBUltimGrid;
        DbgrdTecGenetica     : TJvDBUltimGrid;
        Table                : string;
        IDKey                : string;
        IDKeyVaue            : string;
        IDKeyFilter          : string;
        NCampos              : Integer;
        InsUpd               : string;
        FAlert               : string;

        FNomeSemente         : string;

        public

        DsTecGenetica : TDataSource;

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
        function  fMontaGrdTecGenetica(Act : Integer) : RetTecGenetica;
        procedure pAdicionaTecGenetica;
        procedure pSalvarTecGenetica;
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

end;

procedure TSemente.pAdicionaTecGenetica;
begin
     FrmCadastroSemente.PnlCtrlFieldTecGenetica.Height  := 160;
     FrmCadastroSemente.PnlTecnologiaFields.Visible := True;
     fMontaGrdTecGenetica(0);
     FrmCadastroSemente.EdTecDescricao.SetFocus;
end;

procedure TSemente.pSalvarTecGenetica;
begin
     fMontaGrdTecGenetica(1);
end;

function TSemente.fMontaGrdTecGenetica(Act : Integer) : RetTecGenetica;
var
        Vlrsmt_Id : Integer;
begin
        Vlrsmt_Id := Dbgrd.DataSource.DataSet.FieldByName('smt_Id').AsInteger;
        if (Act = 0) or (Act = 2) then
        begin
        try
                DsTecGenetica := fMontaQryTempExec('select * from tecnologia_semente WHERE smt_Id = '+IntToStr(Vlrsmt_Id)+' ORDER BY DESC smt_Id');
                DbgrdTecGenetica.DataSource := DsTecGenetica;
                FrmCadastroSemente.EdTecDescricao.DataSource      := DsTecGenetica;
                FrmCadastroSemente.EdTecDescricao.DataField       := 'tcs_descricao';
                FrmCadastroSemente.CbbTecGeneticaTipo.DataSource  := DsTecGenetica;
                FrmCadastroSemente.CbbTecGeneticaTipo.DataField   := 'tcs_tipo';
                FrmCadastroSemente.EdtTecGenetica.DataSource      := DsTecGenetica;
                FrmCadastroSemente.EdtTecGenetica.DataField       := 'tcs_genetica';
                FrmCadastroSemente.EdtTecGeneticaCiclo.DataSource := DsTecGenetica;
                FrmCadastroSemente.EdtTecGeneticaCiclo.DataField  := 'tcs_ciclofull';

                Result.tcs_descricao := DsTecGenetica.DataSet.FieldByName('tcs_descricao').AsString;
                Result.tcs_genetica  := DsTecGenetica.DataSet.FieldByName('tcs_genetica').AsString;
                Result.tcs_tipo      := DsTecGenetica.DataSet.FieldByName('tcs_tipo').AsString;
                Result.tcs_ciclofull := DsTecGenetica.DataSet.FieldByName('tcs_ciclofull').AsInteger;

                Result.DsQryTecGenetica := DsTecGenetica;

                if Act = 0 then
                begin
                        DsTecGenetica.DataSet.Refresh;
                        DsTecGenetica.DataSet.Insert;
                end;

        except on E: Exception do
        end;
        end else if Act = 1 then begin

                if DsTecGenetica.DataSet.State in [dsInsert,dsEdit] then
                begin
                        DsTecGenetica.DataSet.FieldByName('smt_Id').AsInteger := Vlrsmt_Id;
                        DsTecGenetica.DataSet.Post;
                        DsTecGenetica.DataSet.Close;
                        DsTecGenetica.DataSet.Open;
                        fMontaGrdTecGenetica(2);
                end;
        end;

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
            fMontaGrdTecGenetica(2);
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
