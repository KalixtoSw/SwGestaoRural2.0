unit Classe.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, Classe.conexaoEfetiva, FireDAC.Comp.UI;

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
    QryMovimentacaomov_id: TFDAutoIncField;
    QryMovimentacaomov_tipo: TStringField;
    QryMovimentacaomov_datamov: TDateTimeField;
    QryMovimentacaomov_responsavel: TStringField;
    QryMovimentacaomov_obs: TStringField;
    QryMovimentacaomov_descricao: TStringField;
    QryMovimentacaomov_origem: TStringField;
    QryProdutoprd_idproduto: TFDAutoIncField;
    QryProdutoprd_nome: TStringField;
    QryProdutoprd_fabricante: TStringField;
    QryProdutoprd_dtcriacao: TSQLTimeStampField;
    QryProdutoprd_tipo: TStringField;
    QryProdutotcs_id: TIntegerField;
    QryProdutosmt_Id: TIntegerField;
    QryProdutoprd_status: TStringField;
    QryMovProdmp_id: TFDAutoIncField;
    QryMovProdprd_idproduto: TIntegerField;
    QryMovProdmov_id: TIntegerField;
    QryMovProdmp_qtdUnit: TBCDField;
    QryMovProdmp_qtdTotal: TBCDField;
    QryMovProdmp_validade: TDateTimeField;
    QryMovProdmp_precoCompra: TBCDField;
    QryMovProdmp_precoTotal: TBCDField;
    TbNotaFiscal: TFDTable;
    DsTbNotaFiscal: TDataSource;
    TbFornecedor: TFDTable;
    DsTbFornecedor: TDataSource;
    TbFornecedorfrn_id: TFDAutoIncField;
    TbFornecedorfrn_idPessoa: TIntegerField;
    TbFornecedorfrn_dtcriacao: TSQLTimeStampField;
    TbFornecedorfrn_desde: TDateField;
    TbFornecedorfrn_dataCadastro: TDateField;
    TbFornecedorfrn_observacao: TStringField;
    TbFornecedorfrn_cnpj: TStringField;
    TbFornecedorfrn_NomeFantasia: TStringField;
    TbNotaFiscalnf_id: TFDAutoIncField;
    TbNotaFiscalnf_dtcriacao: TSQLTimeStampField;
    TbNotaFiscalnf_numero: TIntegerField;
    TbNotaFiscalnf_serie: TIntegerField;
    TbNotaFiscalnf_numeroChar: TStringField;
    TbNotaFiscalnf_chaveacesso: TStringField;
    TbNotaFiscalnf_nop: TStringField;
    TbNotaFiscalnf_ie: TStringField;
    TbNotaFiscalnf_im: TStringField;
    TbNotaFiscalnf_cnpjForn: TStringField;
    TbNotaFiscalnf_baseicms: TBCDField;
    TbNotaFiscalnf_vlricms: TBCDField;
    TbNotaFiscalnf_baseicms_st: TBCDField;
    TbNotaFiscalnf_vlricms_st: TBCDField;
    TbNotaFiscalnf_vlrtotal: TBCDField;
    TbNotaFiscalnf_vlrfrete: TBCDField;
    TbNotaFiscalnf_vlrseguro: TBCDField;
    TbNotaFiscalnf_vlrdesconto: TBCDField;
    TbNotaFiscalnf_vlroutrasdespesas: TBCDField;
    TbNotaFiscalnf_vlrip: TBCDField;
    TbNotaFiscalnf_vlrprodutos: TBCDField;
    TbNotaFiscalfrn_id: TIntegerField;
    TbNotaFiscalnf_dtES: TDateTimeField;
    TbNotaFiscalnf_dtemissao: TDateTimeField;
    TbNotaFiscalnf_horaES: TTimeField;
    TbNotaFiscalnf_tipoES: TStringField;
    DsTbNotaFiscalItem: TDataSource;
    TbNotaFiscalItemnfi_id: TFDAutoIncField;
    TbNotaFiscalItemnf_id: TIntegerField;
    TbNotaFiscalItemprd_idproduto: TIntegerField;
    TbNotaFiscalItemprde_Id: TIntegerField;
    TbNotaFiscalItemnfi_cfop: TIntegerField;
    TbNotaFiscalItemnfi_qtde: TBCDField;
    TbNotaFiscalItemnfi_vlrunit: TBCDField;
    TbNotaFiscalItemnfi_vlrtotal: TBCDField;
    QryProdutoprd_codInterno: TIntegerField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TbNotaFiscalItem: TFDTable;
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
