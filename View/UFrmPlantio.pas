unit UFrmPlantio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, JvExControls,
  JvGradient, Vcl.WinXCtrls, JvSpeedButton, Vcl.WinXPanels, Classe.Plantio;

type
  TFrmPlantio = class(TForm)
    pnlFundoPlantio: TJvPanel;
    ImgFundo: TImage;
    pnlTituloJanela: TRelativePanel;
    FundoTituloJanela: TJvGradient;
    BtClose: TJvSpeedButton;
    BtNavPlantio: TJvSpeedButton;
    pnlBarNavSuperior: TRelativePanel;
    pnlSplit01: TJvPanel;
    BtNavCtrlInsumos: TJvSpeedButton;
    pnlSplit02: TJvPanel;
    BtNavImplementos: TJvSpeedButton;
    pnlSplit03: TJvPanel;
    BtNavAreasPlantio: TJvSpeedButton;
    pnlSplit04: TJvPanel;
    BtNavFinancas: TJvSpeedButton;
    pnlFundoExterno: TJvPanel;
    pnlFundoInterno: TJvPanel;
    FundopnlExterno: TJvGradient;
    CrdPnlPlantio: TCardPanel;
    CrdBtNavPlantio: TCard;
    CrdBtNavInsumos: TCard;
    CrdBtNavImplementos: TCard;
    CrdBtNavAreasPlantio: TCard;
    CrdBtNavFinan�as: TCard;
    procedure FormResize(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtNavPlantioClick(Sender: TObject);
    procedure BtNavCtrlInsumosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        Plantio : TPlantio;
  end;

var
  FrmPlantio: TFrmPlantio;

implementation

uses
     Classe.Functions;

{$R *.dfm}

procedure TFrmPlantio.BtCloseClick(Sender: TObject);
begin
        Close;
end;

procedure TFrmPlantio.BtNavCtrlInsumosClick(Sender: TObject);
begin
       // Plantio.pHabilitaBtsNav(True,False,True,False,False);
end;

procedure TFrmPlantio.BtNavPlantioClick(Sender: TObject);
begin
       // Plantio.pHabilitaBtsNav(False,True,False,False,False);
end;

procedure TFrmPlantio.FormCreate(Sender: TObject);
begin
        Plantio := TPlantio.CreateObjTPlantio;
end;

procedure TFrmPlantio.FormResize(Sender: TObject);
begin
        pCentralizaPanel(pnlFundoPlantio,Self);
        pnlFundoInterno.Height  := pnlFundoExterno.Height - 10;
        pnlFundoInterno.Width   := pnlFundoExterno.Width - 10;
        pnlFundoInterno.Left    := 5;
        pnlFundoInterno.top     :=  5;
        pMakeRounded(pnlFundoInterno);

end;

end.
