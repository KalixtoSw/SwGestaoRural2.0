unit Classe.Email;

interface
uses
      IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
      IdExplicitTLSClientServerBase, JvExControls, JvSpeedButton, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms;

type
  TMensagemMail = class
  private
    FMensagem: String;
  public
    property Mensagem: String read FMensagem write FMensagem;
  end;

    TServiceMail = class
  public
    function EnviarMail: TMensagemMail;
  end;

implementation

uses
     Classe.Functions;

{ TServiceMail }

function TServiceMail.EnviarMail: TMensagemMail;
var
  lSSL: TIdSSLIOHandlerSocketOpenSSL;
  lSMTP: TIdSMTP;
  lMessage: TIdMessage;
  lText: TIdText;
  //lAnexo: string;
begin
  Result := TMensagemMail.Create;
  lSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    lSMTP := TIdSMTP.Create(nil);
    try
      lMessage := TIdMessage.Create(nil);
      try
        lSSL.SSLOptions.Method := sslvSSLv23;
        lSSL.SSLOptions.Mode := sslmClient;
        lSMTP.IOHandler := lSSL;
        lSMTP.AuthType := satDefault;
        lSMTP.UseTLS := utUseImplicitTLS;
        lSMTP.Host := 'smtp.gmail.com';
        lSMTP.Port := 465;
        lSMTP.Username := 'kalixtosw@gmail.com';
        lSMTP.Password := fCripto('������񡽸��');
        lMessage.From.Address := fCripto('������+���������');
        lMessage.From.Name := 'Calixto Software';
        lMessage.ReplyTo.EMailAddresses := lMessage.From.Address;
        lMessage.Recipients.Add.Text := 'calixtosuinos@outlook.com';
        lMessage.Recipients.Add.Text := 'viniciusmotazulianelli@gmail.com';
        {lMessage.Recipients.Add.Text := 'QuemIraReceber03@email.com';}
        lMessage.Subject := 'Recupera��o de Senha do Sistema Gest�o Rural 1.0';
        lMessage.Encoding := meMIME;
        lText := TIdText.Create(lMessage.MessageParts);
        lText.Body.Add('C�digo de Recupera��o de senha!');
        lText.Body.Add('Seu novo c�digo de acesso �: ');
        lText.Body.Add(fGetRandomPassword(6,2));
        lText.ContentType := 'text/plain; charset=iso-8859-1';

        {lAnexo := ExtractFilePath(Application.ExeName) + 'Anexo.pdf';
        if FileExists(lAnexo) then begin
          TIdAttachmentFile.Create(lMessage.MessageParts, lAnexo);
        end;
        lAnexo := ExtractFilePath(Application.ExeName) + 'Anexo02.pdf';
        if FileExists(lAnexo) then begin
          TIdAttachmentFile.Create(lMessage.MessageParts, lAnexo);
        end;}

        try
          lSMTP.Connect;
          lSMTP.Authenticate;
        except
          on E:Exception do begin
            Result.Mensagem := E.Message;
            Exit;
          end;
        end;
        try
          lSMTP.Send(lMessage);
          Result.Mensagem := 'E-mail enviado com sucesso!';
        except
          On E:Exception do begin
            Result.Mensagem := E.Message;
          end;
        end;
      finally
        lMessage.Free;
      end;
    finally
      lSMTP.Free;
    end;
  finally
    lSSL.Free;
    UnLoadOpenSSLLibrary;
  end;
end;

end.
