object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 815
  Width = 1250
  object MySQLDriver: TFDPhysMySQLDriverLink
    VendorLib = 
      'H:\Desenvolvimento SW\Github\SwGestaoRural2.0\Source\Output\libm' +
      'ysql.dll'
    Left = 50
    Top = 10
  end
  object QrUsuario: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'USE gr_desenv;'
      ''
      'SELECT'
      '  user_idUsuario,'
      '  user_idPessoa,'
      '  user_dtcriacao,'
      '  user_usuario,'
      '  user_senha,'
      '  user_dataUltAcesso,'
      '  user_celular,'
      '  user_email,'
      '  user_nomepessoa,'
      '  user_tipopessoa'
      'FROM Usuario;')
    Left = 230
    Top = 5
    object fldFDQuery1user_idUsuario: TFDAutoIncField
      FieldName = 'user_idUsuario'
      Origin = 'user_idUsuario'
      ReadOnly = True
    end
    object QrUsuariouser_idPessoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_idPessoa'
      Origin = 'user_idPessoa'
    end
    object QrUsuariouser_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'user_dtcriacao'
      Origin = 'user_dtcriacao'
    end
    object QrUsuariouser_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_usuario'
      Origin = 'user_usuario'
      Size = 25
    end
    object QrUsuariouser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 100
    end
    object QrUsuariouser_dataUltAcesso: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'user_dataUltAcesso'
      Origin = 'user_dataUltAcesso'
    end
    object QrUsuariouser_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_celular'
      Origin = 'user_celular'
    end
    object QrUsuariouser_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_email'
      Origin = 'user_email'
      Size = 100
    end
    object QrUsuariouser_nomepessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nomepessoa'
      Origin = 'user_nomepessoa'
      Size = 255
    end
    object QrUsuariouser_tipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_tipopessoa'
      Origin = 'user_tipopessoa'
      Size = 2
    end
  end
  object DsQrUsuario: TDataSource
    DataSet = QrUsuario
    Left = 275
    Top = 5
  end
  object TbUsuario: TFDTable
    IndexFieldNames = 'user_idUsuario'
    Connection = FDConnection
    UpdateOptions.UpdateTableName = 'Usuario'
    TableName = 'Usuario'
    Left = 230
    Top = 55
    object TbUsuariouser_idUsuario: TFDAutoIncField
      FieldName = 'user_idUsuario'
      Origin = 'user_idUsuario'
      ReadOnly = True
    end
    object TbUsuariouser_idPessoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'user_idPessoa'
      Origin = 'user_idPessoa'
    end
    object TbUsuariouser_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'user_dtcriacao'
      Origin = 'user_dtcriacao'
    end
    object TbUsuariouser_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_usuario'
      Origin = 'user_usuario'
      Size = 25
    end
    object TbUsuariouser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 100
    end
    object TbUsuariouser_dataUltAcesso: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'user_dataUltAcesso'
      Origin = 'user_dataUltAcesso'
    end
    object TbUsuariouser_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_celular'
      Origin = 'user_celular'
    end
    object TbUsuariouser_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_email'
      Origin = 'user_email'
      Size = 100
    end
    object TbUsuariouser_nomepessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nomepessoa'
      Origin = 'user_nomepessoa'
      Size = 255
    end
    object TbUsuariouser_tipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_tipopessoa'
      Origin = 'user_tipopessoa'
      Size = 2
    end
  end
  object DsTbUsuario: TDataSource
    DataSet = TbUsuario
    Left = 275
    Top = 55
  end
  object DsCmdSql_1: TDataSource
    DataSet = CmdSql_1
    Left = 530
    Top = 110
  end
  object CmdSql_1: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 530
    Top = 60
  end
  object CmdSqlCombox1: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 625
    Top = 60
  end
  object DSCmdSqlCombox1: TDataSource
    DataSet = CmdSqlCombox1
    Left = 625
    Top = 110
  end
  object DSCmdSqlBuscaAux: TDataSource
    DataSet = CmdSqlBuscaAux
    Left = 705
    Top = 110
  end
  object CmdSqlBuscaAux: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    Left = 705
    Top = 60
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=gr_desenv'
      'User_Name=sw_gr2022'
      'Password=Sw@2871.desenv'
      'Server=gr-desenv.mysql.uhserver.com'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 50
    Top = 60
  end
  object QryProduto: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM produto;')
    Left = 135
    Top = 255
    object QryProdutoprd_idproduto: TFDAutoIncField
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryProdutoprd_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_nome'
      Origin = 'prd_nome'
      Size = 50
    end
    object QryProdutoprd_fabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_fabricante'
      Origin = 'prd_fabricante'
      Size = 50
    end
    object QryProdutoprd_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'prd_dtcriacao'
      Origin = 'prd_dtcriacao'
    end
    object QryProdutoprd_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_tipo'
      Origin = 'prd_tipo'
      Size = 50
    end
    object QryProdutotcs_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tcs_id'
      Origin = 'tcs_id'
    end
    object QryProdutosmt_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'smt_Id'
      Origin = 'smt_Id'
    end
    object QryProdutoprd_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_status'
      Origin = 'prd_status'
      Size = 1
    end
    object QryProdutoprd_codInterno: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_codInterno'
      Origin = 'prd_codInterno'
    end
  end
  object DsQryProduto: TDataSource
    DataSet = QryProduto
    Left = 130
    Top = 305
  end
  object QryMovimentacao: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM movimentacao;')
    Left = 225
    Top = 255
    object QryMovimentacaomov_id: TFDAutoIncField
      FieldName = 'mov_id'
      Origin = 'mov_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryMovimentacaomov_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_tipo'
      Origin = 'mov_tipo'
      Size = 1
    end
    object QryMovimentacaomov_datamov: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mov_datamov'
      Origin = 'mov_datamov'
    end
    object QryMovimentacaomov_responsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_responsavel'
      Origin = 'mov_responsavel'
      Size = 50
    end
    object QryMovimentacaomov_obs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_obs'
      Origin = 'mov_obs'
      Size = 255
    end
    object QryMovimentacaomov_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_descricao'
      Origin = 'mov_descricao'
      Size = 100
    end
    object QryMovimentacaomov_origem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_origem'
      Origin = 'mov_origem'
      Size = 25
    end
  end
  object DsQryMovimentacao: TDataSource
    DataSet = QryMovimentacao
    Left = 225
    Top = 305
  end
  object QryMovProd: TFDQuery
    ActiveStoredUsage = []
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateMode]
    SQL.Strings = (
      'SELECT * FROM movimentacao_produto;')
    Left = 310
    Top = 260
    object QryMovProdmp_id: TFDAutoIncField
      FieldName = 'mp_id'
      Origin = 'mp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryMovProdprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object QryMovProdmov_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mov_id'
      Origin = 'mov_id'
    end
    object QryMovProdmp_qtdUnit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_qtdUnit'
      Origin = 'mp_qtdUnit'
      Precision = 10
      Size = 3
    end
    object QryMovProdmp_qtdTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_qtdTotal'
      Origin = 'mp_qtdTotal'
      Precision = 10
      Size = 3
    end
    object QryMovProdmp_validade: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mp_validade'
      Origin = 'mp_validade'
    end
    object QryMovProdmp_precoCompra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_precoCompra'
      Origin = 'mp_precoCompra'
      Precision = 10
      Size = 2
    end
    object QryMovProdmp_precoTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_precoTotal'
      Origin = 'mp_precoTotal'
      Precision = 10
      Size = 2
    end
  end
  object DsQryMovProd: TDataSource
    DataSet = QryMovProd
    Left = 310
    Top = 310
  end
  object TbNotaFiscal: TFDTable
    ObjectView = False
    IndexFieldNames = 'nf_id'
    DetailFields = 'nf_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.nota_fiscal'
    UpdateOptions.AutoIncFields = 'nf_id'
    TableName = 'gr_desenv.nota_fiscal'
    Left = 260
    Top = 385
    object TbNotaFiscalnf_id: TFDAutoIncField
      FieldName = 'nf_id'
      Origin = 'nf_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
    end
    object TbNotaFiscalnf_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtcriacao'
      Origin = 'nf_dtcriacao'
    end
    object TbNotaFiscalnf_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numero'
      Origin = 'nf_numero'
    end
    object TbNotaFiscalnf_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_serie'
      Origin = 'nf_serie'
    end
    object TbNotaFiscalnf_numeroChar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numeroChar'
      Origin = 'nf_numeroChar'
      Size = 100
    end
    object TbNotaFiscalnf_chaveacesso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_chaveacesso'
      Origin = 'nf_chaveacesso'
      Size = 100
    end
    object TbNotaFiscalnf_nop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_nop'
      Origin = 'nf_nop'
      Size = 255
    end
    object TbNotaFiscalnf_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_ie'
      Origin = 'nf_ie'
      Size = 25
    end
    object TbNotaFiscalnf_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_im'
      Origin = 'nf_im'
      Size = 25
    end
    object TbNotaFiscalnf_cnpjForn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_cnpjForn'
      Origin = 'nf_cnpjForn'
      Size = 25
    end
    object TbNotaFiscalnf_baseicms: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms'
      Origin = 'nf_baseicms'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlricms: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms'
      Origin = 'nf_vlricms'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_baseicms_st: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms_st'
      Origin = 'nf_baseicms_st'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlricms_st: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms_st'
      Origin = 'nf_vlricms_st'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrtotal'
      Origin = 'nf_vlrtotal'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrfrete: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrfrete'
      Origin = 'nf_vlrfrete'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrseguro: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrseguro'
      Origin = 'nf_vlrseguro'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrdesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrdesconto'
      Origin = 'nf_vlrdesconto'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlroutrasdespesas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlroutrasdespesas'
      Origin = 'nf_vlroutrasdespesas'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrip'
      Origin = 'nf_vlrip'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalnf_vlrprodutos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrprodutos'
      Origin = 'nf_vlrprodutos'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalfrn_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frn_id'
      Origin = 'frn_id'
    end
    object TbNotaFiscalnf_dtES: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtES'
      Origin = 'nf_dtES'
    end
    object TbNotaFiscalnf_dtemissao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtemissao'
      Origin = 'nf_dtemissao'
    end
    object TbNotaFiscalnf_horaES: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_horaES'
      Origin = 'nf_horaES'
    end
    object TbNotaFiscalnf_tipoES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_tipoES'
      Origin = 'nf_tipoES'
      Size = 1
    end
    object TbNotaFiscalnf_dtvencimento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtvencimento'
      Origin = 'nf_dtvencimento'
    end
    object TbNotaFiscalFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = TbFornecedor
      LookupKeyFields = 'frn_id'
      LookupResultField = 'frn_NomeFantasia'
      KeyFields = 'frn_id'
      Size = 100
      Lookup = True
    end
    object TbNotaFiscalnf_procEstoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_procEstoque'
      Origin = 'nf_procEstoque'
    end
  end
  object DsTbNotaFiscal: TDataSource
    DataSet = TbNotaFiscal
    Left = 305
    Top = 385
  end
  object TbFornecedor: TFDTable
    ObjectView = False
    CachedUpdates = True
    IndexName = 'PRIMARY'
    AggregatesActive = True
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.Fornecedor'
    TableName = 'gr_desenv.Fornecedor'
    Left = 255
    Top = 485
    object TbFornecedorfrn_id: TFDAutoIncField
      FieldName = 'frn_id'
      Origin = 'frn_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbFornecedorfrn_idPessoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frn_idPessoa'
      Origin = 'frn_idPessoa'
    end
    object TbFornecedorfrn_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'frn_dtcriacao'
      Origin = 'frn_dtcriacao'
    end
    object TbFornecedorfrn_desde: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'frn_desde'
      Origin = 'frn_desde'
    end
    object TbFornecedorfrn_dataCadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'frn_dataCadastro'
      Origin = 'frn_dataCadastro'
    end
    object TbFornecedorfrn_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'frn_observacao'
      Origin = 'frn_observacao'
      Size = 255
    end
    object TbFornecedorfrn_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'frn_cnpj'
      Origin = 'frn_cnpj'
      Size = 25
    end
    object TbFornecedorfrn_NomeFantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'frn_NomeFantasia'
      Origin = 'frn_NomeFantasia'
      Size = 255
    end
  end
  object DsTbFornecedor: TDataSource
    DataSet = TbFornecedor
    Left = 305
    Top = 490
  end
  object TbNotaFiscalItem: TFDTable
    ObjectView = False
    IndexFieldNames = 'nf_id'
    MasterSource = DsTbNotaFiscal
    MasterFields = 'nf_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'nota_fiscal_item'
    UpdateOptions.AutoIncFields = 'nfi_id'
    TableName = 'nota_fiscal_item'
    Left = 255
    Top = 435
    object TbNotaFiscalItemnfi_id: TFDAutoIncField
      FieldName = 'nfi_id'
      Origin = 'nfi_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
    end
    object TbNotaFiscalItemnf_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_id'
      Origin = 'nf_id'
    end
    object TbNotaFiscalItemprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object TbNotaFiscalItemprde_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
    object TbNotaFiscalItemnfi_cfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_cfop'
      Origin = 'nfi_cfop'
    end
    object TbNotaFiscalItemnfi_qtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_qtde'
      Origin = 'nfi_qtde'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalItemnfi_vlrunit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrunit'
      Origin = 'nfi_vlrunit'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalItemnfi_vlrtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrtotal'
      Origin = 'nfi_vlrtotal'
      Precision = 10
      Size = 2
    end
    object TbNotaFiscalItemProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = QryProduto
      LookupKeyFields = 'prd_idproduto'
      LookupResultField = 'prd_nome'
      KeyFields = 'prd_idproduto'
      Size = 50
      Lookup = True
    end
    object TbNotaFiscalItemEmbalagem: TStringField
      FieldKind = fkLookup
      FieldName = 'Embalagem'
      LookupDataSet = TbProdutoEmbalagem
      LookupKeyFields = 'prde_Id'
      LookupResultField = 'prde_descricao'
      KeyFields = 'prde_Id'
      Size = 50
      Lookup = True
    end
  end
  object DsTbNotaFiscalItem: TDataSource
    DataSet = TbNotaFiscalItem
    Left = 300
    Top = 435
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 380
    Top = 15
  end
  object TbProdutoEmbalagem: TFDTable
    ObjectView = False
    CachedUpdates = True
    IndexName = 'PRIMARY'
    AggregatesActive = True
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'produto_embalagem'
    TableName = 'produto_embalagem'
    Left = 250
    Top = 535
    object TbProdutoEmbalagemprde_Id: TFDAutoIncField
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbProdutoEmbalagemprde_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'prde_dtcriacao'
      Origin = 'prde_dtcriacao'
    end
    object TbProdutoEmbalagemprde_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prde_descricao'
      Origin = 'prde_descricao'
      Size = 50
    end
    object TbProdutoEmbalagemprde_unimedida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prde_unimedida'
      Origin = 'prde_unimedida'
      Size = 25
    end
    object TbProdutoEmbalagemprde_conversor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'prde_conversor'
      Origin = 'prde_conversor'
      Precision = 10
      Size = 3
    end
    object TbProdutoEmbalagemprde_qtdereferencial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'prde_qtdereferencial'
      Origin = 'prde_qtdereferencial'
      Precision = 10
      Size = 3
    end
  end
  object DsTbProdutoEmbalagem: TDataSource
    DataSet = TbProdutoEmbalagem
    Left = 305
    Top = 540
  end
  object TbMovimentacao: TFDTable
    ObjectView = False
    IndexFieldNames = 'mov_id'
    DetailFields = 'nf_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'movimentacao'
    UpdateOptions.AutoIncFields = 'nf_id'
    TableName = 'movimentacao'
    Left = 490
    Top = 385
    object TbMovimentacaomov_id: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'mov_id'
      Origin = 'mov_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbMovimentacaomov_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_tipo'
      Origin = 'mov_tipo'
      Size = 1
    end
    object TbMovimentacaomov_datamov: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mov_datamov'
      Origin = 'mov_datamov'
    end
    object TbMovimentacaomov_responsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_responsavel'
      Origin = 'mov_responsavel'
      Size = 50
    end
    object TbMovimentacaomov_obs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_obs'
      Origin = 'mov_obs'
      Size = 255
    end
    object TbMovimentacaomov_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_descricao'
      Origin = 'mov_descricao'
      Size = 100
    end
    object TbMovimentacaomov_origem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_origem'
      Origin = 'mov_origem'
      Size = 25
    end
    object TbMovimentacaonf_id: TFDAutoIncField
      FieldName = 'nf_id'
      Origin = 'nf_id'
      ReadOnly = True
    end
  end
  object DsTbMovimentacao: TDataSource
    DataSet = TbMovimentacao
    Left = 535
    Top = 385
  end
  object TbMov_Produto: TFDTable
    ObjectView = False
    IndexFieldNames = 'mov_id'
    MasterSource = DsTbMovimentacao
    MasterFields = 'mov_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.movimentacao_produto'
    UpdateOptions.AutoIncFields = 'mp_id'
    TableName = 'gr_desenv.movimentacao_produto'
    Left = 485
    Top = 435
    object TbMov_Produtomp_id: TFDAutoIncField
      FieldName = 'mp_id'
      Origin = 'mp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbMov_Produtoprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object TbMov_Produtomov_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mov_id'
      Origin = 'mov_id'
    end
    object TbMov_Produtomp_qtdUnit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_qtdUnit'
      Origin = 'mp_qtdUnit'
      Precision = 10
      Size = 3
    end
    object TbMov_Produtomp_qtdContabil: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_qtdContabil'
      Origin = 'mp_qtdContabil'
      Precision = 10
      Size = 3
    end
    object TbMov_Produtomp_validade: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'mp_validade'
      Origin = 'mp_validade'
    end
    object TbMov_Produtomp_precoCompra: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_precoCompra'
      Origin = 'mp_precoCompra'
      Precision = 10
      Size = 2
    end
    object TbMov_Produtomp_precoTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mp_precoTotal'
      Origin = 'mp_precoTotal'
      Precision = 10
      Size = 2
    end
    object TbMov_Produtomp_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mp_tipo'
      Origin = 'mp_tipo'
      Size = 1
    end
    object TbMov_Produtoprde_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
  end
  object DsTbMov_Produto: TDataSource
    DataSet = TbMov_Produto
    Left = 530
    Top = 435
  end
  object TbNotaFiscalP: TFDTable
    ObjectView = False
    IndexFieldNames = 'nf_id'
    DetailFields = 'nf_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.nota_fiscal'
    UpdateOptions.AutoIncFields = 'nf_id'
    TableName = 'gr_desenv.nota_fiscal'
    Left = 720
    Top = 395
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'nf_id'
      Origin = 'nf_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
    end
    object SQLTimeStampField1: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtcriacao'
      Origin = 'nf_dtcriacao'
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numero'
      Origin = 'nf_numero'
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_serie'
      Origin = 'nf_serie'
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numeroChar'
      Origin = 'nf_numeroChar'
      Size = 100
    end
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_chaveacesso'
      Origin = 'nf_chaveacesso'
      Size = 100
    end
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_nop'
      Origin = 'nf_nop'
      Size = 255
    end
    object StringField4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_ie'
      Origin = 'nf_ie'
      Size = 25
    end
    object StringField5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_im'
      Origin = 'nf_im'
      Size = 25
    end
    object StringField6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_cnpjForn'
      Origin = 'nf_cnpjForn'
      Size = 25
    end
    object BCDField1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms'
      Origin = 'nf_baseicms'
      Precision = 10
      Size = 2
    end
    object BCDField2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms'
      Origin = 'nf_vlricms'
      Precision = 10
      Size = 2
    end
    object BCDField3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms_st'
      Origin = 'nf_baseicms_st'
      Precision = 10
      Size = 2
    end
    object BCDField4: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms_st'
      Origin = 'nf_vlricms_st'
      Precision = 10
      Size = 2
    end
    object BCDField5: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrtotal'
      Origin = 'nf_vlrtotal'
      Precision = 10
      Size = 2
    end
    object BCDField6: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrfrete'
      Origin = 'nf_vlrfrete'
      Precision = 10
      Size = 2
    end
    object BCDField7: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrseguro'
      Origin = 'nf_vlrseguro'
      Precision = 10
      Size = 2
    end
    object BCDField8: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrdesconto'
      Origin = 'nf_vlrdesconto'
      Precision = 10
      Size = 2
    end
    object BCDField9: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlroutrasdespesas'
      Origin = 'nf_vlroutrasdespesas'
      Precision = 10
      Size = 2
    end
    object BCDField10: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrip'
      Origin = 'nf_vlrip'
      Precision = 10
      Size = 2
    end
    object BCDField11: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrprodutos'
      Origin = 'nf_vlrprodutos'
      Precision = 10
      Size = 2
    end
    object IntegerField3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frn_id'
      Origin = 'frn_id'
    end
    object DateTimeField1: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtES'
      Origin = 'nf_dtES'
    end
    object DateTimeField2: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtemissao'
      Origin = 'nf_dtemissao'
    end
    object TimeField1: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_horaES'
      Origin = 'nf_horaES'
    end
    object StringField7: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_tipoES'
      Origin = 'nf_tipoES'
      Size = 1
    end
    object DateTimeField3: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtvencimento'
      Origin = 'nf_dtvencimento'
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = TbFornecedor
      LookupKeyFields = 'frn_id'
      LookupResultField = 'frn_NomeFantasia'
      KeyFields = 'frn_id'
      Size = 100
      Lookup = True
    end
    object IntegerField4: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_procEstoque'
      Origin = 'nf_procEstoque'
    end
  end
  object DsTbNotaFiscalP: TDataSource
    DataSet = TbNotaFiscalP
    Left = 770
    Top = 395
  end
  object TbNotaFiscalItemP: TFDTable
    ObjectView = False
    IndexFieldNames = 'nf_id'
    MasterSource = DsTbNotaFiscalP
    MasterFields = 'nf_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'nota_fiscal_item'
    UpdateOptions.AutoIncFields = 'nfi_id'
    TableName = 'nota_fiscal_item'
    Left = 720
    Top = 445
    object FDAutoIncField2: TFDAutoIncField
      FieldName = 'nfi_id'
      Origin = 'nfi_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      ClientAutoIncrement = False
    end
    object IntegerField5: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_id'
      Origin = 'nf_id'
    end
    object IntegerField6: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object IntegerField7: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
    object IntegerField8: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_cfop'
      Origin = 'nfi_cfop'
    end
    object BCDField12: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_qtde'
      Origin = 'nfi_qtde'
      Precision = 10
      Size = 2
    end
    object BCDField13: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrunit'
      Origin = 'nfi_vlrunit'
      Precision = 10
      Size = 2
    end
    object BCDField14: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrtotal'
      Origin = 'nfi_vlrtotal'
      Precision = 10
      Size = 2
    end
    object StringField9: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = QryProduto
      LookupKeyFields = 'prd_idproduto'
      LookupResultField = 'prd_nome'
      KeyFields = 'prd_idproduto'
      Size = 50
      Lookup = True
    end
    object StringField10: TStringField
      FieldKind = fkLookup
      FieldName = 'Embalagem'
      LookupDataSet = TbProdutoEmbalagem
      LookupKeyFields = 'prde_Id'
      LookupResultField = 'prde_descricao'
      KeyFields = 'prde_Id'
      Size = 50
      Lookup = True
    end
  end
  object DsTbNotaFiscalItemP: TDataSource
    DataSet = TbNotaFiscalItemP
    Left = 770
    Top = 445
  end
  object QryProcNotaFiscal: TFDQuery
    ActiveStoredUsage = []
    AutoCalcFields = False
    ObjectView = False
    IndexesActive = False
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT * FROM nota_fiscal WHERE nf_procEstoque = 0')
    Left = 860
    Top = 310
    object QryProcNotaFiscalnf_id: TFDAutoIncField
      FieldName = 'nf_id'
      Origin = 'nf_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryProcNotaFiscalnf_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtcriacao'
      Origin = 'nf_dtcriacao'
    end
    object QryProcNotaFiscalnf_numero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numero'
      Origin = 'nf_numero'
    end
    object QryProcNotaFiscalnf_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_serie'
      Origin = 'nf_serie'
    end
    object QryProcNotaFiscalnf_numeroChar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_numeroChar'
      Origin = 'nf_numeroChar'
      Size = 100
    end
    object QryProcNotaFiscalnf_chaveacesso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_chaveacesso'
      Origin = 'nf_chaveacesso'
      Size = 100
    end
    object QryProcNotaFiscalnf_nop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_nop'
      Origin = 'nf_nop'
      Size = 255
    end
    object QryProcNotaFiscalnf_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_ie'
      Origin = 'nf_ie'
      Size = 25
    end
    object QryProcNotaFiscalnf_im: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_im'
      Origin = 'nf_im'
      Size = 25
    end
    object QryProcNotaFiscalnf_cnpjForn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_cnpjForn'
      Origin = 'nf_cnpjForn'
      Size = 25
    end
    object QryProcNotaFiscalnf_baseicms: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms'
      Origin = 'nf_baseicms'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlricms: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms'
      Origin = 'nf_vlricms'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_baseicms_st: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_baseicms_st'
      Origin = 'nf_baseicms_st'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlricms_st: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlricms_st'
      Origin = 'nf_vlricms_st'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrtotal'
      Origin = 'nf_vlrtotal'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrfrete: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrfrete'
      Origin = 'nf_vlrfrete'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrseguro: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrseguro'
      Origin = 'nf_vlrseguro'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrdesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrdesconto'
      Origin = 'nf_vlrdesconto'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlroutrasdespesas: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlroutrasdespesas'
      Origin = 'nf_vlroutrasdespesas'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrip'
      Origin = 'nf_vlrip'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalnf_vlrprodutos: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nf_vlrprodutos'
      Origin = 'nf_vlrprodutos'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalfrn_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'frn_id'
      Origin = 'frn_id'
    end
    object QryProcNotaFiscalnf_dtES: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtES'
      Origin = 'nf_dtES'
    end
    object QryProcNotaFiscalnf_dtemissao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtemissao'
      Origin = 'nf_dtemissao'
    end
    object QryProcNotaFiscalnf_horaES: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_horaES'
      Origin = 'nf_horaES'
    end
    object QryProcNotaFiscalnf_tipoES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nf_tipoES'
      Origin = 'nf_tipoES'
      Size = 1
    end
    object QryProcNotaFiscalnf_dtvencimento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'nf_dtvencimento'
      Origin = 'nf_dtvencimento'
    end
    object QryProcNotaFiscalnf_procEstoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_procEstoque'
      Origin = 'nf_procEstoque'
    end
  end
  object DsQryProcNotaFiscal: TDataSource
    DataSet = QryProcNotaFiscal
    Left = 860
    Top = 360
  end
  object QryProcNotaFiscalItem: TFDQuery
    ActiveStoredUsage = []
    ObjectView = False
    IndexFieldNames = 'nf_id'
    MasterSource = DsQryProcNotaFiscal
    MasterFields = 'nf_id'
    Connection = FDConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM nota_fiscal_item WHERE prd_idproduto > 0')
    Left = 945
    Top = 315
    object QryProcNotaFiscalItemnfi_id: TFDAutoIncField
      FieldName = 'nfi_id'
      Origin = 'nfi_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryProcNotaFiscalItemnf_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf_id'
      Origin = 'nf_id'
    end
    object QryProcNotaFiscalItemprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object QryProcNotaFiscalItemprde_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
    object QryProcNotaFiscalItemnfi_cfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_cfop'
      Origin = 'nfi_cfop'
    end
    object QryProcNotaFiscalItemnfi_qtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_qtde'
      Origin = 'nfi_qtde'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalItemnfi_vlrunit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrunit'
      Origin = 'nfi_vlrunit'
      Precision = 10
      Size = 2
    end
    object QryProcNotaFiscalItemnfi_vlrtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'nfi_vlrtotal'
      Origin = 'nfi_vlrtotal'
      Precision = 10
      Size = 2
    end
  end
  object DsQryProcNotaFiscalItem: TDataSource
    DataSet = QryProcNotaFiscalItem
    Left = 945
    Top = 355
  end
  object DsQryTbSafra: TDataSource
    DataSet = QryTbSafra
    Left = 1170
    Top = 25
  end
  object QryTbSafra: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM Safra ;')
    Left = 1095
    Top = 25
  end
  object TbPlantio: TFDTable
    Active = True
    BeforePost = TbPlantioBeforePost
    AfterPost = TbPlantioAfterPost
    IndexFieldNames = 'plt_id'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.Plantio'
    TableName = 'gr_desenv.Plantio'
    Left = 1100
    Top = 85
    object TbPlantioplt_id: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'plt_id'
      Origin = 'plt_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbPlantioplt_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'plt_dtcriacao'
      Origin = 'plt_dtcriacao'
    end
    object TbPlantioplt_Descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'plt_Descricao'
      Origin = 'plt_Descricao'
      Size = 255
    end
    object TbPlantioplt_dtInicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'plt_dtInicio'
      Origin = 'plt_dtInicio'
    end
    object TbPlantioplt_dtTermino: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'plt_dtTermino'
      Origin = 'plt_dtTermino'
    end
    object TbPlantioplt_areaTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'plt_areaTotal'
      Origin = 'plt_areaTotal'
      Precision = 10
      Size = 3
    end
    object TbPlantioplt_areaPlantada: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'plt_areaPlantada'
      Origin = 'plt_areaPlantada'
      Precision = 10
      Size = 3
    end
    object TbPlantioplt_Status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'plt_Status'
      Origin = 'plt_Status'
      Size = 25
    end
    object TbPlantiosf_IdSafra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sf_IdSafra'
      Origin = 'sf_IdSafra'
    end
  end
  object DsTbPlantio: TDataSource
    DataSet = TbPlantio
    Left = 1170
    Top = 85
  end
  object DsTbTalhao: TDataSource
    DataSet = TbTalhao
    Left = 1175
    Top = 145
  end
  object TbTalhao: TFDTable
    Filtered = True
    Filter = 'tbl_status = '#39'DISPONIVEL'#39
    IndexFieldNames = 'tbl_idTalhao'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.Talhao'
    TableName = 'gr_desenv.Talhao'
    Left = 1100
    Top = 140
    object TbTalhaotbl_idTalhao: TFDAutoIncField
      FieldName = 'tbl_idTalhao'
      Origin = 'tbl_idTalhao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbTalhaotbl_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_dtcriacao'
      Origin = 'tbl_dtcriacao'
    end
    object TbTalhaotbl_AreaTalhao: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_AreaTalhao'
      Origin = 'tbl_AreaTalhao'
      Precision = 10
      Size = 6
    end
    object TbTalhaotbl_TipoTalhao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_TipoTalhao'
      Origin = 'tbl_TipoTalhao'
      Size = 255
    end
    object TbTalhaotbl_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_descricao'
      Origin = 'tbl_descricao'
      Size = 50
    end
    object TbTalhaotbl_latitude: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_latitude'
      Origin = 'tbl_latitude'
      Precision = 10
      Size = 6
    end
    object TbTalhaotbl_longitude: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_longitude'
      Origin = 'tbl_longitude'
      Precision = 10
      Size = 6
    end
    object TbTalhaotbl_linkMapa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_linkMapa'
      Origin = 'tbl_linkMapa'
      Size = 255
    end
    object TbTalhaopr_idPropriedadeRural: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pr_idPropriedadeRural'
      Origin = 'pr_idPropriedadeRural'
    end
    object TbTalhaotbl_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_status'
      Origin = 'tbl_status'
      Size = 25
    end
    object TbTalhaotbl_checkbox: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_checkbox'
      Origin = 'tbl_checkbox'
    end
    object TbTalhaoCheck: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Check'
    end
  end
  object DsTbPlantio_Talhao: TDataSource
    DataSet = TbPlantio_Talhao
    Left = 1175
    Top = 210
  end
  object TbPlantio_Talhao: TFDTable
    AutoCalcFields = False
    IndexFieldNames = 'pltl_id'
    AggregatesActive = True
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'Plantio_Talhao'
    TableName = 'Plantio_Talhao'
    Left = 1105
    Top = 210
    object TbPlantio_Talhaopltl_id: TFDAutoIncField
      FieldName = 'pltl_id'
      Origin = 'pltl_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TbPlantio_TalhaopltlDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pltlDescricao'
      Origin = 'pltlDescricao'
      Size = 255
    end
    object TbPlantio_Talhaoplt_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'plt_id'
      Origin = 'plt_id'
    end
    object TbPlantio_Talhaotbl_idTalhao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_idTalhao'
      Origin = 'tbl_idTalhao'
    end
    object TbPlantio_TalhaopltldtInicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'pltldtInicio'
      Origin = 'pltldtInicio'
    end
    object TbPlantio_TalhaopltldtTermino: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'pltldtTermino'
      Origin = 'pltldtTermino'
    end
    object TbPlantio_TalhaopltlAndamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pltlAndamento'
      Origin = 'pltlAndamento'
    end
    object TbPlantio_TalhaoPlantio: TStringField
      FieldKind = fkLookup
      FieldName = 'Plantio'
      LookupDataSet = TbPlantio
      LookupKeyFields = 'plt_id'
      LookupResultField = 'plt_Descricao'
      KeyFields = 'plt_id'
      Size = 100
      Lookup = True
    end
    object TbPlantio_TalhaoNomeTalhao: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTalhao'
      LookupDataSet = TbTalhaoFull
      LookupKeyFields = 'tbl_idTalhao'
      LookupResultField = 'tbl_descricao'
      KeyFields = 'tbl_idTalhao'
      Size = 100
      Lookup = True
    end
  end
  object DsTbTalhaoFull: TDataSource
    DataSet = TbTalhaoFull
    Left = 1180
    Top = 265
  end
  object TbTalhaoFull: TFDTable
    IndexFieldNames = 'tbl_idTalhao'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.Talhao'
    TableName = 'gr_desenv.Talhao'
    Left = 1110
    Top = 265
    object FDAutoIncField3: TFDAutoIncField
      FieldName = 'tbl_idTalhao'
      Origin = 'tbl_idTalhao'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_dtcriacao'
      Origin = 'tbl_dtcriacao'
    end
    object FMTBCDField1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_AreaTalhao'
      Origin = 'tbl_AreaTalhao'
      Precision = 10
      Size = 6
    end
    object StringField11: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_TipoTalhao'
      Origin = 'tbl_TipoTalhao'
      Size = 255
    end
    object StringField12: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_descricao'
      Origin = 'tbl_descricao'
      Size = 50
    end
    object FMTBCDField2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_latitude'
      Origin = 'tbl_latitude'
      Precision = 10
      Size = 6
    end
    object FMTBCDField3: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_longitude'
      Origin = 'tbl_longitude'
      Precision = 10
      Size = 6
    end
    object StringField13: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_linkMapa'
      Origin = 'tbl_linkMapa'
      Size = 255
    end
    object LongWordField1: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'pr_idPropriedadeRural'
      Origin = 'pr_idPropriedadeRural'
    end
    object StringField14: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_status'
      Origin = 'tbl_status'
      Size = 25
    end
    object IntegerField9: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tbl_checkbox'
      Origin = 'tbl_checkbox'
    end
    object IntegerField10: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Check'
    end
  end
  object QryCtrlEstProduto: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'SELECT p.prd_idproduto,pe.prde_Id, p.prd_nome,pe.prde_descricao ' +
        'AS '#39'Embalagem'#39', p.prd_fabricante, p.prd_tipo, p.prd_status,CONCA' +
        'T(p.prd_nome , '#39' - '#39' , pe.prde_descricao) AS '#39'Produto_Embalagem'#39 +
        ','
      
        '      m.mov_tipo, SUM(mp.mp_qtdUnit) AS '#39'QTD_UNIT'#39',SUM( mp.mp_qt' +
        'dContabil) AS '#39'Ctrl Estoque'#39', AVG(mp.mp_precoCompra) AS '#39'Preco M' +
        'edio'#39', SUM(mp.mp_precoTotal) AS '#39'Valor Geral'#39
      
        'FROM movimentacao m INNER JOIN movimentacao_produto mp ON m.mov_' +
        'id = mp.mov_id INNER JOIN produto p ON mp.prd_idproduto = p.prd_' +
        'idproduto INNER JOIN produto_embalagem pe ON pe.prde_Id = mp.prd' +
        'e_Id'
      '  GROUP BY p.prd_idproduto, p.prd_nome,pe.prde_descricao;')
    Left = 1110
    Top = 385
    object QryCtrlEstProdutoprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object QryCtrlEstProdutoprde_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
    object QryCtrlEstProdutoprd_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_nome'
      Origin = 'prd_nome'
      Size = 50
    end
    object QryCtrlEstProdutoEmbalagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Embalagem'
      Origin = 'Embalagem'
      Size = 50
    end
    object QryCtrlEstProdutoprd_fabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_fabricante'
      Origin = 'prd_fabricante'
      Size = 50
    end
    object QryCtrlEstProdutoprd_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_tipo'
      Origin = 'prd_tipo'
      Size = 50
    end
    object QryCtrlEstProdutoprd_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prd_status'
      Origin = 'prd_status'
      Size = 1
    end
    object QryCtrlEstProdutomov_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mov_tipo'
      Origin = 'mov_tipo'
      Size = 1
    end
    object QryCtrlEstProdutoQTD_UNIT: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_UNIT'
      Origin = 'QTD_UNIT'
      Precision = 32
      Size = 3
    end
    object QryCtrlEstProdutoCtrlEstoque: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Ctrl Estoque'
      Origin = '`Ctrl Estoque`'
      Precision = 32
      Size = 3
    end
    object QryCtrlEstProdutoPrecoMedio: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Preco Medio'
      Origin = '`Preco Medio`'
      Precision = 14
      Size = 6
    end
    object QryCtrlEstProdutoValorGeral: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Valor Geral'
      Origin = '`Valor Geral`'
      Precision = 32
      Size = 2
    end
    object QryCtrlEstProdutoProduto_Embalagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Produto_Embalagem'
      Origin = 'Produto_Embalagem'
      Size = 103
    end
  end
  object DsQryCtrlEstProduto: TJvDataSource
    DataSet = QryCtrlEstProduto
    Left = 1185
    Top = 385
  end
  object DsTbPlantio_Insumo: TDataSource
    DataSet = TbPlantio_Insumo
    Left = 1185
    Top = 325
  end
  object TbPlantio_Insumo: TFDTable
    AutoCalcFields = False
    IndexFieldNames = 'plis_id'
    AggregatesActive = True
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvEDelete, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'gr_desenv.Plantio_Insumos'
    TableName = 'gr_desenv.Plantio_Insumos'
    Left = 1110
    Top = 325
    object TbPlantio_Insumoplis_id: TFDAutoIncField
      FieldName = 'plis_id'
      Origin = 'plis_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TbPlantio_Insumoplis_dtcriacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'plis_dtcriacao'
      Origin = 'plis_dtcriacao'
    end
    object TbPlantio_Insumoplt_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'plt_id'
      Origin = 'plt_id'
    end
    object TbPlantio_Insumoprde_Id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prde_Id'
      Origin = 'prde_Id'
    end
    object TbPlantio_Insumoprd_idproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'prd_idproduto'
      Origin = 'prd_idproduto'
    end
    object TbPlantio_Insumoplt_qtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'plt_qtde'
      Origin = 'plt_qtde'
      Precision = 10
      Size = 3
    end
  end
end
