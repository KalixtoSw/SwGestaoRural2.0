unit Classe.Produto;

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics, Vcl.WinXPanels, System.Math, JvDesktopAlert, Classe.Sistema.Mensagens,
  Vcl.Dialogs, JvCombobox, FireDAC.Comp.Client, Data.DB, System.UITypes,
  Vcl.StdCtrls, Winapi.Windows, Vcl.DBGrids, Vcl.Grids, JvPanel;


type
    Tproduto = class
    private
    FIdProduto: Integer;
    FNome: string;
    FFabricante: string;
    FTipo: string;
    FAlert: string;
    procedure SetIdProduto(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetTipo(const Value: string);
    procedure SetAlert(const Value: string);
    procedure SetFabricante(const Value: string);

    public

    constructor CreateObjTProduto;
    destructor  DestroyObjTProduto;
        procedure setPesquisaCampo(Campo: string; Key: string);
        procedure setAcaoAdicionarEditar(ActInsUpd: string);
        procedure setFrmOnShow;
        procedure setDelete;
        function  getSavar: Boolean;
        function  getCancelar: Boolean;

    published
        property IdProduto      : Integer read FIdProduto write SetIdProduto;
        property Nome           : string read FNome write SetNome;
        property Tipo           : string read FTipo write SetTipo;
        property Fabricante     : string read FFabricante write SetFabricante;
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
        Cbb                  : TComboBox;
        CbbCult              : TJvComboBox;
        CbbTec               : TJvComboBox;
        PnlTecSem            : TjvPanel;

        procedure pEventoChageCbbCategoria(VlrComb : string);
        function  fEventoChangeCbbCult : Integer;
        function  fEventoChangeCbbTecSem(KeyConexaoVlr : integer) : Integer;
        procedure pEventoUpdCbbCult;
        procedure pEventoUpdCbbTecSem;




implementation

uses
     UFrmCadastroProduto;

{ Tproduto }

constructor Tproduto.CreateObjTProduto;
begin
        Frm              := FrmCadastroProduto;
        Dbgrd            := FrmCadastroProduto.DbGrid;
        RadioBasica      := FrmCadastroProduto.RbConsBasica;
        RadioFull        := FrmCadastroProduto.RbConsFull;
        AlertView        := FrmCadastroProduto.DsktpAlertSistema;
        Table            := 'produto';
        IDKey            := ' prd_idproduto = ';
        IDKeyVaue        := 'prd_idproduto';
        IDKeyFilter      := 'prd_nome LIKE ';
        NCampos          := 6;
        InsUpd           := EmptyStr;
        Cbb              := FrmCadastroProduto.CbbCampo2;
        CbbCult          := FrmCadastroProduto.CbbCampo4;
        CbbTec           := FrmCadastroProduto.CbbCampo5;
        PnlTecSem        := FrmCadastroProduto.PnlTecSemente;

end;

destructor Tproduto.DestroyObjTProduto;
begin

end;

function Tproduto.getCancelar: Boolean;
begin
        Result := fEventoCancelar(Frm, Dbgrd, Table, IDKeyVaue, NCampos);
        plimpaDadosInterface(Frm, 1);
        setFrmOnShow;
end;

function Tproduto.getSavar: Boolean;
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

procedure Tproduto.setAcaoAdicionarEditar(ActInsUpd: string);
begin
        pMontaComboTxt(Cbb,'Icons\Cbb\','CbbCatProdutos');

        if ActInsUpd = 'INSERT' then
        begin
            pEventoChageCbbCategoria(Cbb.Text);
            fEventoChangeCbbCult;
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);
        end
        else if ActInsUpd = 'UPDATE' then
        begin
            pEventoUpdCbbCult;
            pEventoUpdCbbTecSem;
            InsUpd := fEventoInsUpdDel(ActInsUpd, Frm, Dbgrd, Table, IDKeyVaue,IDKey, NCampos);
            pCarregaDadosInterface(Frm);
            pEventoChageCbbCategoria(cbb.text);

        end;
end;

procedure Tproduto.SetAlert(const Value: string);
begin
  FAlert := Value;
end;

procedure Tproduto.setDelete;
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

procedure Tproduto.SetFabricante(const Value: string);
begin
  FFabricante := Value;
end;

procedure Tproduto.setFrmOnShow;
begin
      pCarregarBancoDado(0, Table, IDKey, NCampos);
      Dbgrd.DataSource := DMPrincipal.DsCmdSql_1;
      pAtivarDBGrid(Dbgrd);
end;

procedure Tproduto.SetIdProduto(const Value: Integer);
begin
  FIdProduto := Value;
end;

procedure Tproduto.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure Tproduto.setPesquisaCampo(Campo, Key: string);
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

procedure Tproduto.SetTipo(const Value: string);
begin
  FTipo := Value;
end;

procedure pEventoChageCbbCategoria(VlrComb : string);
begin
       if VlrComb = 'SEMENTE' then
        begin
             PnlTecSem.Visible  := True;
             CbbCult.Visible    := True;
             CbbTec.Visible     := True;
        end else begin
             PnlTecSem.Visible  := False;
             CbbCult.ItemIndex  := -1;
             CbbTec.ItemIndex   := -1;
        end;
end;

function  fEventoChangeCbbCult : Integer;
var
        sqlM : string;
begin
        sqlM := 'SELECT * FROM semente ';
        pMontaComboBoxTempExec(CbbCult,sqlM,'smt_Id','smt_descricao');
end;
function fEventoChangeCbbTecSem(KeyConexaoVlr : integer) : Integer;
var
        SqlD : string;
begin
        SqlD := 'SELECT s.smt_Id, s.smt_descricao, ts.tcs_id,ts.tcs_descricao FROM semente s '+
        'INNER JOIN tecnologia_semente ts ON s.smt_Id = ts.smt_Id and s.smt_Id = ';
        pMontaComboBoxTempExec(CbbTec,SqlD+ inttostr(KeyConexaoVlr),'tcs_id','tcs_descricao');
end;

procedure pEventoUpdCbbCult;
var
        SqlSemente : string;
begin
        SqlSemente := 'SELECT * FROM semente WHERE smt_id = '+IntToStr(Dbgrd.DataSource.DataSet.FieldByName('smt_id').AsInteger);
        pMontaComboBoxTempExec(CbbCult,SqlSemente,'smt_Id','smt_descricao');
end;

procedure pEventoUpdCbbTecSem;
var
        SqlTecSem : string;
begin
        SqlTecSem := 'SELECT * FROM tecnologia_semente WHERE tcs_id = '+IntToStr(Dbgrd.DataSource.DataSet.FieldByName('tcs_id').AsInteger);
        pMontaComboBoxTempExec(CbbTec,SqlTecSem,'tcs_id','tcs_descricao');
end;

end.
