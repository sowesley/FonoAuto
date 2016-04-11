unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDefault, Vcl.ExtCtrls, RzPanel, Uni, StrUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, IWSystem,
  cxContainer, cxEdit, cxTextEdit, dxGDIPlusClasses, Vcl.StdCtrls,
  AeroButtons, Utils.MD5, Utils.Message;

type
  TFLogin = class(TFDefault)
    pnlFundo: TRzPanel;
    grp1: TRzGroupBox;
    pnl1: TRzPanel;
    pnl2: TRzPanel;
    imgLock: TImage;
    pnl3: TRzPanel;
    edtLogin: TcxTextEdit;
    edtSenha: TcxTextEdit;
    btnConfirmar: TAeroButton;
    btnCancelar: TAeroButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

procedure TFLogin.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLogin.btnConfirmarClick(Sender: TObject);
var
  qry: TUniQuery;
  vSql: string;
  Senha: string;
  Login: string;
begin
  if edtLogin.Text = '' then
  begin
    TMensagens.ShowMessage('Informe o Login!', 'Atenção', tmAtencao, tbOk);
    edtLogin.SetFocus;
    Exit;
  end;

  if edtSenha.Text = '' then
  begin
    if TMensagens.ShowMessage('Senha em branco! Continuar assim mesmo?', 'Atenção', tmQuestao, tbSimNao) = mrNo then
    begin
      edtSenha.SetFocus;
      Exit;
    end;
  end;

  Senha := TMD5.Hash(edtSenha.Text);
  Login := AnsiLowerCase(edtLogin.Text);

  vSql := 'SELECT COUNT(*), ID, NOME ' + sLineBreak +
    'FROM USUARIOS ' + sLineBreak +
    'WHERE LOWER(LOGIN) = ' + QuotedStr(Login) + sLineBreak +
    '  AND UPPER(SENHA) = ' + QuotedStr(Senha) + sLineBreak +
    'GROUP BY ID, NOME';

  qry := Sessao.Consulta(vSql);
  try
    try
      if qry.IsEmpty then
        raise Exception.Create('Usuário e/ou Senha Inválido!');

      if qry.Fields[0].AsInteger = 1 then
      begin
        imgLock.Picture.LoadFromFile(gsAppPath + 'Imagens\Unlocked.png');
        Application.ProcessMessages;

        Sleep(500);

        Sessao.Autenticado    := True;
        Sessao.User.Codigo    := qry.FieldByName('ID').AsInteger;
        Sessao.User.Login     := Login;
        Sessao.User.Senha     := edtSenha.Text;
        Sessao.User.SenhaHash := Senha;
        Sessao.User.Nome      := qry.FieldByName('NOME').AsString;

        Close;
      end
      else
        raise Exception.Create('Não foi possível identificar o usuário informado!');
    except
      on E: Exception do
      begin
        TMensagens.ShowMessage(E.Message, 'Erro', tmErro);
        Abort;
      end;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  inherited;
  Sessao.Autenticado := False;
  imgLock.Picture.LoadFromFile(gsAppPath + 'Imagens\Locked.png');
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
  inherited;
  if DebugHook <> 0 then
  begin
    edtLogin.Text := 'sowesley';
    edtSenha.Text := 'cw260814';
    btnConfirmar.SetFocus;
  end;
end;

end.
