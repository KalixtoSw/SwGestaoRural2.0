unit UFrmCadastroTalhao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1, Data.DB, JvComponentBase,
  JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels, JvExControls,
  JvSpeedButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Classe.Talhao,
  JvExStdCtrls, JvCombobox, JvGradient, JvExMask, JvToolEdit, JvBaseEdits;

type
  TFrmCadastroTalhao = class(TFrmModel1)
    PnlCampo1: TJvPanel;
    LbCampo1: TLabel;
    LineCampo1: TJvGradient;
    LineCampo1_1: TJvGradient;
    ObrEdtCampo1: TMaskEdit;
    PnlCampo2: TJvPanel;
    LbCampo2: TLabel;
    LineCampo2: TJvGradient;
    LineCampo2_1: TJvGradient;
    PnlCampo3: TJvPanel;
    LbCampo3: TLabel;
    LineCampo3: TJvGradient;
    LineCampo3_1: TJvGradient;
    CalCampo3: TJvCalcEdit;
    PnlCampo4: TJvPanel;
    LbCampo4: TLabel;
    LineCampo4: TJvGradient;
    LineCampo4_1: TJvGradient;
    CalCampo4: TJvCalcEdit;
    PnlCampo5: TJvPanel;
    LbCampo5: TLabel;
    LineCampo5: TJvGradient;
    LineCampo5_1: TJvGradient;
    CalCampo5: TJvCalcEdit;
    PnlCampo6: TJvPanel;
    LbCampo6: TLabel;
    LineCampo6: TJvGradient;
    LineCampo6_1: TJvGradient;
    EdtCampo6: TMaskEdit;
    CbbCampo2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridDblClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure DbGridTitleClick(Column: TColumn);
  private
    { Private declarations }
    Talhao  : TTalhao;

  public
    { Public declarations }
  end;

var
  FrmCadastroTalhao: TFrmCadastroTalhao;

implementation

uses
     Classe.Sistema.Mensagens;

{$R *.dfm}

procedure TFrmCadastroTalhao.BtAdicionarClick(Sender: TObject);
begin
  inherited;
      Talhao.setAcaoAdicionarEditar('INSERT');
end;

procedure TFrmCadastroTalhao.BtCancelarClick(Sender: TObject);
begin
  inherited;
      Talhao.getCancelarTalhao;
end;

procedure TFrmCadastroTalhao.BtExcluirClick(Sender: TObject);
begin
       if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              Talhao.setDeleteTalhao;
        end;
  inherited;

end;

procedure TFrmCadastroTalhao.BtSalvarClick(Sender: TObject);
begin
   if Talhao.getSavarTalhao then
      begin
            fMsgPadrao(3,3,1,2,EmptyStr);
            inherited;
            Talhao.setFrmOnShow;
      end;

end;

procedure TFrmCadastroTalhao.DbGridDblClick(Sender: TObject);
begin
  inherited;
      Talhao.setAcaoAdicionarEditar('UPDATE');
end;

procedure TFrmCadastroTalhao.DbGridTitleClick(Column: TColumn);
begin
  inherited;
            DbGrid.Columns.Items[4].Alignment := taCenter;
end;

procedure TFrmCadastroTalhao.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      begin
            Talhao.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmCadastroTalhao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      Action := caFree;
end;

procedure TFrmCadastroTalhao.FormCreate(Sender: TObject);
begin
  inherited;
      Talhao := TTalhao.CreateObjTTalhao;
end;

procedure TFrmCadastroTalhao.FormShow(Sender: TObject);
begin
  inherited;
      Talhao.setFrmOnShow;

end;

end.
