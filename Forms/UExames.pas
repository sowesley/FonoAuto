unit UExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDefault, Vcl.StdCtrls, Vcl.Mask, System.Types, System.Generics.Collections,
  RzEdit, RzBtnEdt, Vcl.ExtCtrls, RzPanel, Utils.Consulta, JvExMask, StrUtils, IWSystem,
  JvToolEdit, obj.Pessoas, CurvyControls, AdvGlowButton, Utils.Util,
  htmlbtns, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.Series, JvExControls, JvChart, Data.DB,
  Datasnap.DBClient, VCLTee.DBChart, Utils.Message, Utils.Types,
  dxGDIPlusClasses, obj.Audiometria, AdvScrollBox, RzTabs, frxClass,
  frxDBSet;

type
  TFExames = class(TFDefault)
    imgDVA: TImage;
    imgEVA: TImage;
    imgDVASR: TImage;
    imgEVASR: TImage;
    imgDVO: TImage;
    imgEVO: TImage;
    imgDVOSR: TImage;
    imgEVOSR: TImage;
    imgDVAM: TImage;
    imgEVAM: TImage;
    imgDVAMSR: TImage;
    imgEVAMSR: TImage;
    imgDVOM: TImage;
    imgEVOM: TImage;
    imgDVOMSR: TImage;
    imgEVOMSR: TImage;
    grp4: TRzGroupBox;
    btnImprimir: TAdvGlowButton;
    pnl13: TRzPanel;
    lbl1: TLabel;
    edtPacCod: TRzButtonEdit;
    edtPacNome: TRzEdit;
    edtPacSexo: TRzEdit;
    edtPacNascimento: TRzEdit;
    edtPacIdade: TRzEdit;
    edtData: TJvDateEdit;
    edtPacCelular: TRzEdit;
    btnSalvar: TAdvGlowButton;
    pnl10: TRzPanel;
    pgcExames: TRzPageControl;
    tsAudiometria: TRzTabSheet;
    tsLogoAudiometria: TRzTabSheet;
    pnlFundoExames: TRzPanel;
    pnl2: TRzPanel;
    grp5: TRzGroupBox;
    lbl2: TLabel;
    pnl11: TRzPanel;
    btnCopiaDE: TAdvGlowButton;
    btnCopiaED: TAdvGlowButton;
    btnZerar: TAdvGlowButton;
    pnl12: TRzPanel;
    pnlVA: TRzPanel;
    btnVA: THTMLButton;
    pnlVO: TRzPanel;
    btnVO: THTMLButton;
    pnlVAM: TRzPanel;
    btnVAM: THTMLButton;
    pnlVOM: TRzPanel;
    btnVOM: THTMLButton;
    chkSemResposta: TCheckBox;
    pnlDireita: TRzPanel;
    grp1: TRzGroupBox;
    pnlChtDireita: TRzPanel;
    pnl1: TRzPanel;
    pnl4: TRzPanel;
    btn1: TAdvGlowButton;
    btnD10K: TAdvGlowButton;
    btnD8K: TAdvGlowButton;
    btnD6K: TAdvGlowButton;
    btnD4K: TAdvGlowButton;
    btnD3K: TAdvGlowButton;
    btnD2K: TAdvGlowButton;
    btnD1K5: TAdvGlowButton;
    btnD1K: TAdvGlowButton;
    btnD750: TAdvGlowButton;
    btnD500: TAdvGlowButton;
    btnD250: TAdvGlowButton;
    btnD125: TAdvGlowButton;
    pnl5: TRzPanel;
    btnDUCL: TAdvGlowButton;
    btnDMCL: TAdvGlowButton;
    btnDBC: TAdvGlowButton;
    btnDAC: TAdvGlowButton;
    pnl8: TRzPanel;
    pnlDUCL: TRzPanel;
    edtDUCL125: TCurvyEdit;
    edtDUCL250: TCurvyEdit;
    edtDUCL500: TCurvyEdit;
    edtDUCL750: TCurvyEdit;
    edtDUCL1K: TCurvyEdit;
    edtDUCL1K5: TCurvyEdit;
    edtDUCL2K: TCurvyEdit;
    edtDUCL3K: TCurvyEdit;
    edtDUCL4K: TCurvyEdit;
    edtDUCL6K: TCurvyEdit;
    edtDUCL8K: TCurvyEdit;
    edtDUCL10K: TCurvyEdit;
    pnlDMCL: TRzPanel;
    edtDMCL125: TCurvyEdit;
    edtDMCL250: TCurvyEdit;
    edtDMCL500: TCurvyEdit;
    edtDMCL750: TCurvyEdit;
    edtDMCL1K: TCurvyEdit;
    edtDMCL1K5: TCurvyEdit;
    edtDMCL2K: TCurvyEdit;
    edtDMCL3K: TCurvyEdit;
    edtDMCL4K: TCurvyEdit;
    edtDMCL6K: TCurvyEdit;
    edtDMCL8K: TCurvyEdit;
    edtDMCL10K: TCurvyEdit;
    pnlDBC: TRzPanel;
    edtDBC125: TCurvyEdit;
    edtDBC250: TCurvyEdit;
    edtDBC500: TCurvyEdit;
    edtDBC750: TCurvyEdit;
    edtDBC1K: TCurvyEdit;
    edtDBC1K5: TCurvyEdit;
    edtDBC2K: TCurvyEdit;
    edtDBC3K: TCurvyEdit;
    edtDBC4K: TCurvyEdit;
    edtDBC6K: TCurvyEdit;
    edtDBC8K: TCurvyEdit;
    edtDBC10K: TCurvyEdit;
    pnlDAC: TRzPanel;
    edtDAC10K: TCurvyEdit;
    edtDAC8K: TCurvyEdit;
    edtDAC6K: TCurvyEdit;
    edtDAC4K: TCurvyEdit;
    edtDAC3K: TCurvyEdit;
    edtDAC2K: TCurvyEdit;
    edtDAC1K5: TCurvyEdit;
    edtDAC1K: TCurvyEdit;
    edtDAC750: TCurvyEdit;
    edtDAC500: TCurvyEdit;
    edtDAC250: TCurvyEdit;
    edtDAC125: TCurvyEdit;
    pnlEsquerda: TRzPanel;
    grp2: TRzGroupBox;
    pnlChtEsquerda: TRzPanel;
    pnl3: TRzPanel;
    pnl6: TRzPanel;
    btnEUCL: TAdvGlowButton;
    btnEMCL: TAdvGlowButton;
    btnEBC: TAdvGlowButton;
    btnEAC: TAdvGlowButton;
    pnl7: TRzPanel;
    btn2: TAdvGlowButton;
    btnE10K: TAdvGlowButton;
    btnE8K: TAdvGlowButton;
    btnE6K: TAdvGlowButton;
    btnE4K: TAdvGlowButton;
    btnE3K: TAdvGlowButton;
    btnE2K: TAdvGlowButton;
    btnE1K5: TAdvGlowButton;
    btnE1K: TAdvGlowButton;
    btnE750: TAdvGlowButton;
    btnE500: TAdvGlowButton;
    btnE250: TAdvGlowButton;
    btnE125: TAdvGlowButton;
    pnl9: TRzPanel;
    pnlEUCL: TRzPanel;
    edtEUCL125: TCurvyEdit;
    edtEUCL250: TCurvyEdit;
    edtEUCL500: TCurvyEdit;
    edtEUCL750: TCurvyEdit;
    edtEUCL1K: TCurvyEdit;
    edtEUCL1K5: TCurvyEdit;
    edtEUCL2K: TCurvyEdit;
    edtEUCL3K: TCurvyEdit;
    edtEUCL4K: TCurvyEdit;
    edtEUCL6K: TCurvyEdit;
    edtEUCL8K: TCurvyEdit;
    edtEUCL10K: TCurvyEdit;
    pnlEMCL: TRzPanel;
    edtEMCL125: TCurvyEdit;
    edtEMCL250: TCurvyEdit;
    edtEMCL500: TCurvyEdit;
    edtEMCL750: TCurvyEdit;
    edtEMCL1K: TCurvyEdit;
    edtEMCL1K5: TCurvyEdit;
    edtEMCL2K: TCurvyEdit;
    edtEMCL3K: TCurvyEdit;
    edtEMCL4K: TCurvyEdit;
    edtEMCL6K: TCurvyEdit;
    edtEMCL8K: TCurvyEdit;
    edtEMCL10K: TCurvyEdit;
    pnlEBC: TRzPanel;
    edtEBC125: TCurvyEdit;
    edtEBC250: TCurvyEdit;
    edtEBC500: TCurvyEdit;
    edtEBC750: TCurvyEdit;
    edtEBC1K: TCurvyEdit;
    edtEBC1K5: TCurvyEdit;
    edtEBC2K: TCurvyEdit;
    edtEBC3K: TCurvyEdit;
    edtEBC4K: TCurvyEdit;
    edtEBC6K: TCurvyEdit;
    edtEBC8K: TCurvyEdit;
    edtEBC10K: TCurvyEdit;
    pnlEAC: TRzPanel;
    edtEAC10K: TCurvyEdit;
    edtEAC8K: TCurvyEdit;
    edtEAC6K: TCurvyEdit;
    edtEAC4K: TCurvyEdit;
    edtEAC3K: TCurvyEdit;
    edtEAC2K: TCurvyEdit;
    edtEAC1K5: TCurvyEdit;
    edtEAC1K: TCurvyEdit;
    edtEAC750: TCurvyEdit;
    edtEAC500: TCurvyEdit;
    edtEAC250: TCurvyEdit;
    edtEAC125: TCurvyEdit;
    grp6: TRzGroupBox;
    RzPanel1: TRzPanel;
    edtSRTEsquerdo: TCurvyEdit;
    btn3: TAdvGlowButton;
    lbl3: TLabel;
    pnl14: TRzPanel;
    lbl4: TLabel;
    edtSRTDireito: TCurvyEdit;
    btn4: TAdvGlowButton;
    grp7: TRzGroupBox;
    pnl15: TRzPanel;
    btn5: TAdvGlowButton;
    pnl16: TRzPanel;
    lbl6: TLabel;
    edtIRFDireito: TCurvyEdit;
    btn6: TAdvGlowButton;
    edtMonoDireito: TCurvyEdit;
    lbl7: TLabel;
    edtDissDireito: TCurvyEdit;
    lbl5: TLabel;
    edtIRFEsquerdo: TCurvyEdit;
    lbl8: TLabel;
    edtMonoEsquerdo: TCurvyEdit;
    lbl9: TLabel;
    edtDissEsquerdo: TCurvyEdit;
    lbl10: TLabel;
    grp8: TRzGroupBox;
    pnl17: TRzPanel;
    pnl18: TRzPanel;
    pnl19: TRzPanel;
    edtWeber4K: TCurvyEdit;
    pnl20: TRzPanel;
    pnl21: TRzPanel;
    pnl22: TRzPanel;
    edtWeber2K: TCurvyEdit;
    pnl23: TRzPanel;
    pnl24: TRzPanel;
    pnl25: TRzPanel;
    edtWeber1K: TCurvyEdit;
    pnl26: TRzPanel;
    pnl27: TRzPanel;
    pnl28: TRzPanel;
    edtWeber500: TCurvyEdit;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    RzPanel5: TRzPanel;
    RzPanel10: TRzPanel;
    AdvGlowButton18: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    RzPanel13: TRzPanel;
    RzPanel14: TRzPanel;
    RzPanel16: TRzPanel;
    RzPanel21: TRzPanel;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    mmoLaudoDireito: TRzMemo;
    mmoLaudoEsquerdo: TRzMemo;
    pnl29: TRzPanel;
    pnl30: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzPanel12: TRzPanel;
    chtImitaDireito: TDBChart;
    srsImitanciometriaDireita: TFastLineSeries;
    srsImitanciometriaEsquerda: TFastLineSeries;
    edtPpoD: TCurvyEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    edtPngD: TCurvyEdit;
    lbl13: TLabel;
    edtCmpD: TCurvyEdit;
    btnAceiteDireito: TAdvGlowButton;
    RzPanel22: TRzPanel;
    edtDecayE4K: TCurvyEdit;
    edtDecayE2K: TCurvyEdit;
    edtDecayE1K: TCurvyEdit;
    edtDecayE500: TCurvyEdit;
    RzPanel6: TRzPanel;
    edtAFEIpsi4K: TCurvyEdit;
    edtAFEIpsi2K: TCurvyEdit;
    edtAFEIpsi1K: TCurvyEdit;
    edtAFEIpsi500: TCurvyEdit;
    RzPanel7: TRzPanel;
    edtDiferE4K: TCurvyEdit;
    edtDiferE2K: TCurvyEdit;
    edtDiferE1K: TCurvyEdit;
    edtDiferE500: TCurvyEdit;
    RzPanel8: TRzPanel;
    edtAFEContra4K: TCurvyEdit;
    edtAFEContra2K: TCurvyEdit;
    edtAFEContra1K: TCurvyEdit;
    edtAFEContra500: TCurvyEdit;
    RzPanel9: TRzPanel;
    edtLimiarE4K: TCurvyEdit;
    edtLimiarE2K: TCurvyEdit;
    edtLimiarE1K: TCurvyEdit;
    edtLimiarE500: TCurvyEdit;
    RzPanel15: TRzPanel;
    edtDecayD4K: TCurvyEdit;
    edtDecayD2K: TCurvyEdit;
    edtDecayD1K: TCurvyEdit;
    edtDecayD500: TCurvyEdit;
    RzPanel17: TRzPanel;
    edtAFDIpsi4K: TCurvyEdit;
    edtAFDIpsi2K: TCurvyEdit;
    edtAFDIpsi1K: TCurvyEdit;
    edtAFDIpsi500: TCurvyEdit;
    RzPanel18: TRzPanel;
    edtDiferD4K: TCurvyEdit;
    edtDiferD2K: TCurvyEdit;
    edtDiferD1K: TCurvyEdit;
    edtDiferD500: TCurvyEdit;
    RzPanel19: TRzPanel;
    edtAFDContra4K: TCurvyEdit;
    edtAFDContra2K: TCurvyEdit;
    edtAFDContra1K: TCurvyEdit;
    edtAFDContra500: TCurvyEdit;
    RzPanel20: TRzPanel;
    edtLimiarD4K: TCurvyEdit;
    edtLimiarD2K: TCurvyEdit;
    edtLimiarD1K: TCurvyEdit;
    edtLimiarD500: TCurvyEdit;
    chtDireita: TDBChart;
    srsAudioDireita: TFastLineSeries;
    srsMark0Direita: TFastLineSeries;
    srsVAD: TFastLineSeries;
    chtEsquerda: TDBChart;
    srsAudioEsquerda: TFastLineSeries;
    srsVAE: TFastLineSeries;
    frxAudiometria: TfrxReport;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    edtPpoE: TCurvyEdit;
    edtPngE: TCurvyEdit;
    edtCmpE: TCurvyEdit;
    btnAceiteEsquerdo: TAdvGlowButton;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TfrxDBDataset;
    cdsRelatorioLAUDO_D: TMemoField;
    cdsRelatorioLAUDO_E: TMemoField;
    grp3: TRzGroupBox;
    mmoPacObs: TRzMemo;
    lbl17: TLabel;
    edtMedCod: TRzButtonEdit;
    edtMedNome: TRzEdit;
    edtMedRegistro: TRzEdit;
    procedure edtPacCodButtonClick(Sender: TObject);
    procedure edtPacCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtPacCodEnter(Sender: TObject);
    procedure edtPacCodExit(Sender: TObject);
    procedure edtDAC10KEnter(Sender: TObject);
    procedure edtDAC10KExit(Sender: TObject);
    procedure btnCopiaEDClick(Sender: TObject);
    procedure btnCopiaDEClick(Sender: TObject);
    procedure btnZerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVAClick(Sender: TObject);
    procedure btnVOClick(Sender: TObject);
    procedure btnVAMClick(Sender: TObject);
    procedure btnVOMClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDBC10KExit(Sender: TObject);
    procedure edtDBC10KEnter(Sender: TObject);
    procedure edtDMCL10KExit(Sender: TObject);
    procedure edtDMCL10KEnter(Sender: TObject);
    procedure edtDUCL10KEnter(Sender: TObject);
    procedure edtDUCL10KExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDAC125KeyPress(Sender: TObject; var Key: Char);
    procedure edtDataExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtEAC10KExit(Sender: TObject);
    procedure edtEAC10KEnter(Sender: TObject);
    procedure edtEBC10KEnter(Sender: TObject);
    procedure edtEMCL10KEnter(Sender: TObject);
    procedure edtEUCL10KEnter(Sender: TObject);
    procedure edtEBC10KExit(Sender: TObject);
    procedure edtEMCL10KExit(Sender: TObject);
    procedure edtEUCL10KExit(Sender: TObject);
    procedure edtLimiarD500Enter(Sender: TObject);
    procedure edtLimiarD500Exit(Sender: TObject);
    procedure edtLimiarE500Enter(Sender: TObject);
    procedure edtLimiarE500Exit(Sender: TObject);
    procedure btnAceiteDireitoClick(Sender: TObject);
    procedure btnAceiteEsquerdoClick(Sender: TObject);
    procedure edtPpoDExit(Sender: TObject);
    procedure edtCmpDExit(Sender: TObject);
    procedure edtCmpDKeyPress(Sender: TObject; var Key: Char);
    procedure edtMonoDireitoExit(Sender: TObject);
    procedure edtWeber500KeyPress(Sender: TObject; var Key: Char);
    procedure edtWeber500Exit(Sender: TObject);
    procedure mmoLaudoDireitoEnter(Sender: TObject);
    procedure mmoLaudoDireitoExit(Sender: TObject);
    procedure edtPpoEExit(Sender: TObject);
    procedure edtCmpEExit(Sender: TObject);
    procedure pgcExamesChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
  private
    FSource: TMarcador;
    FDestination: TMarcador;
    FEstimulo: TEstimulo;
    FMarcadores: TObjectList<TMarcador>;
    FExame: TAudiometria;
    FImitaEsquerdo: TObjectList<TImitanciometria>;
    FImitaDireito: TObjectList<TImitanciometria>;
    FDadosReflexo: TObjectList<TReflexo>;
    procedure ResetDados;
    procedure ArmazenaPontosGrafico;
    function getFrequencia(AValor: string): TFrequencia;
    function getEstimulo(AValor: string): TEstimulo;
    function getReflexo(AValor: string): TTipoReflexo;
    function getTipoImita(AValor: string): TTipoDadoImit;
    procedure SetMarcadores(const Value: TObjectList<TMarcador>);
    function BuscaExame: Boolean;
    procedure PopulaDados;
    procedure SetExame(const Value: TAudiometria);
    function EstimuloFromBotoes: TEstimulo;
    procedure SalvarRegistro;
    procedure SetDadosReflexo(const Value: TObjectList<TReflexo>);
    procedure SetImitaDireito(const Value: TObjectList<TImitanciometria>);
    procedure SetImitaEsquerdo(const Value: TObjectList<TImitanciometria>);
  public
    property Marcadores: TObjectList<TMarcador> read FMarcadores write SetMarcadores;
    property DadosReflexo: TObjectList<TReflexo> read FDadosReflexo write SetDadosReflexo;
    property ImitaDireito: TObjectList<TImitanciometria> read FImitaDireito write SetImitaDireito;
    property ImitaEsquerdo: TObjectList<TImitanciometria> read FImitaEsquerdo write SetImitaEsquerdo;
    property Exame: TAudiometria read FExame write SetExame;
  end;

var
  FExames: TFExames;

implementation

{$R *.dfm}

uses UPrincipal, Utils.Helper;

procedure TFExames.ArmazenaPontosGrafico;
var
  Freq: TFrequencia;
  Inte: TIntensidade;
  Cont: Integer;
  Marca: TMarcador;
begin
  Cont := -1;

  for Freq := Low(TFrequencia) to High(TFrequencia) do
  begin
    for Inte := Low(TIntensidade) to High(TIntensidade) do
    begin
      if (Freq = f10K) and (Inte = i65) then
        Cont := Cont;

      Inc(Cont);

      FPontos[Cont].Frequencia  := Freq;
      FPontos[Cont].Intensidade := Inte;
      FPontos[Cont].Local       := Point(Freq.X, Inte.Y);
    end;
  end;
end;

procedure TFExames.btnAceiteDireitoClick(Sender: TObject);
begin
  if srsImitanciometriaDireita.XValues.Count > 0 then
  begin
    if TMensagens.ShowMessage('Confirma os novos valores?', tmQuestao, tbSimNao) = mrNo then
      Exit;
  end;

  srsImitanciometriaDireita.Clear;
  srsImitanciometriaDireita.AddXY(StrToFloat(edtPpoD.Text), 0);
  srsImitanciometriaDireita.AddXY(-StrToFloat(edtPngD.Text), 0);
  srsImitanciometriaDireita.AddXY(0, StrToFloat(edtCmpD.Text));
end;

procedure TFExames.btnAceiteEsquerdoClick(Sender: TObject);
begin
  if srsImitanciometriaEsquerda.XValues.Count > 0 then
  begin
    if TMensagens.ShowMessage('Confirma os novos valores?', tmQuestao, tbSimNao) = mrNo then
      Exit;
  end;

  srsImitanciometriaEsquerda.Clear;
  srsImitanciometriaEsquerda.AddXY(StrToFloat(edtPpoE.Text), 0);
  srsImitanciometriaEsquerda.AddXY(-StrToFloat(edtPngE.Text), 0);
  srsImitanciometriaEsquerda.AddXY(0, StrToFloat(edtCmpE.Text));
end;

procedure TFExames.btnCopiaDEClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma a cópia dos dados para a Orelha Esquerda?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  edtEAC10K.Text := edtDAC10K.Text;
  edtEAC10KExit(edtEAC10K);
  edtEAC8K.Text  := edtDAC8K.Text;
  edtEAC10KExit(edtEAC8K);
  edtEAC6K.Text  := edtDAC6K.Text;
  edtEAC10KExit(edtEAC6K);
  edtEAC4K.Text  := edtDAC4K.Text;
  edtEAC10KExit(edtEAC4K);
  edtEAC3K.Text  := edtDAC3K.Text;
  edtEAC10KExit(edtEAC3K);
  edtEAC2K.Text  := edtDAC2K.Text;
  edtEAC10KExit(edtEAC2K);
  edtEAC1K5.Text := edtDAC1K5.Text;
  edtEAC10KExit(edtEAC1K5);
  edtEAC1K.Text  := edtDAC1K.Text;
  edtEAC10KExit(edtEAC1K);
  edtEAC750.Text := edtDAC750.Text;
  edtEAC10KExit(edtEAC750);
  edtEAC500.Text := edtDAC500.Text;
  edtEAC10KExit(edtEAC500);
  edtEAC250.Text := edtDAC250.Text;
  edtEAC10KExit(edtEAC250);
  edtEAC125.Text := edtDAC125.Text;
  edtEAC10KExit(edtEAC125);

  edtEBC10K.Text := edtDBC10K.Text;
  edtEBC10KExit(edtEBC10K);
  edtEBC8K.Text  := edtDBC8K.Text;
  edtEBC10KExit(edtEBC8K);
  edtEBC6K.Text  := edtDBC6K.Text;
  edtEBC10KExit(edtEBC6K);
  edtEBC4K.Text  := edtDBC4K.Text;
  edtEBC10KExit(edtEBC4K);
  edtEBC3K.Text  := edtDBC3K.Text;
  edtEBC10KExit(edtEBC3K);
  edtEBC2K.Text  := edtDBC2K.Text;
  edtEBC10KExit(edtEBC2K);
  edtEBC1K5.Text := edtDBC1K5.Text;
  edtEBC10KExit(edtEBC1K5);
  edtEBC1K.Text  := edtDBC1K.Text;
  edtEBC10KExit(edtEBC1K);
  edtEBC750.Text := edtDBC750.Text;
  edtEBC10KExit(edtEBC750);
  edtEBC500.Text := edtDBC500.Text;
  edtEBC10KExit(edtEBC500);
  edtEBC250.Text := edtDBC250.Text;
  edtEBC10KExit(edtEBC250);
  edtEBC125.Text := edtDBC125.Text;
  edtEBC10KExit(edtEBC125);

  edtEMCL10K.Text := edtDMCL10K.Text;
  edtEMCL10KExit(edtEMCL10K);
  edtEMCL8K.Text  := edtDMCL8K.Text;
  edtEMCL10KExit(edtEMCL8K);
  edtEMCL6K.Text  := edtDMCL6K.Text;
  edtEMCL10KExit(edtEMCL6K);
  edtEMCL4K.Text  := edtDMCL4K.Text;
  edtEMCL10KExit(edtEMCL4K);
  edtEMCL3K.Text  := edtDMCL3K.Text;
  edtEMCL10KExit(edtEMCL3K);
  edtEMCL2K.Text  := edtDMCL2K.Text;
  edtEMCL10KExit(edtEMCL2K);
  edtEMCL1K5.Text := edtDMCL1K5.Text;
  edtEMCL10KExit(edtEMCL1K5);
  edtEMCL1K.Text  := edtDMCL1K.Text;
  edtEMCL10KExit(edtEMCL1K);
  edtEMCL750.Text := edtDMCL750.Text;
  edtEMCL10KExit(edtEMCL750);
  edtEMCL500.Text := edtDMCL500.Text;
  edtEMCL10KExit(edtEMCL500);
  edtEMCL250.Text := edtDMCL250.Text;
  edtEMCL10KExit(edtEMCL250);
  edtEMCL125.Text := edtDMCL125.Text;
  edtEMCL10KExit(edtEMCL125);

  edtEUCL10K.Text := edtDUCL10K.Text;
  edtEUCL10KExit(edtEUCL10K);
  edtEUCL8K.Text  := edtDUCL8K.Text;
  edtEUCL10KExit(edtEUCL8K);
  edtEUCL6K.Text  := edtDUCL6K.Text;
  edtEUCL10KExit(edtEUCL6K);
  edtEUCL4K.Text  := edtDUCL4K.Text;
  edtEUCL10KExit(edtEUCL4K);
  edtEUCL3K.Text  := edtDUCL3K.Text;
  edtEUCL10KExit(edtEUCL3K);
  edtEUCL2K.Text  := edtDUCL2K.Text;
  edtEUCL10KExit(edtEUCL2K);
  edtEUCL1K5.Text := edtDUCL1K5.Text;
  edtEUCL10KExit(edtEUCL1K5);
  edtEUCL1K.Text  := edtDUCL1K.Text;
  edtEUCL10KExit(edtEUCL1K);
  edtEUCL750.Text := edtDUCL750.Text;
  edtEUCL10KExit(edtEUCL750);
  edtEUCL500.Text := edtDUCL500.Text;
  edtEUCL10KExit(edtEUCL500);
  edtEUCL250.Text := edtDUCL250.Text;
  edtEUCL10KExit(edtEUCL250);
  edtEUCL125.Text := edtDUCL125.Text;
  edtEUCL10KExit(edtEUCL125);
end;

procedure TFExames.btnCopiaEDClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma a cópia dos dados para a Orelha Direita?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  edtDAC10K.Text := edtEAC10K.Text;
  edtDAC10KExit(edtDAC10K);
  edtDAC8K.Text  := edtEAC8K.Text;
  edtDAC10KExit(edtDAC8K);
  edtDAC6K.Text  := edtEAC6K.Text;
  edtDAC10KExit(edtDAC6K);
  edtDAC4K.Text  := edtEAC4K.Text;
  edtDAC10KExit(edtDAC4K);
  edtDAC3K.Text  := edtEAC3K.Text;
  edtDAC10KExit(edtDAC3K);
  edtDAC2K.Text  := edtEAC2K.Text;
  edtDAC10KExit(edtDAC2K);
  edtDAC1K5.Text := edtEAC1K5.Text;
  edtDAC10KExit(edtDAC1K5);
  edtDAC1K.Text  := edtEAC1K.Text;
  edtDAC10KExit(edtDAC1K);
  edtDAC750.Text := edtEAC750.Text;
  edtDAC10KExit(edtDAC750);
  edtDAC500.Text := edtEAC500.Text;
  edtDAC10KExit(edtDAC500);
  edtDAC250.Text := edtEAC250.Text;
  edtDAC10KExit(edtDAC250);
  edtDAC125.Text := edtEAC125.Text;
  edtDAC10KExit(edtDAC125);

  edtDBC10K.Text := edtEBC10K.Text;
  edtDBC10KExit(edtDBC10K);
  edtDBC8K.Text  := edtEBC8K.Text;
  edtDBC10KExit(edtDBC8K);
  edtDBC6K.Text  := edtEBC6K.Text;
  edtDBC10KExit(edtDBC6K);
  edtDBC4K.Text  := edtEBC4K.Text;
  edtDBC10KExit(edtDBC4K);
  edtDBC3K.Text  := edtEBC3K.Text;
  edtDBC10KExit(edtDBC3K);
  edtDBC2K.Text  := edtEBC2K.Text;
  edtDBC10KExit(edtDBC2K);
  edtDBC1K5.Text := edtEBC1K5.Text;
  edtDBC10KExit(edtDBC1K5);
  edtDBC1K.Text  := edtEBC1K.Text;
  edtDBC10KExit(edtDBC1K);
  edtDBC750.Text := edtEBC750.Text;
  edtDBC10KExit(edtDBC750);
  edtDBC500.Text := edtEBC500.Text;
  edtDBC10KExit(edtDBC500);
  edtDBC250.Text := edtEBC250.Text;
  edtDBC10KExit(edtDBC250);
  edtDBC125.Text := edtEBC125.Text;
  edtDBC10KExit(edtDBC125);

  edtDMCL10K.Text := edtEMCL10K.Text;
  edtDMCL10KExit(edtDMCL10K);
  edtDMCL8K.Text  := edtEMCL8K.Text;
  edtDMCL10KExit(edtDMCL8K);
  edtDMCL6K.Text  := edtEMCL6K.Text;
  edtDMCL10KExit(edtDMCL6K);
  edtDMCL4K.Text  := edtEMCL4K.Text;
  edtDMCL10KExit(edtDMCL4K);
  edtDMCL3K.Text  := edtEMCL3K.Text;
  edtDMCL10KExit(edtDMCL3K);
  edtDMCL2K.Text  := edtEMCL2K.Text;
  edtDMCL10KExit(edtDMCL2K);
  edtDMCL1K5.Text := edtEMCL1K5.Text;
  edtDMCL10KExit(edtDMCL1K5);
  edtDMCL1K.Text  := edtEMCL1K.Text;
  edtDMCL10KExit(edtDMCL1K);
  edtDMCL750.Text := edtEMCL750.Text;
  edtDMCL10KExit(edtDMCL750);
  edtDMCL500.Text := edtEMCL500.Text;
  edtDMCL10KExit(edtDMCL500);
  edtDMCL250.Text := edtEMCL250.Text;
  edtDMCL10KExit(edtDMCL250);
  edtDMCL125.Text := edtEMCL125.Text;
  edtDMCL10KExit(edtDMCL125);

  edtDUCL10K.Text := edtEUCL10K.Text;
  edtDUCL10KExit(edtDUCL10K);
  edtDUCL8K.Text  := edtEUCL8K.Text;
  edtDUCL10KExit(edtDUCL8K);
  edtDUCL6K.Text  := edtEUCL6K.Text;
  edtDUCL10KExit(edtDUCL6K);
  edtDUCL4K.Text  := edtEUCL4K.Text;
  edtDUCL10KExit(edtDUCL4K);
  edtDUCL3K.Text  := edtEUCL3K.Text;
  edtDUCL10KExit(edtDUCL3K);
  edtDUCL2K.Text  := edtEUCL2K.Text;
  edtDUCL10KExit(edtDUCL2K);
  edtDUCL1K5.Text := edtEUCL1K5.Text;
  edtDUCL10KExit(edtDUCL1K5);
  edtDUCL1K.Text  := edtEUCL1K.Text;
  edtDUCL10KExit(edtDUCL1K);
  edtDUCL750.Text := edtEUCL750.Text;
  edtDUCL10KExit(edtDUCL750);
  edtDUCL500.Text := edtEUCL500.Text;
  edtDUCL10KExit(edtDUCL500);
  edtDUCL250.Text := edtEUCL250.Text;
  edtDUCL10KExit(edtDUCL250);
  edtDUCL125.Text := edtEUCL125.Text;
  edtDUCL10KExit(edtDUCL125);
end;

procedure TFExames.btnImprimirClick(Sender: TObject);
var
  R: TRect;
  Bmp: TBitmap;
  vPath: string;
  vFileName: string;
  Img: TfrxPictureView;
begin
  cdsRelatorio.Close;
  cdsRelatorio.CreateDataSet;
  cdsRelatorio.Open;

  cdsRelatorio.Append;
  cdsRelatorioLAUDO_D.AsString := mmoLaudoDireito.Text;
  cdsRelatorioLAUDO_E.AsString := mmoLaudoEsquerdo.Text;
  cdsRelatorio.Post;

  frxAudiometria.LoadFromFile(Sessao.Config.CaminhoRelatorios + 'Audiometria.fr3', True);
//  frxAudiometria.LoadFromFile(gsAppPath + 'Relatorios\Audiometria.fr3', True);
  vPath := Sessao.Config.CaminhoGraficos;

  if not DirectoryExists(vPath) then
    ForceDirectories(vPath);

  //Gráfico Audiometria Direita
  Bmp := TBitmap.Create;
  try
    R := Rect(0, 0, chtDireita.Width, chtDireita.Height);
    Bmp.SetSize(chtDireita.Width, chtDireita.Height);
    Bmp.Canvas.CopyRect(R, pnlChtDireita.Canvas, R);

    vFileName := 'AudioDireita_' + edtPacCod.Text + '_' + FormatDateTime('YYYYMMDD', edtData.Date) + '.bmp';

    Bmp.SaveToFile(vPath + vFileName);

    Img := TfrxPictureView(frxAudiometria.FindObject('AudioDireito'));

    if Img <> nil then
      Img.Picture.LoadFromFile(vPath + vFileName);
  finally
    FreeAndNil(Bmp);
  end;

  //Gráfico Audiometria Esquerda
  Bmp := TBitmap.Create;
  try
    R := Rect(0, 0, chtEsquerda.Width, chtEsquerda.Height);
    Bmp.SetSize(chtEsquerda.Width, chtEsquerda.Height);
    Bmp.Canvas.CopyRect(R, pnlChtEsquerda.Canvas, R);

    vFileName := 'AudioEsquerda_' + edtPacCod.Text + '_' + FormatDateTime('YYYYMMDD', edtData.Date) + '.bmp';

    Bmp.SaveToFile(vPath + vFileName);

    Img := TfrxPictureView(frxAudiometria.FindObject('AudioEsquerdo'));

    if Img <> nil then
      Img.Picture.LoadFromFile(vPath + vFileName);
  finally
    FreeAndNil(Bmp);
  end;

  //Gráfico Imitanciometria Direita
  vFileName := 'Imitanciometria_' + edtPacCod.Text + '_' + FormatDateTime('YYYYMMDD', edtData.Date) + '.bmp';
  chtImitaDireito.SaveToBitmapFile(vPath + vFileName);

  Img := TfrxPictureView(frxAudiometria.FindObject('Imitanciometria'));

  if Img <> nil then
    Img.Picture.LoadFromFile(vPath + vFileName);

  frxAudiometria.Variables['Paciente']      := QuotedStr(Trim(edtPacNome.Text));
  frxAudiometria.Variables['Idade']         := QuotedStr(Trim(edtPacIdade.Text));
  frxAudiometria.Variables['Data']          := QuotedStr(edtData.Text);
  frxAudiometria.Variables['srtDireita']    := QuotedStr(Trim(edtSRTDireito.Text));
  frxAudiometria.Variables['srtEsquerda']   := QuotedStr(Trim(edtSRTEsquerdo.Text));
  frxAudiometria.Variables['irfDireita']    := QuotedStr(Trim(edtIRFDireito.Text));
  frxAudiometria.Variables['irfEsquerda']   := QuotedStr(Trim(edtIRFEsquerdo.Text));
  frxAudiometria.Variables['monoDireita']   := QuotedStr(Trim(edtMonoDireito.Text));
  frxAudiometria.Variables['monoEsquerda']  := QuotedStr(Trim(edtMonoEsquerdo.Text));
  frxAudiometria.Variables['dissDireita']   := QuotedStr(Trim(edtDissDireito.Text));
  frxAudiometria.Variables['dissEsquerda']  := QuotedStr(Trim(edtDissEsquerdo.Text));
  frxAudiometria.Variables['w500']          := QuotedStr(Trim(edtWeber500.Text));
  frxAudiometria.Variables['w1K']           := QuotedStr(Trim(edtWeber1K.Text));
  frxAudiometria.Variables['w2K']           := QuotedStr(Trim(edtWeber2K.Text));
  frxAudiometria.Variables['w4K']           := QuotedStr(Trim(edtWeber4K.Text));
  frxAudiometria.Variables['Cidade']        := QuotedStr('Colatina-ES');
  frxAudiometria.Variables['Medico']        := QuotedStr('ERIKA F. G. TASCA');
  frxAudiometria.Variables['CRF']           := QuotedStr('CRFa 3288-ES');

  frxAudiometria.Variables['limiarD500'] := QuotedStr(Trim(edtLimiarD500.Text));
  frxAudiometria.Variables['limiarD1K']  := QuotedStr(Trim(edtLimiarD1K.Text));
  frxAudiometria.Variables['limiarD2K']  := QuotedStr(Trim(edtLimiarD2K.Text));
  frxAudiometria.Variables['limiarD4K']  := QuotedStr(Trim(edtLimiarD4K.Text));
  frxAudiometria.Variables['contraD500'] := QuotedStr(Trim(edtAFDContra500.Text));
  frxAudiometria.Variables['contraD1K']  := QuotedStr(Trim(edtAFDContra1K.Text));
  frxAudiometria.Variables['contraD2K']  := QuotedStr(Trim(edtAFDContra2K.Text));
  frxAudiometria.Variables['contraD4K']  := QuotedStr(Trim(edtAFDContra4K.Text));
  frxAudiometria.Variables['diferD500']  := QuotedStr(Trim(edtDiferD500.Text));
  frxAudiometria.Variables['diferD1K']   := QuotedStr(Trim(edtDiferD1K.Text));
  frxAudiometria.Variables['diferD2K']   := QuotedStr(Trim(edtDiferD2K.Text));
  frxAudiometria.Variables['diferD4K']   := QuotedStr(Trim(edtDiferD4K.Text));
  frxAudiometria.Variables['ipsiD500']   := QuotedStr(Trim(edtAFDIpsi500.Text));
  frxAudiometria.Variables['ipsiD1K']    := QuotedStr(Trim(edtAFDIpsi1K.Text));
  frxAudiometria.Variables['ipsiD2K']    := QuotedStr(Trim(edtAFDIpsi2K.Text));
  frxAudiometria.Variables['ipsiD4K']    := QuotedStr(Trim(edtAFDIpsi4K.Text));
  frxAudiometria.Variables['decayD500']  := QuotedStr(Trim(edtDecayD500.Text));
  frxAudiometria.Variables['decayD1K']   := QuotedStr(Trim(edtDecayD1K.Text));
  frxAudiometria.Variables['decayD2K']   := QuotedStr(Trim(edtDecayD2K.Text));
  frxAudiometria.Variables['decayD4K']   := QuotedStr(Trim(edtDecayD4K.Text));
  frxAudiometria.Variables['limiarE500'] := QuotedStr(Trim(edtLimiarE500.Text));
  frxAudiometria.Variables['limiarE1K']  := QuotedStr(Trim(edtLimiarE1K.Text));
  frxAudiometria.Variables['limiarE2K']  := QuotedStr(Trim(edtLimiarE2K.Text));
  frxAudiometria.Variables['limiarE4K']  := QuotedStr(Trim(edtLimiarE4K.Text));
  frxAudiometria.Variables['contraE500'] := QuotedStr(Trim(edtAFEContra500.Text));
  frxAudiometria.Variables['contraE1K']  := QuotedStr(Trim(edtAFEContra1K.Text));
  frxAudiometria.Variables['contraE2K']  := QuotedStr(Trim(edtAFEContra2K.Text));
  frxAudiometria.Variables['contraE4K']  := QuotedStr(Trim(edtAFEContra4K.Text));
  frxAudiometria.Variables['diferE500']  := QuotedStr(Trim(edtDiferE500.Text));
  frxAudiometria.Variables['diferE1K']   := QuotedStr(Trim(edtDiferE1K.Text));
  frxAudiometria.Variables['diferE2K']   := QuotedStr(Trim(edtDiferE2K.Text));
  frxAudiometria.Variables['diferE4K']   := QuotedStr(Trim(edtDiferE4K.Text));
  frxAudiometria.Variables['ipsiE500']   := QuotedStr(Trim(edtAFEIpsi500.Text));
  frxAudiometria.Variables['ipsiE1K']    := QuotedStr(Trim(edtAFEIpsi1K.Text));
  frxAudiometria.Variables['ipsiE2K']    := QuotedStr(Trim(edtAFEIpsi2K.Text));
  frxAudiometria.Variables['ipsiE4K']    := QuotedStr(Trim(edtAFEIpsi4K.Text));
  frxAudiometria.Variables['decayE500']  := QuotedStr(Trim(edtDecayE500.Text));
  frxAudiometria.Variables['decayE1K']   := QuotedStr(Trim(edtDecayE1K.Text));
  frxAudiometria.Variables['decayE2K']   := QuotedStr(Trim(edtDecayE2K.Text));
  frxAudiometria.Variables['decayE4K']   := QuotedStr(Trim(edtDecayE4K.Text));

  frxAudiometria.ShowReport;
end;

procedure TFExames.btnSalvarClick(Sender: TObject);
begin
  if Trim(edtPacCod.Text) = '' then
  begin
    TMensagens.ShowMessage('Informe o paciente!', tmAtencao);
    edtPacCod.SetFocus;
    Exit;
  end;

  if edtData.Date = 0 then
  begin
    TMensagens.ShowMessage('Informe a Data do Exame!', tmAtencao);
    edtData.SetFocus;
    Exit;
  end;

  if TMensagens.ShowMessage('Confirma os dados do exame?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  if not Assigned(FExame) then
    FExame := TAudiometria.Create;

  if not Assigned(FExame.LogoAudio) then
    FExame.LogoAudio := TLogoAudiometria.Create;

  Exame.IdPessoa  := StrToInt(edtPacCod.Text);
  Exame.Data      := edtData.Date;
  Exame.IdUsuario := Sessao.User.Codigo;

  FExame.LogoAudio := TLogoAudiometria.Create;
  FExame.LogoAudio.SrtDireito    := StrToIntDef(edtSRTDireito.Text, -1);
  FExame.LogoAudio.SrtEsquerdo   := StrToIntDef(edtSRTEsquerdo.Text, -1);
  FExame.LogoAudio.IrfDireito    := StrToIntDef(edtIRFDireito.Text, -1);
  FExame.LogoAudio.IrfEsquerdo   := StrToIntDef(edtIRFEsquerdo.Text, -1);
  FExame.LogoAudio.MonoDireito   := StrToIntDef(edtMonoDireito.Text, -1);
  FExame.LogoAudio.MonoEsquerdo  := StrToIntDef(edtMonoEsquerdo.Text, -1);
  FExame.LogoAudio.DissDireito   := StrToIntDef(edtDissDireito.Text, -1);
  FExame.LogoAudio.DissEsquerdo  := StrToIntDef(edtDissEsquerdo.Text, -1);
  FExame.LogoAudio.Weber500      := Trim(edtWeber500.Text);
  FExame.LogoAudio.Weber1K       := Trim(edtWeber1K.Text);
  FExame.LogoAudio.Weber2K       := Trim(edtWeber2K.Text);
  FExame.LogoAudio.Weber4K       := Trim(edtWeber4K.Text);
  FExame.LogoAudio.LaudoDireito  := Trim(mmoLaudoDireito.Text);
  FExame.LogoAudio.LaudoEsquerdo := Trim(mmoLaudoEsquerdo.Text);

  SalvarRegistro;
end;

procedure TFExames.btnVAClick(Sender: TObject);
begin
  pnlVA.Color  := $00FFFF80;
  pnlVO.Color  := clBtnFace;
  pnlVAM.Color := clBtnFace;
  pnlVOM.Color := clBtnFace;

  FEstimulo := eVA;
end;

procedure TFExames.btnVAMClick(Sender: TObject);
begin
  pnlVA.Color  := clBtnFace;
  pnlVO.Color  := clBtnFace;
  pnlVAM.Color := $00FFFF80;
  pnlVOM.Color := clBtnFace;

  FEstimulo := eVAM;
end;

procedure TFExames.btnVOClick(Sender: TObject);
begin
  pnlVA.Color  := clBtnFace;
  pnlVO.Color  := $00FFFF80;
  pnlVAM.Color := clBtnFace;
  pnlVOM.Color := clBtnFace;

  FEstimulo := eVO;
end;

procedure TFExames.btnVOMClick(Sender: TObject);
begin
  pnlVA.Color  := clBtnFace;
  pnlVO.Color  := clBtnFace;
  pnlVAM.Color := clBtnFace;
  pnlVOM.Color := $00FFFF80;

  FEstimulo := eVOM;
end;

procedure TFExames.btnZerarClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma limpar os dados do Teste?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  ResetDados;
end;

function TFExames.BuscaExame: Boolean;
begin
  Result := False;

  if Assigned(FExame) then
    FExame := nil;

  FExame := TAudiometria.Montar(edtPacCod.Text, edtData.Text);

  Result := not (FExame = nil);
end;

procedure TFExames.edtLimiarE500Enter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];
end;

procedure TFExames.edtLimiarE500Exit(Sender: TObject);
var
  I: Integer;
  NovaFrequencia: TFrequencia;
  NovoTipo: TTipoReflexo;
  Reflexo: TReflexo;
  Valor: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [fsBold];

  NovoTipo       := getReflexo(UpperCase(TCurvyEdit(Sender).Name));
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);

  for I := 0 to DadosReflexo.Count -1 do
  begin
    if (DadosReflexo[I].Tipo = NovoTipo) and (DadosReflexo[I].Frequencia = NovaFrequencia) and (DadosReflexo[I].Orelha = oEsquerda) then
    begin
      Reflexo := DadosReflexo[I];
      DadosReflexo.Remove(Reflexo);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Reflexo := TReflexo.Create;
    Reflexo.Orelha      := oEsquerda;
    Reflexo.Frequencia  := NovaFrequencia;
    Reflexo.Valor       := Valor;
    Reflexo.Tipo        := NovoTipo;

    DadosReflexo.Add(Reflexo);
  end;
end;

procedure TFExames.edtLimiarD500Enter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];
end;

procedure TFExames.edtLimiarD500Exit(Sender: TObject);
var
  I: Integer;
  NovaFrequencia: TFrequencia;
  NovoTipo: TTipoReflexo;
  Reflexo: TReflexo;
  Valor: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [fsBold];

  NovoTipo       := getReflexo(UpperCase(TCurvyEdit(Sender).Name));
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);

  for I := 0 to DadosReflexo.Count -1 do
  begin
    if (DadosReflexo[I].Tipo = NovoTipo) and (DadosReflexo[I].Frequencia = NovaFrequencia) and (DadosReflexo[I].Orelha = oDireita) then
    begin
      Reflexo := DadosReflexo[I];
      DadosReflexo.Remove(Reflexo);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Reflexo := TReflexo.Create;
    Reflexo.Orelha      := oDireita;
    Reflexo.Frequencia  := NovaFrequencia;
    Reflexo.Valor       := Valor;
    Reflexo.Tipo        := NovoTipo;

    DadosReflexo.Add(Reflexo);
  end;
end;

procedure TFExames.edtCmpDExit(Sender: TObject);
var
  Valor: Double;
  NovoTipo: TTipoDadoImit;
  I: Integer;
  Dado: TImitanciometria;
begin
  Valor := StrToFloatDef(TCurvyEdit(Sender).Text, -1);
//  if ((not (Valor in [0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2])) and (TCurvyEdit(Sender).Text <> '')) then
//  begin
//    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
//    Abort;
//  end;

  NovoTipo := getTipoImita(TCurvyEdit(Sender).Name);

  for I := 0 to ImitaDireito.Count -1 do
  begin
    if (ImitaDireito[I].Tipo = NovoTipo) and (ImitaDireito[I].Orelha = oDireita) then
    begin
      Dado := ImitaDireito[I];
      ImitaDireito.Remove(Dado);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Dado := TImitanciometria.Create;
    Dado.Orelha := oDireita;
    Dado.Valor  := Valor;
    Dado.Tipo   := NovoTipo;

    ImitaDireito.Add(Dado);
  end;
end;

procedure TFExames.edtCmpDKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', '-', ',', #13, #8, #46]) then
  begin
    Key := #0;
    Abort;
  end;
end;

procedure TFExames.edtCmpEExit(Sender: TObject);
var
  Valor: Double;
  NovoTipo: TTipoDadoImit;
  I: Integer;
  Dado: TImitanciometria;
begin
  Valor := StrToFloatDef(TCurvyEdit(Sender).Text, -1);
//  if ((not (Valor in [0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2])) and (TCurvyEdit(Sender).Text <> '')) then
//  begin
//    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
//    Abort;
//  end;

  NovoTipo := getTipoImita(TCurvyEdit(Sender).Name);

  for I := 0 to ImitaEsquerdo.Count -1 do
  begin
    if (ImitaEsquerdo[I].Tipo = NovoTipo) and (ImitaEsquerdo[I].Orelha = oDireita) then
    begin
      Dado := ImitaEsquerdo[I];
      ImitaEsquerdo.Remove(Dado);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Dado := TImitanciometria.Create;
    Dado.Orelha := oEsquerda;
    Dado.Valor  := Valor;
    Dado.Tipo   := NovoTipo;

    ImitaEsquerdo.Add(Dado);
  end;
end;

procedure TFExames.edtDAC10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVAClick(btnVA);
end;

procedure TFExames.edtDAC10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oDireita) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Marca := TMarcador.Create(chtDireita);
    Marca.Parent      := chtDireita;
    Marca.Orelha      := oDireita;
    Marca.SemResposta := chkSemResposta.Checked;
    Marca.Frequencia  := NovaFrequencia;
    Marca.Intensidade := NovoValor;
    Marca.Tipo        := NovoTipo;
    Marca.Exibir;

    Marcadores.Add(Marca);
  end;

  srsAudioDireita.Clear;

  for I := 0 to Marcadores.Count -1 do
  begin
    Marca := Marcadores[I];

    if (Marca.Orelha = oDireita) and (Marca.Tipo = eVA) then
      srsAudioDireita.AddXY(Marca.Frequencia.ToInteger, Marca.Intensidade.Value);
  end;
end;

procedure TFExames.edtDAC125KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', '-', #13, #8, #46]) then
  begin
    Key := #0;
    Abort;
  end;
end;

procedure TFExames.edtDataExit(Sender: TObject);
begin
  if (Trim(edtPacCod.Text) = '') or (Trim(edtPacNome.Text) = '') or (edtData.Date = 0) then
  begin
    TMensagens.ShowMessage('Informe os dados corretamente!', tmAtencao);
    Exit;
  end;

  ResetDados;

  if BuscaExame then
    PopulaDados;

  edtDAC125.SetFocus;
end;

procedure TFExames.edtDBC10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVOClick(btnVO);
end;

procedure TFExames.edtDBC10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oDireita) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtDireita);
  Marca.Parent      := chtDireita;
  Marca.Orelha      := oDireita;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtDMCL10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVAMClick(btnVAM);
end;

procedure TFExames.edtDMCL10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  I: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oDireita) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtDireita);
  Marca.Parent      := chtDireita;
  Marca.Orelha      := oDireita;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtDUCL10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clRed;
  TCurvyEdit(Sender).Color       := $00A6A6FF;
  TCurvyEdit(Sender).Font.Color  := $000000DD;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVOMClick(btnVOM);
end;

procedure TFExames.edtDUCL10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oDireita) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtDireita);
  Marca.Parent      := chtDireita;
  Marca.Orelha      := oDireita;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtEAC10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clBlue;
  TCurvyEdit(Sender).Color       := $00FFCD9B;
  TCurvyEdit(Sender).Font.Color  := $00CC0000;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVAClick(btnVA);
end;

procedure TFExames.edtEAC10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oEsquerda) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Marca := TMarcador.Create(chtEsquerda);
    Marca.Parent      := chtEsquerda;
    Marca.Orelha      := oEsquerda;
    Marca.SemResposta := chkSemResposta.Checked;
    Marca.Frequencia  := NovaFrequencia;
    Marca.Intensidade := NovoValor;
    Marca.Tipo        := NovoTipo;
    Marca.Exibir;

    Marcadores.Add(Marca);
  end;

  srsAudioEsquerda.Clear;

  for I := 0 to Marcadores.Count -1 do
  begin
    Marca := Marcadores[I];

    if (Marca.Orelha = oEsquerda) and (Marca.Tipo = eVA) then
      srsAudioEsquerda.AddXY(Marca.Frequencia.ToInteger, Marca.Intensidade.Value);
  end;
end;

procedure TFExames.edtEBC10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clBlue;
  TCurvyEdit(Sender).Color       := $00FFCD9B;
  TCurvyEdit(Sender).Font.Color  := $00CC0000;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVOClick(btnVO);
end;

procedure TFExames.edtEBC10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oEsquerda) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtEsquerda);
  Marca.Parent      := chtEsquerda;
  Marca.Orelha      := oEsquerda;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtEMCL10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clBlue;
  TCurvyEdit(Sender).Color       := $00FFCD9B;
  TCurvyEdit(Sender).Font.Color  := $00CC0000;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVAMClick(btnVAM);
end;

procedure TFExames.edtEMCL10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oEsquerda) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtEsquerda);
  Marca.Parent      := chtEsquerda;
  Marca.Orelha      := oEsquerda;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtEUCL10KEnter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clBlue;
  TCurvyEdit(Sender).Color       := $00FFCD9B;
  TCurvyEdit(Sender).Font.Color  := $00CC0000;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];

  btnVOMClick(btnVOM);
end;

procedure TFExames.edtEUCL10KExit(Sender: TObject);
var
  Marca: TMarcador;
  Valor: Integer;
  NovoTipo: TEstimulo;
  NovaFrequencia: TFrequencia;
  NovoValor: TIntensidade;
  I: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 5) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  if (Valor < -10) or (Valor > 120) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) and (Marcadores[I].Orelha = oEsquerda) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  Marca := TMarcador.Create(chtEsquerda);
  Marca.Parent      := chtEsquerda;
  Marca.Orelha      := oEsquerda;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Tipo        := NovoTipo;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Exibir;

  Marcadores.Add(Marca);
end;

procedure TFExames.edtMonoDireitoExit(Sender: TObject);
var
  Valor: Integer;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if (Valor < -1) or (Valor > 100) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;
end;

procedure TFExames.edtPacCodButtonClick(Sender: TObject);
begin
  edtPacCod.Text := Consultar(cPacientes);

  if edtData.CanFocus then
    edtData.SetFocus;
end;

procedure TFExames.edtPacCodEnter(Sender: TObject);
begin
  Self.KeyPreview := False;
end;

procedure TFExames.edtPacCodExit(Sender: TObject);
var
  Key: Char;
begin
  if Trim(edtPacCod.Text) = '' then
  begin
    edtPacNome.Clear;
    edtPacSexo.Clear;
    edtPacNascimento.Clear;
    edtPacIdade.Clear;
    edtPacCelular.Clear;
    mmoPacObs.Clear;
  end
  else
  begin
    Key := #13;
    edtPacCodKeyPress(edtPacCod, Key);
  end;

  Self.KeyPreview := True;
end;

procedure TFExames.edtPacCodKeyPress(Sender: TObject; var Key: Char);
var
  Pac: TPessoa;
begin
  if Key = #13 then
  begin
    pgcExames.ActivePage := tsAudiometria;

    if Trim(edtPacCod.Text) <> '' then
    begin
      Pac := TPessoa.Montar(Trim(edtPacCod.Text));

      if Assigned(Pac) then
      begin
        edtPacNome.Text       := Pac.Nome;
        edtPacSexo.Text       := Pac.SexoExt;
        edtPacNascimento.Text := FormatDateTime(FormatSettings.ShortDateFormat, Pac.Nascimento);
        edtPacIdade.Text      := Pac.Idade;
        edtPacCelular.Text    := TUteis.FormataTelefone(Pac.Celular);
        mmoPacObs.Text        := Pac.Anotacoes;

        FreeAndNil(Pac);
      end;

      edtData.SetFocus;
    end
    else
      edtPacCodButtonClick(edtPacCod);
  end;
end;

procedure TFExames.edtPpoDExit(Sender: TObject);
var
  Valor: Integer;
  I: Integer;
  NovoTipo: TTipoDadoImit;
  Dado: TImitanciometria;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 50) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  NovoTipo := getTipoImita(TCurvyEdit(Sender).Name);

  for I := 0 to ImitaDireito.Count -1 do
  begin
    if (ImitaDireito[I].Tipo = NovoTipo) and (ImitaDireito[I].Orelha = oDireita) then
    begin
      Dado := ImitaDireito[I];
      ImitaDireito.Remove(Dado);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Dado := TImitanciometria.Create;
    Dado.Orelha := oDireita;
    Dado.Valor  := Valor;
    Dado.Tipo   := NovoTipo;

    ImitaDireito.Add(Dado);
  end;
end;

procedure TFExames.edtPpoEExit(Sender: TObject);
var
  Valor: Integer;
  I: Integer;
  NovoTipo: TTipoDadoImit;
  Dado: TImitanciometria;
begin
  Valor := StrToIntDef(TCurvyEdit(Sender).Text, -1);
  if ((Valor mod 50) <> 0) and (TCurvyEdit(Sender).Text <> '') then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;

  NovoTipo := getTipoImita(TCurvyEdit(Sender).Name);

  for I := 0 to ImitaEsquerdo.Count -1 do
  begin
    if (ImitaEsquerdo[I].Tipo = NovoTipo) and (ImitaEsquerdo[I].Orelha = oEsquerda) then
    begin
      Dado := ImitaEsquerdo[I];
      ImitaEsquerdo.Remove(Dado);
      Break;
    end;
  end;

  if Valor <> -1 then
  begin
    Dado := TImitanciometria.Create;
    Dado.Orelha := oEsquerda;
    Dado.Valor  := Valor;
    Dado.Tipo   := NovoTipo;

    ImitaEsquerdo.Add(Dado);
  end;
end;

procedure TFExames.edtWeber500Exit(Sender: TObject);
begin
  if Trim(TCurvyEdit(Sender).Text) = '' then
    Exit;

  if not (MatchStr(Trim(TCurvyEdit(Sender).Text), ['D', 'E'])) then
  begin
    TMensagens.ShowMessage('Valor Inválido!', tmAtencao);
    Abort;
  end;
end;

procedure TFExames.edtWeber500KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['D', 'E', #13, #8, #46]) then
  begin
    Key := #0;
    Abort;
  end;
end;

function TFExames.EstimuloFromBotoes: TEstimulo;
begin
  if pnlVA.Color = $00FFFF80 then
    Result := eVA
  else
  if pnlVO.Color = $00FFFF80 then
    Result := eVO
  else
  if pnlVAM.Color = $00FFFF80 then
    Result := eVAM
  else
  if pnlVOM.Color = $00FFFF80 then
    Result := eVOM;
end;

procedure TFExames.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFExames.FormCreate(Sender: TObject);
begin
  inherited;

  if Assigned(FMarcadores) then
  begin
    FMarcadores.Clear;
    FreeAndNil(FMarcadores);
  end;

  if Assigned(FDadosReflexo) then
  begin
    FDadosReflexo.Clear;
    FreeAndNil(FDadosReflexo);
  end;

  if Assigned(FImitaEsquerdo) then
  begin
    FImitaEsquerdo.Clear;
    FreeAndNil(FImitaEsquerdo);
  end;

  if Assigned(FImitaDireito) then
  begin
    FImitaDireito.Clear;
    FreeAndNil(FImitaDireito);
  end;

  FMarcadores    := TObjectList<TMarcador>.Create;
  FDadosReflexo  := TObjectList<TReflexo>.Create;
  FImitaEsquerdo := TObjectList<TImitanciometria>.Create;
  FImitaDireito  := TObjectList<TImitanciometria>.Create;
end;

procedure TFExames.FormDestroy(Sender: TObject);
begin
  if Assigned(FMarcadores) then
  begin
    FMarcadores.Clear;
    FreeAndNil(FMarcadores);
  end;
end;

procedure TFExames.FormShow(Sender: TObject);
begin
  inherited;

  pgcExames.ActivePage := tsAudiometria;
  ArmazenaPontosGrafico;
  ResetDados;

  srsMark0Direita.LinePen.Color  := clBlack;
  srsAudioDireita.LinePen.Color  := $000000D5;
  srsAudioEsquerda.LinePen.Color := $00D50000;
end;

function TFExames.getEstimulo(AValor: string): TEstimulo;
begin
  if Pos('AC', AValor) > 0 then
    Result := eVA
  else
  if Pos('BC', AValor) > 0 then
    Result := eVO
  else
  if Pos('MCL', AValor) > 0 then
    Result := eVAM
  else
  if Pos('UCL', AValor) > 0 then
    Result := eVOM;
end;

function TFExames.getFrequencia(AValor: string): TFrequencia;
begin
  if Pos('10K', AValor) > 0 then
    Result := f10K
  else
  if Pos('8K', AValor) > 0 then
    Result := f8K
  else
  if Pos('6K', AValor) > 0 then
    Result := f6K
  else
  if Pos('4K', AValor) > 0 then
    Result := f4K
  else
  if Pos('3K', AValor) > 0 then
    Result := f3K
  else
  if Pos('2K', AValor) > 0 then
    Result := f2K
  else
  if Pos('1K5', AValor) > 0 then
    Result := f1K5
  else
  if Pos('1K', AValor) > 0 then
    Result := f1K
  else
  if Pos('750', AValor) > 0 then
    Result := f750
  else
  if Pos('500', AValor) > 0 then
    Result := f500
  else
  if Pos('250', AValor) > 0 then
    Result := f250
  else
  if Pos('125', AValor) > 0 then
    Result := f125;
end;

function TFExames.getReflexo(AValor: string): TTipoReflexo;
begin
  if Pos('LIMIAR', AValor) > 0 then
    Result := trLimiar
  else
  if Pos('CONTRA', AValor) > 0 then
    Result := trAFContra
  else
  if Pos('DIFER', AValor) > 0 then
    Result := trDifer
  else
  if Pos('IPSI', AValor) > 0 then
    Result := trAFIpsi
  else
  if Pos('DECAY', AValor) > 0 then
    Result := trDecay;
end;

function TFExames.getTipoImita(AValor: string): TTipoDadoImit;
begin
  if Pos('PNG', AValor.ToUpper) > 0 then
    Result := tdmPressaoNegativa
  else
  if Pos('PPO', AValor.ToUpper) > 0 then
    Result := tdmPressaoPositiva
  else
  if Pos('CMP', AValor.ToUpper) > 0 then
    Result := tdmComplascencia;
end;

procedure TFExames.mmoLaudoDireitoEnter(Sender: TObject);
begin
  Self.KeyPreview := False;
end;

procedure TFExames.mmoLaudoDireitoExit(Sender: TObject);
begin
  Self.KeyPreview := True;
end;

procedure TFExames.pgcExamesChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
begin
  AllowChange := True;

  if NewIndex = tsAudiometria.TabIndex then
    btnImprimir.Show
  else
    btnImprimir.Hide;
end;

procedure TFExames.PopulaDados;
var
  I: Integer;
  Dado: TDadosAudio;
  Reflexo: TReflexo;
  Imita: TImitanciometria;
begin
  if FExame = nil then
    Exit;

  if FExame.IdPessoa < 1 then
    Exit;

  edtSRTDireito.Text   := FExame.LogoAudio.SrtDireito.ToString;
  edtSRTEsquerdo.Text  := FExame.LogoAudio.SrtEsquerdo.ToString;
  edtIRFDireito.Text   := FExame.LogoAudio.IrfDireito.ToString;
  edtIRFEsquerdo.Text  := FExame.LogoAudio.IrfEsquerdo.ToString;
  edtMonoDireito.Text  := FExame.LogoAudio.MonoDireito.ToString;
  edtMonoEsquerdo.Text := FExame.LogoAudio.MonoEsquerdo.ToString;
  edtDissDireito.Text  := FExame.LogoAudio.DissDireito.ToString;
  edtDissEsquerdo.Text := FExame.LogoAudio.DissEsquerdo.ToString;
  edtWeber500.Text     := FExame.LogoAudio.Weber500;
  edtWeber1K.Text      := FExame.LogoAudio.Weber1K;
  edtWeber2K.Text      := FExame.LogoAudio.Weber2K;
  edtWeber4K.Text      := FExame.LogoAudio.Weber4K;

  mmoLaudoDireito.Text  := FExame.LogoAudio.LaudoDireito;
  mmoLaudoEsquerdo.Text := FExame.LogoAudio.LaudoEsquerdo;

  for I := 0 to FExame.ReflexoAcustico.Count -1 do
  begin
    Reflexo := FExame.ReflexoAcustico[I];

    case Reflexo.Orelha of
      oDireita:
        begin
          case Reflexo.Tipo of
            trLimiar:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtLimiarD500.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtLimiarD500);
                    end;
                  f1K:
                    begin
                      edtLimiarD1K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtLimiarD1K);
                    end;
                  f2K:
                    begin
                      edtLimiarD2K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtLimiarD2K);
                    end;
                  f4K:
                    begin
                      edtLimiarD4K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtLimiarD4K);
                    end;
                end;
              end;
            trAFContra:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtAFDContra500.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDContra500);
                    end;
                  f1K :
                    begin
                      edtAFDContra1K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDContra1K);
                    end;
                  f2K :
                    begin
                      edtAFDContra2K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDContra2K);
                    end;
                  f4K :
                    begin
                      edtAFDContra4K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDContra4K);
                    end;
                end;
              end;
            trDifer:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtDiferD500.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDiferD500);
                    end;
                  f1K :
                    begin
                      edtDiferD1K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDiferD1K);
                    end;
                  f2K :
                    begin
                      edtDiferD2K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDiferD2K);
                    end;
                  f4K :
                    begin
                      edtDiferD4K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDiferD4K);
                    end;
                end;
              end;
            trAFIpsi:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtAFDIpsi500.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDIpsi500);
                    end;
                  f1K :
                    begin
                      edtAFDIpsi1K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDIpsi1K);
                    end;
                  f2K :
                    begin
                      edtAFDIpsi2K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDIpsi2K);
                    end;
                  f4K :
                    begin
                      edtAFDIpsi4K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtAFDIpsi4K);
                    end;
                end;
              end;
            trDecay:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtDecayD500.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDecayD500);
                    end;
                  f1K :
                    begin
                      edtDecayD1K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDecayD1K);
                    end;
                  f2K :
                    begin
                      edtDecayD2K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDecayD2K);
                    end;
                  f4K :
                    begin
                      edtDecayD4K.Text := Reflexo.Valor.ToString;
                      edtLimiarD500Exit(edtDecayD4K);
                    end;
                end;
              end;
          end;
        end;
      oEsquerda:
        begin
          case Reflexo.Tipo of
            trLimiar:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtLimiarE500.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtLimiarE500);
                    end;
                  f1K :
                    begin
                      edtLimiarE1K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtLimiarE1K);
                    end;
                  f2K :
                    begin
                      edtLimiarE2K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtLimiarE2K);
                    end;
                  f4K :
                    begin
                      edtLimiarE4K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtLimiarE4K);
                    end;
                end;
              end;
            trAFContra:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtAFEContra500.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEContra500);
                    end;
                  f1K :
                    begin
                      edtAFEContra1K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEContra1K);
                    end;
                  f2K :
                    begin
                      edtAFEContra2K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEContra2K);
                    end;
                  f4K :
                    begin
                      edtAFEContra4K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEContra4K);
                    end;
                end;
              end;
            trDifer:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtDiferE500.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDiferE500);
                    end;
                  f1K :
                    begin
                      edtDiferE1K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDiferE1K);
                    end;
                  f2K :
                    begin
                      edtDiferE2K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDiferE2K);
                    end;
                  f4K :
                    begin
                      edtDiferE4K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDiferE4K);
                    end;
                end;
              end;
            trAFIpsi:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtAFEIpsi500.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEIpsi500);
                    end;
                  f1K :
                    begin
                      edtAFEIpsi1K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEIpsi1K);
                    end;
                  f2K :
                    begin
                      edtAFEIpsi2K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEIpsi2K);
                    end;
                  f4K :
                    begin
                      edtAFEIpsi4K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtAFEIpsi4K);
                    end;
                end;
              end;
            trDecay:
              begin
                case Reflexo.Frequencia of
                  f500:
                    begin
                      edtDecayE500.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDecayE500);
                    end;
                  f1K :
                    begin
                      edtDecayE1K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDecayE1K);
                    end;
                  f2K :
                    begin
                      edtDecayE2K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDecayE2K);
                    end;
                  f4K :
                    begin
                      edtDecayE4K.Text := Reflexo.Valor.ToString;
                      edtLimiarE500Exit(edtDecayE4K);
                    end;
                end;
              end;
          end;
        end;
    end;
  end;

  for I := 0 to FExame.Imitanciometria.Count -1 do
  begin
    Imita := FExame.Imitanciometria[I];

    case Imita.Orelha of
      oDireita:
        begin
          case Imita.Tipo of
            tdmPressaoNegativa:
              begin
                edtPngD.Text := Imita.Valor.ToString;
                edtPpoDExit(edtPngD);
                srsImitanciometriaDireita.AddXY(-Imita.Valor, 0);
              end;
            tdmPressaoPositiva:
              begin
                edtPpoD.Text := Imita.Valor.ToString;
                edtPpoDExit(edtPpoD);
                srsImitanciometriaDireita.AddXY(Imita.Valor, 0);
              end;
            tdmComplascencia:
              begin
                edtCmpD.Text := Imita.Valor.ToString;
                edtCmpDExit(edtCmpD);
                srsImitanciometriaDireita.AddXY(0, Imita.Valor);
              end;
          end;
        end;
      oEsquerda:
        begin
          case Imita.Tipo of
            tdmPressaoNegativa:
              begin
                edtPngE.Text := Imita.Valor.ToString;
                edtPpoEExit(edtPngE);
                srsImitanciometriaEsquerda.AddXY(-Imita.Valor, 0);
              end;
            tdmPressaoPositiva:
              begin
                edtPpoE.Text := Imita.Valor.ToString;
                edtPpoEExit(edtPpoE);
                srsImitanciometriaEsquerda.AddXY(Imita.Valor, 0);
              end;
            tdmComplascencia:
              begin
                edtCmpE.Text := Imita.Valor.ToString;
                edtCmpEExit(edtCmpE);
                srsImitanciometriaEsquerda.AddXY(0, Imita.Valor);
              end;
          end;
        end;
    end;
  end;

  for I := 0 to FExame.Dados.Count -1 do
  begin
    Dado := FExame.Dados[I];

    case Dado.Orelha of
      oDireita:
        begin
          case Dado.Tipo of
            eVA:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtDAC125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC125);
                    end;
                  f250:
                    begin
                      edtDAC250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC250);
                    end;
                  f500:
                    begin
                      edtDAC500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC500);
                    end;
                  f750:
                    begin
                      edtDAC750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC750);
                    end;
                  f1K:
                    begin
                      edtDAC1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC1K);
                    end;
                  f1K5:
                    begin
                      edtDAC1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC1K5);
                    end;
                  f2K:
                    begin
                      edtDAC2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC2K);
                    end;
                  f3K:
                    begin
                      edtDAC3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC3K);
                    end;
                  f4K:
                    begin
                      edtDAC4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC4K);
                    end;
                  f6K:
                    begin
                      edtDAC6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC6K);
                    end;
                  f8K:
                    begin
                      edtDAC8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC8K);
                    end;
                  f10K:
                    begin
                      edtDAC10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDAC10KExit(edtDAC10K);
                    end;
                end;
              end;
            eVO:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtDBC125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC125);
                    end;
                  f250:
                    begin
                      edtDBC250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC250);
                    end;
                  f500:
                    begin
                      edtDBC500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC500);
                    end;
                  f750:
                    begin
                      edtDBC750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC750);
                    end;
                  f1K:
                    begin
                      edtDBC1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC1K);
                    end;
                  f1K5:
                    begin
                      edtDBC1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC1K5);
                    end;
                  f2K:
                    begin
                      edtDBC2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC2K);
                    end;
                  f3K:
                    begin
                      edtDBC3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC3K);
                    end;
                  f4K:
                    begin
                      edtDBC4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC4K);
                    end;
                  f6K:
                    begin
                      edtDBC6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC6K);
                    end;
                  f8K:
                    begin
                      edtDBC8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC8K);
                    end;
                  f10K:
                    begin
                      edtDBC10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDBC10KExit(edtDBC10K);
                    end;
                end;
              end;
            eVAM:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtDMCL125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL125);
                    end;
                  f250:
                    begin
                      edtDMCL250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL250);
                    end;
                  f500:
                    begin
                      edtDMCL500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL500);
                    end;
                  f750:
                    begin
                      edtDMCL750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL750);
                    end;
                  f1K:
                    begin
                      edtDMCL1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL1K);
                    end;
                  f1K5:
                    begin
                      edtDMCL1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL1K5);
                    end;
                  f2K:
                    begin
                      edtDMCL2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL2K);
                    end;
                  f3K:
                    begin
                      edtDMCL3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL3K);
                    end;
                  f4K:
                    begin
                      edtDMCL4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL4K);
                    end;
                  f6K:
                    begin
                      edtDMCL6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL6K);
                    end;
                  f8K:
                    begin
                      edtDMCL8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL8K);
                    end;
                  f10K:
                    begin
                      edtDMCL10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDMCL10KExit(edtDMCL10K);
                    end;
                end;
              end;
            eVOM:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtDUCL125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL125);
                    end;
                  f250:
                    begin
                      edtDUCL250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL250);
                    end;
                  f500:
                    begin
                      edtDUCL500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL500);
                    end;
                  f750:
                    begin
                      edtDUCL750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL750);
                    end;
                  f1K:
                    begin
                      edtDUCL1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL1K);
                    end;
                  f1K5:
                    begin
                      edtDUCL1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL1K5);
                    end;
                  f2K:
                    begin
                      edtDUCL2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL2K);
                    end;
                  f3K:
                    begin
                      edtDUCL3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL3K);
                    end;
                  f4K:
                    begin
                      edtDUCL4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL4K);
                    end;
                  f6K:
                    begin
                      edtDUCL6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL6K);
                    end;
                  f8K:
                    begin
                      edtDUCL8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL8K);
                    end;
                  f10K:
                    begin
                      edtDUCL10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtDUCL10KExit(edtDUCL10K);
                    end;
                end;
              end;
          end;
        end;
      oEsquerda:
        begin
          case Dado.Tipo of
            eVA:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtEAC125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC125);
                    end;
                  f250:
                    begin
                      edtEAC250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC250);
                    end;
                  f500:
                    begin
                      edtEAC500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC500);
                    end;
                  f750:
                    begin
                      edtEAC750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC750);
                    end;
                  f1K:
                    begin
                      edtEAC1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC1K);
                    end;
                  f1K5:
                    begin
                      edtEAC1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC1K5);
                    end;
                  f2K:
                    begin
                      edtEAC2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC2K);
                    end;
                  f3K:
                    begin
                      edtEAC3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC3K);
                    end;
                  f4K:
                    begin
                      edtEAC4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC4K);
                    end;
                  f6K:
                    begin
                      edtEAC6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC6K);
                    end;
                  f8K:
                    begin
                      edtEAC8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC8K);
                    end;
                  f10K:
                    begin
                      edtEAC10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEAC10KExit(edtEAC10K);
                    end;
                end;
              end;
            eVO:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtEBC125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC125);
                    end;
                  f250:
                    begin
                      edtEBC250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC250);
                    end;
                  f500:
                    begin
                      edtEBC500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC500);
                    end;
                  f750:
                    begin
                      edtEBC750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC750);
                    end;
                  f1K:
                    begin
                      edtEBC1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC1K);
                    end;
                  f1K5:
                    begin
                      edtEBC1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC1K5);
                    end;
                  f2K:
                    begin
                      edtEBC2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC2K);
                    end;
                  f3K:
                    begin
                      edtEBC3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC3K);
                    end;
                  f4K:
                    begin
                      edtEBC4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC4K);
                    end;
                  f6K:
                    begin
                      edtEBC6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC6K);
                    end;
                  f8K:
                    begin
                      edtEBC8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC8K);
                    end;
                  f10K:
                    begin
                      edtEBC10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEBC10KExit(edtEBC10K);
                    end;
                end;
              end;
            eVAM:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtEMCL125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL125);
                    end;
                  f250:
                    begin
                      edtEMCL250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL250);
                    end;
                  f500:
                    begin
                      edtEMCL500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL500);
                    end;
                  f750:
                    begin
                      edtEMCL750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL750);
                    end;
                  f1K:
                    begin
                      edtEMCL1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL1K);
                    end;
                  f1K5:
                    begin
                      edtEMCL1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL1K5);
                    end;
                  f2K:
                    begin
                      edtEMCL2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL2K);
                    end;
                  f3K:
                    begin
                      edtEMCL3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL3K);
                    end;
                  f4K:
                    begin
                      edtEMCL4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL4K);
                    end;
                  f6K:
                    begin
                      edtEMCL6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL6K);
                    end;
                  f8K:
                    begin
                      edtEMCL8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL8K);
                    end;
                  f10K:
                    begin
                      edtEMCL10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEMCL10KExit(edtEMCL10K);
                    end;
                end;
              end;
            eVOM:
              begin
                case Dado.Frequencia of
                  f125:
                    begin
                      edtEUCL125.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL125);
                    end;
                  f250:
                    begin
                      edtEUCL250.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL250);
                    end;
                  f500:
                    begin
                      edtEUCL500.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL500);
                    end;
                  f750:
                    begin
                      edtEUCL750.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL750);
                    end;
                  f1K:
                    begin
                      edtEUCL1K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL1K);
                    end;
                  f1K5:
                    begin
                      edtEUCL1K5.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL1K5);
                    end;
                  f2K:
                    begin
                      edtEUCL2K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL2K);
                    end;
                  f3K:
                    begin
                      edtEUCL3K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL3K);
                    end;
                  f4K:
                    begin
                      edtEUCL4K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL4K);
                    end;
                  f6K:
                    begin
                      edtEUCL6K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL6K);
                    end;
                  f8K:
                    begin
                      edtEUCL8K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL8K);
                    end;
                  f10K:
                    begin
                      edtEUCL10K.Text := IfThen(Dado.Valor <> -1, Dado.Valor.ToString);
                      chkSemResposta.Checked := Dado.SemResposta;
                      edtEUCL10KExit(edtEUCL10K);
                    end;
                end;
              end;
          end;
        end;
    end;
  end;

  chkSemResposta.Checked := False;
end;

procedure TFExames.ResetDados;
begin
  if Assigned(FMarcadores) then
  begin
    FMarcadores.Clear;
    FreeAndNil(FMarcadores);
  end;

  FMarcadores := TObjectList<TMarcador>.Create;

  edtDAC10K.Text := '';
  edtDAC8K.Text  := '';
  edtDAC6K.Text  := '';
  edtDAC4K.Text  := '';
  edtDAC3K.Text  := '';
  edtDAC2K.Text  := '';
  edtDAC1K5.Text := '';
  edtDAC1K.Text  := '';
  edtDAC750.Text := '';
  edtDAC500.Text := '';
  edtDAC250.Text := '';
  edtDAC125.Text := '';

  edtDBC10K.Text := '';
  edtDBC8K.Text  := '';
  edtDBC6K.Text  := '';
  edtDBC4K.Text  := '';
  edtDBC3K.Text  := '';
  edtDBC2K.Text  := '';
  edtDBC1K5.Text := '';
  edtDBC1K.Text  := '';
  edtDBC750.Text := '';
  edtDBC500.Text := '';
  edtDBC250.Text := '';
  edtDBC125.Text := '';

  edtDMCL10K.Text := '';
  edtDMCL8K.Text  := '';
  edtDMCL6K.Text  := '';
  edtDMCL4K.Text  := '';
  edtDMCL3K.Text  := '';
  edtDMCL2K.Text  := '';
  edtDMCL1K5.Text := '';
  edtDMCL1K.Text  := '';
  edtDMCL750.Text := '';
  edtDMCL500.Text := '';
  edtDMCL250.Text := '';
  edtDMCL125.Text := '';

  edtDUCL10K.Text := '';
  edtDUCL8K.Text  := '';
  edtDUCL6K.Text  := '';
  edtDUCL4K.Text  := '';
  edtDUCL3K.Text  := '';
  edtDUCL2K.Text  := '';
  edtDUCL1K5.Text := '';
  edtDUCL1K.Text  := '';
  edtDUCL750.Text := '';
  edtDUCL500.Text := '';
  edtDUCL250.Text := '';
  edtDUCL125.Text := '';

  edtEAC10K.Text := '';
  edtEAC8K.Text  := '';
  edtEAC6K.Text  := '';
  edtEAC4K.Text  := '';
  edtEAC3K.Text  := '';
  edtEAC2K.Text  := '';
  edtEAC1K5.Text := '';
  edtEAC1K.Text  := '';
  edtEAC750.Text := '';
  edtEAC500.Text := '';
  edtEAC250.Text := '';
  edtEAC125.Text := '';

  edtEBC10K.Text := '';
  edtEBC8K.Text  := '';
  edtEBC6K.Text  := '';
  edtEBC4K.Text  := '';
  edtEBC3K.Text  := '';
  edtEBC2K.Text  := '';
  edtEBC1K5.Text := '';
  edtEBC1K.Text  := '';
  edtEBC750.Text := '';
  edtEBC500.Text := '';
  edtEBC250.Text := '';
  edtEBC125.Text := '';

  edtEMCL10K.Text := '';
  edtEMCL8K.Text  := '';
  edtEMCL6K.Text  := '';
  edtEMCL4K.Text  := '';
  edtEMCL3K.Text  := '';
  edtEMCL2K.Text  := '';
  edtEMCL1K5.Text := '';
  edtEMCL1K.Text  := '';
  edtEMCL750.Text := '';
  edtEMCL500.Text := '';
  edtEMCL250.Text := '';
  edtEMCL125.Text := '';

  edtEUCL10K.Text := '';
  edtEUCL8K.Text  := '';
  edtEUCL6K.Text  := '';
  edtEUCL4K.Text  := '';
  edtEUCL3K.Text  := '';
  edtEUCL2K.Text  := '';
  edtEUCL1K5.Text := '';
  edtEUCL1K.Text  := '';
  edtEUCL750.Text := '';
  edtEUCL500.Text := '';
  edtEUCL250.Text := '';
  edtEUCL125.Text := '';

  edtSRTDireito.Text  := '';
  edtSRTEsquerdo.Text := '';

  edtIRFDireito.Text  := '';
  edtIRFEsquerdo.Text := '';

  edtMonoDireito.Text  := '';
  edtMonoEsquerdo.Text := '';

  edtDissDireito.Text  := '';
  edtDissEsquerdo.Text := '';

  edtWeber500.Text := '';
  edtWeber1K.Text  := '';
  edtWeber2K.Text  := '';
  edtWeber4K.Text  := '';

  edtLimiarD500.Text := '';
  edtLimiarD1K.Text  := '';
  edtLimiarD2K.Text  := '';
  edtLimiarD4K.Text  := '';

  edtAFDContra500.Text := '';
  edtAFDContra1K.Text  := '';
  edtAFDContra2K.Text  := '';
  edtAFDContra4K.Text  := '';

  edtDiferD500.Text := '';
  edtDiferD1K.Text  := '';
  edtDiferD2K.Text  := '';
  edtDiferD4K.Text  := '';

  edtAFDIpsi500.Text := '';
  edtAFDIpsi1K.Text  := '';
  edtAFDIpsi2K.Text  := '';
  edtAFDIpsi4K.Text  := '';

  edtDecayD500.Text := '';
  edtDecayD1K.Text  := '';
  edtDecayD2K.Text  := '';
  edtDecayD4K.Text  := '';

  edtLimiarE500.Text := '';
  edtLimiarE1K.Text  := '';
  edtLimiarE2K.Text  := '';
  edtLimiarE4K.Text  := '';

  edtAFEContra500.Text := '';
  edtAFEContra1K.Text  := '';
  edtAFEContra2K.Text  := '';
  edtAFEContra4K.Text  := '';

  edtDiferE500.Text := '';
  edtDiferE1K.Text  := '';
  edtDiferE2K.Text  := '';
  edtDiferE4K.Text  := '';

  edtAFEIpsi500.Text := '';
  edtAFEIpsi1K.Text  := '';
  edtAFEIpsi2K.Text  := '';
  edtAFEIpsi4K.Text  := '';

  edtDecayE500.Text := '';
  edtDecayE1K.Text  := '';
  edtDecayE2K.Text  := '';
  edtDecayE4K.Text  := '';

  mmoLaudoDireito.Clear;
  mmoLaudoEsquerdo.Clear;

  edtPpoD.Text := '';
  edtPngD.Text := '';
  edtCmpD.Text := '';

  edtPpoE.Text := '';
  edtPngE.Text := '';
  edtCmpE.Text := '';

  srsImitanciometriaDireita.Clear;
  srsImitanciometriaEsquerda.Clear;
  srsAudioDireita.Clear;
  srsAudioEsquerda.Clear;

  FExame := TAudiometria.Create;
end;

procedure TFExames.SalvarRegistro;
var
  Script: TStringBuilder;
  I: Integer;
  Marca: TMarcador;
  Reflexo: TReflexo;
  Imita: TImitanciometria;
begin
  if not Assigned(FMarcadores) then
    Exit;

  if not Assigned(FImitaEsquerdo) then
    Exit;

  if not Assigned(FImitaDireito) then
    Exit;

  if not Assigned(FDadosReflexo) then
    Exit;

  Script := TStringBuilder.Create;
  try
    {$REGION ' Exclui Registros '}
      Sessao.ExecSql('DELETE FROM REFLEXO_ACUSTICO ' + sLineBreak +
        'WHERE ID_PESSOA = ' + Exame.IdPessoa.ToString + sLineBreak +
        '  AND SEQ = ' + Exame.Seq.ToString);

      Sessao.ExecSql('DELETE FROM AUDIOMETRIA_DADOS ' + sLineBreak +
        'WHERE ID_PESSOA = ' + Exame.IdPessoa.ToString + sLineBreak +
        '  AND SEQ = ' + Exame.Seq.ToString);

      Sessao.ExecSql('DELETE FROM IMITANCIOMETRIA ' + sLineBreak +
        'WHERE ID_PESSOA = ' + Exame.IdPessoa.ToString + sLineBreak +
        '  AND SEQ = ' + Exame.Seq.ToString);

      Sessao.ExecSql('DELETE FROM LOGOAUDIOMETRIA ' + sLineBreak +
        'WHERE ID_PESSOA = ' + Exame.IdPessoa.ToString + sLineBreak +
        '  AND SEQ = ' + Exame.Seq.ToString);
    {$ENDREGION}

    Script.Append('UPDATE OR INSERT INTO AUDIOMETRIA (ID_PESSOA, SEQ, DATA, ID_USUARIO) ').Append(sLineBreak)
          .Append('VALUES ([ID_PESSOA], [SEQ], [DATA], [ID_USUARIO]) MATCHING (ID_PESSOA, DATA); ');

    Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
    Script.Replace('[SEQ]', Exame.Seq.ToString);
    Script.Replace('[DATA]', TUteis.DataSQL(Exame.Data, False));
    Script.Replace('[ID_USUARIO]', Exame.IdUsuario.ToString);

    Sessao.ExecSql(Script.ToString);

    Script.Clear;

    Script.Append('INSERT INTO LOGOAUDIOMETRIA (ID_PESSOA, SEQ, SRT_DIREITO, SRT_ESQUERDO, IRF_DIREITO, ').Append(sLineBreak)
          .Append('  IRF_ESQUERDO, MONO_DIREITO, MONO_ESQUERDO, DISS_DIREITO, DISS_ESQUERDO, ').Append(sLineBreak)
          .Append('  WEBER_500, WEBER_1K, WEBER_2K, WEBER_4K, LAUDO_DIREITO, LAUDO_ESQUERDO) ').Append(sLineBreak)
          .Append('VALUES ([ID_PESSOA], [SEQ], [SRT_DIREITO], [SRT_ESQUERDO], [IRF_DIREITO], ').Append(sLineBreak)
          .Append('  [IRF_ESQUERDO], [MONO_DIREITO], [MONO_ESQUERDO], [DISS_DIREITO], [DISS_ESQUERDO], ').Append(sLineBreak)
          .Append('  [WEBER_500], [WEBER_1K], [WEBER_2K], [WEBER_4K], [LAUDO_DIREITO], [LAUDO_ESQUERDO]); ');

    Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
    Script.Replace('[SEQ]', Exame.Seq.ToString);
    Script.Replace('[SRT_DIREITO]', Exame.LogoAudio.SrtDireito.ToString);
    Script.Replace('[SRT_ESQUERDO]', Exame.LogoAudio.SrtEsquerdo.ToString);
    Script.Replace('[IRF_DIREITO]', Exame.LogoAudio.IrfDireito.ToString);
    Script.Replace('[IRF_ESQUERDO]', Exame.LogoAudio.IrfEsquerdo.ToString);
    Script.Replace('[MONO_DIREITO]', Exame.LogoAudio.MonoDireito.ToString);
    Script.Replace('[MONO_ESQUERDO]', Exame.LogoAudio.MonoEsquerdo.ToString);
    Script.Replace('[DISS_DIREITO]', Exame.LogoAudio.DissDireito.ToString);
    Script.Replace('[DISS_ESQUERDO]', Exame.LogoAudio.DissEsquerdo.ToString);
    Script.Replace('[WEBER_500]', Exame.LogoAudio.Weber500.QuotedString);
    Script.Replace('[WEBER_1K]', Exame.LogoAudio.Weber1K.QuotedString);
    Script.Replace('[WEBER_2K]', Exame.LogoAudio.Weber2K.QuotedString);
    Script.Replace('[WEBER_4K]', Exame.LogoAudio.Weber4K.QuotedString);
    Script.Replace('[LAUDO_DIREITO]', Exame.LogoAudio.LaudoDireito.QuotedString);
    Script.Replace('[LAUDO_ESQUERDO]', Exame.LogoAudio.LaudoEsquerdo.QuotedString);

    Sessao.ExecSql(Script.ToString);

    for I := 0 to Marcadores.Count -1 do
    begin
      Marca := Marcadores[I];

      Script.Clear;

      Script.Append('INSERT INTO AUDIOMETRIA_DADOS (ID_PESSOA, SEQ, ORELHA, TIPO, FREQUENCIA, VALOR, SEM_RESPOSTA) ').Append(sLineBreak)
            .Append('VALUES ([ID_PESSOA], [SEQ], [ORELHA], [TIPO], [FREQUENCIA], [VALOR], [SEM_RESPOSTA]); ');

      Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
      Script.Replace('[SEQ]', Exame.Seq.ToString);
      Script.Replace('[ORELHA]', Marca.Orelha.ToString.QuotedString);
      Script.Replace('[TIPO]', Marca.Tipo.ToString.QuotedString);
      Script.Replace('[FREQUENCIA]', Marca.Frequencia.ToInteger.ToString);
      Script.Replace('[VALOR]', Marca.Intensidade.Value.ToString);
      Script.Replace('[SEM_RESPOSTA]', IfThen(Marca.SemResposta, 'S', 'N').QuotedString);

      Sessao.ExecSql(Script.ToString);
    end;

    for I := 0 to DadosReflexo.Count -1 do
    begin
      Reflexo := DadosReflexo[I];

      Script.Clear;

      Script.Append('INSERT INTO REFLEXO_ACUSTICO (ID_PESSOA, SEQ, ORELHA, TIPO, FREQUENCIA, VALOR) ').Append(sLineBreak)
            .Append('VALUES ([ID_PESSOA], [SEQ], [ORELHA], [TIPO], [FREQUENCIA], [VALOR]); ');

      Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
      Script.Replace('[SEQ]', Exame.Seq.ToString);
      Script.Replace('[ORELHA]', Reflexo.Orelha.ToString.QuotedString);
      Script.Replace('[TIPO]', Integer(Reflexo.Tipo).ToString);
      Script.Replace('[FREQUENCIA]', Reflexo.Frequencia.ToInteger.ToString);
      Script.Replace('[VALOR]', Reflexo.Valor.ToString);

      Sessao.ExecSql(Script.ToString);
    end;

    for I := 0 to ImitaDireito.Count -1 do
    begin
      Imita := ImitaDireito[I];

      Script.Clear;

      Script.Append('INSERT INTO IMITANCIOMETRIA (ID_PESSOA, SEQ, ORELHA, TIPO, VALOR) ').Append(sLineBreak)
            .Append('VALUES ([ID_PESSOA], [SEQ], [ORELHA], [TIPO], [VALOR]); ');

      Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
      Script.Replace('[SEQ]', Exame.Seq.ToString);
      Script.Replace('[ORELHA]', Imita.Orelha.ToString.QuotedString);
      Script.Replace('[TIPO]', Imita.Tipo.ToString.QuotedString);
      Script.Replace('[VALOR]', FloatToSQL(Imita.Valor));

      Sessao.ExecSql(Script.ToString);
    end;

    for I := 0 to ImitaEsquerdo.Count -1 do
    begin
      Imita := ImitaEsquerdo[I];

      Script.Clear;

      Script.Append('INSERT INTO IMITANCIOMETRIA (ID_PESSOA, SEQ, ORELHA, TIPO, VALOR) ').Append(sLineBreak)
            .Append('VALUES ([ID_PESSOA], [SEQ], [ORELHA], [TIPO], [VALOR]); ');

      Script.Replace('[ID_PESSOA]', Exame.IdPessoa.ToString);
      Script.Replace('[SEQ]', Exame.Seq.ToString);
      Script.Replace('[ORELHA]', Imita.Orelha.ToString.QuotedString);
      Script.Replace('[TIPO]', Imita.Tipo.ToString.QuotedString);
      Script.Replace('[VALOR]', FloatToSQL(Imita.Valor));

      Sessao.ExecSql(Script.ToString);
    end;
  finally

    FreeAndNil(Script);
  end;
end;

procedure TFExames.SetDadosReflexo(const Value: TObjectList<TReflexo>);
begin
  FDadosReflexo := Value;
end;

procedure TFExames.SetExame(const Value: TAudiometria);
begin
  FExame := Value;
end;

procedure TFExames.SetImitaDireito(
  const Value: TObjectList<TImitanciometria>);
begin
  FImitaDireito := Value;
end;

procedure TFExames.SetImitaEsquerdo(
  const Value: TObjectList<TImitanciometria>);
begin
  FImitaEsquerdo := Value;
end;

procedure TFExames.SetMarcadores(const Value: TObjectList<TMarcador>);
begin
  FMarcadores := Value;
end;

end.
