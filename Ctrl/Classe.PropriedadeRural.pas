unit Classe.PropriedadeRural;

interface

uses
  System.SysUtils, Classe.Functions, Classe.FunctionsCrud,Classe.FunctionsSQL,
  Classe.Conexao, Vcl.Forms, JvDBUltimGrid, System.Classes, System.Variants,
  Graphics;

type
        TPropriedadeRural = class
        private

        FNomeResumido   : string;
        FAreaTotal      : Double;
        FAreaAgricola   : Double;
        FnumReceita     : integer;
        FCodigoIncra    : Integer;
        FNumMatricula   : Integer;
        FObservacao     : string;
        Ffoto           : TPicture;

        public

        constructor CreateObjTPropriedadeRural;
        destructor DestryObtTPropriedadeRural;

        procedure setNomeResumido ( pNomeResumido  : string);
        procedure setAreaTotal    ( pAreaTotal     : Double);
        procedure setAreaAgricola ( pAreaAgricola  : Double);
        procedure setnumReceita   ( pnumReceita    : integer);
        procedure setCodigoIncra  ( pCodigoIncra   : Integer);
        procedure setNumMatricula ( pNumMatricula  : Integer);
        procedure setObservacao   ( pObservacao    : string);
        procedure setfoto         ( pfoto          : TPicture);

        function getNomeResumido  : string;
        function getAreaTotal     : Double;
        function getAreaAgricola  : Double;
        function getnumReceita    : integer;
        function getCodigoIncra   : Integer;
        function getNumMatricula  : Integer;
        function getObservacao    : string;
        function getfoto          : TPicture;

        end;


implementation

{ TPropriedadeRural }

constructor TPropriedadeRural.CreateObjTPropriedadeRural;
begin
        FNomeResumido   := EmptyStr;
        FAreaTotal      := 0;
        FAreaAgricola   := 0;
        FnumReceita     := 0;
        FCodigoIncra    := 0;
        FNumMatricula   := 0;
        FObservacao     := EmptyStr;
        Ffoto           := nil;
end;

destructor TPropriedadeRural.DestryObtTPropriedadeRural;
begin

end;

function TPropriedadeRural.getAreaAgricola: Double;
begin

end;

function TPropriedadeRural.getAreaTotal: Double;
begin

end;

function TPropriedadeRural.getCodigoIncra: Integer;
begin

end;

function TPropriedadeRural.getfoto: TPicture;
begin

end;

function TPropriedadeRural.getNomeResumido: string;
begin

end;

function TPropriedadeRural.getNumMatricula: Integer;
begin

end;

function TPropriedadeRural.getnumReceita: integer;
begin

end;

function TPropriedadeRural.getObservacao: string;
begin

end;

procedure TPropriedadeRural.setAreaAgricola(pAreaAgricola: Double);
begin

end;

procedure TPropriedadeRural.setAreaTotal(pAreaTotal: Double);
begin

end;

procedure TPropriedadeRural.setCodigoIncra(pCodigoIncra: Integer);
begin

end;

procedure TPropriedadeRural.setfoto(pfoto: TPicture);
begin

end;

procedure TPropriedadeRural.setNomeResumido(pNomeResumido: string);
begin

end;

procedure TPropriedadeRural.setNumMatricula(pNumMatricula: Integer);
begin

end;

procedure TPropriedadeRural.setnumReceita(pnumReceita: integer);
begin

end;

procedure TPropriedadeRural.setObservacao(pObservacao: string);
begin

end;

end.
