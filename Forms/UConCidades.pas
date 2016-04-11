unit UConCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConPadrao, Vcl.StdCtrls, Uni,
  JvExControls, JvGradient, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, AdvGlowButton, Vcl.Mask, RzEdit,
  JvGradientHeaderPanel, Vcl.ExtCtrls, RzPanel, NxColumns, NxColumnClasses,
  RzCmboBx;

type
  TFConCidades = class(TFConPadrao)
    colId: TNxTextColumn;
    colCidade: TNxTextColumn;
    colUF: TNxTextColumn;
    cbbUF: TRzComboBox;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbUFKeyPress(Sender: TObject; var Key: Char);
  private
    procedure setUF;
  public
    { Public declarations }
  end;

var
  FConCidades: TFConCidades;

implementation

{$R *.dfm}

uses UDefault, USessao, Utils.Consulta;

procedure TFConCidades.btnFiltroClick(Sender: TObject);
var
  qry: TUniQuery;
begin
  inherited;

  ParametroPesquisa := '';

  if cbbUF.Text <> '' then
    ParametroPesquisa := ParametroPesquisa + '  AND UF = ' + QuotedStr(cbbUF.Text) + sLineBreak;

  if Trim(edtDescricao.Text) <> '' then
    ParametroPesquisa := ParametroPesquisa + '  AND NOME LIKE ' + QuotedStr('%' + Trim(edtDescricao.Text) + '%') + sLineBreak;

  SQL := GeraSQLPadrao(cCidades);

  qry := TSessao.Instance.Consulta(SQL);
  try
    if qry.IsEmpty then
      Exit;

    qry.First;
    while not qry.Eof do
    begin
      grdConsulta.AddRow;

      grdConsulta.Cell[colId.Index, grdConsulta.LastAddedRow].AsString     := qry.FieldByName('ID').AsString;
      grdConsulta.Cell[colCidade.Index, grdConsulta.LastAddedRow].AsString := qry.FieldByName('NOME').AsString;
      grdConsulta.Cell[colUF.Index, grdConsulta.LastAddedRow].AsString     := qry.FieldByName('UF').AsString;

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
    FechaOcioso;
  end;
end;

procedure TFConCidades.cbbUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_DELETE, VK_BACK] then
    cbbUF.ItemIndex := -1;
end;

procedure TFConCidades.cbbUFKeyPress(Sender: TObject; var Key: Char);
begin
  edtDescricao.SetFocus;
end;

procedure TFConCidades.FormShow(Sender: TObject);
begin
  inherited;
  setUF;
  cbbUF.SetFocus;
end;

procedure TFConCidades.setUF;
var
  qry: TUniQuery;
begin
  cbbUF.Clear;

  qry := TSessao.Instance.Consulta('SELECT UF FROM CIDADES GROUP BY UF ORDER BY UF');
  try
    qry.First;
    while not qry.Eof do
    begin
      cbbUF.Add(qry.Fields[0].AsString);
      qry.Next;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

end.
