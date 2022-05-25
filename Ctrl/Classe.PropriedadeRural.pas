unit Classe.PropriedadeRural;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics, Vcl.WinXPanels, System.Math, JvDesktopAlert, Classe.Sistema.Mensagens,
  Vcl.Dialogs;

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
        FDataAquisicao  : TDate;
        FAlert          : string;

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
        procedure setAlert        ( pAlert         : string);
        procedure setDataAquisicao( pDataAquisicao : TDate);

        function getNomeResumido  : string;
        function getAreaTotal     : Double;
        function getAreaAgricola  : Double;
        function getnumReceita    : integer;
        function getCodigoIncra   : Integer;
        function getNumMatricula  : Integer;
        function getObservacao    : string;
        function getfoto          : TPicture;
        function getAlert         : string;
        function getDataAquisicao : TDate;

        function  getSavar: Boolean;
        function  getCancelar: Boolean;
        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;
        procedure setBtSubMenu1 (Crd : TCard);
        function  getValidaAreaTotal : boolean;

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
        FDataAquisicao  := 0;

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

function TPropriedadeRural.getAlert: string;
begin
        Result := FAlert;
end;

function TPropriedadeRural.getAreaAgricola: Double;
begin
        Result := FAreaAgricola;
end;

function TPropriedadeRural.getAreaTotal: Double;
begin
        Result := FAreaTotal;
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

function TPropriedadeRural.getDataAquisicao: TDate;
begin
        Result := FDataAquisicao;
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

      if (FrmCadastroPropriedadeRural.CalCampo3.Value > 0) and (FrmCadastroPropriedadeRural.CalCampo4.Value > 0) then
      begin
             if (getValidaAreaTotal = True) then
             begin
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
             end else begin
                Result := False;
                  Exit;
             end;
      end;


end;

procedure TPropriedadeRural.setAcaoAdicionarEditar(ActInsUpd: string);
begin
    if ActInsUpd = 'INSERT' then
      begin
            FrmCadastroPropriedadeRural.BtSubMenu1.Visible := True;
            FrmCadastroPropriedadeRural.BtSubMenu2.Visible := False;
            FrmCadastroPropriedadeRural.DtCampo2.Date := Strtodate(FormatDateTime('dd/mm/yyyy',Now())) ;
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end
  else if ActInsUpd = 'UPDATE' then
      begin
            FrmCadastroPropriedadeRural.BtSubMenu1.Visible := False;
            FrmCadastroPropriedadeRural.BtSubMenu2.Visible := True;
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKeyVaue,IDKey, NCampos);
            pCarregaDadosInterface(Frm);
      end;
end;

procedure TPropriedadeRural.setAlert(pAlert: string);
begin
        FAlert := pAlert;
end;

procedure TPropriedadeRural.setAreaAgricola(pAreaAgricola: Double);
begin
        if pAreaAgricola > 0 then
        begin
                FAreaAgricola := pAreaAgricola;
        end else begin
             FAreaAgricola := FrmCadastroPropriedadeRural.CalCampo4.Value;
        end;
end;

procedure TPropriedadeRural.setAreaTotal(pAreaTotal: Double);
begin
        if pAreaTotal > 0 then
        begin
                FAreaTotal := pAreaTotal;
        end else begin
             FAreaTotal := FrmCadastroPropriedadeRural.CalCampo3.Value;
        end;
end;

procedure TPropriedadeRural.setBtSubMenu1(Crd : TCard);
begin
        if Crd.Showing then
        begin
             Crd.Hide;
        end else begin
             Crd.Show;
        end;

end;

procedure TPropriedadeRural.setCodigoIncra(pCodigoIncra: Integer);
begin

end;

procedure TPropriedadeRural.setDataAquisicao(pDataAquisicao: TDate);
begin
        FDataAquisicao := pDataAquisicao;
end;

procedure TPropriedadeRural.setDelete;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
      setAlert('Registro exclu�do com sucesso! ');
end;

procedure TPropriedadeRural.setfoto(pfoto: TPicture);
begin

end;

procedure TPropriedadeRural.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
      setDataAquisicao(Now);
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

function TPropriedadeRural.getValidaAreaTotal : boolean;
begin
        if fMaiorValor(getAreaTotal,getAreaAgricola) = 0 then
        begin
                fMsgPadrao(1,1,14,2,FloatToStr(getAreaTotal));
                setAreaAgricola(0);
                FrmCadastroPropriedadeRural.CalCampo4.Value := getAreaTotal;
                Result := False;
                Exit;
        end else Begin
             Result := True;
        End;
end;

end.
