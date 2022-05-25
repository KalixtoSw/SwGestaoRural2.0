unit UFrmCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1,
  Data.DB, JvComponentBase, JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels,
  JvExControls, Classe.FunctionsCrud, Classe.Usuario, JvSpeedButton,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Classe.Functions,
  JvGradient;

type
  TFrmCadastroUsuario = class(TFrmModel1)
    PnlCampo1: TJvPanel;
    LbCampo1: TLabel;
    LineCampo1: TJvGradient;
    LineCampo1_1: TJvGradient;
    ObrEdtCampo1: TMaskEdit;
    PnlCampo2: TJvPanel;
    LbCampo2: TLabel;
    LineCampo2: TJvGradient;
    LineCampo2_1: TJvGradient;
    ObrEdtCampo2: TMaskEdit;
    PnlCampo3: TJvPanel;
    LbCampo3: TLabel;
    LineCampo3: TJvGradient;
    LineCampo3_1: TJvGradient;
    EdtCampo3: TMaskEdit;
    PnlCampo4: TJvPanel;
    LbCampo4: TLabel;
    LineCampo4: TJvGradient;
    LineCampo4_1: TJvGradient;
    EdtCampo4: TMaskEdit;
    PnlCampo5: TJvPanel;
    LbCampo5: TLabel;
    LineCampo5: TJvGradient;
    LineCampo5_1: TJvGradient;
    ObrEdtCampo5: TMaskEdit;
    LbHintCampoSenha: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGridDblClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure ObrEdtCampo5Exit(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure PnlCampo3MouseEnter(Sender: TObject);
    procedure PnlCampo3MouseLeave(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
  private    { Private declarations }
    Usuario: TUsuario;
  public    { Public declarations }
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;


implementation

uses
     Classe.Sistema.Mensagens;


{$R *.dfm}

procedure TFrmCadastroUsuario.BtAdicionarClick(Sender: TObject);
begin
  inherited;
   Usuario.setAcaoAdicionarEditar('INSERT');

end;

procedure TFrmCadastroUsuario.BtCancelarClick(Sender: TObject);
begin
  inherited;
      Usuario.getCancelarUsuario;
end;

procedure TFrmCadastroUsuario.BtExcluirClick(Sender: TObject);
begin
       if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              Usuario.setDeleteUsuario;
        end;
  inherited;
end;

procedure TFrmCadastroUsuario.BtSalvarClick(Sender: TObject);
begin
      if Usuario.getSavarUsuario then
      begin
            fMsgPadrao(3,3,1,2,EmptyStr);
            inherited;
            Usuario.setFrmOnShow;
      end;

end;

procedure TFrmCadastroUsuario.DbGridDblClick(Sender: TObject);
begin
  inherited;
  Usuario.setAcaoAdicionarEditar('UPDATE');

end;

procedure TFrmCadastroUsuario.DbGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
      DbGrid.Canvas.TextRect(Rect,Rect.Left + 8,Rect.Top + 8,Column.Field.DisplayText);
end;

procedure TFrmCadastroUsuario.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
      if Key = #13 then
      begin
            Usuario.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmCadastroUsuario.ObrEdtCampo5Exit(Sender: TObject);
begin
  inherited;
      Usuario.setEmail(ObrEdtCampo5.Text);
      ObrEdtCampo5.Text := Usuario.getEmail;
end;

procedure TFrmCadastroUsuario.PnlCampo3MouseEnter(Sender: TObject);
begin
  inherited;
      LbHintCampoSenha.Visible := True;
end;

procedure TFrmCadastroUsuario.PnlCampo3MouseLeave(Sender: TObject);
begin
  inherited;
      LbHintCampoSenha.Visible := False;
end;

procedure TFrmCadastroUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  Usuario := TUsuario.CreateObjTUsuario;
end;

procedure TFrmCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
       Usuario.setFrmOnShow;

end;

end.

