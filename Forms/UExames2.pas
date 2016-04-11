unit UExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDefault, Vcl.StdCtrls, Vcl.Mask, System.Types, System.Generics.Collections,
  RzEdit, RzBtnEdt, Vcl.ExtCtrls, RzPanel, Utils.Consulta, JvExMask, StrUtils,
  JvToolEdit, obj.Pessoas, CurvyControls, AdvGlowButton, Utils.Util,
  htmlbtns, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.Series, JvExControls, JvChart, Data.DB,
  Datasnap.DBClient, VCLTee.DBChart, Utils.Message, Utils.Types,
  dxGDIPlusClasses, obj.Audiometria, AdvScrollBox;

type
  TFExames = class(TFDefault)
    grp4: TRzGroupBox;
    pnl10: TRzPanel;
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
    btnSalvar: TAdvGlowButton;
    grp3: TRzGroupBox;
    mmoPacObs: TRzMemo;
    scbxExame: TAdvScrollBox;
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
    chtDireita: TChart;
    srsDAC: TFastLineSeries;
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
    chtEsquerda: TChart;
    srsEAC: TFastLineSeries;
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
    procedure edtPacCodButtonClick(Sender: TObject);
    procedure edtPacCodKeyPress(Sender: TObject; var Key: Char);
    procedure edtPacCodEnter(Sender: TObject);
    procedure edtPacCodExit(Sender: TObject);
    procedure edtDAC10KEnter(Sender: TObject);
    procedure edtDAC10KExit(Sender: TObject);
    procedure edtEAC125Enter(Sender: TObject);
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
    procedure chtDireitaClickBackground(Sender: TCustomChart;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure edtDataExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FSource: TMarcador;
    FDestination: TMarcador;
    FEstimulo: TEstimulo;
    FMarcadores: TObjectList<TMarcador>;
    FExame: TAudiometria;
    procedure ResetDados;
    procedure RefreshGrafico(AGrafico: TOrelha);
    procedure ArmazenaPontosGrafico;
    function getFrequencia(AValor: string): TFrequencia;
    function getEstimulo(AValor: string): TEstimulo;
    procedure SetMarcadores(const Value: TObjectList<TMarcador>);
    function BuscaExame: Boolean;
    procedure PopulaDados;
    procedure SetExame(const Value: TAudiometria);
    function EstimuloFromBotoes: TEstimulo;
    procedure SalvarRegistro;
  public
    property Marcadores: TObjectList<TMarcador> read FMarcadores write SetMarcadores;
    property Exame: TAudiometria read FExame write SetExame;
    procedure ImgMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  end;

var
  FExames: TFExames;

implementation

{$R *.dfm}

uses UPrincipal;

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
      Inc(Cont);

      FPontos[Cont].Frequencia  := Freq;
      FPontos[Cont].Intensidade := Inte;
      FPontos[Cont].Local       := Point(Freq.X, Inte.Y);
    end;
  end;
end;

procedure TFExames.btnCopiaDEClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma a cópia dos dados para a Orelha Esquerda?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  edtEAC10K.Text := edtDAC10K.Text;
  edtEAC8K.Text  := edtDAC8K.Text;
  edtEAC6K.Text  := edtDAC6K.Text;
  edtEAC4K.Text  := edtDAC4K.Text;
  edtEAC3K.Text  := edtDAC3K.Text;
  edtEAC2K.Text  := edtDAC2K.Text;
  edtEAC1K5.Text := edtDAC1K5.Text;
  edtEAC1K.Text  := edtDAC1K.Text;
  edtEAC750.Text := edtDAC750.Text;
  edtEAC500.Text := edtDAC500.Text;
  edtEAC250.Text := edtDAC250.Text;
  edtEAC125.Text := edtDAC125.Text;

  edtEBC10K.Text := edtDBC10K.Text;
  edtEBC8K.Text  := edtDBC8K.Text;
  edtEBC6K.Text  := edtDBC6K.Text;
  edtEBC4K.Text  := edtDBC4K.Text;
  edtEBC3K.Text  := edtDBC3K.Text;
  edtEBC2K.Text  := edtDBC2K.Text;
  edtEBC1K5.Text := edtDBC1K5.Text;
  edtEBC1K.Text  := edtDBC1K.Text;
  edtEBC750.Text := edtDBC750.Text;
  edtEBC500.Text := edtDBC500.Text;
  edtEBC250.Text := edtDBC250.Text;
  edtEBC125.Text := edtDBC125.Text;

  edtEMCL10K.Text := edtDMCL10K.Text;
  edtEMCL8K.Text  := edtDMCL8K.Text;
  edtEMCL6K.Text  := edtDMCL6K.Text;
  edtEMCL4K.Text  := edtDMCL4K.Text;
  edtEMCL3K.Text  := edtDMCL3K.Text;
  edtEMCL2K.Text  := edtDMCL2K.Text;
  edtEMCL1K5.Text := edtDMCL1K5.Text;
  edtEMCL1K.Text  := edtDMCL1K.Text;
  edtEMCL750.Text := edtDMCL750.Text;
  edtEMCL500.Text := edtDMCL500.Text;
  edtEMCL250.Text := edtDMCL250.Text;
  edtEMCL125.Text := edtDMCL125.Text;

  edtEUCL10K.Text := edtDUCL10K.Text;
  edtEUCL8K.Text  := edtDUCL8K.Text;
  edtEUCL6K.Text  := edtDUCL6K.Text;
  edtEUCL4K.Text  := edtDUCL4K.Text;
  edtEUCL3K.Text  := edtDUCL3K.Text;
  edtEUCL2K.Text  := edtDUCL2K.Text;
  edtEUCL1K5.Text := edtDUCL1K5.Text;
  edtEUCL1K.Text  := edtDUCL1K.Text;
  edtEUCL750.Text := edtDUCL750.Text;
  edtEUCL500.Text := edtDUCL500.Text;
  edtEUCL250.Text := edtDUCL250.Text;
  edtEUCL125.Text := edtDUCL125.Text;
end;

procedure TFExames.btnCopiaEDClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma a cópia dos dados para a Orelha Direita?', tmQuestao, tbSimNao) = mrNo then
    Exit;

  edtDAC10K.Text := edtEAC10K.Text;
  edtDAC8K.Text  := edtEAC8K.Text;
  edtDAC6K.Text  := edtEAC6K.Text;
  edtDAC4K.Text  := edtEAC4K.Text;
  edtDAC3K.Text  := edtEAC3K.Text;
  edtDAC2K.Text  := edtEAC2K.Text;
  edtDAC1K5.Text := edtEAC1K5.Text;
  edtDAC1K.Text  := edtEAC1K.Text;
  edtDAC750.Text := edtEAC750.Text;
  edtDAC500.Text := edtEAC500.Text;
  edtDAC250.Text := edtEAC250.Text;
  edtDAC125.Text := edtEAC125.Text;

  edtDBC10K.Text := edtEBC10K.Text;
  edtDBC8K.Text  := edtEBC8K.Text;
  edtDBC6K.Text  := edtEBC6K.Text;
  edtDBC4K.Text  := edtEBC4K.Text;
  edtDBC3K.Text  := edtEBC3K.Text;
  edtDBC2K.Text  := edtEBC2K.Text;
  edtDBC1K5.Text := edtEBC1K5.Text;
  edtDBC1K.Text  := edtEBC1K.Text;
  edtDBC750.Text := edtEBC750.Text;
  edtDBC500.Text := edtEBC500.Text;
  edtDBC250.Text := edtEBC250.Text;
  edtDBC125.Text := edtEBC125.Text;

  edtDMCL10K.Text := edtEMCL10K.Text;
  edtDMCL8K.Text  := edtEMCL8K.Text;
  edtDMCL6K.Text  := edtEMCL6K.Text;
  edtDMCL4K.Text  := edtEMCL4K.Text;
  edtDMCL3K.Text  := edtEMCL3K.Text;
  edtDMCL2K.Text  := edtEMCL2K.Text;
  edtDMCL1K5.Text := edtEMCL1K5.Text;
  edtDMCL1K.Text  := edtEMCL1K.Text;
  edtDMCL750.Text := edtEMCL750.Text;
  edtDMCL500.Text := edtEMCL500.Text;
  edtDMCL250.Text := edtEMCL250.Text;
  edtDMCL125.Text := edtEMCL125.Text;

  edtDUCL10K.Text := edtEUCL10K.Text;
  edtDUCL8K.Text  := edtEUCL8K.Text;
  edtDUCL6K.Text  := edtEUCL6K.Text;
  edtDUCL4K.Text  := edtEUCL4K.Text;
  edtDUCL3K.Text  := edtEUCL3K.Text;
  edtDUCL2K.Text  := edtEUCL2K.Text;
  edtDUCL1K5.Text := edtEUCL1K5.Text;
  edtDUCL1K.Text  := edtEUCL1K.Text;
  edtDUCL750.Text := edtEUCL750.Text;
  edtDUCL500.Text := edtEUCL500.Text;
  edtDUCL250.Text := edtEUCL250.Text;
  edtDUCL125.Text := edtEUCL125.Text;
end;

procedure TFExames.btnImprimirClick(Sender: TObject);
var
  R: TRect;
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  try
    R := Rect(0, 0, chtDireita.Width, chtDireita.Height);
    Bmp.SetSize(chtDireita.Width, chtDireita.Height);
//    chtDireita.Canvas.RenderToBitmap(Bmp, R);
    Bmp.Canvas.CopyRect(R, pnlChtDireita.Canvas, R);
    Bmp.SaveToFile('C:\Temp\Grafico.bmp');
  finally
    FreeAndNil(Bmp);
  end;
end;

procedure TFExames.btnSalvarClick(Sender: TObject);
begin
  if TMensagens.ShowMessage('Confirma os dados do exame?', tmQuestao, tbSimNao) = mrNo then
    Exit;

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

procedure TFExames.chtDireitaClickBackground(Sender: TCustomChart;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  NewFreq: TFrequencia;
  NewInt: TIntensidade;
  NewEst: TEstimulo;
begin
//  NewFreq := TFrequencia.FromRange(X);
//  NewInt  := TIntensidade.FromRange(Y);
//  NewEst  := EstimuloFromBotoes;
//
//  if (NewFreq <> fInvalido) and (NewInt <> iInvalido) then
//  begin
//    case NewEst of
//      eVA:
//        begin
//          case NewFreq of
//            f125:
//              begin
//                edtDAC125.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC125);
//              end;
//            f250:
//              begin
//                edtDAC250.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC250);
//              end;
//            f500:
//              begin
//                edtDAC500.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC500);
//              end;
//            f750:
//              begin
//                edtDAC750.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC750);
//              end;
//            f1K :
//              begin
//                edtDAC1K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC1K);
//              end;
//            f1K5:
//              begin
//                edtDAC1K5.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC1K5);
//              end;
//            f2K :
//              begin
//                edtDAC2K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC2K);
//              end;
//            f3K :
//              begin
//                edtDAC3K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC3K);
//              end;
//            f4K :
//              begin
//                edtDAC4K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC4K);
//              end;
//            f6K :
//              begin
//                edtDAC6K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC6K);
//              end;
//            f8K :
//              begin
//                edtDAC8K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC8K);
//              end;
//            f10K:
//              begin
//                edtDAC10K.Text := NewInt.Value.ToString;
//                edtDAC10KExit(edtDAC10K);
//              end;
//          end;
//        end;
//      eVO:
//        begin
//          case NewFreq of
//            f125:
//              begin
//                edtDBC125.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC125);
//              end;
//            f250:
//              begin
//                edtDBC250.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC250);
//              end;
//            f500:
//              begin
//                edtDBC500.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC500);
//              end;
//            f750:
//              begin
//                edtDBC750.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC750);
//              end;
//            f1K :
//              begin
//                edtDBC1K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC1K);
//              end;
//            f1K5:
//              begin
//                edtDBC1K5.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC1K5);
//              end;
//            f2K :
//              begin
//                edtDBC2K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC2K);
//              end;
//            f3K :
//              begin
//                edtDBC3K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC3K);
//              end;
//            f4K :
//              begin
//                edtDBC4K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC4K);
//              end;
//            f6K :
//              begin
//                edtDBC6K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC6K);
//              end;
//            f8K :
//              begin
//                edtDBC8K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC8K);
//              end;
//            f10K:
//              begin
//                edtDBC10K.Text := NewInt.Value.ToString;
//                edtDBC10KExit(edtDBC10K);
//              end;
//          end;
//        end;
//      eVAM:
//        begin
//          case NewFreq of
//            f125:
//              begin
//                edtDMCL125.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL125);
//              end;
//            f250:
//              begin
//                edtDMCL250.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL250);
//              end;
//            f500:
//              begin
//                edtDMCL500.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL500);
//              end;
//            f750:
//              begin
//                edtDMCL750.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL750);
//              end;
//            f1K :
//              begin
//                edtDMCL1K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL1K);
//              end;
//            f1K5:
//              begin
//                edtDMCL1K5.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL1K5);
//              end;
//            f2K :
//              begin
//                edtDMCL2K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL2K);
//              end;
//            f3K :
//              begin
//                edtDMCL3K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL3K);
//              end;
//            f4K :
//              begin
//                edtDMCL4K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL4K);
//              end;
//            f6K :
//              begin
//                edtDMCL6K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL6K);
//              end;
//            f8K :
//              begin
//                edtDMCL8K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL8K);
//              end;
//            f10K:
//              begin
//                edtDMCL10K.Text := NewInt.Value.ToString;
//                edtDMCL10KExit(edtDMCL10K);
//              end;
//          end;
//        end;
//      eVOM:
//        begin
//          case NewFreq of
//            f125:
//              begin
//                edtDUCL125.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL125);
//              end;
//            f250:
//              begin
//                edtDUCL250.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL250);
//              end;
//            f500:
//              begin
//                edtDUCL500.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL500);
//              end;
//            f750:
//              begin
//                edtDUCL750.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL750);
//              end;
//            f1K :
//              begin
//                edtDUCL1K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL1K);
//              end;
//            f1K5:
//              begin
//                edtDUCL1K5.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL1K5);
//              end;
//            f2K :
//              begin
//                edtDUCL2K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL2K);
//              end;
//            f3K :
//              begin
//                edtDUCL3K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL3K);
//              end;
//            f4K :
//              begin
//                edtDUCL4K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL4K);
//              end;
//            f6K :
//              begin
//                edtDUCL6K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL6K);
//              end;
//            f8K :
//              begin
//                edtDUCL8K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL8K);
//              end;
//            f10K:
//              begin
//                edtDUCL10K.Text := NewInt.Value.ToString;
//                edtDUCL10KExit(edtDUCL10K);
//              end;
//          end;
//        end;
//    end;
//  end;
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

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) then
    begin
      Marca := Marcadores[I];
      Marcadores.Remove(Marca);
      Break;
    end;
  end;

  if Valor = -1 then
    Exit;

  chtDireita.Repaint;

  Marca := TMarcador.Create(chtDireita);
  Marca.Parent      := chtDireita;
  Marca.Orelha      := oDireita;
  Marca.SemResposta := chkSemResposta.Checked;
  Marca.Frequencia  := NovaFrequencia;
  Marca.Intensidade := NovoValor;
  Marca.Tipo        := NovoTipo;
  Marca.OnMouseDown := ImgMouseDown;
  Marca.Exibir;

//  if Assigned(FSource) then
//  begin
//    FDestination := Marca;
//
//    chtDireita.Canvas.Pen.Width := 3;
//    chtDireita.Canvas.Pen.Color := $000000EA;
//
//    chtDireita.Canvas.MoveTo(FSource.Frequencia.X + 8, FSource.Intensidade.Y + 8);
//    chtDireita.Canvas.LineTo(FDestination.Frequencia.X + 8, FDestination.Intensidade.Y + 8);
//
//    FSource := nil;
//    FDestination := nil;
//  end
//  else
//    FSource := Marca;

  Marcadores.Add(Marca);
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

  if BuscaExame then
    PopulaDados
  else
    ResetDados;
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

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) then
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

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) then
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

  TCurvyEdit(Sender).BorderColor := clGray;
  TCurvyEdit(Sender).Color       := $00DFDFDF;
  TCurvyEdit(Sender).Font.Color  := clBlack;
  TCurvyEdit(Sender).Font.Style  := [];

  NovoTipo       := getEstimulo(TCurvyEdit(Sender).Name);
  NovaFrequencia := getFrequencia(TCurvyEdit(Sender).Name);
  NovoValor      := TIntensidade.FromInteger(Valor);

  for I := 0 to Marcadores.Count -1 do
  begin
    if (Marcadores[I].Tipo = NovoTipo) and (Marcadores[I].Frequencia = NovaFrequencia) then
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

procedure TFExames.edtEAC125Enter(Sender: TObject);
begin
  TCurvyEdit(Sender).BorderColor := clBlue;
  TCurvyEdit(Sender).Color       := $00FFCD9B;
  TCurvyEdit(Sender).Font.Color  := $00CC0000;
  TCurvyEdit(Sender).Font.Style  := [fsBold, fsItalic];
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

  FMarcadores := TObjectList<TMarcador>.Create;

  chtEsquerda.Canvas.Pen.Width := 3;
  chtEsquerda.Canvas.Pen.Color := $00D20000;
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

  ArmazenaPontosGrafico;
  ResetDados;
//  RefreshGrafico(oDireita);

//  img1.OnMouseDown := ImgMouseDown;
//  img2.OnMouseDown := ImgMouseDown;
//  img3.OnMouseDown := ImgMouseDown;
//  img4.OnMouseDown := ImgMouseDown;
//  img5.OnMouseDown := ImgMouseDown;
//  img6.OnMouseDown := ImgMouseDown;
//  img7.OnMouseDown := ImgMouseDown;
//  img8.OnMouseDown := ImgMouseDown;
//  img9.OnMouseDown := ImgMouseDown;
//  img11.OnMouseDown := ImgMouseDown;
//  img12.OnMouseDown := ImgMouseDown;
//  img13.OnMouseDown := ImgMouseDown;
//  img14.OnMouseDown := ImgMouseDown;
//  img15.OnMouseDown := ImgMouseDown;
//  img16.OnMouseDown := ImgMouseDown;
//  img17.OnMouseDown := ImgMouseDown;
//  img18.OnMouseDown := ImgMouseDown;

//  pnlDireita.Canvas.Pen.Mode := pmBlack;
//  pnlDireita.Canvas.MoveTo(img1.Left + img1.Width, img1.Top + img1.Height);
//  pnlDireita.Canvas.LineTo(img2.Left, img2.Top);
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

procedure TFExames.ImgMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    FSource := TMarcador(Sender);
    FDestination := nil;
  end
  else
  if Button = mbRight then
  begin
    FDestination := TMarcador(Sender);

    if Assigned(FSource) and Assigned(FDestination) then
    begin
      chtDireita.Canvas.Pen.Width := 3;
      chtDireita.Canvas.Pen.Color := clRed;

      chtDireita.Canvas.MoveTo(FSource.Frequencia.X + 8, FSource.Intensidade.Y + 8);
      chtDireita.Canvas.LineTo(FDestination.Frequencia.X + 8, FDestination.Intensidade.Y + 8);

//      if TMarcador(FSource).Intensidade.Y < TMarcador(FDestination).Intensidade.Y then
//      begin
//        chtDireita.Canvas.MoveTo(TMarcador(FSource).Frequencia.X + 15, TMarcador(FSource).Intensidade.Y + 15);
//        chtDireita.Canvas.LineTo(TMarcador(FDestination).Frequencia.X + 1, TMarcador(FDestination).Intensidade.Y + 1);
//      end
//      else
//      if TMarcador(FSource).Intensidade.Y > TMarcador(FDestination).Intensidade.Y then
//      begin
//        chtDireita.Canvas.MoveTo(TMarcador(FSource).Frequencia.X + 15, TMarcador(FSource).Intensidade.Y + 1);
//        chtDireita.Canvas.LineTo(TMarcador(FDestination).Frequencia.X + 1, TMarcador(FDestination).Intensidade.Y + 15);
//      end
//      else
//      if TMarcador(FSource).Intensidade.Y = TMarcador(FDestination).Intensidade.Y then
//      begin
//        chtDireita.Canvas.MoveTo(TMarcador(FSource).Frequencia.X + 18, TMarcador(FSource).Intensidade.Y + 8);
//        chtDireita.Canvas.LineTo(TMarcador(FDestination).Frequencia.X - 1, TMarcador(FDestination).Intensidade.Y + 8);
//      end;

      FSource := nil;
      FDestination := nil;
    end;
  end;
end;

procedure TFExames.PopulaDados;
var
  I: Integer;
  Dado: TDadosAudio;
begin
  if FExame = nil then
    Exit;

  for I := 0 to FExame.Dados.Count -1 do
  begin
    Dado := FExame.Dados[I];

    case Dado.Orelha of
      oDireita:
        begin
          case Dado.Tipo of
            eVA:
              begin
                edtDAC125.Text := IfThen(Dado.v125 <> -1, Dado.v125.ToString);
                edtDAC10KExit(edtDAC125);
                edtDAC250.Text := IfThen(Dado.v250 <> -1, Dado.v250.ToString);
                edtDAC10KExit(edtDAC250);
                edtDAC500.Text := IfThen(Dado.v500 <> -1, Dado.v500.ToString);
                edtDAC10KExit(edtDAC500);
                edtDAC750.Text := IfThen(Dado.v750 <> -1, Dado.v750.ToString);
                edtDAC10KExit(edtDAC750);
                edtDAC1K.Text  := IfThen(Dado.v1K <> -1, Dado.v1K.ToString);
                edtDAC10KExit(edtDAC1K);
                edtDAC1K5.Text := IfThen(Dado.v1K5 <> -1, Dado.v1K5.ToString);
                edtDAC10KExit(edtDAC1K5);
                edtDAC2K.Text  := IfThen(Dado.v2K <> -1, Dado.v2K.ToString);
                edtDAC10KExit(edtDAC2K);
                edtDAC3K.Text  := IfThen(Dado.v3K <> -1, Dado.v3K.ToString);
                edtDAC10KExit(edtDAC3K);
                edtDAC4K.Text  := IfThen(Dado.v4K <> -1, Dado.v4K.ToString);
                edtDAC10KExit(edtDAC4K);
                edtDAC6K.Text  := IfThen(Dado.v6K <> -1, Dado.v6K.ToString);
                edtDAC10KExit(edtDAC6K);
                edtDAC8K.Text  := IfThen(Dado.v8K <> -1, Dado.v8K.ToString);
                edtDAC10KExit(edtDAC8K);
                edtDAC10K.Text := IfThen(Dado.v10K <> -1, Dado.v10K.ToString);
                edtDAC10KExit(edtDAC10K);
              end;
            eVO:
              begin
                edtDBC125.Text := IfThen(Dado.v125 <> -1, Dado.v125.ToString);
                edtDBC10KExit(edtDBC125);
                edtDBC250.Text := IfThen(Dado.v250 <> -1, Dado.v250.ToString);
                edtDBC10KExit(edtDBC250);
                edtDBC500.Text := IfThen(Dado.v500 <> -1, Dado.v500.ToString);
                edtDBC10KExit(edtDBC500);
                edtDBC750.Text := IfThen(Dado.v750 <> -1, Dado.v750.ToString);
                edtDBC10KExit(edtDBC750);
                edtDBC1K.Text  := IfThen(Dado.v1K <> -1, Dado.v1K.ToString);
                edtDBC10KExit(edtDBC1K);
                edtDBC1K5.Text := IfThen(Dado.v1K5 <> -1, Dado.v1K5.ToString);
                edtDBC10KExit(edtDBC1K5);
                edtDBC2K.Text  := IfThen(Dado.v2K <> -1, Dado.v2K.ToString);
                edtDBC10KExit(edtDBC2K);
                edtDBC3K.Text  := IfThen(Dado.v3K <> -1, Dado.v3K.ToString);
                edtDBC10KExit(edtDBC3K);
                edtDBC4K.Text  := IfThen(Dado.v4K <> -1, Dado.v4K.ToString);
                edtDBC10KExit(edtDBC4K);
                edtDBC6K.Text  := IfThen(Dado.v6K <> -1, Dado.v6K.ToString);
                edtDBC10KExit(edtDBC6K);
                edtDBC8K.Text  := IfThen(Dado.v8K <> -1, Dado.v8K.ToString);
                edtDBC10KExit(edtDBC8K);
                edtDBC10K.Text := IfThen(Dado.v10K <> -1, Dado.v10K.ToString);
                edtDBC10KExit(edtDBC10K);
              end;
            eVAM:
              begin
                edtDMCL125.Text := IfThen(Dado.v125 <> -1, Dado.v125.ToString);
                edtDMCL10KExit(edtDMCL125);
                edtDMCL250.Text := IfThen(Dado.v250 <> -1, Dado.v250.ToString);
                edtDMCL10KExit(edtDMCL250);
                edtDMCL500.Text := IfThen(Dado.v500 <> -1, Dado.v500.ToString);
                edtDMCL10KExit(edtDMCL500);
                edtDMCL750.Text := IfThen(Dado.v750 <> -1, Dado.v750.ToString);
                edtDMCL10KExit(edtDMCL750);
                edtDMCL1K.Text  := IfThen(Dado.v1K <> -1, Dado.v1K.ToString);
                edtDMCL10KExit(edtDMCL1K);
                edtDMCL1K5.Text := IfThen(Dado.v1K5 <> -1, Dado.v1K5.ToString);
                edtDMCL10KExit(edtDMCL1K5);
                edtDMCL2K.Text  := IfThen(Dado.v2K <> -1, Dado.v2K.ToString);
                edtDMCL10KExit(edtDMCL2K);
                edtDMCL3K.Text  := IfThen(Dado.v3K <> -1, Dado.v3K.ToString);
                edtDMCL10KExit(edtDMCL3K);
                edtDMCL4K.Text  := IfThen(Dado.v4K <> -1, Dado.v4K.ToString);
                edtDMCL10KExit(edtDMCL4K);
                edtDMCL6K.Text  := IfThen(Dado.v6K <> -1, Dado.v6K.ToString);
                edtDMCL10KExit(edtDMCL6K);
                edtDMCL8K.Text  := IfThen(Dado.v8K <> -1, Dado.v8K.ToString);
                edtDMCL10KExit(edtDMCL8K);
                edtDMCL10K.Text := IfThen(Dado.v10K <> -1, Dado.v10K.ToString);
                edtDMCL10KExit(edtDMCL10K);
              end;
            eVOM:
              begin
                edtDUCL125.Text := IfThen(Dado.v125 <> -1, Dado.v125.ToString);
                edtDUCL10KExit(edtDUCL125);
                edtDUCL250.Text := IfThen(Dado.v250 <> -1, Dado.v250.ToString);
                edtDUCL10KExit(edtDUCL250);
                edtDUCL500.Text := IfThen(Dado.v500 <> -1, Dado.v500.ToString);
                edtDUCL10KExit(edtDUCL500);
                edtDUCL750.Text := IfThen(Dado.v750 <> -1, Dado.v750.ToString);
                edtDUCL10KExit(edtDUCL750);
                edtDUCL1K.Text  := IfThen(Dado.v1K <> -1, Dado.v1K.ToString);
                edtDUCL10KExit(edtDUCL1K);
                edtDUCL1K5.Text := IfThen(Dado.v1K5 <> -1, Dado.v1K5.ToString);
                edtDUCL10KExit(edtDUCL1K5);
                edtDUCL2K.Text  := IfThen(Dado.v2K <> -1, Dado.v2K.ToString);
                edtDUCL10KExit(edtDUCL2K);
                edtDUCL3K.Text  := IfThen(Dado.v3K <> -1, Dado.v3K.ToString);
                edtDUCL10KExit(edtDUCL3K);
                edtDUCL4K.Text  := IfThen(Dado.v4K <> -1, Dado.v4K.ToString);
                edtDUCL10KExit(edtDUCL4K);
                edtDUCL6K.Text  := IfThen(Dado.v6K <> -1, Dado.v6K.ToString);
                edtDUCL10KExit(edtDUCL6K);
                edtDUCL8K.Text  := IfThen(Dado.v8K <> -1, Dado.v8K.ToString);
                edtDUCL10KExit(edtDUCL8K);
                edtDUCL10K.Text := IfThen(Dado.v10K <> -1, Dado.v10K.ToString);
                edtDUCL10KExit(edtDUCL10K);
              end;
          end;
        end;
      oEsquerda:
        begin

        end;
    end;
  end;
end;

procedure TFExames.RefreshGrafico(AGrafico: TOrelha);
var
  Marca: TMarcador;
  I: Integer;
begin
  case AGrafico of
    oDireita:
      begin
        srsDAC.Visible := True;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f250;
        Marca.Intensidade := TIntensidade.FromInteger(30);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f500;
        Marca.Intensidade := TIntensidade.FromInteger(55);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f750;
        Marca.Intensidade := TIntensidade.FromInteger(35);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f1K;
        Marca.Intensidade := TIntensidade.FromInteger(40);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f2K;
        Marca.Intensidade := TIntensidade.FromInteger(60);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f3K;
        Marca.Intensidade := TIntensidade.FromInteger(65);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f4K;
        Marca.Intensidade := TIntensidade.FromInteger(70);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f6K;
        Marca.Intensidade := TIntensidade.FromInteger(70);
        Marca.Exibir;

        Marca := TMarcador.Create(chtDireita);
        Marca.Parent := chtDireita;
        Marca.Orelha      := oDireita;
        Marca.SemResposta := False;
        Marca.Tipo        := TEstimulo.FromString('VA');
        Marca.Frequencia  := f8K;
        Marca.Intensidade := TIntensidade.FromInteger(75);
        Marca.Exibir;
      end;
    oEsquerda:
      begin
        srsEAC.Visible := True;
      end;
  end;
end;

procedure TFExames.ResetDados;
begin
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

  FExame := TAudiometria.Create;
end;

procedure TFExames.SalvarRegistro;
var
  Script: TStringBuilder;
begin

end;

procedure TFExames.SetExame(const Value: TAudiometria);
begin
  FExame := Value;
end;

procedure TFExames.SetMarcadores(const Value: TObjectList<TMarcador>);
begin
  FMarcadores := Value;
end;

end.
