unit UConPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, JvExControls, JvGradientHeaderPanel, Vcl.ExtCtrls,
  RzPanel, JvGradient, UDefault, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid;

type
  TControlHelper = class Helper for TControl
  public
    procedure AlignCenterCenter;
  end;

  TFConPadrao = class(TFDefault)
    RzPanel1: TRzPanel;
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    edtDescricao: TRzEdit;
    btnFiltro: TAdvGlowButton;
    RzPanel2: TRzPanel;
    JvGradientHeaderPanel2: TJvGradientHeaderPanel;
    RzPanel3: TRzPanel;
    btnSelecionar: TAdvGlowButton;
    pnlOcioso: TRzPanel;
    gdt1: TJvGradient;
    lbl8: TLabel;
    grdConsulta: TNextGrid;
    procedure btnSelecionarClick(Sender: TObject);
    procedure grdConsultaDblClick(Sender: TObject);
    procedure grdConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFiltroClick(Sender: TObject);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
  private
    FColunaRetorno: Integer;
    FSQL: string;
    procedure SetSQL(const Value: string);
  protected
    procedure Ocioso(AMsg: string);
    procedure FechaOcioso;
  public
    property ColunaRetorno: Integer read FColunaRetorno write FColunaRetorno;
    property SQL: string read FSQL write SetSQL;
  end;

var
  FConPadrao: TFConPadrao;

implementation

{$R *.dfm}

procedure TFConPadrao.btnFiltroClick(Sender: TObject);
begin
  grdConsulta.ClearRows;

  Ocioso('Aguarde! Filtrando registros...');
end;

procedure TFConPadrao.btnSelecionarClick(Sender: TObject);
begin
  if grdConsulta.RowCount < 1 then
    Exit;

  if grdConsulta.SelectedRow < 0 then
    Exit;

  ResultadoPesquisa := grdConsulta.Cell[ColunaRetorno, grdConsulta.SelectedRow].AsString;
  Close;
end;

procedure TFConPadrao.edtDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnFiltro.Click;
    grdConsulta.SetFocus;
  end;
end;

procedure TFConPadrao.FechaOcioso;
begin
  pnlOcioso.Hide;
end;

procedure TFConPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFConPadrao.FormShow(Sender: TObject);
begin
  edtDescricao.SetFocus;
end;

procedure TFConPadrao.grdConsultaDblClick(Sender: TObject);
begin
  btnSelecionarClick(Sender);
end;

procedure TFConPadrao.grdConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnSelecionarClick(Sender);
end;

procedure TFConPadrao.Ocioso(AMsg: string);
begin
  lbl8.Caption := AMsg;
  pnlOcioso.AlignCenterCenter;

  if not pnlOcioso.Visible then
  begin
    pnlOcioso.Show;
    Application.ProcessMessages;
  end;
end;

procedure TFConPadrao.SetSQL(const Value: string);
begin
  FSQL := Value;
end;

{ TControlHelper }

procedure TControlHelper.AlignCenterCenter;
var
  L, T: Integer;
begin
  if Assigned(Self.Parent) then
  begin
    T := Trunc((Self.Parent.Height / 2) - (Self.Height / 2));
    L := Trunc((Self.Parent.Width / 2) - (Self.Width / 2));

    Self.Left := L;
    Self.Top := T;
  end;
end;

end.
