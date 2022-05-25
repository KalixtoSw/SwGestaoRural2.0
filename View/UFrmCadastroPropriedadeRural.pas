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
  JvCombobox;

type
  TFrmCadastroPropriedadeRural = class(TFrmModel1)
    JvXPButton1: TJvXPButton;
    Combo: TJvComboBox;
    procedure FormCreate(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure ComboExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    PRural : TPropriedadeRural;
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
        PRural := TPropriedadeRural.CreateObjTPropriedadeRural;
end;

procedure TFrmCadastroPropriedadeRural.FormShow(Sender: TObject);
begin
  inherited;
        pMontaComboBoxTempExec(Combo,'SELECT smt_Id, smt_dtcriacao, smt_descricao FROM semente',
                                'smt_Id','smt_descricao');
end;

procedure TFrmCadastroPropriedadeRural.JvXPButton1Click(Sender: TObject);
var
        Qry : TFDQuery;
        DsQry : TDataSource;
        IdKey2 : string;
        IdKey1 : string;
begin
  inherited;
        try
             Qry := TFDQuery.Create(nil);
             DsQry := TDataSource.Create(nil);

             DsQry.DataSet := Qry;

             Qry.Connection := DMPrincipal.FDConnection;


                     Qry.Close;
                     Qry.SQL.Clear;
                     Qry.SQL.Add('SELECT smt_Id, smt_dtcriacao, smt_descricao FROM semente');
                     Qry.Open;
                     Qry.Active := True;
                     Qry.Refresh;
                     IdKey2 := 'smt_Id';
                     IdKey1 := 'smt_descricao';

                     if (Qry.FieldByName(''+IdKey2+'').AsInteger > 0) and (Combo.Text = EmptyStr) then
                     begin
                          while not Qry.Eof do
                          begin
                          With Combo do
                          begin
                                Items.AddObject( Trim(Qry.FieldByName(''+IdKey1+'').asString),
                                tObject(Qry.FieldByName(''+IdKey2+'').asInteger) );
                          end;
                          Qry.Next;
                          end;
                          Combo.Refresh;
                     end else begin

                     end;
                     Combo.Refresh;

        finally
                FreeAndNil(Qry);

        end;


end;

end.
