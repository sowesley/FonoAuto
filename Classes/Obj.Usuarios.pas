unit Obj.Usuarios;

interface

uses SysUtils, Classes, Uni;

type
  TUsuarios = class
  private
    FId: Integer;
    FSenha: string;
    FLogin: string;
    FNome: string;
    procedure SetId(const Value: Integer);
    procedure SetLogin(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetSenha(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Login: string read FLogin write SetLogin;
    property Senha: string read FSenha write SetSenha;

    class function Montar(AId: string): TUsuarios;
  end;

implementation

{ TUsuarios }

uses USessao, Utils.MD5;

class function TUsuarios.Montar(AId: string): TUsuarios;
var
  qry: TUniQuery;
begin
  Result := TUsuarios.Create;

  if AId = '' then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT ID, LOGIN, NOME, SENHA ' + sLineBreak +
    'FROM USUARIOS WHERE ID = ' + AId);
  try
    if qry.IsEmpty then
      Exit;

    Result.Id    := qry.FieldByName('ID').AsInteger;
    Result.Nome  := qry.FieldByName('NOME').AsString;
    Result.Login := qry.FieldByName('LOGIN').AsString;
    Result.Senha := qry.FieldByName('SENHA').AsString;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TUsuarios.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TUsuarios.SetLogin(const Value: string);
begin
  FLogin := Value;
end;

procedure TUsuarios.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TUsuarios.SetSenha(const Value: string);
begin
  FSenha := Value;
end;

end.
