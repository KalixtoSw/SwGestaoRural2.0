unit UFrmPesquisaAuxiliar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvSpeedButton,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TFrmPesquisaAuxiliar = class(TForm)
    PnlFundo: TJvPanel;
    PnlTituloJanela: TJvPanel;
    BtClose: TJvSpeedButton;
    PnlDbgrid: TJvPanel;
    PnlCampoBusca: TJvPanel;
    EdtCampoBusca: TMaskEdit;
    BtPesquisa: TJvSpeedButton;
    DbGridPesquisa: TJvDBUltimGrid;
    Label1: TLabel;
    procedure BtCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaAuxiliar: TFrmPesquisaAuxiliar;

implementation

uses
     Classe.Conexao, Classe.Functions;

{$R *.dfm}

procedure TFrmPesquisaAuxiliar.BtCloseClick(Sender: TObject);
begin
      Close;
end;

procedure TFrmPesquisaAuxiliar.FormShow(Sender: TObject);
begin
      pMakeRounded(PnlCampoBusca);
      pAtivarDBGrid(DbGridPesquisa);
end;

end.
