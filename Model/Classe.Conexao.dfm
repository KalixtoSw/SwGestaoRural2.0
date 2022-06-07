object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 645
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
    Active = True
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
    AutoCalcFields = False
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
  end
  object DsTbNotaFiscal: TDataSource
    DataSet = TbNotaFiscal
    Left = 305
    Top = 385
  end
  object TbFornecedor: TFDTable
    Active = True
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
    Active = True
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
    Active = True
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
end
