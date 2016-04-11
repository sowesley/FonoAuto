unit UUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Vcl.Grids, AdvObj, Uni, Utils.Helper, Obj.Usuarios,
  BaseGrid, AdvGrid, AdvGlowButton, RzTabs, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit;

type
  TFUsuarios = class(TFPadrao)
    lbl29: TLabel;
    edtId: TRzEdit;
    lbl2: TLabel;
    edtNome: TRzEdit;
    lbl1: TLabel;
    edtLogin: TRzEdit;
    lbl3: TLabel;
    edtSenha: TRzEdit;
    btnTrocaSenha: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure grdConsultaClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private const
    colId = 0;
    colNome = 1;
    colLogin = 2;
  private
    FUsuarioAtual: TUsuarios;

    procedure BuscaDados;
    function SalvarCadastro: Boolean;
    function ExcluirCadastro(ARegistro: TUsuarios): Boolean;
    procedure SetUsuarioAtual(const Value: TUsuarios);
    procedure LimparCampos;
  public
    property UsuarioAtual: TUsuarios read FUsuarioAtual write SetUsuarioAtual;
  end;

var
  FUsuarios: TFUsuarios;

implementation

{$R *.dfm}

uses UMensagem, Utils.Message, Utils.MD5;

procedure TFUsuarios.btnAddClick(Sender: TObject);
begin
  LimparCampos;

  if Assigned(FUsuarioAtual) then
    FreeAndNil(FUsuarioAtual);

  FUsuarioAtual := TUsuarios.Create;

  edtSenha.Enabled := True;

  inherited;

  if edtNome.CanFocus then
    edtNome.SetFocus;
end;

procedure TFUsuarios.btnDelClick(Sender: TObject);
var
  Registro: TUsuarios;
begin
  inherited;

  if not Assigned(grdConsulta.Objects[0, grdConsulta.Row]) then
    Exit;

  Registro := grdConsulta.GetObject<TUsuarios>(0, grdConsulta.Row);

  if ExcluirCadastro(Registro) then
    btnRefreshClick(btnRefresh);
end;

procedure TFUsuarios.btnEditClick(Sender: TObject);
begin
  edtSenha.Enabled := False;
  inherited;
end;

procedure TFUsuarios.btnRefreshClick(Sender: TObject);
begin
  inherited;
  BuscaDados;
end;

procedure TFUsuarios.btnSaveClick(Sender: TObject);
begin
  if SalvarCadastro then
    inherited;

end;

procedure TFUsuarios.BuscaDados;
var
  qry: TUniQuery;
  User: TUsuarios;
begin
  grdConsulta.ClearDataRows;

  qry := Sessao.Consulta('SELECT ID, NOME FROM USUARIOS ORDER BY NOME');
  try
    if qry.IsEmpty then
      Exit;

    qry.First;
    while not qry.Eof do
    begin
      User := TUsuarios.Montar(qry.FieldByName('ID').AsString);

      grdConsulta.IncRowCount;

      grdConsulta.Ints[colId, qry.RecNo]     := User.Id;
      grdConsulta.Cells[colNome, qry.RecNo]  := User.Nome;
      grdConsulta.Cells[colLogin, qry.RecNo] := User.Login;

      grdConsulta.Alignments[colId, qry.RecNo] := taCenter;

      grdConsulta.AutoSizeColumns(True, 5);

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

function TFUsuarios.ExcluirCadastro(ARegistro: TUsuarios): Boolean;
var
  vSql: string;
begin
  Result := False;

  if not Assigned(ARegistro) then
    Exit;

  vSql := 'DELETE FROM PESSOAS WHERE ID = ' + ARegistro.Id.ToString;

  Result := Sessao.ExecSql(vSql);
end;

procedure TFUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  grdConsulta.FormatGrid(['Id', 'Nome do Usuário', 'Login'], []);
  grdConsulta.AutoSizeColumns(True, 5);
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  BuscaDados;
end;

procedure TFUsuarios.grdConsultaClickCell(Sender: TObject; ARow,
  ACol: Integer);
var
  I: Integer;
begin
  if ARow < 1 then
    Exit;

  UsuarioAtual := grdConsulta.GetObject<TUsuarios>(0, ARow);

  if not Assigned(UsuarioAtual) then
  begin
    TMensagens.ShowMessage('Não foi possível identificar o registro!', 'Erro', tmErro);
    Exit;
  end;

  edtId.Text    := UsuarioAtual.Id.ToString;
  edtNome.Text  := UsuarioAtual.Nome;
  edtLogin.Text := UsuarioAtual.Login;
  edtSenha.Text := '******';
end;

procedure TFUsuarios.LimparCampos;
begin
  edtId.Clear;
  edtNome.Clear;
  edtLogin.Clear;
  edtSenha.Clear;
end;

function TFUsuarios.SalvarCadastro: Boolean;
var
  Script: TStringBuilder;
  vmsg: string;
begin
  Result := False;

  if Trim(edtNome.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe o Nome do Usuário!', tmAtencao);
    edtNome.SetFocus;
    Exit;
  end;

  if Trim(edtLogin.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe o login do usuário!', tmAtencao);
    edtLogin.Text;
    Exit;
  end;

  if Trim(edtSenha.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe a Senha do Usuário!', tmAtencao);
    edtSenha.SetFocus;
    Exit;
  end;

  UsuarioAtual.Id    := StrToIntDef(Trim(edtId.Text), -1);
  UsuarioAtual.Nome  := Trim(edtNome.Text);
  UsuarioAtual.Login := Trim(edtLogin.Text);

  if Status = stInsert then
    UsuarioAtual.Senha := TMD5.Hash(Trim(edtSenha.Text));

  Script := TStringBuilder.Create;
  try
    Script.Append('UPDATE OR INSERT INTO USUARIOS (ID, NOME, LOGIN, SENHA) ')
          .Append('VALUES ([ID], [NOME], [LOGIN], [SENHA]) ')
          .Append('MATCHING (ID); ');

    Script.Replace('[ID]', UsuarioAtual.Id.ToString);
    Script.Replace('[NOME]', UsuarioAtual.Nome.QuotedString);
    Script.Replace('[LOGIN]', UsuarioAtual.Login.QuotedString);
    Script.Replace('[SENHA]', UsuarioAtual.Senha.QuotedString);

    Result := Sessao.ExecSql(Script.ToString);

    if not Result then
    begin
      TMensagens.ShowMessage('Não foi possível salvar o cadastro!', tmErro);
      Exit;
    end;

    inherited;
  finally
    FreeAndNil(Script);
  end;
end;

procedure TFUsuarios.SetUsuarioAtual(const Value: TUsuarios);
begin
  FUsuarioAtual := Value;
end;

end.
