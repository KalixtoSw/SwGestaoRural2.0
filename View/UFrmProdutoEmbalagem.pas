unit UFrmProdutoEmbalagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1,
  Data.DB, JvComponentBase, JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, Classe.Produto.Embalagem, JvExStdCtrls, JvEdit, JvExMask, JvToolEdit,
  JvBaseEdits, JvCombobox, JvMaskEdit, JvGradient;

type
  TFrmProdutoEmbalagem = class(TFrmModel1)
    PnlCampo2: TJvPanel;
    LbCampo2: TLabel;
    CbbCampo2: TJvComboBox;
    PnlCampo3: TJvPanel;
    LbCampo3: TLabel;
    EdtCampo3: TJvCalcEdit;
    PnlCampo4: TJvPanel;
    LbCampo4: TLabel;
    EdtCampo4: TJvCalcEdit;
    PnlCampo1: TJvPanel;
    LbCampo1: TLabel;
    ObrEdtCampo1: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridDblClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
    ProdutoEmbalagem: TProdutoEmbalagem;
  end;

var
  FrmProdutoEmbalagem: TFrmProdutoEmbalagem;


implementation

uses
     Classe.Sistema.Mensagens;


{$R *.dfm}

procedure TFrmProdutoEmbalagem.BtAdicionarClick(Sender: TObject);
begin
  inherited;
        ProdutoEmbalagem.setAcaoAdicionarEditar('INSERT');
end;

procedure TFrmProdutoEmbalagem.BtCancelarClick(Sender: TObject);
begin
  inherited;
        ProdutoEmbalagem.getCancelar;
end;

procedure TFrmProdutoEmbalagem.BtExcluirClick(Sender: TObject);
begin
  if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              ProdutoEmbalagem.setDelete;
        end;
  inherited;

end;

procedure TFrmProdutoEmbalagem.BtSalvarClick(Sender: TObject);
begin

      if ProdutoEmbalagem.getSavar then
      begin
            //fMsgPadrao(3,3,1,2,EmptyStr);
            inherited;
            ProdutoEmbalagem.setFrmOnShow;
      end;
end;

procedure TFrmProdutoEmbalagem.DbGridDblClick(Sender: TObject);
begin
  inherited;
        ProdutoEmbalagem.setAcaoAdicionarEditar('UPDATE');
end;

procedure TFrmProdutoEmbalagem.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      begin
            ProdutoEmbalagem.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmProdutoEmbalagem.FormCreate(Sender: TObject);
begin
  inherited;
        ProdutoEmbalagem :=     TProdutoEmbalagem.CreateObjTProdutoEmbalagem;
end;

procedure TFrmProdutoEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
        ProdutoEmbalagem.setFrmOnShow;
end;

end.

