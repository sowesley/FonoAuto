program FonoAuto;

uses
  Vcl.Forms,
  UDefault in 'Forms\UDefault.pas' {FDefault},
  UDM in 'Forms\UDM.pas' {DM: TDataModule},
  USessao in 'Classes\USessao.pas',
  Utils.MD5 in 'Classes\Utils.MD5.pas',
  UPadrao in 'Forms\UPadrao.pas' {FPadrao},
  UPrincipal in 'Forms\UPrincipal.pas' {FPrincipal},
  ULogin in 'Forms\ULogin.pas' {FLogin},
  UPacientes in 'Forms\UPacientes.pas' {FPacientes},
  Utils.Helper in 'Classes\Utils.Helper.pas',
  Utils.Util in 'Classes\Utils.Util.pas',
  Utils.Types in 'Classes\Utils.Types.pas',
  Utils.Message in 'Classes\Utils.Message.pas',
  obj.Pessoas in 'Classes\obj.Pessoas.pas',
  obj.Cidades in 'Classes\obj.Cidades.pas',
  obj.Paises in 'Classes\obj.Paises.pas',
  obj.Documentos in 'Classes\obj.Documentos.pas',
  UMensagem in 'Forms\UMensagem.pas' {FMensagem},
  UConPadrao in 'Forms\UConPadrao.pas' {FConPadrao},
  UConPacientes in 'Forms\UConPacientes.pas' {FConPacientes},
  Utils.Consulta in 'Classes\Utils.Consulta.pas',
  UConCidades in 'Forms\UConCidades.pas' {FConCidades},
  UConPaises in 'Forms\UConPaises.pas' {FConPaises},
  UExames in 'Forms\UExames.pas' {FExames},
  obj.Audiometria in 'Classes\obj.Audiometria.pas',
  UUsuarios in 'Forms\UUsuarios.pas' {FUsuarios},
  Obj.Usuarios in 'Classes\Obj.Usuarios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'WS Soluções - FonoAuto Agenda';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
