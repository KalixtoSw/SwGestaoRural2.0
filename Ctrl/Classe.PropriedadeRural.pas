unit Classe.PropriedadeRural;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics, Vcl.WinXPanels, System.Math, JvDesktopAlert, Classe.Sistema.Mensagens,
  Vcl.Dialogs, JvCombobox, FireDAC.Comp.Client, Data.DB, System.UITypes,
  Vcl.StdCtrls, Winapi.Windows, Vcl.DBGrids, Vcl.Grids;

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
        FCbbTalhao      : TJvComboBox;

        Frm             : TForm;
        Dbgrd           : TJvDBUltimGrid;
        DbgridTalhao    : TJvDBUltimGrid;
        Table           : string;
        TableTalhao     : string;
        IDKey           : string;
        IDKeyTalhao     : string;
        IDKeyVaue       : string;
        NCampos         : Integer;
        InsUpd          : string;
        IDKeyFilter     : string;
        SelectTbDetalhe : string;
        SelectTbMaster  : string;

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

        procedure setDbGridTalhaoDrawColumnCell(const Rect: TRect;
        DataCol: Integer; Column: TColumn; State: TGridDrawState);

        procedure setRemoverTalhao;
        procedure setDbGridTalhaoCellClick;
        procedure setMontaGridMasterDetalhe;
        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;
        procedure setBtSubMenu1;
        procedure setBtSubMenu2;
        function  getValidaAreaTotal : boolean;
        function  getComboTalhao : Integer;
        function  getAcaoAdicionarEditarTalhao : Integer;
        function  getSavar: Boolean;
        function  getCancelar: Boolean;


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
        DbgridTalhao:= FrmCadastroPropriedadeRural.DbGridTalhao;
        FCbbTalhao  := FrmCadastroPropriedadeRural.CbbTalhao;
        Table       := 'PropriedadeRural';
        TableTalhao := 'Talhao';
        IDKey       := ' pr_idPropriedadeRural = ';
        IDKeyTalhao := ' tbl_idTalhao = ';
        IDKeyVaue   := 'pr_idPropriedadeRural';
        IDKeyFilter := 'pr_nomeResumido LIKE ';
        NCampos     := 8;
        InsUpd      := EmptyStr;
        SelectTbMaster  := 'SELECT * FROM '+Table+' WHERE '+IDKey;
        SelectTbDetalhe := 'SELECT * FROM '+TableTalhao+' WHERE '+IDKey;
end;

destructor TPropriedadeRural.DestryObtTPropriedadeRural;
begin

end;

function TPropriedadeRural.getAcaoAdicionarEditarTalhao: Integer;
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
        FrmCadastroPropriedadeRural.BtSubMenu1.Visible := True;
        FrmCadastroPropriedadeRural.BtSubMenu2.Visible := True;
        Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
        plimpaDadosInterface(Frm, 1);
        setFrmOnShow;
end;

function TPropriedadeRural.getCodigoIncra: Integer;
begin

end;

function TPropriedadeRural.getcomboTalhao: Integer;
var
        select : string;
begin
        select := 'SELECT tbl_idTalhao,tbl_descricao FROM Talhao WHERE tbl_status = ''DISPONIVEL''';
        pMontaComboBoxTempExec(FCbbTalhao,select,'tbl_idTalhao','tbl_descricao');
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
        FrmCadastroPropriedadeRural.CrdCadastroBase.Show;
    if ActInsUpd = 'INSERT' then
      begin
            FrmCadastroPropriedadeRural.BtSubMenu1.Visible := True;
            FrmCadastroPropriedadeRural.BtSubMenu2.Visible := False;
            FrmCadastroPropriedadeRural.DtCampo2.Date := Strtodate(FormatDateTime('dd/mm/yyyy',Now())) ;
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end
  else if ActInsUpd = 'UPDATE' then
      begin
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

procedure TPropriedadeRural.setBtSubMenu1;
begin
        FrmCadastroPropriedadeRural.CrdCadastroBase.Show;
end;

procedure TPropriedadeRural.setBtSubMenu2;
begin
        FrmCadastroPropriedadeRural.CrdAddTalhao.Show;
end;

procedure TPropriedadeRural.setCodigoIncra(pCodigoIncra: Integer);
begin

end;

procedure TPropriedadeRural.setDataAquisicao(pDataAquisicao: TDate);
begin
        FDataAquisicao := pDataAquisicao;
end;

procedure TPropriedadeRural.setDbGridTalhaoCellClick;
begin
        if not Assigned(DbGridTalhao.DataSource.DataSet.FindField('tbl_checkbox')) then
         Frm.ModalResult := mrOk
       else begin
         DbGridTalhao.DataSource.DataSet.Edit;
         DbGridTalhao.DataSource.DataSet.FieldByName('tbl_checkbox').AsInteger := IfThen(DbGridTalhao.DataSource.DataSet.FieldByName('tbl_checkbox').asinteger = 1, 0, 1);
         DbGridTalhao.DataSource.DataSet.Post;
       end;
end;

procedure TPropriedadeRural.setDbGridTalhaoDrawColumnCell(const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  lR: TRect;
  lCheck: integer;
begin
   if Assigned(DbGridTalhao.DataSource.DataSet.FindField('tbl_checkbox')) and (Column.Index = 0) then begin
    if (DbGridTalhao.DataSource.DataSet.FieldByName('tbl_checkbox').Value = 1) then
      lCheck := DFCS_BUTTONCHECK or DFCS_CHECKED
    else
      lCheck := DFCS_BUTTONCHECK;
    DbGridTalhao.Canvas.FillRect(Rect);
    lR := Rect;
    InflateRect(lR, -2, -2);
    DrawFrameControl(DbGridTalhao.Canvas.Handle, lR, DFC_BUTTON, lCheck);
  end else
    DbGridTalhao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TPropriedadeRural.setDelete;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
      setAlert('Registro excluído com sucesso! ');
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

procedure TPropriedadeRural.setMontaGridMasterDetalhe;
begin

        DbgridTalhao.DataSource := fMasterDetalhe(Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger,
        SelectTbDetalhe,SelectTbMaster);
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

procedure TPropriedadeRural.setRemoverTalhao;
begin
        with DbgridTalhao.DataSource.DataSet do
        begin
        DisableControls;
        First; // Se tiver certeza que está no primeiro registro, não precisa
        While not Eof do
           begin
           if FieldByName('tbl_checkbox').AsInteger = 1 then
             begin
                try
                     Edit;
                     FieldByName('tbl_checkbox').AsInteger := 0;
                     FieldByName('pr_idPropriedadeRural').AsInteger := 0;
                     FieldByName('tbl_status').AsString := 'DISPONIVEL';
                     Post;
                except

                end;
             end;
           Next;
           end;
        EnableControls;
        Refresh;
   end;
        getcomboTalhao;
        setMontaGridMasterDetalhe;
        pAtivarDBGrid(DbGridTalhao);
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
