unit obj.Paises;

interface

uses System.SysUtils, Uni, USessao;

type
  TPais = class
  private
    FCodigo: string;
    FPais: string;
    procedure SetCodigo(const Value: string);
    procedure SetPais(const Value: string);
  public
    property Codigo: string read FCodigo write SetCodigo;
    property Pais: string read FPais write SetPais;

    class function Montar(AId: string): TPais;
  end;

implementation

{ TPais }

class function TPais.Montar(AId: string): TPais;
var
  qry: TUniQuery;
begin
  Result := TPais.Create;

  if AId.IsEmpty then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT CODIGO, NOME FROM PAISES WHERE CODIGO = ' + QuotedStr(AId));
  try
    if qry.IsEmpty then
      Exit;

    Result.Codigo := qry.FieldByName('CODIGO').AsString;
    Result.Pais   := qry.FieldByName('NOME').AsString;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TPais.SetCodigo(const Value: string);
begin
  FCodigo := Value;
end;

procedure TPais.SetPais(const Value: string);
begin
  FPais := Value;
end;

end.
