unit Classe.Sistema.Mensagens;

interface

uses
  System.SysUtils, Vcl.Forms,UFrmMensagemSistema;
Type TpMsgResult  =     Record
          MsgJanela   :     string;
          MsgTitle    :     string;
          MsgText     :     string;
          MsgIcone    :     string;
          MsgTipo     :     string;
          RespBt      :     Boolean;
      End;

      function fMsgPadrao (VJanela, VTMsg, VMsg, VTipo : Integer; VMsgExterna : String) : TpMsgResult;
      function fMontaMensagem( TJanela, TMsg, Msg, Icone, Tipo : String ): Boolean;
      function fCriarMensagem( TJanela, TMsg, Msg, Icone, Tipo : String ): Boolean;

implementation

function fMsgPadrao (VJanela, VTMsg, VMsg, VTipo : Integer; VMsgExterna : String) : TpMsgResult;
begin

      case VJanela of
      1: Result.MsgJanela := 'ATENÇÃO';
      2: Result.MsgJanela := 'ERRO';
      3: Result.MsgJanela := 'INFORMATIVO';
      4: Result.MsgJanela := 'CONEXÃO AO BANCO DE DADOS';
      5: Result.MsgJanela := 'ACESSO AO SISTEMA';
      6: Result.MsgJanela := 'ENCERRANDO O SISTEMA';
      7: Result.MsgJanela := 'EXCLUSÃO DE REGISTRO';
      8: Result.MsgJanela := 'CAMPOS OBRIGATÓRIOS';
      9: Result.MsgJanela := 'ERRO NA CONEXÃO COM O BANCO DE DADOS';
      end;

      case VTMsg of
      1: Result.MsgTitle := 'ATENÇÃO';
      2: Result.MsgTitle := 'ERRO';
      3: Result.MsgTitle := 'INFORMATIVO';
      4: Result.MsgTitle := 'QUESTÃO';
      end;

      case VTMsg of
      1: Result.MsgIcone := ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Aviso.png';
      2: Result.MsgIcone := ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Erro.png';
      3: Result.MsgIcone := ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Informacao.png';
      4: Result.MsgIcone := ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Pergunta.png';
      end;

      case VMsg of
      1 : Result.MsgText := 'REGISTRO SALVO COM SUCESSO '+VMsgExterna;
      2 : Result.MsgText := 'FALHA AO TENTAR SALVAR REGISTRO '+VMsgExterna;
      3 : Result.MsgText := 'DESEJA FECHAR O SISTEMA? '+VMsgExterna;
      4 : Result.MsgText := 'DESEJA CANCELAR? OS DADOS SERÃO PERDIDOS! '+VMsgExterna;
      5 : Result.MsgText := 'FALHA AO TENTAR INSERIR UM NOVO REGISTRO! '#13'SE O ERRO PERSISTIR ENTRE EM CONTATO COM O ADMINISTRADOR '+VMsgExterna;
      6 : Result.MsgText := 'CAMPOS OBRIGATÓRIOS NÃO PREENCHIDOS! '+VMsgExterna;
      7 : Result.MsgText := 'NÃO FOI POSSIVEL LOGAR NO SISTEMA! '+VMsgExterna;
      8 : Result.MsgText := 'FALHA NA OPERAÇÃO DE BANCO DE DADOS! ENTRE EM CONTATO COM ADMINISTRADOR EM CASO DE PERSISTÊNCIA DO PROBLEMA! '+VMsgExterna;
      9 : Result.MsgText := 'DESEJA EXCLUIR O REGISTRO SELECIONADO? '+VMsgExterna;
      10 : Result.MsgText:= 'FAVOR INFORMAR UM E-MAIL VÁLIDO '+VMsgExterna;
      11 : Result.MsgText:= 'SUCESSO, CONECTADO AO BANCO DE DADOS DO SISTEMA '+VMsgExterna;
      12 : Result.MsgText:= 'NÃO FOI POSSÍVEL CONECTAR AO BANCO DE DADOS! ENTRE EM CONTATO COM O ADMINISTRADOR, ERRO: '+VMsgExterna;
      end;

      case VTipo of
      1: Result.MsgTipo := 'CONFIRMAR';
      2: Result.MsgTipo := 'OK';
      end;

      Result.RespBt := fMontaMensagem(Result.MsgJanela,Result.MsgTitle,Result.MsgText,Result.MsgIcone,Result.MsgTipo);

end;

function fMontaMensagem( TJanela, TMsg, Msg, Icone, Tipo : String ): Boolean;
begin

        FrmMensagemSistema := TFrmMensagemSistema.Create( nil );

        FrmMensagemSistema.sTituloJanela      := TJanela;
        FrmMensagemSistema.sTituloMensagem    := TMsg;
        FrmMensagemSistema.sMsg               := Msg;
        FrmMensagemSistema.SCaminhoIcone      := Icone;
        FrmMensagemSistema.sTipo              := Tipo;

        FrmMensagemSistema.ShowModal;
        Result := FrmMensagemSistema.bRespostaMsg;

end;

function fCriarMensagem( TJanela, TMsg, Msg, Icone, Tipo : String ): Boolean;
begin

        FrmMensagemSistema := TFrmMensagemSistema.Create( nil );

        FrmMensagemSistema.sTituloJanela      := TJanela;
        FrmMensagemSistema.sTituloMensagem    := TMsg;
        FrmMensagemSistema.sMsg               := Msg;
        FrmMensagemSistema.SCaminhoIcone      := Icone;
        FrmMensagemSistema.sTipo              := Tipo;

        FrmMensagemSistema.ShowModal;
        Result := FrmMensagemSistema.bRespostaMsg;

end;

end.
