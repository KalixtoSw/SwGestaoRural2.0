unit Classe.Functions;

interface

uses
  JvPanel, Vcl.Forms, Vcl.WinXPanels,JvDBUltimGrid, System.MaskUtils,Classe.FunctionsSQL,
  Vcl.StdCtrls, JvCombobox, System.SysUtils, FireDAC.Comp.Client,IdHashMessageDigest,
  Winapi.Windows, Vcl.Controls, Winapi.Messages, Vcl.Mask, Vcl.Dialogs,Math,
  Generics.Collections, Classe.Sistema.Mensagens;

  Type
        TBGridPadrao = class(TJvDBUltimGrid);

   Type RetComboBox  =  record
            IdResp      : Integer;
            DescCombo   : string;
    end;

  procedure pCentralizaPanel(Pnl : TJvPanel ; Frm : TForm);{1}
  procedure pMenuRetratil(Card : TCard; Pnl : TJvPanel ; IdBtn : Integer);{2}
  procedure pMenuRetratilFixo( Pnl : TJvPanel );{3}
  procedure pAtivarDBGrid(Dbg : TJvDBUltimGrid);{4}
  procedure pMontaComboBox(Cmb : TJvComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);overload;{5}
  procedure pMontaComboBox(Cmb : TComboBox;Tp : Integer; SQLresult : String; Tabela : TFDQuery; IdKey1 : String; IdKey2 : string);overload;{5}
  procedure pdelay(MSec: cardinal);{6}
  Procedure pMakeRounded(Control: TWinControl);{7}
  procedure pEditSetFocus(Form : TForm ; FTag : Integer);{8}
  procedure pMontaComboBoxTempExec(Combo : TJvComboBox; Select : string; Key : string; TextCombo : string);{9}

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
                     Combo.Refresh;

        except on E: Exception do
                fMsgPadrao(2,2,13,2,E.Message);
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

end.
