unit obj.Clinicas;

interface

uses System.SysUtils, System.Classes, Uni, obj.Cidades, USessao;

type
  TClinica = class
  private
    FPortaEmail: Integer;
    FEmail: string;
    FBairro: string;
    FIdCidade: Integer;
    FResponsavel: string;
    FCEP: string;
    FId: Integer;
    FNumero: string;
    FTelefone2: string;
    FTelefone1: string;
    FSenhaEmail: string;
    FNome: string;
    FEndereco: string;
    FHostEmail: string;
    function getCidade: TCidade;
    procedure SetBairro(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: string);
    procedure SetHostEmail(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetIdCidade(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetPortaEmail(const Value: Integer);
    procedure SetResponsavel(const Value: string);
    procedure SetSenhaEmail(const Value: string);
    procedure SetTelefone1(const Value: string);
    procedure SetTelefone2(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Endereco: string read FEndereco write SetEndereco;
    property Numero: string read FNumero write SetNumero;
    property Bairro: string read FBairro write SetBairro;
    property IdCidade: Integer read FIdCidade write SetIdCidade;
    property Cidade: TCidade read getCidade;
    property CEP: string read FCEP write SetCEP;
    property Telefone1: string read FTelefone1 write SetTelefone1;
    property Telefone2: string read FTelefone2 write SetTelefone2;
    property Email: string read FEmail write SetEmail;
    property SenhaEmail: string read FSenhaEmail write SetSenhaEmail;
    property HostEmail: string read FHostEmail write SetHostEmail;
    property PortaEmail: Integer read FPortaEmail write SetPortaEmail;
    property Responsavel: string read FResponsavel write SetResponsavel;

    class function Montar(AId: string): TClinica;
  end;

implementation

{ TClinica }

function TClinica.getCidade: TCidade;
begin
  Result := TCidade.Montar(IdCidade.ToString);
end;

class function TClinica.Montar(AId: string): TClinica;
var
  qry: TUniQuery;
begin
  Result := TClinica.Create;

  if AId = '' then
    Exit;
end;

procedure TClinica.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TClinica.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TClinica.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TClinica.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TClinica.SetHostEmail(const Value: string);
begin
  FHostEmail := Value;
end;

procedure TClinica.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TClinica.SetIdCidade(const Value: Integer);
begin
  FIdCidade := Value;
end;

procedure TClinica.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TClinica.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TClinica.SetPortaEmail(const Value: Integer);
begin
  FPortaEmail := Value;
end;

procedure TClinica.SetResponsavel(const Value: string);
begin
  FResponsavel := Value;
end;

procedure TClinica.SetSenhaEmail(const Value: string);
begin
  FSenhaEmail := Value;
end;

procedure TClinica.SetTelefone1(const Value: string);
begin
  FTelefone1 := Value;
end;

procedure TClinica.SetTelefone2(const Value: string);
begin
  FTelefone2 := Value;
end;

end.
