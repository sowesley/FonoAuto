unit USessao;

interface

uses System.SysUtils, Classes, UDM, Uni, IWSystem;

type
  TConfig = record
  private
    FCaminhoBanco: string;
    FServidor: string;
    FSenha: string;
    FUsuario: string;
    FLogotipo: string;
    FMenuAtivo: Boolean;
    FMaxTempoReserva: Integer;
    procedure setCaminhoBanco(const Value: string);
    procedure setSenha(const Value: string);
    procedure setServidor(const Value: string);
    procedure setUsuario(const Value: string);
    procedure SetLogotipo(const Value: string);
    procedure SetMenuAtivo(const Value: Boolean);
    procedure SetMaxTempoReserva(const Value: Integer);
    function getCaminhoImagens: string;
  public
    property Servidor: string read FServidor write setServidor;
    property Usuario: string read FUsuario write setUsuario;
    property Senha: string read FSenha write setSenha;
    property CaminhoBanco: string read FCaminhoBanco write setCaminhoBanco;
    property MenuAtivo: Boolean read FMenuAtivo write SetMenuAtivo;
    property Logotipo: string read FLogotipo write SetLogotipo;
    property MaxTempoReserva: Integer read FMaxTempoReserva write SetMaxTempoReserva;
    property CaminhoImagens: string read getCaminhoImagens;
  end;

  TUsuarios = record
  private
    FCodigo: Integer;
    FSenha: string;
    FLogin: string;
    FNome: string;
    FSenhaHash: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetLogin(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetSenha(const Value: string);
    procedure SetSenhaHash(const Value: string);
  public
    property Codigo: Integer read FCodigo write SetCodigo;
    property Login: string read FLogin write SetLogin;
    property Nome: string read FNome write SetNome;
    property Senha: string read FSenha write SetSenha;
    property SenhaHash: string read FSenhaHash write SetSenhaHash;
  end;

  TSessao = class
  strict private
    class var FInstance: TSessao;
  private
    FConfig: TConfig;
    FAutenticado: Boolean;
    FUser: TUsuarios;
    constructor Create;
    class procedure ReleaseInstance;
    function getConexao: TUniConnection;
  public
    class function Instance: TSessao;

    function Consulta(ASql: string): TUniQuery;
    function ExecSql(ASql: string): Boolean;

    property Conexao: TUniConnection read getConexao;
    property Config: TConfig read FConfig;
    property User: TUsuarios read FUser;
    property Autenticado: Boolean read FAutenticado write FAutenticado;
  end;

implementation

{ TSessao }

uses Utils.Message;

function TSessao.Consulta(ASql: string): TUniQuery;
begin
  if ASql = '' then
    raise Exception.Create('SQL Inválido!');

  Result := TUniQuery.Create(nil);
  Result.Connection := Conexao;

  Result.SQL.Text := ASql;

  try
    Result.Open;
  except
    on E: Exception do
      TMensagens.ShowMessage('Erro ao realizar a consulta SQL! Erro: ' + sLineBreak + E.Message, tmErro);
  end;
end;

constructor TSessao.Create;
begin
  inherited Create;
  FillChar(FConfig, SizeOf(FConfig), 0);
  FillChar(FUser, SizeOf(FUser), 0);
end;

function TSessao.ExecSql(ASql: string): Boolean;
var
  qry: TUniQuery;
begin
  Result := False;

  qry := TUniQuery.Create(nil);
  try
    qry.Connection := Conexao;
    qry.SQL.Text := ASql;

    try
      qry.ExecSQL;

      if qry.RowsAffected > 0 then
        Result := True;
    except
      on E: Exception do
        TMensagens.ShowMessage('Não foi possível executar o comando SQL! Erro: ' + sLineBreak + E.Message, tmErro);
    end;
  finally
    FreeAndNil(qry);
  end;
end;

function TSessao.getConexao: TUniConnection;
begin
  Result := DM.conexao;
end;

class function TSessao.Instance: TSessao;
begin
  if not Assigned(FInstance) then
    FInstance := TSessao.Create;

  Result := FInstance;
end;

class procedure TSessao.ReleaseInstance;
begin
  if Assigned(FInstance) then
    FInstance.Free;
end;

{ TConfig }

function TConfig.getCaminhoImagens: string;
begin
  Result := gsAppPath + 'Imagens\';
end;

procedure TConfig.setCaminhoBanco(const Value: string);
begin
  FCaminhoBanco := Value;
end;

procedure TConfig.SetLogotipo(const Value: string);
begin
  FLogotipo := Value;
end;

procedure TConfig.SetMaxTempoReserva(const Value: Integer);
begin
  FMaxTempoReserva := Value;
end;

procedure TConfig.SetMenuAtivo(const Value: Boolean);
begin
  FMenuAtivo := Value;
end;

procedure TConfig.setSenha(const Value: string);
begin
  FSenha := Value;
end;

procedure TConfig.setServidor(const Value: string);
begin
  FServidor := Value;
end;

procedure TConfig.setUsuario(const Value: string);
begin
  FUsuario := Value;
end;

{ TUsuarios }

procedure TUsuarios.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
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

procedure TUsuarios.SetSenhaHash(const Value: string);
begin
  FSenhaHash := Value;
end;

initialization

finalization
  TSessao.ReleaseInstance;

end.
