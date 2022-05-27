unit Classe.Produto;

interface
uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics, Vcl.WinXPanels, System.Math, JvDesktopAlert, Classe.Sistema.Mensagens,
  Vcl.Dialogs, JvCombobox, FireDAC.Comp.Client, Data.DB, System.UITypes,
  Vcl.StdCtrls, Winapi.Windows, Vcl.DBGrids, Vcl.Grids;


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
        Table                : string;
        IDKey                : string;
        IDKeyVaue            : string;
        IDKeyFilter          : string;
        NCampos              : Integer;
        InsUpd               : string;


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
        Table            := 'produto';
        IDKey            := ' prd_idproduto = ';
        IDKeyVaue        := 'prd_idproduto';
        IDKeyFilter      := 'prd_nome LIKE ';
        NCampos          := 3;
        InsUpd           := EmptyStr;

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
        Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IDKeyVaue, NCampos);

      end else if (InsUpd = 'UPDATE') then begin
        setAlert('Registro alterado com sucesso! ');
        VlrKeyUpd := Dbgrd.DataSource.DataSet.FieldByName(IDKeyVaue).AsInteger;
        Result := fEventoSalvar(InsUpd, Frm, Dbgrd, Table, IDKey, IntToStr(VlrKeyUpd), NCampos);
      end;
        plimpaDadosInterface(Frm, 1);
        Result := True;
end;

procedure Tproduto.setAcaoAdicionarEditar(ActInsUpd: string);
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

end.
