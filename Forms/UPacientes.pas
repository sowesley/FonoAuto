unit UPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Vcl.StdCtrls, Uni, StrUtils, Math,
  Vcl.ExtCtrls, RzPanel, Utils.Helper, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, AdvGlowButton, RzTabs, obj.Pessoas, Utils.Util, Vcl.Mask, RzEdit,
  JvExMask, JvToolEdit, RzBtnEdt, RzCmboBx, obj.Documentos, JvExControls,
  JvGradientHeaderPanel, RzButton, obj.Paises, Utils.Message,
  Utils.Consulta;

type
  TFPacientes = class(TFPadrao)
    pgc2: TRzPageControl;
    tsFichaBasica: TRzTabSheet;
    tsComplemento: TRzTabSheet;
    grp1: TRzGroupBox;
    grp2: TRzGroupBox;
    lbl2: TLabel;
    edtNome: TRzEdit;
    lbl1: TLabel;
    edtApelido: TRzEdit;
    lbl3: TLabel;
    edtNascimento: TJvDateEdit;
    lbl4: TLabel;
    edtIdade: TRzEdit;
    lbl5: TLabel;
    edtNatCodigo: TRzButtonEdit;
    edtNaturalidade: TRzEdit;
    edtNatUF: TRzEdit;
    lbl6: TLabel;
    edtNacionalidade: TRzEdit;
    lbl7: TLabel;
    edtPaiCod: TRzButtonEdit;
    edtNomePai: TRzEdit;
    lbl8: TLabel;
    edtMaeCod: TRzButtonEdit;
    edtNomeMae: TRzEdit;
    grp3: TRzGroupBox;
    mmoAnotacoes: TRzMemo;
    lbl9: TLabel;
    edtEndereco: TRzEdit;
    lbl10: TLabel;
    edtNumero: TRzEdit;
    lbl11: TLabel;
    edtComplemento: TRzEdit;
    edtBairro: TRzEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    edtReferencia: TRzEdit;
    lbl14: TLabel;
    edtCidCod: TRzButtonEdit;
    edtCidadeNome: TRzEdit;
    edtCidadeUF: TRzEdit;
    lbl15: TLabel;
    edtTelefone: TRzEdit;
    lbl16: TLabel;
    edtCelular: TRzEdit;
    lbl17: TLabel;
    edtEmail: TRzEdit;
    grp4: TRzGroupBox;
    lbl18: TLabel;
    edtResponsavel: TRzEdit;
    lbl19: TLabel;
    edtFoneContato: TRzEdit;
    edtCEP: TRzEdit;
    lbl20: TLabel;
    lbl21: TLabel;
    edtPaisCod: TRzButtonEdit;
    edtNomePais: TRzEdit;
    lbl22: TLabel;
    cbbSexo: TRzComboBox;
    hdrNomePaciente: TJvGradientHeaderPanel;
    grp5: TRzGroupBox;
    grdDocumentos: TAdvStringGrid;
    grp6: TRzGroupBox;
    grdSessoes: TAdvStringGrid;
    pnlBtnsDoc: TRzPanel;
    btnAddDoc: TAdvGlowButton;
    btnDelDoc: TAdvGlowButton;
    btnEditDoc: TAdvGlowButton;
    pnlDocs: TRzPanel;
    pnl2: TRzPanel;
    btnSaveDoc: TAdvGlowButton;
    btnCancelDoc: TAdvGlowButton;
    lbl23: TLabel;
    cbbTipoDoc: TRzComboBox;
    lbl24: TLabel;
    edtNumDoc: TRzEdit;
    lbl25: TLabel;
    cbbEmissor: TRzComboBox;
    lbl26: TLabel;
    edtEmissao: TJvDateEdit;
    lbl27: TLabel;
    cbbPaisDoc: TRzComboBox;
    lbl28: TLabel;
    edtUFDoc: TRzEdit;
    edtId: TRzEdit;
    lbl29: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure grdConsultaClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnAddClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure btnAddDocClick(Sender: TObject);
    procedure grdDocumentosClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnEditDocClick(Sender: TObject);
    procedure btnCancelDocClick(Sender: TObject);
    procedure btnSaveDocClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDelDocClick(Sender: TObject);
    procedure edtNascimentoExit(Sender: TObject);
    procedure edtPaiCodButtonClick(Sender: TObject);
    procedure edtPaiCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtPaiCodExit(Sender: TObject);
    procedure edtPaiCodEnter(Sender: TObject);
    procedure edtMaeCodButtonClick(Sender: TObject);
    procedure edtMaeCodExit(Sender: TObject);
    procedure edtMaeCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtNatCodigoButtonClick(Sender: TObject);
    procedure edtNatCodigoExit(Sender: TObject);
    procedure edtNatCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtCidCodExit(Sender: TObject);
    procedure edtCidCodButtonClick(Sender: TObject);
    procedure edtPaisCodButtonClick(Sender: TObject);
    procedure edtPaisCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtPaisCodExit(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    FPessoaAtual: TPessoa;
    FStatusDoc: TStatusTela;
    procedure BuscaDados;
    procedure SetPaises;
    procedure LimparCampos;
    procedure LimpaCamposDoc;
    procedure SetPessoaAtual(const Value: TPessoa);
    function SalvarCadastro(AEditarImediatamente: Boolean = False): Boolean;
    procedure SalvarDocumento(ADoc: TDocumento);
    procedure ExibeDocumentos;
    procedure SetStatusDoc(const Value: TStatusTela);
    function ExcluirCadastro(APessoa: TPessoa): Boolean;
  public
    property PessoaAtual: TPessoa read FPessoaAtual write SetPessoaAtual;
    property StatusDoc: TStatusTela read FStatusDoc write SetStatusDoc;
  end;

var
  FPacientes: TFPacientes;

implementation

{$R *.dfm}

uses obj.Cidades;

procedure TFPacientes.btnCancelClick(Sender: TObject);
begin
  pnlBtnsDoc.Enabled := False;
  inherited;
end;

procedure TFPacientes.btnCancelDocClick(Sender: TObject);
begin
  LimpaCamposDoc;
  pnlDocs.Enabled := False;
  pnlBtnsDoc.Enabled := True;
  StatusDoc       := stBrowse;
  grdDocumentosClickCell(grdDocumentos, grdDocumentos.Row, grdDocumentos.Col);
end;

procedure TFPacientes.btnDelClick(Sender: TObject);
var
  Registro: TPessoa;
begin
  inherited;

  if not Assigned(grdConsulta.Objects[0, grdConsulta.Row]) then
    Exit;

  Registro := grdConsulta.GetObject<TPessoa>(0, grdConsulta.Row);

  if ExcluirCadastro(Registro) then
    btnRefreshClick(btnRefresh);
end;

procedure TFPacientes.btnDelDocClick(Sender: TObject);
var
  Doc: TDocumento;
  vSql: string;
begin
  if grdDocumentos.IsEmpty then
    Exit;

  if grdDocumentos.Row < 1 then
    Exit;

  if TMensagens.ShowMessage('Confirma a exclusão do documento? Este processo não pode ser revertido!', tmQuestao, tbSimNao) = mrNo then
    Exit;

  Doc := grdDocumentos.GetObject<TDocumento>(0, grdDocumentos.Row);

  if not Assigned(Doc) then
  begin
    TMensagens.ShowMessage('Erro ao identificar o documento!', tmErro);
    Exit;
  end;

  vSql := 'DELETE FROM DOCUMENTOS ' + sLineBreak +
    'WHERE ID_PESSOA = ' + Doc.IdPessoa.ToString + sLineBreak +
    '  AND SEQ = ' + Doc.Seq.ToString;

  if Sessao.ExecSql(vSql) then
  begin
    TMensagens.ShowMessage('Registro excluído com sucesso!', tmSucesso);
    PessoaAtual.LimparDocumentos;
    ExibeDocumentos;
  end
  else
    TMensagens.ShowMessage('Erro ao excluir o registro!', tmErro);
end;

procedure TFPacientes.btnAddClick(Sender: TObject);
begin
  LimparCampos;

  pgc2.ActivePageIndex := 0;
  pnlBtnsDoc.Enabled   := True;

  if Assigned(FPessoaAtual) then
    FreeAndNil(FPessoaAtual);

  FPessoaAtual := TPessoa.Create;

  inherited;

  if edtNome.CanFocus then
    edtNome.SetFocus;
end;

procedure TFPacientes.btnAddDocClick(Sender: TObject);
begin
  LimpaCamposDoc;

  pnlDocs.Enabled := True;
  pnlBtnsDoc.Enabled := False;
  StatusDoc       := stInsert;

  if cbbTipoDoc.CanFocus then
    cbbTipoDoc.SetFocus;
end;

procedure TFPacientes.btnEditClick(Sender: TObject);
begin
  pgc2.ActivePageIndex := 0;
  pnlBtnsDoc.Enabled   := True;

  inherited;
end;

procedure TFPacientes.btnEditDocClick(Sender: TObject);
begin
  if grdDocumentos.IsEmpty then
    Exit;

  if grdDocumentos.Row < 1 then
    Exit;

  pnlDocs.Enabled := True;
  pnlBtnsDoc.Enabled := False;
  StatusDoc       := stEdit;

  if cbbTipoDoc.CanFocus then
    cbbTipoDoc.SetFocus;
end;

procedure TFPacientes.btnRefreshClick(Sender: TObject);
begin
  inherited;
  BuscaDados;
end;

procedure TFPacientes.btnSaveClick(Sender: TObject);
begin
  if SalvarCadastro then
  begin
    pnlBtnsDoc.Enabled := False;
    inherited;
  end;
end;

procedure TFPacientes.btnSaveDocClick(Sender: TObject);
var
  Doc: TDocumento;
  vId: Integer;
begin
  if cbbEmissor.ItemIndex < 0 then
  begin
    TMensagens.ShowMessage('Informe o Órgão Emissor do documento!', tmAtencao);
    cbbEmissor.SetFocus;
    Exit;
  end;

  if cbbPaisDoc.ItemIndex < 0 then
  begin
    TMensagens.ShowMessage('Informe o País de emissão do documento!', tmAtencao);
    cbbPaisDoc.SetFocus;
    Exit;
  end;

  if StatusDoc = stInsert then
    vId := TDocumento.RetornaID(Doc.IdPessoa.ToString)
  else
    vId := grdDocumentos.GetObject<TDocumento>(0, grdDocumentos.Row).Seq;

  Doc := TDocumento.Create;

  Doc.IdPessoa    := PessoaAtual.Id;
  Doc.Seq         := vId;
  Doc.Tipo        := cbbTipoDoc.Values[cbbTipoDoc.ItemIndex].ToInteger;
  Doc.Numero      := TUteis.SomenteNumeros(edtNumDoc.Text);
  Doc.Emissor     := cbbEmissor.Values[cbbEmissor.ItemIndex].ToInteger;
  Doc.DataEmissao := edtEmissao.Date;
  Doc.IdPais      := cbbPaisDoc.getObject<TPais>.Codigo;
  Doc.UF          := Trim(edtUFDoc.Text);
  Doc.IdUsuario   := Sessao.User.Codigo;

  if Status = stInsert then
  begin
    if TMensagens.ShowMessage('Para incluir documentos, o cadastro precisa ser salvo. Deseja salvar agora?', 'Atenção', tmQuestao, tbSimNao) = mrNo then
      Exit;

    if not SalvarCadastro(True) then
      Exit;
  end;

  SalvarDocumento(Doc);
  pnlDocs.Enabled := False;
  StatusDoc := stBrowse;
end;

procedure TFPacientes.BuscaDados;
var
  qry: TUniQuery;
  Pessoa: TPessoa;
begin
  grdConsulta.ClearDataRows;

  qry := Sessao.Consulta('SELECT ID, NOME ' + sLineBreak +
    'FROM PESSOAS ' + sLineBreak +
    'ORDER BY NOME');

  try
    if qry.IsEmpty then
      Exit;

    qry.First;
    while not qry.Eof do
    begin
      Pessoa := TPessoa.Montar(qry.FieldByName('ID').AsString);

      grdConsulta.IncRowCount;

      grdConsulta.Objects[0, qry.RecNo] := Pessoa;
      grdConsulta.Cells[0, qry.RecNo]   := FormatFloat('000', Pessoa.Id);
      grdConsulta.Cells[1, qry.RecNo]   := Pessoa.Nome;
      grdConsulta.Cells[2, qry.RecNo]   := Pessoa.Apelido;
      grdConsulta.Cells[3, qry.RecNo]   := TUteis.FormataTelefone(Pessoa.Telefone);
      grdConsulta.Cells[4, qry.RecNo]   := TUteis.FormataTelefone(Pessoa.Celular);
      grdConsulta.Cells[5, qry.RecNo]   := IfThen(not Pessoa.IdCidade.IsEmpty, Pessoa.CidadeUF, '-');
      grdConsulta.Cells[6, qry.RecNo]   := IfThen(Pessoa.Nascimento > 0, FormatDateTime(FormatSettings.ShortDateFormat, Pessoa.Nascimento), '-');
      grdConsulta.Cells[7, qry.RecNo]   := Pessoa.Idade;
      grdConsulta.Cells[8, qry.RecNo]   := IfThen(Pessoa.IdMae > 0, Pessoa.Mae.Nome, '-');
      grdConsulta.Cells[9, qry.RecNo]   := IfThen(Pessoa.IdPai > 0, Pessoa.Pai.Nome, '-');

      grdConsulta.Alignments[0, qry.RecNo] := taCenter;
      grdConsulta.Alignments[2, qry.RecNo] := taCenter;
      grdConsulta.Alignments[3, qry.RecNo] := taCenter;
      grdConsulta.Alignments[4, qry.RecNo] := taCenter;
      grdConsulta.Alignments[6, qry.RecNo] := taCenter;
      grdConsulta.Alignments[7, qry.RecNo] := taCenter;

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TFPacientes.edtCidCodButtonClick(Sender: TObject);
begin
  edtCidCod.Text := Consultar(cCidades);
  if edtPaisCod.CanFocus then
    edtPaisCod.SetFocus;
end;

procedure TFPacientes.edtCidCodExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtCidCod.Text) = '' then
  begin
    edtCidadeNome.Clear;
    edtCidadeUF.Clear;
  end
  else
  begin
    Key := #13;
    edtCidCodKeyPress(edtCidCod, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFPacientes.edtCidCodKeyPress(Sender: TObject; var Key: Char);
var
  Cidade: TCidade;
begin
  if Key = #13 then
  begin
    if Trim(edtCidCod.Text) <> '' then
    begin
      Cidade := TCidade.Montar(Trim(edtCidCod.Text));

      if Assigned(Cidade) then
      begin
        edtCidadeNome.Text := Cidade.Cidade;
        edtCidadeUF.Text   := Cidade.UF;
        FreeAndNil(Cidade);
      end;

      edtPaisCod.SetFocus;
    end
    else
      edtCidCodButtonClick(edtCidCod);
  end;
end;

procedure TFPacientes.edtMaeCodButtonClick(Sender: TObject);
begin
  edtMaeCod.Text := Consultar(cPacientes);
  if mmoAnotacoes.CanFocus then
    mmoAnotacoes.SetFocus;
end;

procedure TFPacientes.edtMaeCodExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtMaeCod.Text) = '' then
    edtNomeMae.Clear
  else
  begin
    Key := #13;
    edtMaeCodKeyPress(edtMaeCod, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFPacientes.edtMaeCodKeyPress(Sender: TObject; var Key: Char);
var
  Mae: TPessoa;
begin
  if Key = #13 then
  begin
    if Trim(edtMaeCod.Text) <> '' then
    begin
      Mae := TPessoa.Montar(Trim(edtMaeCod.Text));

      if Assigned(Mae) then
      begin
        edtNomeMae.Text := Mae.Nome;
        FreeAndNil(Mae);
      end;

      mmoAnotacoes.SetFocus;
    end
    else
      edtMaeCodButtonClick(edtMaeCod);
  end;
end;

procedure TFPacientes.edtNascimentoExit(Sender: TObject);
begin
  if edtNascimento.Date = 0 then
  begin
    edtIdade.Clear;
    Exit;
  end;

  edtIdade.Text := Idade(edtNascimento.Date, False, True);
end;

procedure TFPacientes.edtNatCodigoButtonClick(Sender: TObject);
begin
  edtNatCodigo.Text := Consultar(cCidades);
  if edtNacionalidade.CanFocus then
    edtNacionalidade.SetFocus;
end;

procedure TFPacientes.edtNatCodigoExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtNatCodigo.Text) = '' then
  begin
    edtNaturalidade.Clear;
    edtNatUF.Clear;
  end
  else
  begin
    Key := #13;
    edtNatCodigoKeyPress(edtNatCodigo, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFPacientes.edtNatCodigoKeyPress(Sender: TObject; var Key: Char);
var
  Cidade: TCidade;
begin
  if Key = #13 then
  begin
    if Trim(edtNatCodigo.Text) <> '' then
    begin
      Cidade := TCidade.Montar(Trim(edtNatCodigo.Text));

      if Assigned(Cidade) then
      begin
        edtNaturalidade.Text := Cidade.Cidade;
        edtNatUF.Text        := Cidade.UF;
        FreeAndNil(Cidade);
      end;

      edtNacionalidade.SetFocus;
    end
    else
      edtNatCodigoButtonClick(edtNatCodigo);
  end;
end;

procedure TFPacientes.edtNomeChange(Sender: TObject);
begin
  hdrNomePaciente.LabelCaption := edtNome.Text;
end;

procedure TFPacientes.edtPaiCodButtonClick(Sender: TObject);
begin
  edtPaiCod.Text := Consultar(cPacientes);
  if edtMaeCod.CanFocus then
    edtMaeCod.SetFocus;
end;

procedure TFPacientes.edtPaiCodEnter(Sender: TObject);
begin
  Self.KeyPreview := False;
end;

procedure TFPacientes.edtPaiCodExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtPaiCod.Text) = '' then
    edtNomePai.Clear
  else
  begin
    Key := #13;
    edtPaiCodKeyPress(edtPaiCod, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFPacientes.edtPaiCodKeyPress(Sender: TObject; var Key: Char);
var
  Pai: TPessoa;
begin
  if Key = #13 then
  begin
    if Trim(edtPaiCod.Text) <> '' then
    begin
      Pai := TPessoa.Montar(Trim(edtPaiCod.Text));

      if Assigned(Pai) then
      begin
        edtNomePai.Text := Pai.Nome;
        FreeAndNil(Pai);
      end;

      edtMaeCod.SetFocus;
    end
    else
      edtPaiCodButtonClick(edtPaiCod);
  end;
end;

procedure TFPacientes.edtPaisCodButtonClick(Sender: TObject);
begin
  edtPaisCod.Text := Consultar(cPaises);
  if edtCEP.CanFocus then
    edtCEP.SetFocus;
end;

procedure TFPacientes.edtPaisCodExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtPaisCod.Text) = '' then
    edtNomePais.Clear
  else
  begin
    Key := #13;
    edtPaisCodKeyPress(edtPaisCod, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFPacientes.edtPaisCodKeyPress(Sender: TObject; var Key: Char);
var
  Pais: TPais;
begin
  if Key = #13 then
  begin
    if Trim(edtPaisCod.Text) <> '' then
    begin
      Pais := TPais.Montar(Trim(edtPaisCod.Text));

      if Assigned(Pais) then
      begin
        edtNomePais.Text := Pais.Pais;
        FreeAndNil(Pais);
      end;

      edtCEP.SetFocus;
    end
    else
      edtPaisCodButtonClick(edtPaisCod);
  end;
end;

procedure TFPacientes.FormCreate(Sender: TObject);
begin
  inherited;
  grdConsulta.FormatGrid(['Id', 'Nome Completo', 'Apelido', 'Telefone', 'Celular', 'Cidade', 'Nascimento', 'Idade', 'Nome da Mãe', 'Nome do Pai'],
                         [ 50 ,       250      ,    140   ,     120   ,    120   ,    180  ,     80      ,   100  ,      250     ,      250     ]);

  grdDocumentos.FormatGrid(['Seq', 'Tipo do Documento', 'Número', 'Órgão Emissor', 'Emissão', 'País', 'UF'],
                           [  50 ,          150       ,    100  ,       100      ,     80   ,   80  ,  50 ]);
end;

procedure TFPacientes.FormShow(Sender: TObject);
begin
  inherited;

  pgc2.ActivePageIndex := 0;

  SetPaises;

  BuscaDados;

  grdConsultaClickCell(grdConsulta, 1, 0);
end;

procedure TFPacientes.grdConsultaClickCell(Sender: TObject; ARow, ACol: Integer);
var
  I: Integer;
begin
  grdDocumentos.ClearDataRows;
//  grdSessoes.ClearDataRows;

  pgc2.ActivePageIndex := 0;

  pnlBtnsDoc.Enabled := False;

  if ARow < 1 then
    Exit;

  PessoaAtual := grdConsulta.GetObject<TPessoa>(0, ARow);

  if not Assigned(PessoaAtual) then
  begin
    TMensagens.ShowMessage('Não foi possível identificar o registro!', 'Erro', tmErro);
    Exit;
  end;

  edtId.Text            := PessoaAtual.Id.ToString;
  edtNome.Text          := PessoaAtual.Nome;
  edtApelido.Text       := PessoaAtual.Apelido;
  edtNascimento.Date    := PessoaAtual.Nascimento;
  edtIdade.Text         := PessoaAtual.Idade;
  edtNatCodigo.Text     := PessoaAtual.IdNaturalidade;
  edtNaturalidade.Text  := PessoaAtual.Naturalidade.Cidade;
  edtNatUF.Text         := PessoaAtual.Naturalidade.UF;
  edtNacionalidade.Text := PessoaAtual.Nacionalidade;
  edtPaiCod.Text        := IfThen(PessoaAtual.IdPai > 0, IntToStr(PessoaAtual.IdPai));
  edtNomePai.Text       := PessoaAtual.Pai.Nome;
  edtMaeCod.Text        := IfThen(PessoaAtual.IdMae > 0, IntToStr(PessoaAtual.IdMae));
  edtNomeMae.Text       := PessoaAtual.Mae.Nome;
  mmoAnotacoes.Text     := PessoaAtual.Anotacoes;
  edtEndereco.Text      := PessoaAtual.Endereco;
  edtNumero.Text        := PessoaAtual.Numero;
  edtComplemento.Text   := PessoaAtual.Complemento;
  edtReferencia.Text    := PessoaAtual.Referencia;
  edtBairro.Text        := PessoaAtual.Bairro;
  edtCidCod.Text        := PessoaAtual.IdCidade;
  edtCidadeNome.Text    := PessoaAtual.Cidade.Cidade;
  edtCidadeUF.Text      := PessoaAtual.Cidade.UF;
  edtPaisCod.Text       := PessoaAtual.IdPais;
  edtNomePais.Text      := PessoaAtual.PaisOrigem.Pais;
  edtCEP.Text           := PessoaAtual.CEP;
  edtTelefone.Text      := PessoaAtual.Telefone;
  edtCelular.Text       := PessoaAtual.Celular;
  edtEmail.Text         := PessoaAtual.Email;
  edtResponsavel.Text   := PessoaAtual.Responsavel;
  edtFoneContato.Text   := PessoaAtual.Contato;

  hdrNomePaciente.LabelCaption := PessoaAtual.Nome;

  for I := 0 to cbbSexo.Items.Count -1 do
  begin
    if cbbSexo.Values[I] = PessoaAtual.Sexo then
    begin
      cbbSexo.ItemIndex := I;
      Break;
    end;
  end;

  if PessoaAtual.Documentos.Count = 0 then
    Exit;

  ExibeDocumentos;
end;

procedure TFPacientes.grdDocumentosClickCell(Sender: TObject; ARow, ACol: Integer);
var
  Doc: TDocumento;
  I: Integer;
begin
  if ARow < 1 then
    Exit;

  Doc := grdDocumentos.GetObject<TDocumento>(0, ARow);

  edtNumDoc.Text  := Doc.Numero;
  edtEmissao.Date := Doc.DataEmissao;
  edtUFDoc.Text   := Doc.UF;

  for I := 0 to cbbTipoDoc.Count -1 do
  begin
    if cbbTipoDoc.Values[I] = Doc.Tipo.ToString then
    begin
      cbbTipoDoc.ItemIndex := I;
      Break;
    end;
  end;

  for I := 0 to cbbEmissor.Count -1 do
  begin
    if cbbEmissor.Values[I] = Doc.Emissor.ToString then
    begin
      cbbEmissor.ItemIndex := I;
      Break;
    end;
  end;

  for I := 0 to cbbPaisDoc.Count -1 do
  begin
    if cbbPaisDoc.GetObjectAt<TPais>(I).Codigo = Doc.IdPais then
    begin
      cbbPaisDoc.ItemIndex := I;
      Break;
    end;
  end;
end;

procedure TFPacientes.LimpaCamposDoc;
begin
  cbbTipoDoc.ItemIndex := -1;
  edtNumDoc.Clear;
  cbbEmissor.ItemIndex := -1;
  edtEmissao.Clear;
  cbbPaisDoc.ItemIndex := -1;
  edtUFDoc.Clear;
end;

procedure TFPacientes.LimparCampos;
begin
  edtId.Clear;
  edtNome.Clear;
  edtApelido.Clear;
  cbbSexo.ItemIndex := -1;
  edtNascimento.Clear;
  edtIdade.Clear;
  edtNatCodigo.Clear;
  edtNaturalidade.Clear;
  edtNatUF.Clear;
  edtNacionalidade.Clear;
  edtPaiCod.Clear;
  edtNomePai.Clear;
  edtMaeCod.Clear;
  edtNomeMae.Clear;
  mmoAnotacoes.Clear;
  edtEndereco.Clear;
  edtNumero.Clear;
  edtComplemento.Clear;
  edtBairro.Clear;
  edtReferencia.Clear;
  edtCidCod.Clear;
  edtCidadeNome.Clear;
  edtCidadeUF.Clear;
  edtPaisCod.Clear;
  edtNomePais.Clear;
  edtCEP.Clear;
  edtTelefone.Clear;
  edtCelular.Clear;
  edtEmail.Clear;
  edtFoneContato.Clear;
  edtResponsavel.Clear;

  grdDocumentos.ClearDataRows;

  LimpaCamposDoc;
end;

function TFPacientes.SalvarCadastro(AEditarImediatamente: Boolean): Boolean;
var
  Script: TStringBuilder;
  vmsg: string;
begin
  Result := False;

  if Trim(edtCidCod.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe a Cidade de Residência!', tmAtencao);
    edtCidCod.SetFocus;
    Exit;
  end;

  if Trim(edtNatCodigo.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe a Cidade de Nascimento!', tmAtencao);
    edtNatCodigo.Text;
    Exit;
  end;

  if Trim(edtPaisCod.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe o País de Residência!', tmAtencao);
    edtPaisCod.SetFocus;
    Exit;
  end;

  PessoaAtual.Id             := StrToIntDef(Trim(edtId.Text), -1);
  PessoaAtual.Nome           := Trim(edtNome.Text);
  PessoaAtual.Apelido        := Trim(edtApelido.Text);
  PessoaAtual.Sexo           := cbbSexo.Values[cbbSexo.ItemIndex];
  PessoaAtual.Endereco       := Trim(edtEndereco.Text);
  PessoaAtual.Numero         := Trim(edtNumero.Text);
  PessoaAtual.Complemento    := Trim(edtComplemento.Text);
  PessoaAtual.Referencia     := Trim(edtReferencia.Text);
  PessoaAtual.Bairro         := Trim(edtBairro.Text);
  PessoaAtual.IdCidade       := Trim(edtCidCod.Text);
  PessoaAtual.Telefone       := TUteis.SomenteNumeros(edtTelefone.Text);
  PessoaAtual.Celular        := TUteis.SomenteNumeros(edtCelular.Text);
  PessoaAtual.Nascimento     := edtNascimento.Date;
  PessoaAtual.IdNaturalidade := Trim(edtNatCodigo.Text);
  PessoaAtual.Nacionalidade  := Trim(edtNacionalidade.Text);
  PessoaAtual.IdPai          := StrToIntDef(edtPaiCod.Text, -1);
  PessoaAtual.IdMae          := StrToIntDef(edtMaeCod.Text, -1);
  PessoaAtual.Contato        := TUteis.SomenteNumeros(edtFoneContato.Text);
  PessoaAtual.Responsavel    := Trim(edtResponsavel.Text);
  PessoaAtual.Email          := Trim(edtEmail.Text);
  PessoaAtual.Anotacoes      := Trim(mmoAnotacoes.Text);
  PessoaAtual.IdPais         := Trim(edtPaisCod.Text);

  if Status = stInsert then
  begin
    if PessoaAtual.Pai.Sexo = 'F' then
    begin
      vmsg := 'A pessoa selecionada no campo PAI: ' + PessoaAtual.Pai.Nome + ' possui SEXO diferente de "Masculino"! Deseja rever a informação?';

      if TMensagens.ShowMessage(vMsg, tmQuestao, tbSimNao) = mrYes then
        Exit;
    end;

    if PessoaAtual.Mae.Sexo = 'M' then
    begin
      vmsg := 'A pessoa selecionada no campo MÃE: ' + PessoaAtual.Mae.Nome + ' possui SEXO diferente de "Feminino"! Deseja rever a informação?';

      if TMensagens.ShowMessage(vMsg, tmQuestao, tbSimNao) = mrYes then
        Exit;
    end;
  end;

  Script := TStringBuilder.Create;
  try
    Script.Append('UPDATE OR INSERT INTO PESSOAS (ID, NOME, APELIDO, SEXO, ENDERECO, ')
          .Append('  NUMERO, COMPLEMENTO, PONTO_REFERENCIA, BAIRRO, CIDADE, ')
          .Append('  TELEFONE, CELULAR, NASCIMENTO, NATURALIDADE, NACIONALIDADE, ')
          .Append('  PAI, MAE, FONE_CONTATO, RESPONSAVEL, EMAIL, ')
          .Append('  ANOTACOES, ID_USUARIO, CEP, PAIS) ')
          .Append('VALUES ([ID], [NOME], [APELIDO], [SEXO], [ENDERECO], ')
          .Append('  [NUMERO], [COMPLEMENTO], [PONTO_REFERENCIA], [BAIRRO], [CIDADE], ')
          .Append('  [TELEFONE], [CELULAR], [NASCIMENTO], [NATURALIDADE], [NACIONALIDADE], ')
          .Append('  [PAI], [MAE], [FONE_CONTATO], [RESPONSAVEL], [EMAIL], ')
          .Append('  [ANOTACOES], [ID_USUARIO], [CEP], [PAIS]) ')
          .Append('MATCHING (ID); ');

    Script.Replace('[ID]', PessoaAtual.Id.ToString);
    Script.Replace('[NOME]', PessoaAtual.Nome.QuotedString);
    Script.Replace('[APELIDO]', PessoaAtual.Apelido.QuotedString);
    Script.Replace('[SEXO]', PessoaAtual.Sexo.QuotedString);
    Script.Replace('[ENDERECO]', PessoaAtual.Endereco.QuotedString);
    Script.Replace('[NUMERO]', PessoaAtual.Numero.QuotedString);
    Script.Replace('[COMPLEMENTO]', PessoaAtual.Complemento.QuotedString);
    Script.Replace('[PONTO_REFERENCIA]', PessoaAtual.Referencia.QuotedString);
    Script.Replace('[BAIRRO]', PessoaAtual.Bairro.QuotedString);
    Script.Replace('[CIDADE]', PessoaAtual.IdCidade.QuotedString);
    Script.Replace('[TELEFONE]', PessoaAtual.Telefone.QuotedString);
    Script.Replace('[CELULAR]', PessoaAtual.Celular.QuotedString);
    Script.Replace('[NASCIMENTO]', TUteis.DataSQL(PessoaAtual.Nascimento, False));
    Script.Replace('[NATURALIDADE]', PessoaAtual.IdNaturalidade.QuotedString);
    Script.Replace('[NACIONALIDADE]', PessoaAtual.Nacionalidade.QuotedString);
    Script.Replace('[PAI]', IfThen(PessoaAtual.IdPai <= 0, 'null', PessoaAtual.IdPai.ToString));
    Script.Replace('[MAE]', IfThen(PessoaAtual.IdPai <= 0, 'null', PessoaAtual.IdMae.ToString));
    Script.Replace('[FONE_CONTATO]', PessoaAtual.Contato.QuotedString);
    Script.Replace('[RESPONSAVEL]', PessoaAtual.Responsavel.QuotedString);
    Script.Replace('[EMAIL]', PessoaAtual.Email.QuotedString);
    Script.Replace('[ANOTACOES]', PessoaAtual.Anotacoes.QuotedString);
    Script.Replace('[ID_USUARIO]', Sessao.User.Codigo.ToString);
    Script.Replace('[CEP]', PessoaAtual.CEP.QuotedString);
    Script.Replace('[PAIS]', PessoaAtual.IdPais.QuotedString);

    Result := Sessao.ExecSql(Script.ToString);

    if not Result then
    begin
      TMensagens.ShowMessage('Não foi possível salvar o cadastro!', tmErro);
      Exit;
    end;

    if AEditarImediatamente then
      Status := stEdit
    else
      inherited;
  finally
    FreeAndNil(Script);
  end;
end;

procedure TFPacientes.SalvarDocumento(ADoc: TDocumento);
var
  Script: TStringBuilder;
begin
  Script := TStringBuilder.Create;
  try
    Script.Append('UPDATE OR INSERT INTO DOCUMENTOS (ID_PESSOA, SEQ, TIPO_DOCUMENTO, NUMERO, ').Append(sLineBreak)
        .Append('  ORGAO_EMISSOR, DATA_EMISSAO, PAIS_EMISSAO, UF_EMISSAO, ID_USUARIO) ').Append(sLineBreak)
        .Append('VALUES ([ID_PESSOA], [SEQ], [TIPO_DOCUMENTO], [NUMERO], ').Append(sLineBreak)
        .Append('  [ORGAO_EMISSOR], [DATA_EMISSAO], [PAIS_EMISSAO], [UF_EMISSAO], [ID_USUARIO]) ').Append(sLineBreak)
        .Append('MATCHING (ID_PESSOA, SEQ); ');

    Script.Replace('[ID_PESSOA]', ADoc.IdPessoa);
    Script.Replace('[SEQ]', ADoc.Seq);
    Script.Replace('[TIPO_DOCUMENTO]', ADoc.Tipo);
    Script.Replace('[NUMERO]', QuotedStr(TUteis.SomenteLetrasNumeros(ADoc.Numero)));
    Script.Replace('[ORGAO_EMISSOR]', ADoc.Emissor);
    Script.Replace('[DATA_EMISSAO]', ADoc.DataEmissao);
    Script.Replace('[PAIS_EMISSAO]', QuotedStr(ADoc.IdPais));
    Script.Replace('[UF_EMISSAO]', QuotedStr(ADoc.UF));
    Script.Replace('[ID_USUARIO]', ADoc.IdUsuario);

    if not Sessao.ExecSql(Script.ToString) then
    begin
      TMensagens.ShowMessage('Não foi possível salvar o documento!', tmErro);
      Exit;
    end;

    ExibeDocumentos;
  finally
    FreeAndNil(Script);
  end;
end;

function TFPacientes.ExcluirCadastro(APessoa: TPessoa): Boolean;
var
  vSql: string;
begin
  Result := False;

  if not Assigned(APessoa) then
    Exit;

  vSql := 'DELETE FROM PESSOAS WHERE ID = ' + APessoa.Id.ToString;

  Result := Sessao.ExecSql(vSql);
end;

procedure TFPacientes.ExibeDocumentos;
var
  I: Integer;
  Documento: TDocumento;
begin
  grdDocumentos.RowCount := PessoaAtual.Documentos.Count + 1;

  for I := 0 to PessoaAtual.Documentos.Count - 1 do
  begin
    Documento := PessoaAtual.Documentos[I];

    grdDocumentos.Objects[0, I + 1] := Documento;
    grdDocumentos.Ints[0, I + 1]    := Documento.Seq;
    grdDocumentos.Cells[1, I + 1]   := Documento.DescTipo;
    grdDocumentos.Cells[2, I + 1]   := Documento.Numero;
    grdDocumentos.Cells[3, I + 1]   := Documento.DescEmissor;
    grdDocumentos.Dates[4, I + 1]   := Documento.DataEmissao;
    grdDocumentos.Cells[5, I + 1]   := Documento.Pais.Pais;
    grdDocumentos.Cells[6, I + 1]   := Documento.UF;

    grdDocumentos.Alignments[0, I + 1] := taCenter;
    grdDocumentos.Alignments[1, I + 1] := taCenter;
    grdDocumentos.Alignments[2, I + 1] := taCenter;
    grdDocumentos.Alignments[3, I + 1] := taCenter;
    grdDocumentos.Alignments[4, I + 1] := taCenter;
    grdDocumentos.Alignments[5, I + 1] := taCenter;
    grdDocumentos.Alignments[6, I + 1] := taCenter;
  end;

  grdDocumentosClickCell(grdDocumentos, 1, 0);
end;

procedure TFPacientes.SetPaises;
var
  qry: TUniQuery;
  Pais: TPais;
begin
  cbbPaisDoc.Items.Clear;

  qry := Sessao.Consulta('SELECT CODIGO FROM PAISES ORDER BY NOME');
  try
    qry.First;

    while not qry.Eof do
    begin
      Pais := TPais.Montar(qry.FieldByName('CODIGO').AsString);
      cbbPaisDoc.Items.AddObject(Pais.Pais, Pais);

      qry.Next;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TFPacientes.SetPessoaAtual(const Value: TPessoa);
begin
  FPessoaAtual := Value;
end;

procedure TFPacientes.SetStatusDoc(const Value: TStatusTela);
begin
  FStatusDoc := Value;
end;

end.
