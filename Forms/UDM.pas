unit UDM;

interface

uses
  System.SysUtils, System.Classes, UniProvider, InterBaseUniProvider, System.IniFiles, IWSystem, Vcl.Forms, Winapi.Windows,
  Data.DB, DBAccess, Uni, ExeInfo;

type
  TDM = class(TDataModule)
    conexao: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    ExeInfo1: TExeInfo;
    procedure DataModuleCreate(Sender: TObject);
  private
    function CarregaConfig: Boolean;
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses USessao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.CarregaConfig: Boolean;
var
  Ini: TIniFile;
begin
  Result := True;
  try
    Ini := TIniFile.Create(gsAppPath + 'Config.ini');
    try
      TSessao.Instance.Config.Servidor     := Ini.ReadString('BD', 'Server', '');
      TSessao.Instance.Config.Usuario      := Ini.ReadString('BD', 'User', '');
      TSessao.Instance.Config.Senha        := Ini.ReadString('BD', 'Pass', '');
      TSessao.Instance.Config.CaminhoBanco := Ini.ReadString('BD', 'Database', '');

      TSessao.Instance.Config.MenuAtivo       := Ini.ReadInteger('Parametros', 'MenuAtivo', 0) = 1;
      TSessao.Instance.Config.Logotipo        := Ini.ReadString('Parametros', 'Logotipo', '');
      TSessao.Instance.Config.MaxTempoReserva := Ini.ReadInteger('Parametros', 'MaxTempoReserva', 1);
      TSessao.Instance.Config.ClinicaPadrao   := Ini.ReadString('Parametros', 'ClinicaPadrao', '1');
    finally
      FreeAndNil(Ini);
    end;

    if (TSessao.Instance.Config.Servidor.IsEmpty) or (TSessao.Instance.Config.Usuario.IsEmpty) or
       (TSessao.Instance.Config.Senha.IsEmpty) or (TSessao.Instance.Config.CaminhoBanco.IsEmpty) then
      raise Exception.Create('Não foi possível ler os parâmetros!');
  except
    on E: Exception do
    begin
      Application.MessageBox(PChar('Erro ao carregar os parâmetros: ' + E.Message), 'Erro', MB_ICONERROR);
      Result := False;
    end;
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if not CarregaConfig then
  begin
    Application.Terminate;
    Abort;
  end;

  conexao.Server   := TSessao.Instance.Config.Servidor;
  conexao.Username := TSessao.Instance.Config.Usuario;
  conexao.Password := TSessao.Instance.Config.Senha;
  conexao.Database := TSessao.Instance.Config.CaminhoBanco;

  conexao.Connected := True;
end;

end.
