object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 624
  Width = 1250
  object MySQLDriver: TFDPhysMySQLDriverLink
    VendorLib = 'H:\Desenvolvimento SW\GestaoRural\Model\libmysql.dll'
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
    Active = True
    IndexFieldNames = 'user_idUsuario'
    Connection = FDConnection
    UpdateOptions.UpdateTableName = 'Usuario'
    TableName = 'Usuario'
    Left = 230
    Top = 55
    object TbUsuariouser_idUsuario: TFDAutoIncField
      FieldName = 'user_idUsuario'
      Origin = 'user_idUsuario'
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
end
