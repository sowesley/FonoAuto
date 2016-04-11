unit obj.Pessoas;

interface

uses System.SysUtils, System.DateUtils, System.StrUtils, Uni, USessao, System.Generics.Collections,
  obj.Cidades, Utils.Util, obj.Paises, obj.Documentos;

type
  TPessoa = class
  private
    FNacionalidade: string;
    FNaturalidade: TCidade;
    FEmail: string;
    FPai: TPessoa;
    FBairro: string;
    FNascimento: TDateTime;
    FApelido: string;
    FAnotacoes: string;
    FIdCidade: string;
    FResponsavel: string;
    FIdMae: Integer;
    FId: Integer;
    FNumero: string;
    FIdNaturalidade: string;
    FIdPai: Integer;
    FComplemento: string;
    FContato: string;
    FReferencia: string;
    FNome: string;
    FCidade: TCidade;
    FEndereco: string;
    FMae: TPessoa;
    FTelefone: string;
    FCelular: string;
    FIdPais: string;
    FCEP: string;
    FPaisOrigem: TPais;
    FSexo: string;
    FIdUsuario: Integer;
    FDocumentos: TObjectList<TDocumento>;
    function getIdade: string;
    procedure SetAnotacoes(const Value: string);
    procedure SetApelido(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetCelular(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetIdCidade(const Value: string);
    procedure SetIdMae(const Value: Integer);
    procedure SetIdNaturalidade(const Value: string);
    procedure SetIdPai(const Value: Integer);
    procedure SetNacionalidade(const Value: string);
    procedure SetNascimento(const Value: TDateTime);
    procedure SetNome(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetReferencia(const Value: string);
    procedure SetResponsavel(const Value: string);
    procedure SetTelefone(const Value: string);
    function getMae: TPessoa;
    function getPai: TPessoa;
    function getCidade: TCidade;
    function getNaturalidade: TCidade;
    function getCidadeUF: string;
    function getNaturalidadeUF: string;
    procedure SetIdPais(const Value: string);
    function getPais: TPais;
    procedure SetCEP(const Value: string);
    procedure SetSexo(const Value: string);
    procedure SetIdUsuario(const Value: Integer);
    function getDocumentos: TObjectList<TDocumento>;
    function getSexoExt: string;
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Apelido: string read FApelido write SetApelido;
    property Sexo: string read FSexo write SetSexo;
    property SexoExt: string read getSexoExt;
    property Endereco: string read FEndereco write SetEndereco;
    property Numero: string read FNumero write SetNumero;
    property Complemento: string read FComplemento write SetComplemento;
    property Referencia: string read FReferencia write SetReferencia;
    property Bairro: string read FBairro write SetBairro;
    property IdCidade: string read FIdCidade write SetIdCidade;
    property Cidade: TCidade read getCidade;
    property Telefone: string read FTelefone write SetTelefone;
    property Celular: string read FCelular write SetCelular;
    property Nascimento: TDateTime read FNascimento write SetNascimento;
    property Idade: string read getIdade;
    property IdNaturalidade: string read FIdNaturalidade write SetIdNaturalidade;
    property Naturalidade: TCidade read getNaturalidade;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property IdPai: Integer read FIdPai write SetIdPai;
    property Pai: TPessoa read getPai;
    property IdMae: Integer read FIdMae write SetIdMae;
    property Mae: TPessoa read getMae;
    property Contato: string read FContato write SetContato;
    property Responsavel: string read FResponsavel write SetResponsavel;
    property Email: string read FEmail write SetEmail;
    property Anotacoes: string read FAnotacoes write SetAnotacoes;
    property CidadeUF: string read getCidadeUF;
    property NaturalidadeUF: string read getNaturalidadeUF;
    property IdPais: string read FIdPais write SetIdPais;
    property PaisOrigem: TPais read getPais;
    property CEP: string read FCEP write SetCEP;
    property IdUsuario: Integer read FIdUsuario write SetIdUsuario;

    property Documentos: TObjectList<TDocumento> read getDocumentos;

    class function Montar(AId: string): TPessoa;

    procedure LimparDocumentos;
  end;

implementation

{ TPessoa }

function TPessoa.getCidade: TCidade;
begin
  if not Assigned(FCidade) then
    FCidade := TCidade.Montar(IdCidade);

  Result := FCidade;
end;

function TPessoa.getCidadeUF: string;
begin
  Result := Cidade.CidadeUF;
end;

function TPessoa.getDocumentos: TObjectList<TDocumento>;
var
  qry: TUniQuery;
  Doc: TDocumento;
begin
  if Assigned(FDocumentos) then
  begin
    if FDocumentos.Count > 0 then
    begin
      Result := FDocumentos;
      Exit;
    end;
  end;

  FDocumentos := TObjectList<TDocumento>.Create(False);

  qry := TSessao.Instance.Consulta('SELECT SEQ FROM DOCUMENTOS WHERE ID_PESSOA = ' + IntToStr(Id));

  if qry.IsEmpty then
  begin
    Result := FDocumentos;
    Exit;
  end;

  qry.First;
  while not qry.Eof do
  begin
    Doc := TDocumento.Montar(IntToStr(Id), qry.FieldByName('SEQ').AsString);
    FDocumentos.Add(Doc);

    qry.Next;
  end;

  Result := FDocumentos;
end;

function TPessoa.getIdade: string;
begin
  Result := Utils.Util.Idade(Nascimento, False, True);
end;

function TPessoa.getMae: TPessoa;
begin
  if not Assigned(FMae) then
    FMae := TPessoa.Montar(IntToStr(IdMae));

  Result := FMae;
end;

function TPessoa.getNaturalidade: TCidade;
begin
  if not Assigned(FNaturalidade) then
    FNaturalidade := TCidade.Montar(IdNaturalidade);

  Result := FNaturalidade;
end;

function TPessoa.getNaturalidadeUF: string;
begin
  Result := Naturalidade.CidadeUF;
end;

function TPessoa.getPai: TPessoa;
begin
  if not Assigned(FPai) then
    FPai := TPessoa.Montar(IntToStr(IdPai));

  Result := FPai;
end;

function TPessoa.getPais: TPais;
begin
  if not Assigned(FPaisOrigem) then
    FPaisOrigem := TPais.Montar(IdPais);

  Result := FPaisOrigem;
end;

function TPessoa.getSexoExt: string;
begin
  if Sexo = 'M' then
    Result := 'Masculino'
  else
  if Sexo = 'F' then
    Result := 'Feminino'
  else
    Result := 'Indefinido';
end;

procedure TPessoa.LimparDocumentos;
begin
  if Assigned(FDocumentos) then
  begin
    FDocumentos.Clear;
    FDocumentos.Free;
  end;
end;

class function TPessoa.Montar(AId: string): TPessoa;
var
  qry: TUniQuery;
begin
  Result := TPessoa.Create;

  if AId = '' then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT P.ID, P.NOME, P.APELIDO, P.ENDERECO, P.NUMERO, P.COMPLEMENTO, P.PONTO_REFERENCIA, ' + sLineBreak +
    '       P.BAIRRO, P.CIDADE, P.TELEFONE, P.CELULAR, P.NASCIMENTO, ' + sLineBreak +
    '       P.NATURALIDADE, P.NACIONALIDADE, P.PAI, P.CEP, P.SEXO, ' + sLineBreak +
    '       P.MAE, P.FONE_CONTATO, P.RESPONSAVEL, P.EMAIL, P.ANOTACOES, P.PAIS, P.ID_USUARIO ' + sLineBreak +
    'FROM PESSOAS P ' + sLineBreak +
    'WHERE P.ID = ' + AId);

  try
    if qry.IsEmpty then
      Exit;

    Result.Id             := qry.FieldByName('ID').AsInteger;
    Result.Nome           := qry.FieldByName('NOME').AsString;
    Result.Apelido        := qry.FieldByName('APELIDO').AsString;
    Result.Sexo           := qry.FieldByName('SEXO').AsString;
    Result.Endereco       := qry.FieldByName('ENDERECO').AsString;
    Result.Numero         := qry.FieldByName('NUMERO').AsString;
    Result.Complemento    := qry.FieldByName('COMPLEMENTO').AsString;
    Result.Referencia     := qry.FieldByName('PONTO_REFERENCIA').AsString;
    Result.Bairro         := qry.FieldByName('BAIRRO').AsString;
    Result.IdCidade       := qry.FieldByName('CIDADE').AsString;
    Result.Telefone       := qry.FieldByName('TELEFONE').AsString;
    Result.Celular        := qry.FieldByName('CELULAR').AsString;
    Result.Nascimento     := qry.FieldByName('NASCIMENTO').AsDateTime;
    Result.IdNaturalidade := qry.FieldByName('NATURALIDADE').AsString;
    Result.Nacionalidade  := qry.FieldByName('NACIONALIDADE').AsString;
    Result.IdPai          := qry.FieldByName('PAI').AsInteger;
    Result.IdMae          := qry.FieldByName('MAE').AsInteger;
    Result.Contato        := qry.FieldByName('FONE_CONTATO').AsString;
    Result.Responsavel    := qry.FieldByName('RESPONSAVEL').AsString;
    Result.Email          := qry.FieldByName('EMAIL').AsString;
    Result.Anotacoes      := qry.FieldByName('ANOTACOES').AsString;
    Result.IdPais         := qry.FieldByName('PAIS').AsString;
    Result.CEP            := qry.FieldByName('CEP').AsString;
    Result.IdUsuario      := qry.FieldByName('ID_USUARIO').AsInteger;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TPessoa.SetAnotacoes(const Value: string);
begin
  FAnotacoes := Value;
end;

procedure TPessoa.SetApelido(const Value: string);
begin
  FApelido := Value;
end;

procedure TPessoa.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TPessoa.SetCelular(const Value: string);
begin
  FCelular := Value;
end;

procedure TPessoa.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TPessoa.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TPessoa.SetContato(const Value: string);
begin
  FContato := Value;
end;

procedure TPessoa.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TPessoa.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TPessoa.SetIdCidade(const Value: string);
begin
  FIdCidade := Value;
end;

procedure TPessoa.SetIdMae(const Value: Integer);
begin
  FIdMae := Value;
end;

procedure TPessoa.SetIdNaturalidade(const Value: string);
begin
  FIdNaturalidade := Value;
end;

procedure TPessoa.SetIdPai(const Value: Integer);
begin
  FIdPai := Value;
end;

procedure TPessoa.SetIdPais(const Value: string);
begin
  FIdPais := Value;
end;

procedure TPessoa.SetIdUsuario(const Value: Integer);
begin
  FIdUsuario := Value;
end;

procedure TPessoa.SetNacionalidade(const Value: string);
begin
  FNacionalidade := Value;
end;

procedure TPessoa.SetNascimento(const Value: TDateTime);
begin
  FNascimento := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TPessoa.SetReferencia(const Value: string);
begin
  FReferencia := Value;
end;

procedure TPessoa.SetResponsavel(const Value: string);
begin
  FResponsavel := Value;
end;

procedure TPessoa.SetSexo(const Value: string);
begin
  FSexo := Value;
end;

procedure TPessoa.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
