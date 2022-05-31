unit Classe.conexaoEfetiva;

interface

uses
  FireDAC.Comp.Client, FireDAC.Stan.Intf, System.SysUtils, System.IniFiles,
  Vcl.Forms, Winapi.Messages, Vcl.Dialogs, Vcl.Controls, Classe.StatusUsuario,
  Classe.Functions;

type
  TConexao = class
  private

    FServidor: string;
    FPorta: string;
    FSenha: string;
    FBase: string;
    FLogin: string;
    FMsgErro: string;
    FConexao: TFDConNection;
    FSenhaLg: string;
    FUsuarioLg: string;

  public

    constructor Create(NomeConexao: TFDConNection);
    destructor Destroy; override;

    function fConectarBancoDados: Boolean;

    procedure GravarArquivoINI;
    function fLerArquivoINI: Boolean;
    function fAutenticacao(usuario, senha: string): Boolean;

    property Conexao: TFDConNection read FConexao write FConexao;
    property Servidor: string read FServidor write FServidor;
    property Base: string read FBase write FBase;
    property Login: string read FLogin write FLogin;
    property Senha: string read FSenha write FSenha;
    property Porta: string read FPorta write FPorta;
    property MsgErro: string read FMsgErro write FMsgErro;

    property UsuarioLg: string read FUsuarioLg write FUsuarioLg;
    property SenhaLg: string read FSenhaLg write FSenhaLg;

  end;

implementation
uses
      Classe.Conexao;

{ TConexao }

constructor TConexao.Create(NomeConexao: TFDConNection);
begin
  FConexao := NomeConexao;
end;

destructor TConexao.Destroy;
begin
  FConexao.Connected := False;

  inherited;
end;

function TConexao.fAutenticacao(usuario, senha: string): Boolean;
var
  Sql: string;
begin
  try
    Sql := 'USE '+FBase+'; ';
    Sql := Sql + 'SELECT * FROM Usuario WHERE ';
    Sql := Sql + 'user_usuario = ' + QuotedStr(usuario) + ' AND user_senha = ' + QuotedStr(senha);
    if fConectarBancoDados then
    begin
      DMPrincipal.QrUsuario.Active := False;
      DMPrincipal.QrUsuario.SQL.Clear;
      DMPrincipal.QrUsuario.SQL.Add(Sql);
      DMPrincipal.QrUsuario.ExecSQL;
      DMPrincipal.QrUsuario.Active := True;

      TStatus.GetInstancia.UsuarioLogado := DMPrincipal.QrUsuariouser_usuario.AsString;
      TStatus.GetInstancia.UsuarioID := DMPrincipal.DsQrUsuario.DataSet.FieldByName('user_idUsuario').AsInteger;

      if TStatus.GetInstancia.UsuarioID > 0 then
      begin
        Result := True;
      end
      else
      begin
        FMsgErro := 'Usuário ou Senha Incorretos';
        Result := True; //Aqui é false por natureza da operação
      end;

    end
    else
    begin

      Result := False;

    end;

  except
    Result := False;

  end;
end;

function TConexao.fConectarBancoDados: Boolean;
begin

  FConexao.Params.Clear;

  fLerArquivoINI;

  if (FServidor = '') then
  begin
    Result := False;
    FMsgErro := 'O arquivo de Configuração não encontrado!';
  end
  else
  begin

    FConexao.Params.Add('Server=' + FServidor);
    FConexao.Params.Add('user_name=' + FLogin);
    FConexao.Params.Add('password=' + FSenha);
    FConexao.Params.Add('port=' + FPorta);
    FConexao.Params.Add('Database' + FBase);
    FConexao.Params.Add('DriverID=' + 'MySQL');
    Result := True;
    try
      FConexao.Connected := True;

    except
      on e: exception do
      begin
        FMsgErro := e.Message;
        Result := False;
      end;
    end;
  end;

end;

procedure TConexao.GravarArquivoINI;
var
  IniFile: string;
  Ini: TIniFile;
begin

  IniFile := ChangeFileExt(Application.Exename, '.ini');
  Ini := TIniFile.Create(IniFile);

  try
    Ini.WriteString('Configuracao', 'Servidor', FServidor);
    Ini.WriteString('Configuracao', 'Base', FBase);
    Ini.WriteString('Configuracao', 'Porta', FPorta);
    Ini.WriteString('Acesso', 'Login', FLogin);
    Ini.WriteString('Acesso', 'Senha', fCriptografiaKey(FSenha, 'Ma81'));

  finally
    Ini.Free;
  end;

end;

function TConexao.fLerArquivoINI: Boolean;
var
  IniFile: string;
  Ini: TIniFile;
begin
  IniFile := ChangeFileExt(Application.Exename, '.ini');
  Ini := TIniFile.Create(IniFile);

  if not (FileExists(IniFile)) then
  begin
    Result := False;

  end
  else
  begin
    try
      FServidor   := Ini.ReadString('Configuracao', 'Servidor', '');
      FBase       := Ini.ReadString('Configuracao', 'Base', '');
      FPorta      := Ini.ReadString('Configuracao', 'Porta', '');
      FLogin      := Ini.ReadString('Acesso', 'Login', '');

      FSenha      := Ini.ReadString('Acesso', 'Senha', '');
      FSenha      := fCriptografiaKey(FSenha, 'Ma81');

    finally
      Result      := True;
      Ini.Free;
    end;

  end;

end;

end.

