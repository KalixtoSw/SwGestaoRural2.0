unit UFrmPlantio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, JvExControls,
  JvGradient, Vcl.WinXCtrls, JvSpeedButton, Vcl.WinXPanels, Classe.Plantio,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, JvLabel, JvExStdCtrls, JvEdit, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvDBControls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, JvBaseEdits, Vcl.ComCtrls, JvExComCtrls, JvProgressBar,
  JvDBProgressBar, System.Math, Winapi.CommCtrl,Classe.NF.ControleEstoque;

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
    CrdBtNavFinanças: TCard;
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
    pnlPlt_dtInicio: TRelativePanel;
    LbPlt_dtInicio: TLabel;
    LinePlt_dtInicio: TJvGradient;
    pnlPltFieldsSplit01: TJvPanel;
    DtEdtPlt_dtInicio: TJvDBDatePickerEdit;
    pnlPltFieldsSplit02: TJvPanel;
    pnlPlt_dtTermino: TRelativePanel;
    LbPlt_dtTermino: TLabel;
    LinePlt_dtTermino: TJvGradient;
    DtEdtPlt_dtTermino: TJvDBDatePickerEdit;
    pnlAreaPltSuperior: TRelativePanel;
    pnlDescPlantio: TRelativePanel;
    LbpnlDescPlantio: TLabel;
    EdtpnlDescPlantio: TJvMaskEdit;
    LinepnlDescPlantio: TJvGradient;
    pnlAreaPltGrd: TRelativePanel;
    DbGrdAreaPlantio: TJvDBUltimGrid;
    pnlPlantioTalhao: TRelativePanel;
    BtAddPlantioTalhao: TJvSpeedButton;
    DbGrdPlantioTalhao: TJvDBUltimGrid;
    pnlPlt_AreaPlantada: TRelativePanel;
    LbPlt_AreaPlantada: TLabel;
    pnlPltFieldsSplit03: TJvPanel;
    EdtPlt_AreaPlantada: TJvDBCalcEdit;
    LinePlt_AreaPlantada: TJvGradient;
    LbPrgBrAreaTotal: TLabel;
    TxtAreaTPrgssBr: TDBText;
    pnlPrgsbr: TRelativePanel;
    LbPercPrgssBr: TJvLabel;
    PrgrssBr: TJvProgressBar;
    JvSpeedButton1: TJvSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtNavPlantioClick(Sender: TObject);
    procedure BtNavCtrlInsumosClick(Sender: TObject);
    procedure BtNavAreasPlantioClick(Sender: TObject);
    procedure DbGrdAreaPlantioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGrdAreaPlantioCellClick(Column: TColumn);
    procedure BtAddPlantioTalhaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtPlt_AreaPlantadaExit(Sender: TObject);
    procedure DbGridCellClick(Column: TColumn);
    procedure JvSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

        Plantio : TPlantio;
        KeyVlrIdSafra : Integer;
  end;

  type

  NewTypeNav = class( TJvDBNavigator );

var
  FrmPlantio: TFrmPlantio;


implementation

uses
     Classe.Functions, Classe.Conexao;

{$R *.dfm}

procedure TFrmPlantio.BtAddPlantioTalhaoClick(Sender: TObject);
begin
        Plantio.fAddPlantioTalhao;
end;

procedure TFrmPlantio.BtCloseClick(Sender: TObject);
begin
        Close;
end;

procedure TFrmPlantio.BtNavAreasPlantioClick(Sender: TObject);
begin
        CrdBtNavAreasPlantio.Show;
end;

procedure TFrmPlantio.BtNavCtrlInsumosClick(Sender: TObject);
begin
       // Plantio.pHabilitaBtsNav(True,False,True,False,False);
end;

procedure TFrmPlantio.BtNavPlantioClick(Sender: TObject);
begin
       // Plantio.pHabilitaBtsNav(False,True,False,False,False);
        CrdBtNavPlantio.Show;
        
end;

procedure TFrmPlantio.DbGrdAreaPlantioCellClick(Column: TColumn);
begin
 if (DbGrdAreaPlantio.DataSource.Dataset.IsEmpty) then
    Exit;

  DbGrdAreaPlantio.DataSource.Dataset.Edit;

  DbGrdAreaPlantio.DataSource.Dataset.FieldByName('Check').AsInteger :=
    IfThen(DbGrdAreaPlantio.DataSource.Dataset.FieldByName('Check').AsInteger = 1, 0, 1);

  DbGrdAreaPlantio.DataSource.Dataset.Post;
end;

procedure TFrmPlantio.DbGrdAreaPlantioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  inherited;

  if (DbGrdAreaPlantio.DataSource.Dataset.IsEmpty) then
    Exit;

  // Desenha um checkbox no dbgrid
  if Column.FieldName = 'Check' then
  begin
    DbGrdAreaPlantio.Canvas.FillRect(Rect);

    if (DbGrdAreaPlantio.DataSource.Dataset.FieldByName('Check').AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(DbGrdAreaPlantio.Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TFrmPlantio.DbGridCellClick(Column: TColumn);
begin
        Plantio.fCalcAreaPlantada;
end;

procedure TFrmPlantio.EdtPlt_AreaPlantadaExit(Sender: TObject);
begin
        if EdtPlt_AreaPlantada.Value > 0 then
        begin
             if not(Plantio.fValidaAreaTcomAreaP) then
             begin
                EdtPlt_AreaPlantada.Value := Plantio.fCalcAreaPlantada;
             end;
        end;
        Plantio.fCalcAreaPlantada;
end;

procedure TFrmPlantio.FormCreate(Sender: TObject);
begin
        pDBNavigatorNew(JvDBNavigator1);
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

procedure TFrmPlantio.FormShow(Sender: TObject);
begin
        EdtSafraVigente.Text    :=   Plantio.fBuscaSafraVigente.RNomeSafra;
        KeyVlrIdSafra           :=   Plantio.fBuscaSafraVigente.RIDSafra;
        CrdPnlPlantio.ActiveCard := CrdBtNavPlantio;
        pAtivarDBGrid(DbGrdPlantioTalhao);
        Plantio.fCalcAreaPlantada;
end;

procedure TFrmPlantio.JvSpeedButton1Click(Sender: TObject);
begin
        fCtrlSaldoEstoqueproduto(5);
end;

end.
