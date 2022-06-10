unit Classe.Plantio;

interface

uses
  JvSpeedButton;
type
        TPlantio = class

        private

        FBtNavPlantio           : TJvSpeedButton;
        FBtNavCtrlInsumos       : TJvSpeedButton;
        FBtNavImplementos       : TJvSpeedButton;
        FBtNavAreasPlantio      : TJvSpeedButton;
        FBtNavFinancas          : TJvSpeedButton;


        public
                constructor CreateObjTPlantio;
                destructor DestroyObjTPlantio;
                procedure pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5 : Boolean);
                procedure pBuscaSafraVigente;

        published

        end;

implementation
uses
        UFrmPlantio;

{ TPlantio }

constructor TPlantio.CreateObjTPlantio;
begin
     FBtNavPlantio      :=FrmPlantio.BtNavPlantio;
     FBtNavCtrlInsumos  :=FrmPlantio.BtNavCtrlInsumos;
     FBtNavImplementos  :=FrmPlantio.BtNavImplementos;
     FBtNavAreasPlantio :=FrmPlantio.BtNavAreasPlantio;
     FBtNavFinancas     :=FrmPlantio.BtNavFinancas;
end;

destructor TPlantio.DestroyObjTPlantio;
begin

end;

procedure TPlantio.pBuscaSafraVigente;
begin

end;

procedure TPlantio.pHabilitaBtsNav(Btn1, Btn2, Btn3, Btn4, Btn5: Boolean);
begin

FBtNavPlantio.Enabled           :=      Btn1;
FBtNavCtrlInsumos.Enabled       :=      Btn2;
FBtNavImplementos.Enabled       :=      Btn3;
FBtNavAreasPlantio.Enabled      :=      Btn4;
FBtNavFinancas.Enabled          :=      Btn5;

end;

end.
