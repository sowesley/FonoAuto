unit UDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USessao, Vcl.StdCtrls, Utils.MD5;

type
  TFDefault = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    function getSessao: TSessao;
    { Private declarations }
  public
    property Sessao: TSessao read getSessao;
  end;

var
  FDefault: TFDefault;
  ResultadoPesquisa: string;
  ParametroPesquisa: string;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFDefault.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

function TFDefault.getSessao: TSessao;
begin
  Result := TSessao.Instance;
end;

end.
