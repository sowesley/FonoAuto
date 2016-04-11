unit obj.Audiometria;

interface

uses System.SysUtils, System.Types, Utils.Types, obj.Pessoas, System.Generics.Collections, Uni, CurvyControls, Vcl.Graphics,
  Vcl.ExtCtrls, USessao;

type
  TMarcador = class(TImage)
  private
    FFrequencia: TFrequencia;
    FIntensidade: TIntensidade;
    FTipo: TEstimulo;
    FOrelha: TOrelha;
    FSemResposta: Boolean;
    function getPonto: TPontoGrafico;
    procedure SetFrequencia(const Value: TFrequencia);
    procedure SetIntensidade(const Value: TIntensidade);
    procedure SetTipo(const Value: TEstimulo);
    procedure SetOrelha(const Value: TOrelha);
    procedure SetSemResposta(const Value: Boolean);
  public
    procedure Exibir;

    property Orelha: TOrelha read FOrelha write SetOrelha;
    property Frequencia: TFrequencia read FFrequencia write SetFrequencia;
    property Intensidade: TIntensidade read FIntensidade write SetIntensidade;
    property Tipo: TEstimulo read FTipo write SetTipo;
    property Ponto: TPontoGrafico read getPonto;
    property SemResposta: Boolean read FSemResposta write SetSemResposta;
  end;

  TCurvyEditHack = class(TCurvyEdit)
  private
    FMarcador: TMarcador;
    procedure SetMarcador(const Value: TMarcador);
  public
    property Marcador: TMarcador read FMarcador write SetMarcador;
  end;

  TDadosAudio = class
  private
    FSemResposta: Boolean;
    FValor: Integer;
    FFrequencia: TFrequencia;
    FOrelha: TOrelha;
    FTipo: TEstimulo;
    procedure SetFrequencia(const Value: TFrequencia);
    procedure SetOrelha(const Value: TOrelha);
    procedure SetSemResposta(const Value: Boolean);
    procedure SetTipo(const Value: TEstimulo);
    procedure SetValor(const Value: Integer);
  public
    property Orelha: TOrelha read FOrelha write SetOrelha;
    property Tipo: TEstimulo read FTipo write SetTipo;
    property Frequencia: TFrequencia read FFrequencia write SetFrequencia;
    property Valor: Integer read FValor write SetValor;
    property SemResposta: Boolean read FSemResposta write SetSemResposta;
  end;

  TLogoAudiometria = class
  private
    FSrtEsquerdo: Integer;
    FSrtDireito: Integer;
    FMonoEsquerdo: Integer;
    FWeber500: string;
    FMonoDireito: Integer;
    FWeber2K: string;
    FWeber1K: string;
    FWeber4K: string;
    FDissEsquerdo: Integer;
    FDissDireito: Integer;
    FIrfEsquerdo: Integer;
    FIrfDireito: Integer;
    FLaudoEsquerdo: string;
    FLaudoDireito: string;
    procedure SetDissDireito(const Value: Integer);
    procedure SetDissEsquerdo(const Value: Integer);
    procedure SetIrfDireito(const Value: Integer);
    procedure SetIrfEsquerdo(const Value: Integer);
    procedure SetMonoDireito(const Value: Integer);
    procedure SetMonoEsquerdo(const Value: Integer);
    procedure SetSrtDireito(const Value: Integer);
    procedure SetSrtEsquerdo(const Value: Integer);
    procedure SetWeber1K(const Value: string);
    procedure SetWeber2K(const Value: string);
    procedure SetWeber4K(const Value: string);
    procedure SetWeber500(const Value: string);
    procedure SetLaudoDireito(const Value: string);
    procedure SetLaudoEsquerdo(const Value: string);
  public
    property SrtDireito: Integer read FSrtDireito write SetSrtDireito;
    property SrtEsquerdo: Integer read FSrtEsquerdo write SetSrtEsquerdo;
    property IrfDireito: Integer read FIrfDireito write SetIrfDireito;
    property IrfEsquerdo: Integer read FIrfEsquerdo write SetIrfEsquerdo;
    property MonoDireito: Integer read FMonoDireito write SetMonoDireito;
    property MonoEsquerdo: Integer read FMonoEsquerdo write SetMonoEsquerdo;
    property DissDireito: Integer read FDissDireito write SetDissDireito;
    property DissEsquerdo: Integer read FDissEsquerdo write SetDissEsquerdo;
    property Weber500: string read FWeber500 write SetWeber500;
    property Weber1K: string read FWeber1K write SetWeber1K;
    property Weber2K: string read FWeber2K write SetWeber2K;
    property Weber4K: string read FWeber4K write SetWeber4K;
    property LaudoDireito: string read FLaudoDireito write SetLaudoDireito;
    property LaudoEsquerdo: string read FLaudoEsquerdo write SetLaudoEsquerdo;
  end;

  TReflexo = class
  private
    FValor: Integer;
    FFrequencia: TFrequencia;
    FOrelha: TOrelha;
    FTipo: TTipoReflexo;
    procedure SetFrequencia(const Value: TFrequencia);
    procedure SetOrelha(const Value: TOrelha);
    procedure SetTipo(const Value: TTipoReflexo);
    procedure SetValor(const Value: Integer);
  public
    property Orelha: TOrelha read FOrelha write SetOrelha;
    property Tipo: TTipoReflexo read FTipo write SetTipo;
    property Frequencia: TFrequencia read FFrequencia write SetFrequencia;
    property Valor: Integer read FValor write SetValor;
  end;

  TImitanciometria = class
  private
    FValor: Double;
    FOrelha: TOrelha;
    FTipo: TTipoDadoImit;
    procedure SetOrelha(const Value: TOrelha);
    procedure SetTipo(const Value: TTipoDadoImit);
    procedure SetValor(const Value: Double);
  public
    property Orelha: TOrelha read FOrelha write SetOrelha;
    property Tipo: TTipoDadoImit read FTipo write SetTipo;
    property Valor: Double read FValor write SetValor;
  end;

  TAudiometria = class
  private
    FSeq: Integer;
    FPessoa: TPessoa;
    FIdUsuario: Integer;
    FIdPessoa: Integer;
    FData: TDate;
    FDados: TObjectList<TDadosAudio>;
    FImitanciometria: TObjectList<TImitanciometria>;
    FReflexoAcustico: TObjectList<TReflexo>;
    FLogoAudio: TLogoAudiometria;
    procedure SetData(const Value: TDate);
    procedure SetIdPessoa(const Value: Integer);
    procedure SetIdUsuario(const Value: Integer);
    procedure SetSeq(const Value: Integer);
    function getDados: TObjectList<TDadosAudio>;
    function getPessoa: TPessoa;
    function getSeq: Integer;
    procedure SetLogoAudio(const Value: TLogoAudiometria);
    function getImitanciometria: TObjectList<TImitanciometria>;
    function getReflexoAcustico: TObjectList<TReflexo>;
  public
    property IdPessoa: Integer read FIdPessoa write SetIdPessoa;
    property Pessoa: TPessoa read getPessoa;
    property Seq: Integer read getSeq write SetSeq;
    property Data: TDate read FData write SetData;
    property IdUsuario: Integer read FIdUsuario write SetIdUsuario;
    property LogoAudio: TLogoAudiometria read FLogoAudio write SetLogoAudio;

    property Dados: TObjectList<TDadosAudio> read getDados;
    property Imitanciometria: TObjectList<TImitanciometria> read getImitanciometria;
    property ReflexoAcustico: TObjectList<TReflexo> read getReflexoAcustico;

    class function Montar(AIdPessoa, AData: string): TAudiometria;
  end;

var
  FPontos: TPosicoes;

implementation

uses UPrincipal, UExames, Utils.Util;

{ TAudiometria }

function TAudiometria.getDados: TObjectList<TDadosAudio>;
var
  qry: TUniQuery;
  Dado: TDadosAudio;
begin
  if Assigned(FDados) then
  begin
    if FDados.Count > 0 then
    begin
      Result := FDados;
      Exit;
    end;
  end;

  FDados := TObjectList<TDadosAudio>.Create(False);

  qry := TSessao.Instance.Consulta('SELECT ORELHA, TIPO, FREQUENCIA, VALOR, SEM_RESPOSTA ' + sLineBreak +
    'FROM AUDIOMETRIA_DADOS ' + sLineBreak +
    'WHERE ID_PESSOA = ' + IntToStr(IdPessoa) + sLineBreak +
    '  AND SEQ = ' + IntToStr(Seq) + sLineBreak +
    'ORDER BY ORELHA, TIPO, FREQUENCIA');

  if qry.IsEmpty then
  begin
    Result := FDados;
    Exit;
  end;

  qry.First;
  while not qry.Eof do
  begin
    Dado := TDadosAudio.Create;

    Dado.Orelha      := TOrelha.FromString(qry.FieldByName('ORELHA').AsString);
    Dado.Tipo        := TEstimulo.FromString(qry.FieldByName('TIPO').AsString);
    Dado.Frequencia  := TFrequencia.FromInteger(qry.FieldByName('FREQUENCIA').AsInteger);
    Dado.Valor       := qry.FieldByName('VALOR').AsInteger;
    Dado.SemResposta := qry.FieldByName('SEM_RESPOSTA').AsString.ToUpper = 'S';

    FDados.Add(Dado);

    qry.Next;
  end;

  Result := FDados;
end;

function TAudiometria.getImitanciometria: TObjectList<TImitanciometria>;
var
  qry: TUniQuery;
  Dado: TImitanciometria;
begin
  if Assigned(FImitanciometria) then
  begin
    if FImitanciometria.Count > 0 then
    begin
      Result := FImitanciometria;
      Exit;
    end;
  end;

  FImitanciometria := TObjectList<TImitanciometria>.Create(False);

  qry := TSessao.Instance.Consulta('SELECT ORELHA, TIPO, VALOR ' + sLineBreak +
    'FROM IMITANCIOMETRIA ' + sLineBreak +
    'WHERE ID_PESSOA = ' + IdPessoa.ToString + sLineBreak +
    '  AND SEQ = ' + Seq.ToString + sLineBreak +
    'ORDER BY ORELHA, TIPO');

  if qry.IsEmpty then
  begin
    Result := FImitanciometria;
    Exit;
  end;

  qry.First;
  while not qry.Eof do
  begin
    Dado := TImitanciometria.Create;

    Dado.Orelha := TOrelha.FromString(qry.FieldByName('ORELHA').AsString.ToUpper);
    Dado.Tipo   := TTipoDadoImit.FromString(qry.FieldByName('TIPO').AsString.ToUpper);
    Dado.Valor  := qry.FieldByName('VALOR').AsFloat;

    FImitanciometria.Add(Dado);

    qry.Next;
  end;

  Result := FImitanciometria;
end;

function TAudiometria.getPessoa: TPessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TPessoa.Montar(IntToStr(IdPessoa));

  Result := FPessoa;
end;

function TAudiometria.getReflexoAcustico: TObjectList<TReflexo>;
var
  qry: TUniQuery;
  Dado: TReflexo;
begin
  if Assigned(FReflexoAcustico) then
  begin
    if FReflexoAcustico.Count > 0 then
    begin
      Result := FReflexoAcustico;
      Exit;
    end;
  end;

  FReflexoAcustico := TObjectList<TReflexo>.Create(False);

  qry := TSessao.Instance.Consulta('SELECT ORELHA, TIPO, FREQUENCIA, VALOR ' + sLineBreak +
    'FROM REFLEXO_ACUSTICO ' + sLineBreak +
    'WHERE ID_PESSOA = ' + IdPessoa.ToString + sLineBreak +
    '  AND SEQ = ' + Seq.ToString + sLineBreak +
    'ORDER BY ORELHA, TIPO, FREQUENCIA');

  if qry.IsEmpty then
  begin
    Result := FReflexoAcustico;
    Exit;
  end;

  qry.First;
  while not qry.Eof do
  begin
    Dado := TReflexo.Create;

    Dado.Orelha     := TOrelha.FromString(qry.FieldByName('ORELHA').AsString.ToUpper);
    Dado.Tipo       := TTipoReflexo(qry.FieldByName('TIPO').AsInteger);
    Dado.Frequencia := TFrequencia.FromInteger(qry.FieldByName('FREQUENCIA').AsInteger);
    Dado.Valor      := qry.FieldByName('VALOR').AsInteger;

    FReflexoAcustico.Add(Dado);

    qry.Next;
  end;

  Result := FReflexoAcustico;
end;

function TAudiometria.getSeq: Integer;
var
  qry: TUniQuery;
begin
  if FSeq <= 0 then
  begin
    qry := TSessao.Instance.Consulta('SELECT COALESCE(MAX(SEQ), 0) + 1 NEW_SEQ ' + sLineBreak +
      'FROM AUDIOMETRIA ' + sLineBreak +
      'WHERE ID_PESSOA = ' + IdPessoa.ToString);

    if qry.IsEmpty then
      FSeq := 1
    else
      FSeq := qry.Fields[0].AsInteger;
  end;

  Result := FSeq;
end;

class function TAudiometria.Montar(AIdPessoa, AData: string): TAudiometria;
var
  qry: TUniQuery;
begin
  Result := TAudiometria.Create;

  if AIdPessoa.IsEmpty or AData.IsEmpty then
    Exit;

  qry := TSessao.Instance.Consulta('SELECT A.ID_PESSOA, A.SEQ, A.DATA, A.ID_USUARIO, L.SRT_DIREITO, L.SRT_ESQUERDO, ' + sLineBreak +
    '       L.IRF_DIREITO, L.IRF_ESQUERDO, L.MONO_DIREITO, L.MONO_ESQUERDO, L.DISS_DIREITO, L.DISS_ESQUERDO, ' + sLineBreak +
    '       L.WEBER_500, L.WEBER_1K, L.WEBER_2K, L.WEBER_4K, L.LAUDO_DIREITO, L.LAUDO_ESQUERDO ' + sLineBreak +
    'FROM AUDIOMETRIA A ' + sLineBreak +
    'INNER JOIN LOGOAUDIOMETRIA L ON ((L.ID_PESSOA = A.ID_PESSOA) ' + sLineBreak +
    '                             AND (L.SEQ = A.SEQ))' + sLineBreak +
    'WHERE A.ID_PESSOA = ' + AIdPessoa + sLineBreak +
    '  AND A.DATA = ' + TUteis.DataSQL(AData, False));

  try
    if qry.IsEmpty then
      Exit;

    Result.IdPessoa  := qry.FieldByName('ID_PESSOA').AsInteger;
    Result.Seq       := qry.FieldByName('SEQ').AsInteger;
    Result.Data      := qry.FieldByName('DATA').AsDateTime;
    Result.IdUsuario := qry.FieldByName('ID_USUARIO').AsInteger;

    Result.LogoAudio := TLogoAudiometria.Create;

    Result.LogoAudio.SrtDireito    := qry.FieldByName('SRT_DIREITO').AsInteger;
    Result.LogoAudio.SrtEsquerdo   := qry.FieldByName('SRT_ESQUERDO').AsInteger;
    Result.LogoAudio.IrfDireito    := qry.FieldByName('IRF_DIREITO').AsInteger;
    Result.LogoAudio.IrfEsquerdo   := qry.FieldByName('IRF_ESQUERDO').AsInteger;
    Result.LogoAudio.MonoDireito   := qry.FieldByName('MONO_DIREITO').AsInteger;
    Result.LogoAudio.MonoEsquerdo  := qry.FieldByName('MONO_ESQUERDO').AsInteger;
    Result.LogoAudio.DissDireito   := qry.FieldByName('DISS_DIREITO').AsInteger;
    Result.LogoAudio.DissEsquerdo  := qry.FieldByName('DISS_ESQUERDO').AsInteger;
    Result.LogoAudio.Weber500      := qry.FieldByName('WEBER_500').AsString;
    Result.LogoAudio.Weber1K       := qry.FieldByName('WEBER_1K').AsString;
    Result.LogoAudio.Weber2K       := qry.FieldByName('WEBER_2K').AsString;
    Result.LogoAudio.Weber4K       := qry.FieldByName('WEBER_4K').AsString;
    Result.LogoAudio.LaudoDireito  := qry.FieldByName('LAUDO_DIREITO').AsString;
    Result.LogoAudio.LaudoEsquerdo := qry.FieldByName('LAUDO_ESQUERDO').AsString;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TAudiometria.SetData(const Value: TDate);
begin
  FData := Value;
end;

procedure TAudiometria.SetIdPessoa(const Value: Integer);
begin
  FIdPessoa := Value;
end;

procedure TAudiometria.SetIdUsuario(const Value: Integer);
begin
  FIdUsuario := Value;
end;

procedure TAudiometria.SetLogoAudio(const Value: TLogoAudiometria);
begin
  FLogoAudio := Value;
end;

procedure TAudiometria.SetSeq(const Value: Integer);
begin
  FSeq := Value;
end;

{ TMarcador }

procedure TMarcador.Exibir;
begin
  Left := Ponto.Local.X;
  Top  := Ponto.Local.Y;

  case Tipo of
    eVA : Left := Left;
    eVO : Left := Left - 10;
    eVAM: Left := Left + 10;
    eVOM: Left := Left + 20;
  end;

  Visible := True;
end;

function TMarcador.getPonto: TPontoGrafico;
var
  I: Integer;
begin
  for I := Low(FPontos) to High(FPontos) do
  begin
    if (FPontos[I].Frequencia = Frequencia) and (FPontos[I].Intensidade = Intensidade) then
    begin
      Result := FPontos[I];
      Break;
    end;
  end;
end;

procedure TMarcador.SetFrequencia(const Value: TFrequencia);
begin
  FFrequencia := Value;
end;

procedure TMarcador.SetIntensidade(const Value: TIntensidade);
begin
  FIntensidade := Value;
end;

procedure TMarcador.SetOrelha(const Value: TOrelha);
begin
  FOrelha := Value;
end;

procedure TMarcador.SetSemResposta(const Value: Boolean);
begin
  FSemResposta := Value;
end;

procedure TMarcador.SetTipo(const Value: TEstimulo);
begin
  FTipo := Value;

  case Orelha of
    oDireita:
      begin
        case FTipo of
          eVA :
            begin
              if SemResposta then
                Picture := FExames.imgDVASR.Picture
              else
                Picture := FExames.imgDVA.Picture;
            end;
          eVO :
            begin
              if SemResposta then
                Picture := FExames.imgDVOSR.Picture
              else
                Picture := FExames.imgDVO.Picture;
            end;
          eVAM:
            begin
              if SemResposta then
                Picture := FExames.imgDVAMSR.Picture
              else
                Picture := FExames.imgDVAM.Picture;
            end;
          eVOM:
            begin
              if SemResposta then
                Picture := FExames.imgDVOMSR.Picture
              else
                Picture := FExames.imgDVOM.Picture;
            end;
        end;
      end;
    oEsquerda:
      begin
        case FTipo of
          eVA :
            begin
              if SemResposta then
                Picture := FExames.imgEVASR.Picture
              else
                Picture := FExames.imgEVA.Picture;
            end;
          eVO :
            begin
              if SemResposta then
                Picture := FExames.imgEVOSR.Picture
              else
                Picture := FExames.imgEVO.Picture;
            end;
          eVAM:
            begin
              if SemResposta then
                Picture := FExames.imgEVAMSR.Picture
              else
                Picture := FExames.imgEVAM.Picture;
            end;
          eVOM:
            begin
              if SemResposta then
                Picture := FExames.imgEVOMSR.Picture
              else
                Picture := FExames.imgEVOM.Picture;
            end;
        end;
      end;
  end;
end;

{ TCurvyEditHack }

procedure TCurvyEditHack.SetMarcador(const Value: TMarcador);
begin
  FMarcador := Value;
end;

{ TDadosAudio }

procedure TDadosAudio.SetFrequencia(const Value: TFrequencia);
begin
  FFrequencia := Value;
end;

procedure TDadosAudio.SetOrelha(const Value: TOrelha);
begin
  FOrelha := Value;
end;

procedure TDadosAudio.SetSemResposta(const Value: Boolean);
begin
  FSemResposta := Value;
end;

procedure TDadosAudio.SetTipo(const Value: TEstimulo);
begin
  FTipo := Value;
end;

procedure TDadosAudio.SetValor(const Value: Integer);
begin
  FValor := Value;
end;

{ TLogoAudiometria }

procedure TLogoAudiometria.SetDissDireito(const Value: Integer);
begin
  FDissDireito := Value;
end;

procedure TLogoAudiometria.SetDissEsquerdo(const Value: Integer);
begin
  FDissEsquerdo := Value;
end;

procedure TLogoAudiometria.SetIrfDireito(const Value: Integer);
begin
  FIrfDireito := Value;
end;

procedure TLogoAudiometria.SetIrfEsquerdo(const Value: Integer);
begin
  FIrfEsquerdo := Value;
end;

procedure TLogoAudiometria.SetLaudoDireito(const Value: string);
begin
  FLaudoDireito := Value;
end;

procedure TLogoAudiometria.SetLaudoEsquerdo(const Value: string);
begin
  FLaudoEsquerdo := Value;
end;

procedure TLogoAudiometria.SetMonoDireito(const Value: Integer);
begin
  FMonoDireito := Value;
end;

procedure TLogoAudiometria.SetMonoEsquerdo(const Value: Integer);
begin
  FMonoEsquerdo := Value;
end;

procedure TLogoAudiometria.SetSrtDireito(const Value: Integer);
begin
  FSrtDireito := Value;
end;

procedure TLogoAudiometria.SetSrtEsquerdo(const Value: Integer);
begin
  FSrtEsquerdo := Value;
end;

procedure TLogoAudiometria.SetWeber1K(const Value: string);
begin
  FWeber1K := Value;
end;

procedure TLogoAudiometria.SetWeber2K(const Value: string);
begin
  FWeber2K := Value;
end;

procedure TLogoAudiometria.SetWeber4K(const Value: string);
begin
  FWeber4K := Value;
end;

procedure TLogoAudiometria.SetWeber500(const Value: string);
begin
  FWeber500 := Value;
end;

{ TReflexo }

procedure TReflexo.SetFrequencia(const Value: TFrequencia);
begin
  FFrequencia := Value;
end;

procedure TReflexo.SetOrelha(const Value: TOrelha);
begin
  FOrelha := Value;
end;

procedure TReflexo.SetTipo(const Value: TTipoReflexo);
begin
  FTipo := Value;
end;

procedure TReflexo.SetValor(const Value: Integer);
begin
  FValor := Value;
end;

{ TImitanciometria }

procedure TImitanciometria.SetOrelha(const Value: TOrelha);
begin
  FOrelha := Value;
end;

procedure TImitanciometria.SetTipo(const Value: TTipoDadoImit);
begin
  FTipo := Value;
end;

procedure TImitanciometria.SetValor(const Value: Double);
begin
  FValor := Value;
end;

end.
