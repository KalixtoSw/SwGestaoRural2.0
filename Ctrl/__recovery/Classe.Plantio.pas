unit Classe.Plantio;

interface

uses
  JvSpeedButton, Classe.Functions, Classe.FunctionsSQL, Vcl.Dialogs,
  System.SysUtils, FireDAC.Comp.Client, Data.DB, JvDBUltimGrid;

type
  RetSafra = record
    RNomeSafra: string;
    RIDSafra: Integer;
  end;

type
  TPlantio = class
  private

    FBtNavPlantio: TJvSpeedButton;
    FBtNavCtrlInsumos: TJvSpeedButton;
    FBtNavImplementos: TJvSpeedButton;
    FBtNavAreasPlantio: TJvSpeedButton;
    FBtNavFinancas: TJvSpeedButton;
    FKeySafra: Integer;
    FTbPlantio: TFDTable;
    FDsTbPlantio: TDataSource;
    FDbgrdPlantio: TJvDBUltimGrid;
    FTbTalhao: TFDTable;
    FDbgrdPltTalh: TJvDBUltimGrid;
    FTbPlantioTalhao: TDataSource;
    procedure setKeySafra(const Value: Integer);
    procedure setTbPlantio(const Value: TFDTable);
    procedure setDsTbPlantio(const Value: TDataSource);
    procedure setDbgrdPlantio(const Value: TJvDBUltimGrid);
    procedure setTbTalhao(const Value: TFDTable);
    procedure setDbgrdPltTalh(const Value: TJvDBUltimGrid);
    procedure setTbPlantioTalhao(const Value: TDataSource);

  public
    constructor CreateObjTPlantio;
    destructor DestroyObjTPlantio;
    procedure pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5: Boolean);
    function fBuscaSafraVigente: RetSafra;
    function fAddPlantioTalhao: Boolean;

  published

    property KeySafra: Integer read FKeySafra write setKeySafra;
    property TbPlantio: TFDTable read FTbPlantio write setTbPlantio;
    property DsTbPlantio: TDataSource read FDsTbPlantio write setDsTbPlantio;
    property DbgrdPlantio: TJvDBUltimGrid read FDbgrdPlantio write setDbgrdPlantio;
    property TbTalhao: TFDTable read FTbTalhao write setTbTalhao;
    property DbgrdPltTalh: TJvDBUltimGrid read FDbgrdPltTalh write setDbgrdPltTalh;
    property TbPlantioTalhao: TDataSource read FTbPlantioTalhao write setTbPlantioTalhao;
  end;

implementation

uses
  UFrmPlantio, Classe.Conexao;

{ TPlantio }

constructor TPlantio.CreateObjTPlantio;
begin
  FBtNavPlantio := FrmPlantio.BtNavPlantio;
  FBtNavCtrlInsumos := FrmPlantio.BtNavCtrlInsumos;
  FBtNavImplementos := FrmPlantio.BtNavImplementos;
  FBtNavAreasPlantio := FrmPlantio.BtNavAreasPlantio;
  FBtNavFinancas := FrmPlantio.BtNavFinancas;
  setTbPlantio(DMPrincipal.TbPlantio);
  setDsTbPlantio(DMPrincipal.DsTbPlantio);
  setDbgrdPlantio(FrmPlantio.DbGrid);
  setTbTalhao(DMPrincipal.TbTalhao);
  setDbgrdPltTalh(FrmPlantio.DbGrdAreaPlantio);
  setTbPlantioTalhao(DMPrincipal.DsTbPlantio_Talhao);
end;

destructor TPlantio.DestroyObjTPlantio;
begin

end;

function TPlantio.fAddPlantioTalhao: Boolean;
var
  PltID: Integer;
  PltDtinicio, PltDtTermino: TDate;
begin
  PltID := FDbgrdPlantio.DataSource.DataSet.FieldByName('plt_id').AsInteger;
  PltDtinicio := FDbgrdPlantio.DataSource.DataSet.FieldByName('plt_dtInicio').AsDateTime;
  PltDtTermino := FDbgrdPlantio.DataSource.DataSet.FieldByName('plt_dtTermino').AsDateTime;

  FDbgrdPltTalh.Row := 1;
  try
    while not FDbgrdPltTalh.DataSource.DataSet.Eof do
    begin
      if FDbgrdPltTalh.DataSource.DataSet.FieldByName('Check').AsInteger = 1 then
      begin

        FTbPlantioTalhao.DataSet.Insert;
        FTbPlantioTalhao.DataSet.FieldByName('plt_id').AsInteger := PltID;
        FTbPlantioTalhao.DataSet.FieldByName('tbl_idTalhao').AsInteger := FDbgrdPltTalh.DataSource.DataSet.FieldByName('tbl_idTalhao').AsInteger;
        FTbPlantioTalhao.DataSet.FieldByName('pltldtInicio').AsDateTime := PltDtinicio;
        FTbPlantioTalhao.DataSet.FieldByName('pltldtTermino').AsDateTime := PltDtTermino;
        FTbPlantioTalhao.DataSet.Post;

        FDbgrdPltTalh.DataSource.DataSet.Edit;
        FDbgrdPltTalh.DataSource.DataSet.FieldByName('tbl_status').AsString := 'DISTRIBUIDO';
        FDbgrdPltTalh.DataSource.DataSet.Post;

      end;
      FDbgrdPltTalh.DataSource.DataSet.Next;
    end;

  finally

    FDbgrdPltTalh.DataSource.DataSet.EnableControls;

  end;

end;

function TPlantio.fBuscaSafraVigente: RetSafra;
var
  sqlCond: string;
begin
  sqlCond := 'SELECT * FROM Safra WHERE sf_Status = ''VIGENTE''';
  Result.RNomeSafra := fMontaQryTempExec(sqlCond).FieldByName('sf_descricao').AsString;
  setKeySafra(fMontaQryTempExec(sqlCond).FieldByName('sf_IdSafra').AsInteger);
  Result.RIDSafra := FKeySafra;
end;

procedure TPlantio.pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5: Boolean);
begin

  FBtNavPlantio.Enabled := Btn1;
  FBtNavCtrlInsumos.Enabled := Btn2;
  FBtNavImplementos.Enabled := Btn3;
  FBtNavAreasPlantio.Enabled := Btn4;
  FBtNavFinancas.Enabled := Btn5;

end;

procedure TPlantio.setDbgrdPlantio(const Value: TJvDBUltimGrid);
begin
  FDbgrdPlantio := Value;
  pAtivarDBGrid(FDbgrdPlantio);
end;

procedure TPlantio.setDbgrdPltTalh(const Value: TJvDBUltimGrid);
begin
  FDbgrdPltTalh := Value;
end;

procedure TPlantio.setDsTbPlantio(const Value: TDataSource);
begin
  FDsTbPlantio := Value;
end;

procedure TPlantio.setKeySafra(const Value: Integer);
begin
  FKeySafra := Value;
end;

procedure TPlantio.setTbPlantio(const Value: TFDTable);
begin
  FTbPlantio := Value;
  FTbPlantio.Active := True;
end;

procedure TPlantio.setTbPlantioTalhao(const Value: TDataSource);
begin
  FTbPlantioTalhao := Value;
  FTbPlantioTalhao.DataSet.Open;
end;

procedure TPlantio.setTbTalhao(const Value: TFDTable);
begin
  FTbTalhao := Value;
  FTbTalhao.Active := True;
end;

end.
