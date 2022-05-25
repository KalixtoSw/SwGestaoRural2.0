unit UFrmModel1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvExControls, JvGradient, JvSpeedButton,
  Vcl.StdCtrls, Vcl.WinXPanels, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvBaseDlg, JvDesktopAlert,
  JvComponentBase;

type
  TFrmModel1 = class(TForm)
    PnlFundo: TJvPanel;
    PnlTituloJanela: TJvPanel;
    BtClose: TJvSpeedButton;
    CrdPnlPrincipal: TCardPanel;
    CrdConsulta: TCard;
    CrdCampos: TCard;
    PnlPesquisa: TJvPanel;
    LbPesquisa: TLabel;
    EdtPesquisa: TMaskEdit;
    PnlBtsInsertDelete: TJvPanel;
    BtAdicionar: TJvSpeedButton;
    BtExcluir: TJvSpeedButton;
    PnlDbGrid: TJvPanel;
    DbGrid: TJvDBUltimGrid;
    PnlBtsSaveCancel: TJvPanel;
    PnlBtSavar: TJvPanel;
    BtSalvar: TJvSpeedButton;
    PnlBtCancelar: TJvPanel;
    BtCancelar: TJvSpeedButton;
    PnlSubMenus: TJvPanel;
    DsktpAlertSistema: TJvDesktopAlert;
    JvDesktopAlertStack1: TJvDesktopAlertStack;
    PnlFundoCampos: TJvPanel;
    PnlFundoCamposInterno: TJvPanel;
    RbConsBasica: TRadioButton;
    RbConsFull: TRadioButton;
    procedure BtCloseClick(Sender: TObject);
    procedure LbPesquisaClick(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure DbGridDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModel1: TFrmModel1;

implementation

uses
     Classe.Functions;

{$R *.dfm}

procedure TFrmModel1.BtAdicionarClick(Sender: TObject);
begin
      try
            CrdCampos.Show;
            PnlFundoCamposInterno.Height := PnlFundoCampos.Height-10;
            PnlFundoCamposInterno.Width := PnlFundoCampos.Width-10;
            pMakeRounded(PnlFundoCamposInterno);
            BtClose.Visible := False;
      finally
            CrdConsulta.Hide;
      end;

end;

procedure TFrmModel1.BtCancelarClick(Sender: TObject);
begin
      try
           CrdConsulta.Show;
           BtClose.Visible := True;
      finally
           CrdCampos.Hide;
      end;
end;

procedure TFrmModel1.BtCloseClick(Sender: TObject);
begin
      Self.Close;
end;

procedure TFrmModel1.BtSalvarClick(Sender: TObject);
begin
      try
           CrdConsulta.Show;
           BtClose.Visible := True;
      finally
           CrdCampos.Hide;
      end;
end;

procedure TFrmModel1.DbGridDblClick(Sender: TObject);
begin
       try
            CrdCampos.Show;
            PnlFundoCamposInterno.Height := PnlFundoCampos.Height-10;
            PnlFundoCamposInterno.Width := PnlFundoCampos.Width-10;
            pMakeRounded(PnlFundoCamposInterno);
            BtClose.Visible := False;
      finally
            CrdConsulta.Hide;
      end;
end;

procedure TFrmModel1.DbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     // DbGrid.Canvas.TextRect(Rect,Rect.Left + 8,Rect.Top + 8,Column.Field.DisplayText);
end;

procedure TFrmModel1.EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_ESCAPE) and (CrdConsulta.Showing) then
      begin
           EdtPesquisa.Clear;
      end;
end;

procedure TFrmModel1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = VK_F12) and (CrdCampos.Showing = true) then
        begin
              BtSalvar.Click;
        end;
        if (Key = VK_ESCAPE) and (CrdCampos.Showing = true) then
        begin
            BtCancelar.Click;
        end;
end;

procedure TFrmModel1.FormResize(Sender: TObject);
begin
      CrdConsulta.Show;
      PnlPesquisa.Height := 50;
      pAtivarDBGrid(DbGrid);
      pCentralizaPanel(PnlFundo,self);
end;

procedure TFrmModel1.LbPesquisaClick(Sender: TObject);
begin
      pMenuRetratilFixo(PnlPesquisa);
end;

end.
