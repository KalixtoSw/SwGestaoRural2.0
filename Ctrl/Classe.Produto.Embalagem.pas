unit Classe.Produto.Embalagem;

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Vcl.StdCtrls, JvDesktopAlert, Vcl.Dialogs;

  type
      TProdutoEmbalagem = class
  Private
    FAlert: string;
    procedure SetAlert(const Value: string);

  Public
        constructor CreateObjTProdutoEmbalagem;
        destructor DestroyObjTProdutoEmbalagem;
        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;
        function  getSavar: Boolean;
        function  getCancelar: Boolean;

  Published
        property Alert          : string read FAlert write SetAlert;

  end;
Var
        Frm                  : TForm;
        Dbgrd                : TJvDBUltimGrid;
        DbgrdTecGenetica     : TJvDBUltimGrid;
        RadioBasica          : TRadioButton;
        RadioFull            : TRadioButton;
        AlertView            : TJvDesktopAlert;
        Table                : string;
        IDKey                : string;
        IDKeyVaue            : string;
        IDKeyFilter          : string;
        NCampos              : Integer;
        InsUpd               : string;


implementation

uses
     UFrmProdutoEmbalagem;

{ TProdutoEmbalagem }

constructor TProdutoEmbalagem.CreateObjTProdutoEmbalagem;
begin
        Frm              := FrmProdutoEmbalagem;
        Dbgrd            := FrmProdutoEmbalagem.DbGrid;
        RadioBasica      := FrmProdutoEmbalagem.RbConsBasica;
        RadioFull        := FrmProdutoEmbalagem.RbConsFull;
        AlertView        := FrmProdutoEmbalagem.DsktpAlertSistema;
        Table            := 'produto_embalagem';
        IDKey            := ' prde_Id = ';
        IDKeyVaue        := 'prde_Id';
        IDKeyFilter      := 'prde_descricao LIKE ';
        NCampos          := 4;
        InsUpd           := EmptyStr;

end;

destructor TProdutoEmbalagem.DestroyObjTProdutoEmbalagem;
begin

end;

function TProdutoEmbalagem.getCancelar: Boolean;
begin
        Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
        plimpaDadosInterface(Frm, 1);
        setFrmOnShow;
end;

function TProdutoEmbalagem.getSavar: Boolean;
var
      VlrKeyUpd : Integer;
begin
      VlrKeyUpd := 0;

      if (InsUpd = 'INSERT') then
      begin

        setAlert('Registro inserido com sucesso! ');
        AlertView.MessageText := FAlert;
        AlertView.Execute;
        Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end else if (InsUpd = 'UPDATE') then begin
        setAlert('Registro alterado com sucesso! ');
        AlertView.MessageText := FAlert;
        AlertView.Execute;
        VlrKeyUpd := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
        Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IntToStr(VlrKeyUpd), NCampos);

      end;
        plimpaDadosInterface(Frm, 1);
        Result := True;

end;

procedure TProdutoEmbalagem.setAcaoAdicionarEditar(ActInsUpd: string);
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

procedure TProdutoEmbalagem.SetAlert(const Value: string);
begin
  FAlert := Value;
end;

procedure TProdutoEmbalagem.setDelete;
var
      VlrKeyDel : Integer;
begin
      VlrKeyDel := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
      fEventoInsUpdDel('DELETE',Frm,Dbgrd,Table,IDKeyVaue,IDKey,(VlrKeyDel));
      pAtivarDBGrid(Dbgrd);
      setAlert('Registro excluído com sucesso! ');
      AlertView.MessageText := FAlert;
      AlertView.Execute;
end;

procedure TProdutoEmbalagem.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
end;

procedure TProdutoEmbalagem.setPesquisaCampo(Campo, Key: string);
var
  VlrBusca: string;
begin
  VlrBusca := EmptyStr;
  if Key = '13' then
  begin
    if RadioBasica.Checked then
    begin
      VlrBusca := '%' + Campo;
    end
    else if RadioFull.Checked then
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
