unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDefault, UDM, ULogin, RzStatus, IWSystem,
  Vcl.ExtCtrls, RzPanel, AdvGlowButton, Vcl.StdCtrls, Utils.MD5,
  JvExExtCtrls, JvSecretPanel, dxGDIPlusClasses, RzLabel, cxPC,
  dxBarBuiltInMenu, cxClasses, dxTabbedMDI, UPacientes, UExames;

type
  TFPrincipal = class(TFDefault)
    tbm1: TdxTabbedMDIManager;
    pnlMenu: TRzPanel;
    pnlChevron: TRzPanel;
    imgChevronDown: TImage;
    imgChevronRight: TImage;
    lblMenu: TRzLabel;
    pnlBotoes: TRzPanel;
    btnPacientes: TAdvGlowButton;
    btnExames: TAdvGlowButton;
    pnlTitulo: TRzPanel;
    pnlClose: TRzPanel;
    btnClose: TAdvGlowButton;
    pnlLogo: TRzPanel;
    imgLogo: TImage;
    pnlNomePrograma: TRzPanel;
    sb1: TRzStatusBar;
    sp1: TRzStatusPane;
    spUsuario: TRzStatusPane;
    sp2: TRzStatusPane;
    spVersao: TRzStatusPane;
    spFill: TRzStatusPane;
    sp3: TRzStatusPane;
    spNomeUsuario: TRzStatusPane;
    hnt1: TBalloonHint;
    btnAgenda: TAdvGlowButton;
    btnAtender: TAdvGlowButton;
    btnMala: TAdvGlowButton;
    btnUsuarios: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure imgChevronDownClick(Sender: TObject);
    procedure imgChevronRightClick(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnAgendaClick(Sender: TObject);
    procedure btnAtenderClick(Sender: TObject);
    procedure btnExamesClick(Sender: TObject);
    procedure btnMalaClick(Sender: TObject);
    procedure lblMenuClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
  private
    procedure Autenticar;
    procedure ExibeMenu;
    procedure OcultaMenu;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UUsuarios;

procedure TFPrincipal.Autenticar;
var
  loForm: TFLogin;
begin
  loForm := TFLogin.Create(nil);
  try
    loForm.ShowModal;
  finally
    FreeAndNil(loForm);
  end;
end;

procedure TFPrincipal.btnAgendaClick(Sender: TObject);
begin
  OcultaMenu;
end;

procedure TFPrincipal.btnAtenderClick(Sender: TObject);
begin
  OcultaMenu;
end;

procedure TFPrincipal.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.btnExamesClick(Sender: TObject);
begin
  FExames := TFExames.Create(Self);
  FExames.Show;

  OcultaMenu;
end;

procedure TFPrincipal.btnMalaClick(Sender: TObject);
begin
  OcultaMenu;
end;

procedure TFPrincipal.btnPacientesClick(Sender: TObject);
begin
  FPacientes := TFPacientes.Create(Self);
  FPacientes.Show;

  OcultaMenu;
end;

procedure TFPrincipal.btnUsuariosClick(Sender: TObject);
begin
  FUsuarios := TFUsuarios.Create(Self);
  FUsuarios.Show;
end;

procedure TFPrincipal.ExibeMenu;
begin
  pnlMenu.Width           := 200;
  pnlChevron.Align        := alTop;
  imgChevronDown.Align    := alRight;
  imgChevronDown.Visible  := True;
  imgChevronRight.Visible := False;
  lblMenu.Angle           := 0;
  lblMenu.Font.Color      := clBlack;

  AnimateWindow(pnlMenu.Handle, 200, AW_HOR_POSITIVE OR AW_SLIDE);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  Aux: string;
begin
  inherited;
  WindowState      := wsMaximized;
  Caption          := DM.ExeInfo1.ProductName;
  spVersao.Caption := DM.ExeInfo1.FileVersion;

  Aux := ExtractFileName(Sessao.Config.CaminhoBanco);
  Aux := StringReplace(Aux, ExtractFileExt(Aux), '', [rfReplaceAll, rfIgnoreCase]);
  Aux := 'FonoAuto - Licenciado para: ' + Aux;

  pnlNomePrograma.Caption := Aux;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  Autenticar;

  if not Sessao.Autenticado then
  begin
    Application.Terminate;
    Abort;
  end;

  spUsuario.Caption     := Sessao.User.Login;
  spNomeUsuario.Caption := Sessao.User.Nome;

  if not Sessao.Config.Logotipo.IsEmpty then
    imgLogo.Picture.LoadFromFile(Sessao.Config.CaminhoImagens + Sessao.Config.Logotipo);

  if Sessao.Config.MenuAtivo then
    ExibeMenu
  else
    OcultaMenu;
end;

procedure TFPrincipal.imgChevronDownClick(Sender: TObject);
begin
  OcultaMenu;
end;

procedure TFPrincipal.imgChevronRightClick(Sender: TObject);
begin
  ExibeMenu;
end;

procedure TFPrincipal.lblMenuClick(Sender: TObject);
begin
  if imgChevronRight.Visible then
    ExibeMenu
  else
  if imgChevronDown.Visible then
    OcultaMenu;
end;

procedure TFPrincipal.OcultaMenu;
begin
  pnlMenu.Width           := 27;
  pnlChevron.Align        := alRight;
  imgChevronRight.Align   := alTop;
  imgChevronDown.Visible  := False;
  imgChevronRight.Visible := True;
  lblMenu.Angle           := 90;
  lblMenu.Font.Color      := clGray;
end;

end.
