unit UFrmCadastroSafra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1,
  Data.DB, JvComponentBase, JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, JvGradient, JvExMask, JvToolEdit, JvBaseEdits, JvExStdCtrls,
  JvCombobox, Vcl.WinXCalendars, Classe.Safra, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Classe.Functions;

type
  TFrmCadastroSafra = class(TFrmModel1)
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
    PnlCampo4: TJvPanel;
    LbCampo4: TLabel;
    LineCampo4: TJvGradient;
    LineCampo4_1: TJvGradient;
    ComboBox1: TComboBox;
    DtCampo3: TJvDatePickerEdit;
    DtCampo4: TJvDatePickerEdit;
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure DbGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private    { Private declarations }
    Safra: TSafra;
  public    { Public declarations }
  end;

var
  FrmCadastroSafra: TFrmCadastroSafra;


implementation

uses
     Classe.Sistema.Mensagens;

{$R *.dfm}

procedure TFrmCadastroSafra.BtAdicionarClick(Sender: TObject);
begin
  inherited;
      Safra.setAcaoAdicionarEditar('INSERT');
end;

procedure TFrmCadastroSafra.BtCancelarClick(Sender: TObject);
begin
  inherited;
      Safra.getCancelarSafra;
end;

procedure TFrmCadastroSafra.BtExcluirClick(Sender: TObject);
begin
      if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              Safra.setDeleteSafra;
        end;
  inherited;

end;

procedure TFrmCadastroSafra.BtSalvarClick(Sender: TObject);
begin
       if Safra.getSavarSafra then
       begin
         fMsgPadrao(3, 3, 1, 2,EmptyStr);
         inherited;
         Safra.setFrmOnShow;
       end;
end;

procedure TFrmCadastroSafra.DbGridDblClick(Sender: TObject);
begin
  inherited;
      Safra.setAcaoAdicionarEditar('UPDATE');
end;

procedure TFrmCadastroSafra.FormCreate(Sender: TObject);
begin
  inherited;
      Safra := TSafra.CreateObjTSafra;
end;

procedure TFrmCadastroSafra.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
      begin
            Safra.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmCadastroSafra.FormShow(Sender: TObject);
begin
  inherited;

      Safra.setFrmOnShow;
end;

end.

