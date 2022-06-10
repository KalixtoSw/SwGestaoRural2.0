unit UFrmPlantio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, JvExControls,
  JvGradient, Vcl.WinXCtrls, JvSpeedButton, Vcl.WinXPanels, Classe.Plantio,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, JvLabel, JvExStdCtrls, JvEdit, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvDBControls,
  JvExMask, JvToolEdit, JvMaskEdit;

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
    pnlPlantioSuperior: TRelativePanel;
    PnlPlantioGrid: TRelativePanel;
    LinePnlPlantioSuperior: TJvGradient;
    LbSafraVigente: TJvLabel;
    pnlEdtSafraVigente: TJvPanel;
    LineEdtSafraVigente: TJvGradient;
    EdtSafraVigente: TJvEdit;
    LinePnlDbgrd: TJvGradient;
    DbGrid: TJvDBUltimGrid;
    pnlPlantioFields: TRelativePanel;
    JvDBNavigator1: TJvDBNavigator;
    pnlPlantioDescricao: TRelativePanel;
    LbPlt_Descricao: TLabel;
    EdtPlt_Descricao: TJvDBMaskEdit;
    LinePlt_Descricao: TJvGradient;
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

  type

  NewTypeNav = class( TJvDBNavigator );

var
  FrmPlantio: TFrmPlantio;

implementation

uses
     Classe.Functions, Classe.Conexao;

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
        EdtSafraVigente.Text :=   Plantio.fBuscaSafraVigente;
end;

procedure TFrmPlantio.FormCreate(Sender: TObject);
begin
        NewTypeNav( JvDBNavigator1 ).Buttons[nbInsert].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavAdd.bmp');
        NewTypeNav( JvDBNavigator1 ).Buttons[nbPost].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavSave.bmp');
        NewTypeNav( JvDBNavigator1 ).Buttons[nbDelete].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavDelete.bmp');
        NewTypeNav( JvDBNavigator1 ).Buttons[nbEdit].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavEditar.bmp');
        NewTypeNav( JvDBNavigator1 ).Buttons[nbCancel].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavCancel.bmp');
        NewTypeNav( JvDBNavigator1 ).Buttons[nbRefresh].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavRefresh.bmp');
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
