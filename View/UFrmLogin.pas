unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, JvExStdCtrls, JvEdit, JvExControls,
  JvSpeedButton, JvGradient, Vcl.WinXCtrls, Classe.Functions, Classe.Conexao, Classe.Sistema.Mensagens;

type
  TFrmLogin = class(TForm)
    pnlLoginFundo: TJvPanel;
    pnlLeft: TJvPanel;
    LblBemVindo: TLabel;
    LblNomeSistema: TLabel;
    LblEmpresa: TLabel;
    LblAutor: TLabel;
    ImgLogo: TImage;
    LblDigiteLogin: TLabel;
    LblVersao: TLabel;
    pnlNomeUsuario: TJvPanel;
    pnlNomeUserLinha1: TJvPanel;
    pnlNomeUsuarioImg: TJvPanel;
    pnlNomeUsuarioEdit: TJvPanel;
    LblNomeUsuario: TLabel;
    ImgUsuario: TImage;
    EdtNomeUsuario: TJvEdit;
    pnlSenha: TJvPanel;
    pnlSenhaImg: TJvPanel;
    ImgSenha: TImage;
    pnlSenhaEdit: TJvPanel;
    LblSenha: TLabel;
    pnlSenhaLinha1: TJvPanel;
    EdtSenha: TJvEdit;
    pnlBtnConfirmar: TJvPanel;
    BtnConfirmar: TJvSpeedButton;
    BtnFecharApp: TJvSpeedButton;
    PnlRecupSenha: TJvPanel;
    JvGradient1: TJvGradient;
    PnlEnvEmail: TJvPanel;
    LbEnvEmail: TLabel;
    PnlNovoUsuario: TJvPanel;
    LbNovousuario: TLabel;
    JvGradient2: TJvGradient;
    ActIndEnvioEmail: TActivityIndicator;
    LbEnviaEmailResp: TLabel;
    procedure BtnFecharAppClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure LbEnvEmailClick(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;


implementation

uses
      Classe.Email;


{$R *.dfm}

procedure TFrmLogin.BtnConfirmarClick(Sender: TObject);
begin

  if (DMPrincipal.conexao.fAutenticacao(EdtNomeUsuario.Text, fCriptoMD5(EdtSenha.Text))) then
  begin
    Close;
  end
  else
  begin
      fMsgPadrao(5, 1, 7, 2,EmptyStr);
    Abort;
  end;

end;

procedure TFrmLogin.BtnFecharAppClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  pnlLoginFundo.Left := Round((FrmLogin.Width - pnlLoginFundo.Width) / 2);
  pnlLoginFundo.Top := Round((FrmLogin.Height - pnlLoginFundo.Height) / 2);
end;

procedure TFrmLogin.LbEnvEmailClick(Sender: TObject);
var
  lEmailService: TServiceMail;
begin

  try
    ActIndEnvioEmail.StartAnimation;
    lEmailService := TServiceMail.Create;
    pdelay(3000);
    ActIndEnvioEmail.StopAnimation;
    LbEnviaEmailResp.Caption := lEmailService.EnviarMail.Mensagem;
    pdelay(10000);
    LbEnviaEmailResp.Caption := EmptyStr;

  finally
    lEmailService.Free;
  end;
end;

end.

