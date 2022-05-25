unit Classe.Usuario;

interface

uses
  System.SysUtils, Vcl.Dialogs, Vcl.Forms, JvDBUltimGrid, JvPanel,
  Classe.FunctionsCrud, Classe.Sistema.Mensagens, Classe.Functions;

type
  TUsuario = class
  private
    FEmail: string;
    FID: string;
    FSenha: string;
    FUsuario: string;
    FNome: string;
    FPerfilID: Integer;
    FCelular: string;

    Frm: TForm;
    Dbgrd: TJvDBUltimGrid;
    Table: string;
    IDKey: string;
    IDKeyVaue: string;
    NCampos: Integer;
    InsUpd: string;
    IDKeyFilter: string;


    { private declarations }
  protected    { protected declarations }
  public    { public declarations }

    constructor CreateObjTUsuario;
    destructor DestroyObjTUsuario;

    procedure setNome(pNome: string);
    procedure setUsuario(pUsuario: string);
    procedure setSenha(pSenha: string);
    procedure setPerfilId(PId: Integer);
    procedure setCelular(pCelular: string);
    procedure setEmail(pEmail: string);

    function getNome: string;
    function getUsuario: string;
    function getSenha: string;
    function getPerfilId: Integer;
    function getCelular: string;
    function getEmail: string;

    function getSavarUsuario: Boolean;
    function getCancelarUsuario: Boolean;
    procedure setPesquisaCampo(Campo: string; Key: string);
    procedure setAcaoAdicionarEditar(ActInsUpd: string);
    procedure setFrmOnShow;
    procedure setDeleteUsuario;

  end;

implementation

uses
  UFrmCadastroUsuario, Classe.Conexao;

{ TUsuario }

constructor TUsuario.CreateObjTUsuario;
begin
  FID := EmptyStr;
  FEmail := EmptyStr;
  FSenha := EmptyStr;
  FUsuario := EmptyStr;
  FNome := EmptyStr;
  FPerfilID := 0;
  FCelular := EmptyStr;

  Frm := FrmCadastroUsuario;
  Dbgrd := FrmCadastroUsuario.DbGrid;
  Table := 'Usuario';
  IDKey := ' user_idUsuario = ';
  IDKeyVaue := 'user_idUsuario';
  IDKeyFilter := 'user_usuario LIKE ';
  NCampos := 5;
  InsUpd := EmptyStr;
end;

destructor TUsuario.DestroyObjTUsuario;
begin

end;

function TUsuario.getCancelarUsuario: Boolean;//Bot�o Cancelar
begin
  Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
  FrmCadastroUsuario.EdtCampo3.Enabled := True;
  plimpaDadosInterface(Frm, 1);
  setFrmOnShow;
end;

function TUsuario.getCelular: string;
begin
  Result := FCelular;
end;

function TUsuario.getEmail: string;
begin
  if fValidaEMail(FEmail) then
  begin
    Result := FEmail;
  end
  else
  begin
    Result := EmptyStr;
    fMsgPadrao(1, 3, 10, 2,EmptyStr);
  end;
end;

function TUsuario.getNome: string;
begin
  Result := FNome;
end;

function TUsuario.getPerfilId: Integer;
begin
  Result := FPerfilID;
end;

procedure TUsuario.setPesquisaCampo(Campo: string; Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if FrmCadastroUsuario.RbConsBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if FrmCadastroUsuario.RbConsFull.Checked then
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

function TUsuario.getSavarUsuario: Boolean;
var
      VlrKeyUpd : Integer;
begin
      VlrKeyUpd := 0;
      if (InsUpd = 'INSERT') then
      begin
            setSenha(FrmCadastroUsuario.EdtCampo3.Text);
            FrmCadastroUsuario.EdtCampo3.HelpKeyword := getSenha;
            Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end else if (InsUpd = 'UPDATE') then begin
            FrmCadastroUsuario.EdtCampo3.HelpKeyword := EmptyStr;
            VlrKeyUpd := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
            Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IntToStr(VlrKeyUpd), NCampos);
      end;

      FrmCadastroUsuario.EdtCampo3.Enabled := True;
      plimpaDadosInterface(Frm, 1);
end;

function TUsuario.getSenha: string;
begin
  Result := fCriptoMD5(FSenha);
end;

function TUsuario.getUsuario: string;
begin
  Result := FUsuario;
end;

procedure TUsuario.setAcaoAdicionarEditar(ActInsUpd: string);
begin
  if ActInsUpd = 'INSERT' then
  begin
    InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

  end
  else if ActInsUpd = 'UPDATE' then
  begin
      InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKeyVaue,IDKey, NCampos);
      pCarregaDadosInterface(Frm);
      FrmCadastroUsuario.EdtCampo3.Enabled := False;

  end;
end;

procedure TUsuario.setCelular(pCelular: string);
begin
  FCelular := pCelular;
end;

procedure TUsuario.setDeleteUsuario;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
end;

procedure TUsuario.setEmail(pEmail: string);
begin
  FEmail := pEmail;
end;

procedure TUsuario.setFrmOnShow;
begin
  pCarregarBancoDado(0, Table, IDKey, NCampos);
  Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
  pAtivarDBGrid(Dbgrd);
end;

procedure TUsuario.setNome(pNome: string);
begin
  FNome := pNome;
end;

procedure TUsuario.setPerfilId(PId: Integer);
begin
  FPerfilID := PId;
end;

procedure TUsuario.setSenha(pSenha: string);
begin
  FSenha := pSenha;
end;

procedure TUsuario.setUsuario(pUsuario: string);
begin
  FUsuario := pUsuario;
end;

end.

