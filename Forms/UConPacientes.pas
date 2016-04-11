unit UConPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConPadrao, Vcl.StdCtrls, Uni,
  JvExControls, JvGradient, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, AdvGlowButton, Vcl.Mask, RzEdit,
  JvGradientHeaderPanel, Vcl.ExtCtrls, RzPanel, NxColumnClasses, NxColumns,
  USessao, UDefault;

type
  TFConPacientes = class(TFConPadrao)
    colId: TNxNumberColumn;
    colNome: TNxTextColumn;
    colSexo: TNxTextColumn;
    colNascimento: TNxDateColumn;
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConPacientes: TFConPacientes;

implementation

{$R *.dfm}

uses Utils.Consulta;

procedure TFConPacientes.btnFiltroClick(Sender: TObject);
var
  qry: TUniQuery;
begin
  inherited;

  if Trim(edtDescricao.Text) <> '' then
    ParametroPesquisa := '  AND P.NOME LIKE ' + QuotedStr('%' + Trim(edtDescricao.Text) + '%') + sLineBreak
  else
    ParametroPesquisa := '';

  SQL := GeraSQLPadrao(cPacientes);

  qry := TSessao.Instance.Consulta(SQL);
  try
    if qry.IsEmpty then
      Exit;

    qry.First;
    while not qry.Eof do
    begin
      grdConsulta.AddRow;

      grdConsulta.Cell[colId.Index, grdConsulta.LastAddedRow].AsInteger          := qry.FieldByName('ID').AsInteger;
      grdConsulta.Cell[colNome.Index, grdConsulta.LastAddedRow].AsString         := qry.FieldByName('NOME').AsString;
      grdConsulta.Cell[colSexo.Index, grdConsulta.LastAddedRow].AsString         := qry.FieldByName('SEXO').AsString;
      grdConsulta.Cell[colNascimento.Index, grdConsulta.LastAddedRow].AsDateTime := qry.FieldByName('NASCIMENTO').AsDateTime;

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
    FechaOcioso;
  end;
end;

end.
