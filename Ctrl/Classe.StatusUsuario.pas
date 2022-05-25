unit Classe.StatusUsuario;
    interface

    uses
     classes;

    type
     TStatus = class(TPersistent)

     strict private
     //est� que ser� a vari�vel que armazenar� a �NICA inst�ncia do objeto.
     class var FInstancia: TStatus;
     constructor Create();

     private
     FUsuarioLogado: String;
     FTerminal: string;
     FUsuarioID: Integer;


     procedure SetTerminal(const Value: string);
     procedure SetUsuarioLogado(const Value: String);
     procedure SetUsuarioID(const Value: Integer);

     public
     class function GetInstancia():TStatus;

     published
     property UsuarioLogado:String read FUsuarioLogado write SetUsuarioLogado;
     property UsuarioID:Integer read FUsuarioID write SetUsuarioID;
     property Terminal:string read FTerminal write SetTerminal;

     end;

    implementation

    { TStatus }

    constructor TStatus.Create;
    begin


    end;

    //m�todo respons�vel por retorna a inst�ncia do objeto.
    class function TStatus.GetInstancia: TStatus;
    begin
     if not Assigned(FInstancia) then
     FInstancia := TStatus.Create;

     Result := FInstancia;
    end;

    procedure TStatus.SetTerminal(const Value: string);
    begin
     FTerminal := Value;
    end;

    procedure TStatus.SetUsuarioID(const Value: Integer);
begin
  FUsuarioID := Value;
end;

procedure TStatus.SetUsuarioLogado(const Value: String);
    begin
     FUsuarioLogado := Value;
    end;
end.
