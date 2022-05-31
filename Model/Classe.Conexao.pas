unit Classe.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, Classe.conexaoEfetiva;

type
  TDMPrincipal = class(TDataModule)
    MySQLDriver: TFDPhysMySQLDriverLink;
    QrUsuario: TFDQuery;
    fldFDQuery1user_idUsuario: TFDAutoIncField;
    QrUsuariouser_idPessoa: TIntegerField;
    QrUsuariouser_dtcriacao: TSQLTimeStampField;
    QrUsuariouser_usuario: TStringField;
    QrUsuariouser_senha: TStringField;
    QrUsuariouser_dataUltAcesso: TDateField;
    QrUsuariouser_celular: TStringField;
    QrUsuariouser_email: TStringField;
    QrUsuariouser_nomepessoa: TStringField;
    QrUsuariouser_tipopessoa: TStringField;
    DsQrUsuario: TDataSource;
    TbUsuario: TFDTable;
    DsTbUsuario: TDataSource;
    DsCmdSql_1: TDataSource;
    CmdSql_1: TFDQuery;
    CmdSqlCombox1: TFDQuery;
    DSCmdSqlCombox1: TDataSource;
    DSCmdSqlBuscaAux: TDataSource;
    CmdSqlBuscaAux: TFDQuery;
    FDConnection: TFDConnection;
    TbUsuariouser_idUsuario: TFDAutoIncField;
    TbUsuariouser_idPessoa: TIntegerField;
    TbUsuariouser_dtcriacao: TSQLTimeStampField;
    TbUsuariouser_usuario: TStringField;
    TbUsuariouser_senha: TStringField;
    TbUsuariouser_dataUltAcesso: TDateField;
    TbUsuariouser_celular: TStringField;
    TbUsuariouser_email: TStringField;
    TbUsuariouser_nomepessoa: TStringField;
    TbUsuariouser_tipopessoa: TStringField;
    QryProduto: TFDQuery;
    DsQryProduto: TDataSource;
    QryMovimentacao: TFDQuery;
    DsQryMovimentacao: TDataSource;
    QryMovProd: TFDQuery;
    DsQryMovProd: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    conexao    : TConexao;

  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMPrincipal.DataModuleCreate(Sender: TObject);
begin
     conexao    := TConexao.Create( FDConnection );
end;

procedure TDMPrincipal.DataModuleDestroy(Sender: TObject);
begin
    conexao.Destroy;
end;

end.
