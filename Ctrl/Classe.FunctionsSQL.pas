unit Classe.FunctionsSQL;

interface
      uses
          Data.Win.ADODB,Vcl.Dialogs, System.SysUtils,Vcl.Forms,
          System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
          FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
          FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
          FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
          FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
          FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,JvDBUltimGrid,Vcl.Mask,
  Vcl.Graphics, Vcl.WinXCalendars, JvBaseEdits, Vcl.StdCtrls, System.Variants,
  System.MaskUtils;
//Classe.conexao,U_MySQLPrincipal

      Type
          TResultArray      = Array[1..5] of String;

          procedure pQueryExecute(Tp : Integer; SQLresult : String; Tabela : TFDQuery);
          function  fMontaInsUpd(Fields : String; Where : String; Tabela : String; NFields : Integer) : TResultArray;{}//Campos Obrigatorios
          function  fMontaQryTempExec(SqlCond : string) : TDataSource;
          procedure pDestroyQryTempExec(DsQry :TDataSource);
          function  fMontaQryTempExecDetail(SqlCond : string; KeyReslt : string) : Integer;
Var
            FieldsValues  :   Array[1..100]   OF String;
            FieldsDB      :   Array[1..100]   OF String;

implementation

uses
     Classe.Conexao;


function fMontaInsUpd(Fields : String; Where : String; Tabela : String; NFields : Integer) : TResultArray;{Fn_BuildInsUpd}
Var
    I : Integer;
    CampInsert,ValuesInsert, VlrUpdate : String;

begin
      if NFields > 0 then
      begin

        for I := 1 to NFields do
        Begin
            if I <> NFields then
            Begin

                ValuesInsert := ValuesInsert + FieldsValues[I]+ ' , ';
                CampInsert   := CampInsert   + FieldsDB[I]+ ' , ';
                VlrUpdate    := VlrUpdate +FieldsDB[I]+' = '+FieldsValues[I]+' , ';

            End Else
            Begin

                ValuesInsert := ValuesInsert + FieldsValues[I];
                CampInsert   := CampInsert   + FieldsDB[I];
                VlrUpdate    := VlrUpdate +FieldsDB[I]+' = '+FieldsValues[I];

            End;
        End;
      end else begin

      end;

        CampInsert := '('+CampInsert+')';
        ValuesInsert := '('+ValuesInsert+')';

        if Fields = EmptyStr then
        Begin

            Fields := '*';

        End Else Begin

            Fields :=  CampInsert;

        End;

        if Not(Where = '') then
        begin
            Where := 'WHERE '+ Where;
        end;

//-----------------------------------------------------------------------------------------
{------} Result[1] := 'INSERT INTO '+ Tabela +' '+ CampInsert +' VALUES '+ ValuesInsert; {------}
{------} Result[2] := 'UPDATE '+ Tabela +' SET '+ VlrUpdate +' '+ Where;                 {------}
{------} Result[3] := 'SELECT '+ Fields +' FROM '+ Tabela +' '+ Where;                   {------}
{------} Result[4] := 'DELETE FROM '+ Tabela +' '+ Where;                              {------}
//-----------------------------------------------------------------------------------------
end;

procedure pQueryExecute(Tp : Integer; SQLresult : String; Tabela : TFDQuery);
begin
    if (Tp IN [1,2,4])Then
    Begin
        DMPrincipal.FDConnection.Connected;
    End else if Tp = 5 then
             begin
                   DMPrincipal.FDConnection.Rollback;
                   Tabela.Close;
                   exit;
             end;
            if Tp <> 3 then
            begin
         //       ShowMessage(SQLresult +' -- Opera��o: '+ IntToStr(Tp));
            end;

      Try
            With Tabela do
            begin
                  Active := False;
                  Close();
                  Sql.Clear;
                  Sql.Add(SQLresult);
                  if (Tp IN [3]) then
                  Begin
                        Active := True;
                        Refresh;
                  End Else Begin
                      ExecSQL;
                      DMPrincipal.FDConnection.Commit;
                  End;
            end;

      Except
            on e: EADOError do
            begin
                if (Tp IN [1,2,4]) then
                Begin
                    DMPrincipal.FDConnection.Rollback;
                End;
                Exit;
            end;
      End;

end;

function  fMontaQryTempExec(SqlCond : string) : TDataSource;
Var
        Qry : TFDQuery;
begin
         try
             Qry := TFDQuery.Create(nil);
             Qry.Connection := DMPrincipal.FDConnection;
             Qry.Close;
             Qry.SQL.Clear;
             Qry.SQL.Add(SqlCond);
             Qry.Open;
             Qry.Active := True;
             Qry.Refresh;

             Result := TDataSource.Create(nil);
             Result.DataSet := Qry;

        except on E: Exception do
        end;
end;
function  fMontaQryTempExecDetail(SqlCond : string; KeyReslt : string) : Integer;
Var
        Qry : TFDQuery;
        VlrI : Integer;
begin
         try
             Qry := TFDQuery.Create(nil);
             Qry.Connection := DMPrincipal.FDConnection;
             Qry.Close;
             Qry.SQL.Clear;
             Qry.SQL.Add(SqlCond);
             Qry.Open;
             Result := Qry.FieldByName(KeyReslt).AsInteger;
        except


        end;



end;

procedure pDestroyQryTempExec(DsQry :TDataSource);
begin
     FreeAndNil(DsQry);
     Exit;
end;
end.

