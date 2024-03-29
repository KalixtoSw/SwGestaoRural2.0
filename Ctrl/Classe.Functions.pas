unit Classe.Functions;

interface

uses
  JvPanel, Vcl.Forms, Vcl.WinXPanels,JvDBUltimGrid, System.MaskUtils,Classe.FunctionsSQL,
  Vcl.StdCtrls, JvCombobox, System.SysUtils, FireDAC.Comp.Client,IdHashMessageDigest,
  Winapi.Windows, Vcl.Controls, Winapi.Messages, Vcl.Mask, Vcl.Dialogs,Math,
  Generics.Collections, Classe.Sistema.Mensagens, Data.DB, JvSpeedButton,
   Winapi.WinInet, Vcl.DBCtrls, Vcl.Graphics, System.Classes, JvDBControls;

  Type
        TBGridPadrao = class(TJvDBUltimGrid);

   Type RetComboBox  =  record
            IdResp      : Integer;
            DescCombo   : string;
    end;

    NewTypeNav = class( TJvDBNavigator );

  procedure pCentralizaPanel(Pnl : TJvPanel ; Frm : TForm);{1}
  procedure pMenuRetratil(Card : TCard; Pnl : TJvPanel ; IdBtn : Integer);{2}
  procedure pMenuRetratilFixo( Pnl : TJvPanel );{3}
  procedure pMenuRetratilVariavel( Control: TWinControl; VlrMax : Integer; VlrMin: Integer );
  procedure pAtivarDBGrid(Dbg : TJvDBUltimGrid);{4}
  procedure pMontaComboBox(Cmb : TJvComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);overload;{5}
  procedure pMontaComboBox(Cmb : TComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);overload;{5}
  procedure pdelay(MSec: cardinal);{6}
  Procedure pMakeRounded(Control: TWinControl);{7}
  procedure pEditSetFocus(Form : TForm ; FTag : Integer);{8}
  procedure pMontaComboBoxTempExec(Combo : TJvComboBox; Select : string; Key : string; TextCombo : string);overload;{9}
  procedure pMontaComboBoxTempExec(Combo : TComboBox; Select : string; Key : string; TextCombo : string);overload;
  procedure pCtrlMenu(Frm: TForm;Bt: TJvSpeedButton; Ativar: Boolean; FLeft : Integer; FTop : Integer);{10}
  procedure pCtrlMenuCard(Frm: TForm;Bt: TJvSpeedButton; Ativar: Boolean);{10}
  procedure pComboMasterDetail(CbbM : TJvComboBox; CbbD : TJvComboBox; SqlM: string; SqlD : string;
  KeyDescM : string;KeyDescD : string; KeyVlrM : string );
  procedure pMontaComboTxt(Cbb : TComboBox; Caminho: string; NomeArq : string);
  procedure pCentralizaTextoEdit(Edit : TDBEdit; sender : TObject; Self : TComponent);
  procedure pDBNavigatorNew(Nav : TJvDBNavigator);

  function fCheckEmptyText(const EditMask: TEditMask ;const Text:String):Boolean;{1}
  function fTrocaVirgPPto(Valor: string): String;{2}
  function fRetVlrCombox(Cmb : TComboBox;IndexRet : Integer):RetComboBox;overload;{3}
  function fRetVlrCombox(Cmb : TJvComboBox;IndexRet : Integer):RetComboBox;overload;{3}
  function fCriptoMD5(const texto: string): string;{4}
  function fCripto(wStri: String): String;{5}
  function fValidaEMail(aStr: string): Boolean;{6}
  function fCountPos(const subtext: string; Text: string): Integer;{7}
  function fLendoString(const subtext : string; Text: string) : Integer;{8}
  function fCriptografiaKey( Senha, key : string ) : string;{9}
  function fGetRandomPassword(Size: Integer; Tipo : Integer = 1): String;{10}
  function fMaiorValor(VlrA : Double; VlrB : Double) : Integer;{11}
  function fAjustaDataNull(VrDt    :   TDate)  :   TDate;{12}
  function fMasterDetalhe(IdPropR : Integer; SelectTbDetalhe : string;SelectTbMaster : string): TDataSource;{13}
  function IsConnectedToInternet: Boolean;{14}
  function fValidaDtMaiorDtMenor(DtA , Dtb : TDate) : Integer;

var
      BtnNew,BtnOld : Integer;

implementation

uses
     Classe.Conexao;

procedure pEditSetFocus(Form : TForm ; FTag : Integer);
Var
        I : Integer;
Begin
        for I := 0 to form.ComponentCount - 1 do
        begin
            if Form.Components[I].Tag > 0 then
            Begin
                if form.Components[I] is TMaskEdit then
                begin
                    if (form.Components[I] as TMaskEdit).Tag = FTag then
                    begin
                          (form.Components[I] as TMaskEdit).SetFocus;
                    end;
                end;
            End;
        end;

End;

procedure pCentralizaPanel(Pnl : TJvPanel ; Frm : TForm);
begin
      Pnl.Left := Round ( (Frm.Width - Pnl.Width) / 2 );
      Pnl.Top  := Round ( (Frm.Height - Pnl.Height) / 2 );
end;

procedure pMenuRetratil(Card : TCard; Pnl : TJvPanel ; IdBtn : Integer);
begin
       //Mapeia o bo�o antecessor com o novo pela propriedade Tag
      if (IdBtn = BtnNew) and (BtnOld <> IdBtn ) then
      Begin

          BtnOld := BtnNew;

      End else begin

          BtnOld := BtnNew;
          BtnNew := IdBtn;

      end;

      if BtnNew = BtnOld then
          begin
                if (Pnl.Width > 0) Then
          Begin

              Pnl.Width     :=    0;
              Card.Hide;

          End else Begin

              Pnl.Width     :=    200;
              Card.Show;

          end;
      End else begin

              Pnl.Width     :=    200;
              Card.Show;

      end;

end;

procedure pMenuRetratilFixo( Pnl : TJvPanel );
begin
      if Pnl.Height = 100  then
      begin
          Pnl.Height    := 50;
      end Else begin
          Pnl.Height    := 100;
      end;
end;

procedure pMenuRetratilVariavel( Control: TWinControl; VlrMax : Integer; VlrMin: Integer );
begin
      if Control.Height = VlrMax  then
      begin
          Control.Height    := VlrMin;
      end Else begin
          Control.Height    := VlrMax;
      end;
end;

procedure pAtivarDBGrid(Dbg : TJvDBUltimGrid);
begin
      TBGridPadrao(Dbg).DefaultRowHeight    := 30;
      TBGridPadrao(Dbg).ClientHeight        := (30 * TBGridPadrao(Dbg).RowCount ) + 30;
end;

function fCheckEmptyText(const EditMask: TEditMask ;const Text:String):Boolean;
var
     MaskOffset: Integer;
     CType: TMaskCharType;
     FMaskBlank:Char;
     Mask:String;
     default:boolean;
begin
     default:=true;
     FMaskBlank:= MaskGetMaskBlank(EditMask);
     for MaskOffset := 1 to Length(Editmask) do
     begin
          CType := MaskGetCharType(EditMask, MaskOffset);
          case CType of
               mcLiteral, mcIntlLiteral: Mask:=Mask+EditMask[MaskOffset];
               mcMaskOpt,mcMask:Mask:=Mask+FMaskBlank;
               mcFieldSeparator:begin
          if EditMask[MaskOffset+1] = '0' then
               Mask:='';
               Break;
               default:=false;
            end;
          end;
     end;
     if default then
     Mask:= FormatMaskText(EditMask,'');
     result:=Text = Mask;
end;

function fTrocaVirgPPto(Valor: string): String;
var i:integer;
begin
  if Valor <> '' then
  begin
    for i := 0 to Length(Valor) do
    begin
     if Valor[i]='.' then
     begin
       Valor[i]:=',';
     end
     else if Valor[i] = ',' then
     begin
       Valor[i]:='.';
     end;
   end;
  end;
  Result := valor;
end;

function fRetVlrCombox(Cmb : TJvComboBox; IndexRet : Integer):RetComboBox;
begin
      if IndexRet = 0 then
      begin
           if not(Cmb.Text = EmptyStr) then
           begin
                 Result.IdResp := (Integer(Cmb.items.objects[Cmb.ItemIndex]));
                 Result.DescCombo := (string(Cmb.Text));
           end;
      end else
            begin
                 Result.IdResp := (Integer(Cmb.items.objects[IndexRet]));
                 Result.DescCombo := (string(Cmb.Text));
            end;
end;
function fRetVlrCombox(Cmb : TComboBox;IndexRet : Integer):RetComboBox;
begin
     if IndexRet = 0 then
      begin
           if not(Cmb.Text = EmptyStr) then
           begin
                 Result.IdResp := (Integer(Cmb.items.objects[Cmb.ItemIndex]));
                 Result.DescCombo := (string(Cmb.Text));
           end;
      end else
            begin
                 Result.IdResp := (Integer(Cmb.items.objects[IndexRet]));
                 Result.DescCombo := (string(Cmb.Text));
            end;
end;

procedure pMontaComboBoxTempExec(Combo : TJvComboBox; Select : string; Key : string; TextCombo : string);
var
        Qry : TFDQuery;
begin
       try
             Combo.Items.Clear;
             try

                  Qry := TFDQuery.Create(nil);
                  Qry.Connection := DMPrincipal.FDConnection;
                  Qry.Close;
                  Qry.SQL.Clear;
                  Qry.SQL.Add(Select);
                  Qry.Open;
                  Qry.Active := True;
                  Qry.Refresh;


                  if (Qry.FieldByName(''+Key+'').AsInteger > 0) and (Combo.Text = EmptyStr) then
                          begin
                               while not Qry.Eof do
                               begin
                               With Combo do
                               begin
                                     Items.AddObject( Trim(Qry.FieldByName(''+TextCombo+'').asString),
                                     tObject(Qry.FieldByName(''+Key+'').asInteger) );
                               end;
                               Qry.Next;
                               end;
                               Combo.Refresh;
                          end else begin

                          end;
                          Combo.ItemIndex := 0;
                          Combo.Refresh;

             except on E: Exception do
                     fMsgPadrao(2,2,13,2,E.Message);
             end;
       finally
            FreeAndNil(Qry);
       end;


end;

procedure pMontaComboBoxTempExec(Combo : TComboBox; Select : string; Key : string; TextCombo : string);
var
        Qry : TFDQuery;
begin
       try
             Combo.Items.Clear;
             try

                  Qry := TFDQuery.Create(nil);
                  Qry.Connection := DMPrincipal.FDConnection;
                  Qry.Close;
                  Qry.SQL.Clear;
                  Qry.SQL.Add(Select);
                  Qry.Open;
                  Qry.Active := True;
                  Qry.Refresh;


                  if (Qry.FieldByName(''+Key+'').AsInteger > 0) and (Combo.Text = EmptyStr) then
                          begin
                               while not Qry.Eof do
                               begin
                               With Combo do
                               begin
                                     Items.AddObject( Trim(Qry.FieldByName(''+TextCombo+'').asString),
                                     tObject(Qry.FieldByName(''+Key+'').asInteger) );
                               end;
                               Qry.Next;
                               end;
                               Combo.Refresh;
                          end else begin

                          end;
                          Combo.ItemIndex := 0;
                          Combo.Refresh;

             except on E: Exception do
                     fMsgPadrao(2,2,13,2,E.Message);
             end;
       finally
            FreeAndNil(Qry);
       end;


end;

procedure pMontaComboBox(Cmb : TJvComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);
begin
      try
      Cmb.Items.Clear;
      pQueryExecute(Tp,SQLresult,Tabela);

      if (Tabela.FieldByName(''+IdKey2+'').AsInteger > 0) and (Cmb.Text = EmptyStr) then
      begin
           while not Tabela.Eof do
           begin
           With Cmb do
           begin
                 Items.AddObject( Trim(Tabela.FieldByName(''+IdKey1+'').asString),
                 tObject(Tabela.FieldByName(''+IdKey2+'').asInteger) );
           end;
           Tabela.Next;
           end;
           Cmb.Refresh;
      end else begin

      end;
       finally
            //Cmb.ItemIndex:=0;
      end;
end;
procedure pMontaComboBox(Cmb : TComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);
begin
       try
      Cmb.Items.Clear;
      pQueryExecute(Tp,SQLresult,Tabela);

      if (Tabela.FieldByName(''+IdKey2+'').AsInteger > 0) and (Cmb.Text = EmptyStr) then
      begin
           while not Tabela.Eof do
           begin
           With Cmb do
           begin
                 Items.AddObject( Trim(Tabela.FieldByName(''+IdKey1+'').asString),
                 tObject(Tabela.FieldByName(''+IdKey2+'').asInteger) );
           end;
           Tabela.Next;
           end;

           Cmb.Refresh;
      end else begin

      end;
      finally
           //Cmb.ItemIndex:=0;
      end;
end;

function fCriptoMD5(const texto: string): string;{fn_CriptografiaMD5}
var
  md5: TIdHashMessageDigest5;
begin
      md5 := TIdHashMessageDigest5.Create;
      try
            Result := md5.HashStringAsHex(texto);
      finally
            md5.Free;
      end;
end;

function fCripto(wStri: String): String;
var Simbolos : array [0..4] of String;
x            : Integer;
begin
        Simbolos[1]:='ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()';
        Simbolos[2]:= '�����׃����5�����Ѫ�������������������';
        Simbolos[3]:= 'abcdefghijlmnopqrstuvxzywk1234567890';
        Simbolos[4]:= '���������龶����-+��߸������յ��졫�';

        for x := 1 to Length(Trim(wStri)) do
		begin
                if pos(copy(wStri,x,1),Simbolos[1])>0 then
                Result := Result+copy(Simbolos[2],
                          pos(copy(wStri,x,1),Simbolos[1]),1)

                else
				if pos(copy(wStri,x,1),Simbolos[2])>0 then
                   Result := Result+copy(Simbolos[1],
                             pos(copy(wStri,x,1),Simbolos[2]),1)

                else
				if pos(copy(wStri,x,1),Simbolos[3])>0 then
                   Result := Result+copy(Simbolos[4],
                             pos(copy(wStri,x,1),Simbolos[3]),1)

                else
				if pos(copy(wStri,x,1),Simbolos[4])>0 then
                   Result := Result+copy(Simbolos[3],
                          pos(copy(wStri,x,1),Simbolos[4]),1);
        end;
end;

procedure pdelay(MSec: cardinal);
var
start: cardinal;
begin
    Start:=GetTickCount;
    repeat

        Application.processMessages;

    until (GetTickCount - Start)>=Msec;
end;

procedure pMakeRounded(Control: TWinControl);
var
      R: TRect;
      Rgn: HRGN;
begin
      with Control do
      begin
            R := ClientRect;
            rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
            Perform(EM_GETRECT, 0, lParam(@r));
            InflateRect(r, - 5, - 5);
            Perform(EM_SETRECTNP, 0, lParam(@r));
            SetWindowRgn(Handle, rgn, True);
            Invalidate;
      end;
end;

function fValidaEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

function fCountPos(const subtext: string; Text: string): Integer;
begin
  if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;

function fLendoString(const subtext : string; Text: string) : Integer;
var
  I,Y,FoundIndex: Integer;
  arr : array[1..8] of Integer;
  new:array of integer;
begin
     for I := 1 to Length(subtext) do
     begin
            //arr[I] := fCountPos((copy(subtext,I,1)),Text);
           arr[I] := IfThen((fCountPos((copy(subtext,I,1)),Text) > 1),(fCountPos((copy(subtext,I,1)),Text)),(0));

     end;

     TArray.Sort<Integer>(arr);

for I := Low(arr) to High(arr) do
  if not TArray.BinarySearch<integer>(New,arr[i],FoundIndex) then
    begin
      SetLength(New,FoundIndex+1);
      New[FoundIndex]:=arr[i];
    end;

     for I := Low(New) to High(New) do
     begin
            showmessage(inttostr(New[i]));
     end;
end;

function fCriptografiaKey( Senha, key : string ) : string;
var
      x,y : Integer;
      NovaSenha : string;
begin
      for X := 1 to Length( key ) do
      begin
          NovaSenha := '';

          for Y := 1 to Length( Senha ) do
          begin
              NovaSenha := NovaSenha + Chr( ( ord( key[x] ) xor Ord ( Senha[y] )   ) );
          end;

          Senha := NovaSenha;

      end;

      Result := Senha;

end;

function fGetRandomPassword(Size: Integer; Tipo : Integer = 1): String;
var
  I: Integer;
  Chave: String;
const
  str1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str3 = '1234567890abcdefghijklmnopqrstuvwxyz';
  str4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str5 = '1234567890';
  str6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str7 = 'abcdefghijklmnopqrstuvwxyz';
begin
  Chave := '';

  for I := 1 to Size do
  begin
    case Tipo of
      1 : Chave := Chave + str1[Random(Length(str1)) + 1];
      2 : Chave := Chave + str2[Random(Length(str2)) + 1];
      3 : Chave := Chave + str3[Random(Length(str3)) + 1];
      4 : Chave := Chave + str4[Random(Length(str4)) + 1];
      5 : Chave := Chave + str5[Random(Length(str5)) + 1];
      6 : Chave := Chave + str6[Random(Length(str6)) + 1];
      7 : Chave := Chave + str7[Random(Length(str7)) + 1];
    end;
  end;

  Result := Chave;

end;

function  fMaiorValor(VlrA : Double; VlrB : Double) : Integer;
var
        respaux : Double;
begin
        if VlrA = VlrB then
        Begin
                Result := 2;
        End else begin
                Result    := IfThen(VlrA > VlrB, 1,0);
                respaux   := IfThen(Result = 1,VlrA,VlrB);
        end;
end;

function fAjustaDataNull(VrDt    :   TDate)  :   TDate;
begin
     if ( (FormatDateTime('yyyy/mm/dd',VrDt) = '1899/12/30') or (FormatDateTime('yyyy/mm/dd',VrDt) = '0000/00/00')) then
            begin
                Result    :=  StrtoDate(FormatDateTime('dd/mm/yyyy',Now));
            end else
                begin
                    Result    :=  StrtoDate(FormatDateTime('dd/mm/yyyy',VrDt));
                end;
end;


function fMasterDetalhe(IdPropR : Integer; SelectTbDetalhe : string;SelectTbMaster : string): TDataSource;
var
        Qry1,Qry2       : TFDQuery;
        DsQry1,DsQry2   : TDataSource;
begin

        try
             Qry1 := TFDQuery.Create(nil);
             Qry1.Connection := DMPrincipal.FDConnection;
             Qry1.Close;
             Qry1.SQL.Clear;
             Qry1.SQL.Add(SelectTbDetalhe+IntToStr(IdPropR));
             Qry1.Open;
             Qry1.Active := True;
             Qry1.Refresh;

             DsQry1 := TDataSource.Create(nil);
             DsQry1.DataSet := Qry1;

        except on E: Exception do
        end;

         try
             Qry2 := TFDQuery.Create(nil);
             Qry2.Connection := DMPrincipal.FDConnection;
             Qry2.Close;
             Qry2.SQL.Clear;
             Qry2.SQL.Add(SelectTbMaster+IntToStr(IdPropR));
             Qry2.Open;
             Qry2.Active := True;
             Qry2.Refresh;

             DsQry2 := TDataSource.Create(nil);
             DsQry2.DataSet := Qry2;

        except on E: Exception do
        end;

        try
                Result := DsQry1;

        finally
                
        end;
end;


procedure pCtrlMenu(Frm: TForm;Bt: TJvSpeedButton; Ativar: Boolean; FLeft : Integer; FTop : Integer);
Var
    I : Integer;
Begin
    if Ativar then
    Begin// percorrer todos os componentes do Form
        for I := 0 to Frm.ComponentCount - 1 do
        Begin// Primeira verifica��o � se o componente � um painel e Tag <> 0 indica painel de menu
            if (Frm.Components[I] IS TJvPanel) AND ( (Frm.Components[I] as TJvPanel ).Tag <> 0) then
            Begin
                if ( (Frm.Components[I] as TJvPanel ).Tag = Bt.Tag ) then// testa se o painel � o amarrado ao bot�o associado
                Begin//Mostrar o Painel associado ao bot�o de a��o do mouse Visible True
                    (Frm.Components[I] as TJvPanel ).Visible := True;
                    (Frm.Components[I] as TJvPanel ).Left    := bt.Left-(Frm.Components[I] as TJvPanel ).Width+FLeft;
                    (Frm.Components[I] as TJvPanel ).Top     := FTop;
                End Else Begin // Esconde os outros menus abertos anteriores
                    (Frm.Components[I] as TJvPanel ).Visible := False;
                End;
            End;
        End;// Fim Do For
    End Else Begin     // Fim do metodo ATIVAR
        for I := 0 to Frm.ComponentCount - 1 do
        Begin
            if (Frm.Components[I] IS TJvPanel) AND ( (Frm.Components[I] as TJvPanel ).Tag <> 0) then
            Begin
                 (Frm.Components[I] as TJvPanel ).Visible := False;
            End;
        End;

    End;

End;

procedure pCtrlMenuCard(Frm: TForm;Bt: TJvSpeedButton; Ativar: Boolean);
Var
    I : Integer;
Begin
    if Ativar then
    Begin// percorrer todos os componentes do Form
        for I := 0 to Frm.ComponentCount - 1 do
        Begin// Primeira verifica��o � se o componente � um painel e Tag <> 0 indica painel de menu
            if (Frm.Components[I] IS TCard) AND ( (Frm.Components[I] as TCard ).Tag <> 0) then
            Begin
                if ( (Frm.Components[I] as TCard ).Tag = Bt.Tag ) then// testa se o painel � o amarrado ao bot�o associado
                Begin//Mostrar o Painel associado ao bot�o de a��o do mouse Visible True
                    (Frm.Components[I] as TCard ).Visible := True;
                    (Frm.Components[I] as TCard ).Left    := bt.Left-(Frm.Components[I] as TCard ).Width+48;
                    //(Frm.Components[I] as TCard ).Top     := 72;
                End Else Begin // Esconde os outros menus abertos anteriores
                    (Frm.Components[I] as TCard ).Visible := False;
                End;
            End;
        End;// Fim Do For
    End Else Begin     // Fim do metodo ATIVAR
        for I := 0 to Frm.ComponentCount - 1 do
        Begin
            if (Frm.Components[I] IS TCard) AND ( (Frm.Components[I] as TCard ).Tag <> 0) then
            Begin
                 (Frm.Components[I] as TCard ).Visible := False;
            End;
        End;

    End;

End;

function IsConnectedToInternet: Boolean;
var
  dwConnectionTypes: DWORD;
begin
        dwConnectionTypes :=
        INTERNET_CONNECTION_MODEM +
        INTERNET_CONNECTION_LAN +
        INTERNET_CONNECTION_PROXY;
        Result := InternetGetConnectedState(@dwConnectionTypes, 0);
end;


procedure pComboMasterDetail(CbbM : TJvComboBox; CbbD : TJvComboBox; SqlM: string;
        SqlD : string; KeyDescM : string; KeyDescD : string; KeyVlrM : string );
begin

        try
           pMontaComboBoxTempExec(CbbM,SqlM,KeyVlrM,KeyDescM);
           pMontaComboBoxTempExec(CbbD,SqlD,KeyVlrM,KeyDescD);
        except

        end;


end;

procedure pMontaComboTxt(Cbb : TComboBox; Caminho: string; NomeArq : string);
var
     arq:TextFile;
     PegaTexto,Campo:String;

begin
   if FileExists(Caminho+NomeArq+'.txt') then
   begin
      AssignFile ( Arq,Caminho+NomeArq+'.txt');
      Reset(Arq);//Somente para leitura
      Cbb.Items.Clear;
      while not eof(arq) do begin
           Readln(arq,campo);//L� a linha inteira
           PegaTexto:=Copy(campo,1,18);
           Cbb.items.Add(PegaTexto);
        end;
   CloseFile(arq);
   end;

end;

procedure pCentralizaTextoEdit(Edit : TDBEdit; sender : TObject; Self : TComponent);
var
  vl_label : TLabel; //vari�vel do tipo Label
begin
  vl_label := TLabel.Create(self); //criamos um label
  with vl_label do
  begin
    Font.Name := TEdit(sender).Font.Name; //pegamos a fonte usada no edit
    Caption := TEdit(sender).Text; //pegamos o conte�do do edit
    SendMessage(TEdit(sender).Handle, EM_SETMARGINS, EC_LEFTMARGIN,
    (TEdit(sender).Width-vl_label.Width) div 2); //centraliza no label e retorna para o edit
  end;
  vl_label.Free;

end;

function fValidaDtMaiorDtMenor(DtA , Dtb : TDate) : Integer;
begin
        Result  :=      IfThen(DtA >= Dtb , 0,1 );
end;

procedure pDBNavigatorNew(Nav : TJvDBNavigator);
begin
        with Nav do
        begin
         NewTypeNav( Nav ).Buttons[nbInsert].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavAdd.bmp');
         NewTypeNav( Nav ).Buttons[nbPost].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavSave.bmp');
         NewTypeNav( Nav ).Buttons[nbDelete].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavDelete.bmp');
         NewTypeNav( Nav ).Buttons[nbEdit].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavEditar.bmp');
         NewTypeNav( Nav ).Buttons[nbCancel].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavCancel.bmp');
         NewTypeNav( Nav ).Buttons[nbRefresh].Glyph.LoadFromFile('Icons\32x32\DbNav\BtNavRefresh.bmp');
        end;
end;

end.
