unit Utils.Consulta;

interface

uses System.SysUtils, UConPacientes, UDefault;

type
  TTipoConsulta = (cPacientes, cCidades, cPaises);

  function GeraSQLPadrao(ATipo: TTipoConsulta): string;
  function Consultar(ATipo: TTipoConsulta): string;

implementation

uses UConCidades, UConPaises;

function GeraSQLPadrao(ATipo: TTipoConsulta): string;
begin
  case ATipo of
    cPacientes:
      begin
        Result := 'SELECT P.ID, P.NOME, P.NASCIMENTO, ' + sLineBreak +
          '       CASE P.SEXO ' + sLineBreak +
          '         WHEN ''M'' THEN ''Masculino'' ' + sLineBreak +
          '       ELSE ''Feminino'' ' + sLineBreak +
          '       END SEXO ' + sLineBreak +
          'FROM PESSOAS P ' + sLineBreak +
          'WHERE 1=1 ' + sLineBreak +
          ParametroPesquisa +
          'ORDER BY P.NOME';
      end;
    cCidades:
      begin
        Result := 'SELECT ID, NOME, UF ' + sLineBreak +
          'FROM CIDADES ' + sLineBreak +
          'WHERE 1=1 ' + sLineBreak +
          ParametroPesquisa +
          'ORDER BY UF, NOME';
      end;
    cPaises:
      begin
        Result := 'SELECT CODIGO, NOME ' + sLineBreak +
          'FROM PAISES ' + sLineBreak +
          'WHERE 1=1 ' + sLineBreak +
          ParametroPesquisa +
          'ORDER BY NOME';
      end;
  end;
end;

function Consultar(ATipo: TTipoConsulta): string;
var
  SQL: string;
begin
  Result := '';

  SQL := GeraSQLPadrao(ATipo);

  case ATipo of
    cPacientes:
      begin
        FConPacientes := TFConPacientes.Create(nil);
        try
          FConPacientes.ColunaRetorno := FConPacientes.colId.Index;
          FConPacientes.SQL           := SQL;

          FConPacientes.ShowModal;

          Result := ResultadoPesquisa;
        finally
          FreeAndNil(FConPacientes);
        end;
      end;
    cCidades:
      begin
        FConCidades := TFConCidades.Create(nil);
        try
          FConCidades.ColunaRetorno := FConCidades.colId.Index;
          FConCidades.SQL           := SQL;

          FConCidades.ShowModal;

          Result := ResultadoPesquisa;
        finally
          FreeAndNil(FConCidades);
        end;
      end;
    cPaises:
      begin
        FConPaises := TFConPaises.Create(nil);
        try
          FConPaises.ColunaRetorno := FConPaises.colId.Index;
          FConPaises.SQL           := SQL;

          FConPaises.ShowModal;

          Result := ResultadoPesquisa;
        finally
          FreeAndNil(FConPaises);
        end;
      end;
  end;
end;

end.
