unit UConPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConPadrao, Vcl.StdCtrls, Uni,
  JvExControls, JvGradient, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, AdvGlowButton, Vcl.Mask, RzEdit,
  JvGradientHeaderPanel, Vcl.ExtCtrls, RzPanel, NxColumns, NxColumnClasses;

type
  TFConPaises = class(TFConPadrao)
    colId: TNxTextColumn;
    colNome: TNxTextColumn;
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConPaises: TFConPaises;

implementation

{$R *.dfm}

uses UDefault, USessao, Utils.Consulta;

procedure TFConPaises.btnFiltroClick(Sender: TObject);
var
  qry: TUniQuery;
begin
  inherited;

  ParametroPesquisa := '';

  if Trim(edtDescricao.Text) <> '' then
    ParametroPesquisa := '  AND NOME LIKE ' + QuotedStr('%' + Trim(edtDescricao.Text) + '%') + sLineBreak;

  SQL := GeraSQLPadrao(cPaises);

  qry := TSessao.Instance.Consulta(SQL);
  try
    if qry.IsEmpty then
      Exit;

    qry.First;
    while not qry.Eof do
    begin
      grdConsulta.AddRow;

      grdConsulta.Cell[colId.Index, grdConsulta.LastAddedRow].AsString   := qry.FieldByName('CODIGO').AsString;
      grdConsulta.Cell[colNome.Index, grdConsulta.LastAddedRow].AsString := qry.FieldByName('NOME').AsString;

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
    FechaOcioso;
  end;
end;

end.
