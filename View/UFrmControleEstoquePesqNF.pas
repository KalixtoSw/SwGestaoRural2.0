unit UFrmControleEstoquePesqNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvSpeedButton,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Classe.Functions;

type
  TFrmPesqNF = class(TForm)
    PnlTituloJanela: TJvPanel;
    BtClose: TJvSpeedButton;
    PnlFundoPesqNF: TJvPanel;
    PnlFieldsPesqNF: TJvPanel;
    procedure BtCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqNF: TFrmPesqNF;

implementation

{$R *.dfm}

procedure TFrmPesqNF.BtCloseClick(Sender: TObject);
begin
        Close;
end;

procedure TFrmPesqNF.FormShow(Sender: TObject);
begin
        PnlFieldsPesqNF.Left    := PnlFundoPesqNF.Left+5;
        PnlFieldsPesqNF.Top     := 5;
        PnlFieldsPesqNF.Height  := PnlFundoPesqNF.Height-10;
        PnlFieldsPesqNF.Width  := PnlFundoPesqNF.Width-10;
        pMakeRounded(PnlFieldsPesqNF);

end;

end.
