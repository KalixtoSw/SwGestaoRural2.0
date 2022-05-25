unit UFrmMensagemSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExControls, JvGradient, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, JvSpeedButton, JvBevel;

type
  TFrmMensagemSistema = class(TForm)
    PnlTitulo: TJvPanel;
    GrdntPnlTitulo: TJvGradient;
    PnlBtsNav: TJvPanel;
    GrdntPnlBtsNav: TJvGradient;
    PnlMensagem: TJvPanel;
    ImgMensagem: TImage;
    LbTituloMensagem: TLabel;
    PnlCorpoBts: TJvPanel;
    pnlBtNao: TJvPanel;
    shpBtnNao: TShape;
    BtNao: TJvSpeedButton;
    pnlBtSim: TJvPanel;
    shpBtnSim: TShape;
    BtSim: TJvSpeedButton;
    Shape1: TShape;
    LblTituloJanela: TLabel;
    MmCorpoMensagem: TMemo;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure BtSimClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtNaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bRespostaMsg : Boolean;
    SCaminhoIcone,sTituloJanela,sTituloMensagem,sMsg, sTipo : string;
  end;

var
  FrmMensagemSistema: TFrmMensagemSistema;

implementation

uses
     Classe.Functions;

{$R *.dfm}



procedure TFrmMensagemSistema.BtNaoClick(Sender: TObject);
begin
      bRespostaMsg := False;
      Close;
end;

procedure TFrmMensagemSistema.BtSimClick(Sender: TObject);
begin
      bRespostaMsg := True;
      Close;
end;

procedure TFrmMensagemSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

procedure TFrmMensagemSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
        begin
                BtSimClick( Self );
        end;

        if key = VK_ESCAPE then
        begin
                BtNaoClick( Self );
        end;
end;

procedure TFrmMensagemSistema.FormShow(Sender: TObject);
begin
      pMakeRounded(Self);
      bRespostaMsg := False;

      LblTituloJanela.Caption             := sTituloJanela;
      LbTituloMensagem.Caption            := sTituloMensagem;
      MmCorpoMensagem.Lines.Text          := sMsg;
      ImgMensagem.Picture.LoadFromFile( SCaminhoIcone );

      if sTipo = 'OK' then
      begin
            pnlBtNao.Visible := False;
            BtSim.Caption    := 'OK  ( Enter )';
      end;

end;

end.
