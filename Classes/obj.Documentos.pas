unit obj.Documentos;

interface

uses System.SysUtils, System.StrUtils, Uni, obj.Paises, USessao, System.MaskUtils;

type
  TOrgaoEmissor = (oeInvalido, oeSSP, oeMTE, oeDetran, oeDPF, oeCartorio, oeOutros);
  TTipoDocumento = (tdInvalido, tdRg, tdEstrangeiro, tdCR, tdCC, tdCTPS, tsCPF, tdCNPJ, tdPassaporte, tdReservista, tdCNH, tsFuncional, tdCertidao);

  TOrgaoEmissorHelper = record helper for TOrgaoEmissor
  public
    function ToString: string;
  end;

  TTipoDocumentoHelper = record helper for TTipoDocumento
  public
    function ToString: string;
  end;

  TDocumento = class
  private
    FSeq: Integer;
    FEmissor: Integer;
    FUF: string;
    FIdPais: string;
    FNumero: string;
    FDataEmissao: TDateTime;
    FIdPessoa: Integer;
    FTipo: Integer;
    FIdUsuario: Integer;
    function getDescEmissor: string;
    function getDescTipo: string;
    function getPais: TPais;
    procedure SetDataEmissao(const Value: TDateTime);
    procedure SetEmissor(const Value: Integer);
    procedure SetIdPais(const Value: string);
    procedure SetIdPessoa(const Value: Integer);
    procedure SetNumero(const Value: string);
    procedure SetSeq(const Value: Integer);
    procedure SetTipo(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetIdUsuario(const Value: Integer);
    function getNumero: string;
  public
    property IdPessoa: Integer read FIdPessoa write SetIdPessoa;
    property Seq: Integer read FSeq write SetSeq;
    property Tipo: Integer read FTipo write SetTipo;
    property DescTipo: string read getDescTipo;
    property Numero: string read getNumero write SetNumero;
    property Emissor: Integer read FEmissor write SetEmissor;
    property DescEmissor: string read getDescEmissor;
    property DataEmissao: TDateTime read FDataEmissao write SetDataEmissao;
    property IdPais: string read FIdPais write SetIdPais;
    property Pais: TPais read getPais;
    property UF: string read FUF write SetUF;
    property IdUsuario: Integer read FIdUsuario write SetIdUsuario;

    class function Montar(AIdPessoa, ASeq: string): TDocumento;
    class function RetornaID(AIdPessoa: string): Integer;
  end;

implementation

{ TDocumento }

function TDocumento.getDescEmissor: string;
begin
  case Emissor of
    1: Result := 'SSP';
    2: Result := 'MTE';
    3: Result := 'Detran';
    4: Result := 'DPF';
    5: Result := 'Cartório';
    6: Result := 'Outros';
  end;
end;

function TDocumento.getDescTipo: string;
begin
  case Tipo of
    1 : Result := 'Documento de Identidade';
    2 : Result := 'Documento de Estrangeiro';
    3 : Result := 'Documento de Conselho Regional';
    4 : Result := 'Documento de Conselho de Classe';
    5 : Result := 'Carteira de Trabalho';
    6 : Result := 'CPF';
    7 : Result := 'CNPJ';
    8 : Result := 'Passaporte';
    9 : Result := 'Certificado de Reservista';
    10: Result := 'CNH';
    11: Result := 'Identidade Funcional';
    12: Result := 'Certidão';
  end;
end;

function TDocumento.getNumero: string;
begin
  case Tipo of
    1: //RG
      begin
        Result := FormatMaskText('99.999.999-9;0', FNumero);
      end;
    6: //CPF
      begin
        Result := FormatMaskText('999.999.999-99;0', FNumero);
      end;
    7: //CNPJ
      begin
        Result := FormatMaskText('99.999.999/9999-99;0', FNumero);
      end;
  else
    Result := FNumero;
  end;
end;

function TDocumento.getPais: TPais;
begin
  Result := TPais.Montar(IdPais);
end;

class function TDocumento.Montar(AIdPessoa, ASeq: string): TDocumento;
var
  qry: TUniQuery;
begin
  Result := TDocumento.Create;

  if AIdPessoa.IsEmpty or ASeq.IsEmpty then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT TIPO_DOCUMENTO, NUMERO, ORGAO_EMISSOR, DATA_EMISSAO, PAIS_EMISSAO, UF_EMISSAO, ID_USUARIO ' + sLineBreak +
    'FROM DOCUMENTOS ' + sLineBreak +
    'WHERE ID_PESSOA = ' + AIdPessoa + sLineBreak +
    '  AND SEQ = ' + ASeq);
  try
    if qry.IsEmpty then
      Exit;

    Result.IdPessoa    := StrToInt(AIdPessoa);
    Result.Seq         := StrToInt(ASeq);
    Result.Tipo        := qry.FieldByName('TIPO_DOCUMENTO').AsInteger;
    Result.Numero      := qry.FieldByName('NUMERO').AsString;
    Result.Emissor     := qry.FieldByName('ORGAO_EMISSOR').AsInteger;
    Result.DataEmissao := qry.FieldByName('DATA_EMISSAO').AsDateTime;
    Result.IdPais      := qry.FieldByName('PAIS_EMISSAO').AsString;
    Result.UF          := qry.FieldByName('UF_EMISSAO').AsString;
    Result.IdUsuario   := qry.FieldByName('ID_USUARIO').AsInteger;
  finally
    FreeAndNil(qry);
  end;
end;

class function TDocumento.RetornaID(AIdPessoa: string): Integer;
var
  qry: TUniQuery;
begin
  try
    qry := TSessao.Instance.Consulta('SELECT COALESCE(MAX(), 0) + 1 SEQ ' + sLineBreak +
      'FROM DOCUMENTOS ' + sLineBreak +
      'WHERE ID_PESSOA = ' + AIdPessoa);

    if qry.IsEmpty then
      Exit(1);

    Result := qry.Fields[0].AsInteger;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TDocumento.SetDataEmissao(const Value: TDateTime);
begin
  FDataEmissao := Value;
end;

procedure TDocumento.SetEmissor(const Value: Integer);
begin
  FEmissor := Value;
end;

procedure TDocumento.SetIdPais(const Value: string);
begin
  FIdPais := Value;
end;

procedure TDocumento.SetIdPessoa(const Value: Integer);
begin
  FIdPessoa := Value;
end;

procedure TDocumento.SetIdUsuario(const Value: Integer);
begin
  FIdUsuario := Value;
end;

procedure TDocumento.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TDocumento.SetSeq(const Value: Integer);
begin
  FSeq := Value;
end;

procedure TDocumento.SetTipo(const Value: Integer);
begin
  FTipo := Value;
end;

procedure TDocumento.SetUF(const Value: string);
begin
  FUF := Value;
end;

{ TOrgaoEmissorHelper }

function TOrgaoEmissorHelper.ToString: string;
begin
  case Self of
    oeInvalido: Result := '';
    oeSSP     : Result := 'SSP';
    oeMTE     : Result := 'MTE';
    oeDetran  : Result := 'Detran';
    oeDPF     : Result := 'DPF';
    oeCartorio: Result := 'Cartório';
    oeOutros  : Result := 'Outros';
  end;
end;

{ TTipoDocumentoHelper }

function TTipoDocumentoHelper.ToString: string;
begin
  case Self of
    tdInvalido   : Result := '';
    tdRg         : Result := 'Documento de Identidade';
    tdEstrangeiro: Result := 'Documento de Estrangeiro';
    tdCR         : Result := 'Documento de Conselho Regional';
    tdCC         : Result := 'Documento de Conselho de Classe';
    tdCTPS       : Result := 'Carteira de Trabalho';
    tsCPF        : Result := 'CPF';
    tdCNPJ       : Result := 'CNPJ';
    tdPassaporte : Result := 'Passaporte';
    tdReservista : Result := 'Certificado de Reservista';
    tdCNH        : Result := 'CNH';
    tsFuncional  : Result := 'Identidade Funcional';
    tdCertidao   : Result := 'Certidão';
  end;
end;

end.
