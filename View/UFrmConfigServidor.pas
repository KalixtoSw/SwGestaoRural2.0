unit UFrmConfigServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Imaging.pngimage, JvExControls,
  JvSpeedButton, JvExStdCtrls, JvEdit, Classe.Functions,UFrmMenuPrincipal,
  Classe.conexao, Classe.FunctionsCrud, Classe.Sistema.Mensagens;

type
  TFrmConfigServidor = class(TForm)
    shpFundo: TShape;
    pnlFundo: TJvPanel;
    pnlTop: TJvPanel;
    ImgLogoServer: TImage;
    LblInformativo1: TLabel;
    LblInformativo2: TLabel;
    pnlDadosServerNew: TJvPanel;
    pnlBtnServidor: TJvPanel;
    pnlBtnConfirmar: TJvPanel;
    BtnConfirmar: TJvSpeedButton;
    pnlBtnCancelar: TJvPanel;
    BtnCancelar: TJvSpeedButton;
    LblNovaConfServidor: TLabel;
    LblAtualConfServidor: TLabel;
    pnlAtualConfServidor: TJvPanel;
    pnlSplit1: TJvPanel;
    ObrEdtNewCamBanco: TJvEdit;
    EdtNewPorta: TJvEdit;
    EdtNewNomeBanco: TJvEdit;
    EdtNewLogin: TJvEdit;
    EdtNewSenha: TJvEdit;
    LblNewCamBanco: TLabel;
    LblNewPorta: TLabel;
    LblNewNomeBancoDados: TLabel;
    LblNewLogin: TLabel;
    LblNewSenha: TLabel;
    LblAtualCamBanco: TLabel;
    EdtAtualCamBanco: TJvEdit;
    LblAtualNomeBanco: TLabel;
    EdtAtualNomeBanco: TJvEdit;
    LblAtualLogin: TLabel;
    EdtAtualLogin: TJvEdit;
    LblAtualPorta: TLabel;
    EdtAtualPorta: TJvEdit;
    LblAtualSenha: TLabel;
    EdtAtualSenha: TJvEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigServidor: TFrmConfigServidor;

implementation

{$R *.dfm}

procedure TFrmConfigServidor.BtnCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TFrmConfigServidor.BtnConfirmarClick(Sender: TObject);
begin
      try
               if fCamposObrigatorios(Self) then
      begin
           DMPrincipal.conexao.Servidor     := ObrEdtNewCamBanco.Text;
           DMPrincipal.conexao.Base         := EdtNewNomeBanco.Text;
           DMPrincipal.conexao.Login        := EdtNewLogin.Text;
           DMPrincipal.conexao.Senha        := EdtNewSenha.Text;
           DMPrincipal.conexao.Porta        := EdtNewPorta.Text;

           DMPrincipal.conexao.GravarArquivoINI;

           if DMPrincipal.conexao.fConectarBancoDados Then
           begin
                   fCriarMensagem('CONEXÃO AO BANCO DE DADOS','SUCESSO AO CONECTAR AO BANCO DE DADOS',
                  'CONECTADO AO BANCO DE DADOS!',
                  ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Informacao.png' , 'OK');
                   Application.Terminate;

           end else begin
                  fCriarMensagem('CONEXÃO AO BANCO DE DADOS','ERRO AO CONECTAR AO BANCO DE DADOS',
                  'Não foi possível conectar ao Banco de Dados! entre em contato com o Administrador! Erro: '
                  + DMPrincipal.conexao.MsgErro,
                  ExtractFilePath(Application.ExeName ) + 'Icons\Mensagem\Erro.png', 'OK');

                 ObrEdtNewCamBanco.SetFocus;

           end;
      end;
      except on E: Exception do
            //fMsgPadrao(4,9,12,2,'ERRO: '+E.Message);
      end;

end;

procedure TFrmConfigServidor.FormShow(Sender: TObject);
begin
      try
            if DMPrincipal.conexao.fLerArquivoINI then
            begin

                 EdtAtualCamBanco.Text   := DMPrincipal.conexao.Servidor;
                 EdtAtualPorta.Text      := DMPrincipal.conexao.Porta;
                 EdtAtualNomeBanco.Text  := DMPrincipal.conexao.Base;
                 EdtAtualLogin.Text      := DMPrincipal.conexao.Login;
                 EdtAtualSenha.Text      := DMPrincipal.conexao.Senha;
            end;

      except on E: Exception do

      end;

end;

end.
