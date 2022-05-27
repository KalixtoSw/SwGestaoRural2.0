unit UFrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1, Data.DB, JvComponentBase,
  JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels, JvExControls,
  JvSpeedButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Classe.Produto, Classe.Sistema.Mensagens,
  JvGradient;

type
  TFrmCadastroProduto = class(TFrmModel1)
    PnlCampo1: TJvPanel;
    LbCampo1: TLabel;
    LineCampo1: TJvGradient;
    LineCampo1_1: TJvGradient;
    ObrEdtCampo1: TMaskEdit;
    PnlCampo2: TJvPanel;
    LbCampo2: TLabel;
    LineCampo2: TJvGradient;
    LineCampo2_1: TJvGradient;
    CbbCampo2: TComboBox;
    PnlCampo3: TJvPanel;
    LbCampo3: TLabel;
    LineCampo3: TJvGradient;
    LineCampo3_1: TJvGradient;
    EdtCampo3: TMaskEdit;
    procedure BtSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure DbGridDblClick(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Produto : Tproduto;
  public
    { Public declarations }
  end;

var
  FrmCadastroProduto: TFrmCadastroProduto;

implementation


{$R *.dfm}

procedure TFrmCadastroProduto.BtAdicionarClick(Sender: TObject);
begin
  inherited;
        Produto.setAcaoAdicionarEditar('INSERT');
end;

procedure TFrmCadastroProduto.BtCancelarClick(Sender: TObject);
begin
  inherited;
        Produto.getCancelar;
end;

procedure TFrmCadastroProduto.BtExcluirClick(Sender: TObject);
begin
  if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              Produto.setDelete;
        end;
  inherited;

end;

procedure TFrmCadastroProduto.BtSalvarClick(Sender: TObject);
begin
if Produto.getSavar then
      begin
            fMsgPadrao(3,3,1,2,EmptyStr);
            inherited;
            Produto.setFrmOnShow;
      end;
end;

procedure TFrmCadastroProduto.DbGridDblClick(Sender: TObject);
begin
  inherited;
        Produto.setAcaoAdicionarEditar('UPDATE');
end;

procedure TFrmCadastroProduto.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      begin
            Produto.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmCadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        Action := caFree;
end;

procedure TFrmCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
        Produto := TProduto.CreateObjTProduto;
end;

procedure TFrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
        Produto.setFrmOnShow;
end;

end.
