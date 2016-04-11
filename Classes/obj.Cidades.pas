unit obj.Cidades;

interface

uses System.SysUtils, Uni, USessao;

type
  TCidade = class
  private
    FUF: string;
    FId: string;
    FCidade: string;
    procedure SetCidade(const Value: string);
    procedure SetId(const Value: string);
    procedure SetUF(const Value: string);
    function getCidadeUF: string;
  public
    property Id: string read FId write SetId;
    property Cidade: string read FCidade write SetCidade;
    property UF: string read FUF write SetUF;
    property CidadeUF: string read getCidadeUF;

    class function Montar(AId: string): TCidade;
  end;

implementation

{ TCidade }

function TCidade.getCidadeUF: string;
begin
  Result := Cidade + '/' + UF;
end;

class function TCidade.Montar(AId: string): TCidade;
var
  qry: TUniQuery;
begin
  Result := TCidade.Create;

  if AId = '' then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT ID, NOME, UF FROM CIDADES WHERE ID = ' + QuotedStr(AId));
  try
    if qry.IsEmpty then
      Exit;

    Result.Id     := qry.FieldByName('ID').AsString;
    Result.Cidade := qry.FieldByName('NOME').AsString;
    Result.UF     := qry.FieldByName('UF').AsString;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TCidade.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TCidade.SetId(const Value: string);
begin
  FId := Value;
end;

procedure TCidade.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
