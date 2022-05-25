unit UFrmCadastroPropriedadeRural;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmModel1, Data.DB, JvComponentBase,
  JvDesktopAlert, JvBaseDlg, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXPanels, JvExControls,
  JvSpeedButton, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel,
  Classe.PropriedadeRural, JvDBLookup, JvXPCore, JvXPButtons,
  FireDAC.Comp.DataSet,FireDAC.Comp.Client, Classe.Functions, JvExStdCtrls,
  JvCombobox, Classe.Sistema.Mensagens;

type
  TFrmCadastroPropriedadeRural = class(TFrmModel1)
    Combo: TJvComboBox;

    procedure ComboExit(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure DbGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);



  private
    { Private declarations }
    PropriedadeRural : TPropriedadeRural;
  public
    { Public declarations }
  end;

var
  FrmCadastroPropriedadeRural: TFrmCadastroPropriedadeRural;

implementation

uses
     Classe.Conexao;


{$R *.dfm}

procedure TFrmCadastroPropriedadeRural.ComboExit(Sender: TObject);
begin
  inherited;
        fRetVlrCombox(Combo,0);
end;

procedure TFrmCadastroPropriedadeRural.FormCreate(Sender: TObject);
begin
  inherited;
        PropriedadeRural := TPropriedadeRural.CreateObjTPropriedadeRural;
end;

procedure TFrmCadastroPropriedadeRural.BtAdicionarClick(Sender: TObject);
begin
  inherited;
      PropriedadeRural.setAcaoAdicionarEditar('INSERT');
end;

procedure TFrmCadastroPropriedadeRural.BtCancelarClick(Sender: TObject);
begin
  inherited;
      PropriedadeRural.getCancelar;
end;

procedure TFrmCadastroPropriedadeRural.BtExcluirClick(Sender: TObject);
begin
      if fMsgPadrao(7,3,9,1,EmptyStr).RespBt then
        begin
              PropriedadeRural.setDelete;
        end;
  inherited;

end;

procedure TFrmCadastroPropriedadeRural.BtSalvarClick(Sender: TObject);
begin
       if PropriedadeRural.getSavar then
       begin
         fMsgPadrao(3, 3, 1, 2,EmptyStr);
         inherited;
         PropriedadeRural.setFrmOnShow;
       end;
end;

procedure TFrmCadastroPropriedadeRural.DbGridDblClick(Sender: TObject);
begin
  inherited;
      PropriedadeRural.setAcaoAdicionarEditar('UPDATE');
end;

procedure TFrmCadastroPropriedadeRural.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
      begin
            PropriedadeRural.setPesquisaCampo(EdtPesquisa.Text,'13');
      end;
  inherited;

end;

procedure TFrmCadastroPropriedadeRural.FormShow(Sender: TObject);
begin
  inherited;
      PropriedadeRural.setFrmOnShow;
end;


end.
