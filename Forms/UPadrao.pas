unit UPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDefault, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  RzTabs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvGlowButton, Utils.Helper,
  Vcl.Mask, RzEdit;

type
  TStatusTela = (stBrowse, stInsert, stEdit);

  TFPadrao = class(TFDefault)
    pnlConteudo: TRzPanel;
    pgc1: TRzPageControl;
    tsConsulta: TRzTabSheet;
    tsVisual: TRzTabSheet;
    pnl1: TRzPanel;
    grdConsulta: TAdvStringGrid;
    btnAdd: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnDel: TAdvGlowButton;
    btnRefresh: TAdvGlowButton;
    RzPanel1: TRzPanel;
    btnSave: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure pgc1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure btnDelClick(Sender: TObject);
    procedure grdConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FStatus: TStatusTela;
    procedure SetCharCase;
  public
    property Status: TStatusTela read FStatus write FStatus;
  end;

var
  FPadrao: TFPadrao;

implementation

{$R *.dfm}

uses Utils.Message;

procedure TFPadrao.btnCancelClick(Sender: TObject);
begin
  Status := stBrowse;
  pgc1.ActivePage := tsConsulta;
end;

procedure TFPadrao.btnDelClick(Sender: TObject);
begin
  if grdConsulta.IsEmpty then
    Abort;

  if TMensagens.ShowMessage('Confirma a exclusão do registro?', 'Atenção', tmQuestao, tbSimNao) = mrNo then
    Abort;
end;

procedure TFPadrao.btnEditClick(Sender: TObject);
begin
  if grdConsulta.IsEmpty then
    Abort;

  Status := stEdit;
  pgc1.ActivePage := tsVisual;
end;

procedure TFPadrao.btnAddClick(Sender: TObject);
begin
  Status := stInsert;
  pgc1.ActivePage := tsVisual;
end;

procedure TFPadrao.btnSaveClick(Sender: TObject);
begin
  Status := stBrowse;
  pgc1.ActivePage := tsConsulta;
  btnRefresh.Click;
end;

procedure TFPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  inherited;
end;

procedure TFPadrao.FormShow(Sender: TObject);
begin
  inherited;
//  SetCharCase;
  pgc1.ActivePageIndex := 0;

  Status := stBrowse;

  grdConsulta.SearchPanel.EditControl.Width   := 400;
  grdConsulta.SearchPanel.BackwardButton.Left := grdConsulta.SearchPanel.EditControl.Left + grdConsulta.SearchPanel.EditControl.Width + 10;
  grdConsulta.SearchPanel.ForwardButton.Left  := grdConsulta.SearchPanel.BackwardButton.Left + grdConsulta.SearchPanel.BackwardButton.Width + 10;
end;

procedure TFPadrao.grdConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    grdConsulta.SearchFooter.Visible := True;
end;

procedure TFPadrao.pgc1Changing(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
begin
  btnSave.Enabled := Status <> stBrowse;

  AllowChange := True;
end;

procedure TFPadrao.SetCharCase;
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[I].InheritsFrom(TRzEdit) then
      TRzEdit(Self.Components[I]).CharCase := ecUpperCase;
  end;
end;

end.
