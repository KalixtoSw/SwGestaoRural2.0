unit Classe.Plantio;

interface

uses
  JvSpeedButton, Classe.Functions, Classe.FunctionsSQL, Vcl.Dialogs,
  System.SysUtils, FireDAC.Comp.Client, Data.DB, JvDBUltimGrid;
type
        TPlantio = class

        private

        FBtNavPlantio           : TJvSpeedButton;
        FBtNavCtrlInsumos       : TJvSpeedButton;
        FBtNavImplementos       : TJvSpeedButton;
        FBtNavAreasPlantio      : TJvSpeedButton;
        FBtNavFinancas          : TJvSpeedButton;
    FKeySafra: Integer;
    FTbPlantio: TFDTable;
    FDsTbPlantio: TDataSource;
    FDbgrdPlantio: TJvDBUltimGrid;
    procedure setKeySafra(const Value: Integer);
    procedure setTbPlantio(const Value: TFDTable);
    procedure setDsTbPlantio(const Value: TDataSource);
    procedure setDbgrdPlantio(const Value: TJvDBUltimGrid);


        public
                constructor CreateObjTPlantio;
                destructor DestroyObjTPlantio;
                procedure pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5 : Boolean);
                function fBuscaSafraVigente : string;

        published

                property KeySafra       : Integer               read FKeySafra          write setKeySafra;
                property TbPlantio      : TFDTable              read FTbPlantio         write setTbPlantio;
                property DsTbPlantio    : TDataSource           read FDsTbPlantio       write setDsTbPlantio;
                property DbgrdPlantio   : TJvDBUltimGrid        read FDbgrdPlantio      write setDbgrdPlantio;

        end;

implementation
uses
        UFrmPlantio, Classe.Conexao;

{ TPlantio }

constructor TPlantio.CreateObjTPlantio;
begin
     FBtNavPlantio      :=      FrmPlantio.BtNavPlantio;
     FBtNavCtrlInsumos  :=      FrmPlantio.BtNavCtrlInsumos;
     FBtNavImplementos  :=      FrmPlantio.BtNavImplementos;
     FBtNavAreasPlantio :=      FrmPlantio.BtNavAreasPlantio;
     FBtNavFinancas     :=      FrmPlantio.BtNavFinancas;
     setTbPlantio(DMPrincipal.TbPlantio);
     setDsTbPlantio(DMPrincipal.DsTbPlantio);
     setDbgrdPlantio(FrmPlantio.DbGrid);
end;

destructor TPlantio.DestroyObjTPlantio;
begin

end;

function TPlantio.fBuscaSafraVigente : string;
var
        sqlCond : string;
begin
        sqlCond := 'SELECT * FROM Safra WHERE sf_Status = ''VIGENTE''';
        Result := fMontaQryTempExec(sqlCond).FieldByName('sf_descricao').AsString;
        setKeySafra(fMontaQryTempExec(sqlCond).FieldByName('sf_IdSafra').AsInteger);
end;

procedure TPlantio.pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5: Boolean);
begin

FBtNavPlantio.Enabled           :=      Btn1;
FBtNavCtrlInsumos.Enabled       :=      Btn2;
FBtNavImplementos.Enabled       :=      Btn3;
FBtNavAreasPlantio.Enabled      :=      Btn4;
FBtNavFinancas.Enabled          :=      Btn5;

end;

procedure TPlantio.setDbgrdPlantio(const Value: TJvDBUltimGrid);
begin
  FDbgrdPlantio := Value;
  pAtivarDBGrid(FDbgrdPlantio);
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

end.
