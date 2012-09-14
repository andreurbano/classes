unit ufrmModeloRelatWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModPageControlWizard, ComCtrls, Buttons, DBCtrls, ExtCtrls,
  Mask, StdCtrls, RpDefine, RpCon, RpConDS, DB, DataSourceUrb, DBClient,
  DateUtils, ClientDataSetUrb, Provider, uVariaveisGlobais, DataSetProviderUrb,
  FMTBcd, SqlExpr;

type
  TfrmModeloRelatWizard = class(TfrmModPageControlWizard)
    tbsOpcoes: TTabSheet;
    tbsEmpGeradora: TTabSheet;
    tbsEmpReceptora: TTabSheet;
    tbsSituacao: TTabSheet;
    gbxEmpresaReceptora: TGroupBox;
    btnReceptoraIncluir: TSpeedButton;
    btnReceptoraIncluirTodos: TSpeedButton;
    btnReceptoraExcluir: TSpeedButton;
    btnReceptoraExcluirTodos: TSpeedButton;
    lstEmpresaReceptoraDestino: TDBLookupListBox;
    lstEmpresaReceptoraOrigem: TDBLookupListBox;
    gbxSituacaoManifesto: TGroupBox;
    btnSituacaoIncluir: TSpeedButton;
    btnSituacaoIncluirTodos: TSpeedButton;
    btnSituacaoExcluir: TSpeedButton;
    btnSituacaoExcluirTodos: TSpeedButton;
    lstSituacaoOrigem: TDBLookupListBox;
    lstSituacaoDestino: TDBLookupListBox;
    tbsResiduo: TTabSheet;
    gbxResiduo: TGroupBox;
    btnResiduoIncluir: TSpeedButton;
    btnResiduoIncluirTodos: TSpeedButton;
    btnResiduoExcluir: TSpeedButton;
    btnResiduoExcluirTodos: TSpeedButton;
    DBLookupListBox4: TDBLookupListBox;
    DBLookupListBox5: TDBLookupListBox;
    dspManifestos: TDataSetProvider;
    cdsManifestos: TClientDataSetUrb;
    dtsManifestos: TDataSourceUrb;
    rdtsManifestos: TRvDataSetConnection;
    dspEmpresaGeradoraOrigem: TDataSetProvider;
    cdsEmpresaGeradoraOrigem: TClientDataSetUrb;
    cdsEmpresaGeradoraOrigemID_Fantasia: TIntegerField;
    cdsEmpresaGeradoraOrigemDescricao: TStringField;
    dtsEmpresaGeradoraOrigem: TDataSourceUrb;
    cdsEmpresaGeradoraDestino: TClientDataSetUrb;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsEmpresaGeradoraDestino: TDataSourceUrb;
    dspEmpresaReceptoraOrigem: TDataSetProvider;
    cdsEmpresaReceptoraOrigem: TClientDataSetUrb;
    cdsEmpresaReceptoraOrigemID_Empresa: TIntegerField;
    cdsEmpresaReceptoraOrigemRazaoSocial: TStringField;
    dtsEmpresaReceptoraOrigem: TDataSourceUrb;
    cdsEmpresaReceptoraDestino: TClientDataSetUrb;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    dtsEmpresaReceptoraDestino: TDataSourceUrb;
    dspSituacaoOrigem: TDataSetProvider;
    cdsSituacaoOrigem: TClientDataSetUrb;
    cdsSituacaoOrigemID_Situacao: TIntegerField;
    cdsSituacaoOrigemDescricao: TStringField;
    dtsSituacaoOrigem: TDataSourceUrb;
    cdsSituacaoDestino: TClientDataSetUrb;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsSituacaoDestino: TDataSourceUrb;
    dspResiduoOrigem: TDataSetProvider;
    cdsResiduoOrigem: TClientDataSetUrb;
    cdsResiduoOrigemID_Residuo: TIntegerField;
    cdsResiduoOrigemDescricao: TStringField;
    dtsResiduoOrigem: TDataSourceUrb;
    cdsResiduoDestino: TClientDataSetUrb;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    dtsResiduoDestino: TDataSourceUrb;
    gbxEmpresaGeradora: TGroupBox;
    lstEmpresaGeradoraOrigem: TDBLookupListBox;
    btnGeradoraIncluir: TSpeedButton;
    btnGeradoraIncluirTodos: TSpeedButton;
    btnGeradoraExcluir: TSpeedButton;
    btnGeradoraExcluirTodos: TSpeedButton;
    lstEmpresaGeradoraDestino: TDBLookupListBox;
    cdsManifestosNomeFantasia: TStringField;
    cdsManifestosGerDtEntrega: TSQLTimeStampField;
    cdsManifestosRazaoSocialRecep: TStringField;
    cdsManifestosGerID_Empresa: TIntegerField;
    cdsManifestosRazaoSocial: TStringField;
    cdsManifestosNumero: TStringField;
    cdsManifestosQuantidade: TFMTBCDField;
    cdsManifestosCDF: TStringField;
    cdsManifestosRecepID_Empresa: TIntegerField;
    cdsManifestosID_Residuo: TIntegerField;
    cdsManifestosResiduo: TStringField;
    cdsManifestosID_Situacao: TIntegerField;
    cdsManifestosSituacao: TStringField;
    cdsManifestosID_Fantasia: TIntegerField;
    cdsManifestosEndereco: TStringField;
    cdsManifestosMunicipio: TStringField;
    cdsManifestosUF: TStringField;
    cdsManifestosResponsavel: TStringField;
    cdsManifestosID_Procedencia: TIntegerField;
    cdsManifestosProcedencia: TStringField;
    cdsManifestosObs: TBlobField;
    gbxPeriodo: TGroupBox;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    rdgTipoManifesto: TRadioGroup;
    gbxRelatorios: TGroupBox;
    cbxRelatorios: TComboBox;
    gbxAlteraResp: TGroupBox;
    chkAlteraResp: TCheckBox;
    dblResponsavel: TDBLookupComboBox;
    chkMostraProcedencia: TCheckBox;
    cdsResponsavel: TClientDataSetUrb;
    cdsResponsavelID_Responsavel: TIntegerField;
    cdsResponsavelNome: TStringField;
    cdsResponsavelID_Cargo: TIntegerField;
    cdsResponsavelID_Tratamento: TIntegerField;
    dtsResponsavel: TDataSourceUrb;
    dspResponsavel: TDataSetProviderUrb;
    gbxDataRelat: TGroupBox;
    txtDatatRelat: TMaskEdit;
    cdsManifestosID_Status: TIntegerField;
    cdsManifestosStatus: TStringField;
    cdsManifestosMostraProcedencia: TStringField;
    cdsProtocEmpresa: TClientDataSetUrb;
    dtsProtocEmpresa: TDataSourceUrb;
    rdtsProtocEmpresa: TRvDataSetConnection;
    cdsProtocManif: TClientDataSetUrb;
    cdsProtocManifNumero: TStringField;
    cdsProtocManifProcedenciaDesc: TStringField;
    cdsProtocManifID_Fantasia: TIntegerField;
    cdsProtocManifDescricao: TStringField;
    cdsProtocManifGerDtEntrega: TSQLTimeStampField;
    cdsProtocManifRazaoSocial: TStringField;
    cdsProtocManifEndereco: TStringField;
    cdsProtocManifMunicipio: TStringField;
    cdsProtocManifUF: TStringField;
    cdsProtocManifResponsavel: TStringField;
    cdsProtocManifID_Situacao: TIntegerField;
    cdsProtocManifID_Procedencia: TIntegerField;
    cdsProtocManifGerID_Empresa: TIntegerField;
    cdsProtocManifID_Fantasia_1: TIntegerField;
    dtsProtocManif: TDataSourceUrb;
    rdtsProtocManif: TRvDataSetConnection;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    txtDataInicialProtoc: TMaskEdit;
    txtDataFinalProtoc: TMaskEdit;
    sqlManifestos: TSQLDataSet;
    sqlEmpresaGeradoraOrigem: TSQLDataSet;
    sqlEmpresaReceptoraOrigem: TSQLDataSet;
    sqlSituacaoOrigem: TSQLDataSet;
    sqlResiduoOrigem: TSQLDataSet;
    sqlResponsavel: TSQLDataSet;
    sqlProtocEmpresa: TSQLDataSet;
    dspProtocEmpresa: TDataSetProvider;
    sqlProtocManif: TSQLDataSet;
    dspProtocManif: TDataSetProviderUrb;
    cdsProtocManifANO_MES: TStringField;
    cdsProtocManifMES: TIntegerField;
    cdsProtocManifANO: TIntegerField;
    cdsManifestosValorMercado: TFMTBCDField;
    cdsManifestosValorReceber: TFMTBCDField;
    rdtsTotalizaResiduo: TRvDataSetConnection;
    dtsTotalizaResiduo: TDataSourceUrb;
    cdsTotalizaResiduo: TClientDataSetUrb;
    StringField4: TStringField;
    StringField6: TStringField;
    IntegerField4: TIntegerField;
    StringField7: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField13: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    dspTotalizaResiduo: TDataSetProviderUrb;
    sqlTotalizaResiduo: TSQLDataSet;
    cdsProtocEmpresaId_Protoc_Empresa: TIntegerField;
    cdsProtocEmpresaProcedenciaResiduo: TStringField;
    cdsProtocEmpresaMesAno: TStringField;
    cdsProtocEmpresaNumManifesto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnGeradoraIncluirClick(Sender: TObject);
    procedure btnGeradoraIncluirTodosClick(Sender: TObject);
    procedure btnGeradoraExcluirClick(Sender: TObject);
    procedure btnGeradoraExcluirTodosClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnReceptoraIncluirClick(Sender: TObject);
    procedure btnReceptoraIncluirTodosClick(Sender: TObject);
    procedure btnReceptoraExcluirClick(Sender: TObject);
    procedure btnReceptoraExcluirTodosClick(Sender: TObject);
    procedure btnSituacaoIncluirClick(Sender: TObject);
    procedure btnSituacaoIncluirTodosClick(Sender: TObject);
    procedure btnSituacaoExcluirClick(Sender: TObject);
    procedure btnSituacaoExcluirTodosClick(Sender: TObject);
    procedure btnResiduoIncluirClick(Sender: TObject);
    procedure btnResiduoIncluirTodosClick(Sender: TObject);
    procedure btnResiduoExcluirClick(Sender: TObject);
    procedure btnResiduoExcluirTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkAlteraRespClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    procedure GeraProtocolo(Sender: TObject);
    procedure GeraProtocolo(iEmpresaGeradora: Integer);
    procedure SetButtonsEmpresaGeradora;
    procedure SetButtonsEmpresaReceptora;
    procedure SetButtonsSituacao;
    procedure SetButtonsResiduo;
  end;

var
  frmModeloRelatWizard: TfrmModeloRelatWizard;

implementation

uses ufrmPrincipal, Extensos;

{$R *.dfm}

procedure TfrmModeloRelatWizard.FormCreate(Sender: TObject);
begin
  inherited;
  pgcMain.ActivePage := tbsOpcoes;

  //  FORMATA, INICIALIZA E CONFIGURA OS COMPONENTES DE DATA.
  txtDatatRelat.Text  := DateToStr(Date);

  txtDataInicial.Text       := '01/01' + Copy(DateToStr(Date),6,5);
  txtDataFinal.Text         := DateToStr(Date);

  txtDataFinalProtoc.Text   := DateToStr( ((Date - DayOf(Date)) + 1) );
  txtDataInicialProtoc.Text := DateToStr( Date );

  //  FORMATA, INICIALIZA E CONFIGURA OS COMPONENTES DA EMPRESA GERADORA.
  sqlEmpresaGeradoraOrigem.CommandText := 'SELECT f.ID_Fantasia, f.Descricao FROM fantasia f order by 2';
  cdsEmpresaGeradoraOrigem.Active := True;
  cdsEmpresaGeradoraDestino.CreateDataSet;

  //  FORMATA, INICIALIZA E CONFIGURA OS COMPONENTES DA EMPRESA RECEPTORA.
  sqlEmpresaReceptoraOrigem.CommandText := 'SELECT e.ID_Empresa, e.RazaoSocial FROM empresa e order by 2';
  cdsEmpresaReceptoraOrigem.Active := True;
  cdsEmpresaReceptoraDestino.CreateDataSet;

  //  FORMATA, INICIALIZA E CONFIGURA OS COMPONENTES DA SITUA��O DO MANIFESTO.
  sqlSituacaoOrigem.CommandText := 'SELECT s.ID_Situacao, s.Descricao FROM situacao s  WHERE ( s.ID_Situacao > 1 ) order by 2';
  cdsSituacaoOrigem.Active  := True;
  cdsSituacaoDestino.CreateDataSet;

  //  FORMATA, INICIALIZA E CONFIGURA OS COMPONENTES DO RES�DUO DO MANIFESTO.
  sqlResiduoOrigem.CommandText := 'SELECT r.ID_Residuo, r.Descricao FROM residuo r ORDER BY r.Descricao';
  cdsResiduoOrigem.Active := True;
  cdsResiduoDestino.CreateDataSet;

  sqlResponsavel.CommandText := 'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from responsavel order by Nome';
  cdsResponsavel.Active := True;
  dblResponsavel.KeyValue := 1;

end;

procedure TfrmModeloRelatWizard.btnGeradoraIncluirClick(Sender: TObject);
begin
  inherited;
  cdsEmpresaGeradoraDestino.Insert;
  cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraOrigemID_Fantasia.AsInteger;
  cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString  := cdsEmpresaGeradoraOrigemDescricao.AsString;
  cdsEmpresaGeradoraDestino.Post;

  cdsEmpresaGeradoraOrigem.Delete;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmModeloRelatWizard.SetButtonsEmpresaGeradora;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsEmpresaGeradoraOrigem.RecordCount  = 0;
  DestinoVazio := cdsEmpresaGeradoraDestino.RecordCount = 0;

  btnGeradoraIncluir.Enabled      := not OrigemVazio;
  btnGeradoraIncluirTodos.Enabled := not OrigemVazio;
  btnGeradoraExcluir.Enabled      := not DestinoVazio;
  btnGeradoraExcluirTodos.Enabled := not DestinoVazio;
end;


procedure TfrmModeloRelatWizard.btnGeradoraIncluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsEmpresaGeradoraOrigem.First;
  while not cdsEmpresaGeradoraOrigem.Eof do
   begin
     cdsEmpresaGeradoraDestino.Insert;
     cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraOrigemID_Fantasia.AsInteger;
     cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString  := cdsEmpresaGeradoraOrigemDescricao.AsString;
     cdsEmpresaGeradoraDestino.Post;

     cdsEmpresaGeradoraOrigem.Delete;
   end;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmModeloRelatWizard.btnGeradoraExcluirClick(Sender: TObject);
begin
  inherited;
  cdsEmpresaGeradoraOrigem.Insert;
  cdsEmpresaGeradoraOrigem.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger;
  cdsEmpresaGeradoraOrigem.FieldByName('Descricao').AsString    := cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString;
  cdsEmpresaGeradoraOrigem.Post;

  cdsEmpresaGeradoraDestino.Delete;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmModeloRelatWizard.btnGeradoraExcluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsEmpresaGeradoraDestino.First;
  while not cdsEmpresaGeradoraDestino.Eof do
   begin
     cdsEmpresaGeradoraOrigem.Insert;
     cdsEmpresaGeradoraOrigem.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger;
     cdsEmpresaGeradoraOrigem.FieldByName('Descricao').AsString    := cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString;
     cdsEmpresaGeradoraOrigem.Post;

     cdsEmpresaGeradoraDestino.Delete;
   end;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmModeloRelatWizard.btnFinalizarClick(Sender: TObject);
var
 sReceptor:          string;
 sGerID_Empresa:     string;
 sDtInicial:         string;
 sDtFinal:           string;
 sTituloPeriodo:     string;
 sTituloPrincipal:   string;
 sTipoManifesto:     string;
 sEmpresaGeradora:   string;
 sEmpresaReceptora:  string;
 sSituacao:          string;
 sResiduo:           string;
 sCampoValorReceber: string;
 sOrderBy:           string;

 iAssinaturaResponsavel:  Integer;
 sNomeCompleto:           string;
 iAssinaturaDigitalizada: Integer;
 sCaminhoArqAssDig:       string;
 sResponsavel:            string;
 iAlteraResponsavel:      Integer;
 iMostraProcedencia:      Integer;
 sProcedencia:            String;

 sSQL:                    TStringList;

 SQL:                    TSQLDataSet;
 sValorTotalReciclaveis: String;
 sQtdeTotalReciclaveis:  String;
 sTitulo:                String;
 sSubTitulo:             String;

 iCodEmpresaGeradora: Integer;
begin
//  inherited;

  // CRITICA OS VALORES DIGITADOS PELO USU�RIO.
  if cdsEmpresaGeradoraDestino.RecordCount = 0 then
   begin
    ShowMessage('Voc� deve selecionar ao menos uma "Empresa Geradora".');
    Exit;
   end;

  if cdsEmpresaReceptoraDestino.RecordCount = 0 then
   begin
    ShowMessage('Voc� deve selecionar ao menos uma "Empresa Receptora".');
    Exit;
   end;

  if cdsSituacaoDestino.RecordCount = 0 then
   begin
    ShowMessage('Voc� deve selecionar ao menos uma "Situa��o do Manifesto".');
    Exit;
   end;

  if cdsResiduoDestino.RecordCount = 0 then
   begin
    ShowMessage('Voc� deve selecionar ao menos um "Res�duo".');
    Exit;
   end;

  // ATRIBUI��O DE VARI�VEIS.
  sGerID_Empresa    := cdsEmpresaGeradoraOrigemID_Fantasia .AsString;
  sTipoManifesto    := '';
  sSituacao         := '';
  sEmpresaGeradora  := '';
  sEmpresaReceptora := '';
  sResiduo          := '';
  sDtInicial        := FormatDateTime('yyyymmdd', StrToDate(txtDataInicial.Text));
  sDtFinal          := FormatDateTime('yyyymmdd', StrToDate(txtDataFinal.Text));

  // VERIFICA SE OS MANIF. SELECIONADOS S�O "SEM CDF", "COM CDF" OU "AMBOS".
  if rdgTipoManifesto.ItemIndex = 0 then
   begin
     sTipoManifesto := '          ( m.CDF IS NULL or m.CDF = ''''            ) and ';
   end
  else if rdgTipoManifesto.ItemIndex = 1 then
   begin
     sTipoManifesto := '          ( m.CDF IS NOT NULL or m.CDF <> ''''            ) and ';
   end
  else if rdgTipoManifesto.ItemIndex = 2 then
   begin
     sTipoManifesto := ''
   end;

  // VERIFICA/PROCESSA AS SITUA��ES SELECIONADAS.
  cdsSituacaoDestino.First;
  while not cdsSituacaoDestino.Eof do
   begin
     sSituacao := sSituacao + cdsSituacaoDestino.FieldByName('ID_Situacao').AsString + ',';
     cdsSituacaoDestino.Next;
   end;
  sSituacao := Copy(sSituacao, 1, Length(sSituacao) -1);
  sSituacao := '( m.ID_Situacao IN (' + sSituacao + ') ) and' ;

  // VERIFICA/PROCESSA AS EMPRESAS GERADORAS SELECIONADAS.
  cdsEmpresaGeradoraDestino.First;
  iCodEmpresaGeradora := cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger;
  while not cdsEmpresaGeradoraDestino.Eof do
   begin
     sEmpresaGeradora := sEmpresaGeradora + cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsString + ',';
     cdsEmpresaGeradoraDestino.Next;
   end;
  sEmpresaGeradora := Copy(sEmpresaGeradora, 1, Length(sEmpresaGeradora) -1);
  sEmpresaGeradora := '( e.ID_Fantasia IN (' + sEmpresaGeradora + ') ) and' ;

  // VERIFICA/PROCESSA AS EMPRESAS RECEPTORAS SELECIONADAS.
  cdsEmpresaReceptoraDestino.First;
  while not cdsEmpresaReceptoraDestino.Eof do
   begin
     sEmpresaReceptora := sEmpresaReceptora + cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsString + ',';
     cdsEmpresaReceptoraDestino.Next;
   end;
  sEmpresaReceptora := Copy(sEmpresaReceptora, 1, Length(sEmpresaReceptora) -1);
  sEmpresaReceptora := '( m.RecepID_Empresa IN (' + sEmpresaReceptora + ') ) and' ;

  // VERIFICA/PROCESSA OS RES�DUOS SELECIONADAS.
  cdsResiduoDestino.First;
  while not cdsResiduoDestino.Eof do
   begin
     sResiduo := sResiduo + cdsResiduoDestino.FieldByName('ID_Residuo').AsString + ',';
     cdsResiduoDestino.Next;
   end;
  sResiduo := Copy(sResiduo, 1, Length(sResiduo) -1);
  sResiduo := '( m.ID_Residuo IN (' + sResiduo + ') ) and' ;

  // VERIFICA/PROCESSA  INFORMA��ES REFERENTES AO RELATORIO SELECIONADO.
  // Relat�rio Listagem de Manifestos de Res�duos
  if cbxRelatorios.ItemIndex = 0 then
   begin

     // N�o Multiplica por mil caso o relat�rio selecionado seja listagem.
     sCampoValorReceber := '          m.Quantidade * IF(m.GerID_Empresa=27, 200.00, r.ValorMercado) AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';

     // Define a ordem/quebra do relatorio
     sOrderBy := ' ORDER BY 3, 1, 2 ';
   end
  // Relat�rio Pagamentos de Sucata
  else if cbxRelatorios.ItemIndex = 1 then
   begin
     // N�o Multiplica por mil caso o relat�rio selecionado seja sucata
     sCampoValorReceber := '          m.Quantidade * IF(m.GerID_Empresa=27, 200.00, r.ValorMercado) AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';

   end
  // Relat�rio Pagamento de Recicl�veis
  else if cbxRelatorios.ItemIndex = 2 then
   begin
     // Multiplica por mil caso o relat�rio selecionado for o recicl�veis
     sCampoValorReceber := '           m.Quantidade * (IF(m.GerID_Empresa=27, 200.00, r.ValorMercado)) * 1000 AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';

     SQL := TSQLDataSet.Create(self);
     SQL.SQLConnection := frmPrincipal.ConexaoBD;
     SQL.CommandText := ' SELECT '                                                  +
                        '          SUM( m.Quantidade * (IF(m.GerID_Empresa=27, 200.00, r.ValorMercado)) * 1000) AS ValorTotal, ' +
                        '          SUM(m.Quantidade) AS QtdeTotal '                 +
                        ' FROM '                                                    +
                        '          manifesto m, '                                   +
                        '          residuo r, '                                     +
                        '          empresa e, '                                     +
                        '          empresa er, '                                    +
                        '          fantasia f, '                                    +
                        '          situacao s, '                                    +
                        '          procedencia p, '                                 +
                        '          manifestoestado me '                             +
                        ' WHERE '                                                   +
                        sTipoManifesto                                              +
                        sSituacao                                                   +
                        sEmpresaGeradora                                            +
                        sEmpresaReceptora                                           +
                        sResiduo                                                    +
                        '          ( m.GerDtEntrega         >= ' + sDtInicial + ' ) and ' +
                        '          ( m.GerDtEntrega         <= ' + sDtFinal   + ' ) and ' +
                        '          ( m.ID_Residuo           = r.ID_Residuo  ) and '       +
                        '          ( m.GerID_Empresa        = e.ID_Empresa  ) and '       +
                        '          ( e.ID_Fantasia          = f.ID_Fantasia ) and '       +
                        '          ( m.RecepID_Empresa      = er.ID_Empresa ) and '       +
                        '          ( m.ID_Situacao          = s.ID_Situacao ) and '       +
                        '          ( m.ID_Procedencia       = p.ID_Procedencia ) and '    +
                        '          ( m.ID_Status            = me.ID_ManifestoEstado ) ';

     SQL.Active := True;

     sValorTotalReciclaveis := FormatFloat('R$ ###,##0.00', SQL.FieldByName('ValorTotal').AsFloat);
     sValorTotalReciclaveis := sValorTotalReciclaveis + ' (' + Extenso( SQL.FieldByName('ValorTotal').AsFloat ) + ') ';
     sQtdeTotalReciclaveis  := FormatFloat('###,##0.000 Ton', SQL.FieldByName('QtdeTotal').AsFloat);

     FreeAndNil(SQL);

   end
  else if cbxRelatorios.ItemIndex = 3 then
   begin
     // Multiplica por mil caso o relat�rio selecionado for o recicl�veis
     sCampoValorReceber := '           m.Quantidade * (IF(m.GerID_Empresa=27, 200.00, r.ValorMercado)) * 1000 AS ValorReceber, ';
     sOrderBy := ' ORDER BY 1, 4, 5 ';

   end;

  //
  if chkAlteraResp.Checked then
   begin
     iAlteraResponsavel := 1;
     sResponsavel := '''' + Trim( cdsResponsavelNome.AsString + '''' );
     //frmPrincipal.rvpFerpan.SetParam('Responsavel', Trim( cdsResponsavelNome.AsString ) );
   end
  else
   begin
    //frmPrincipal.rvpFerpan.SetParam('Responsavel', cdsListaGeradorGerResponsavel.AsString );
     iAlteraResponsavel := 0;
     sResponsavel := '''' + '''';
  end;

  //
  if chkMostraProcedencia.Checked then
   begin
     iMostraProcedencia := 1;
     //sProcedencia := '''' + Trim( cdsResponsavelNome.AsString + '''' );
     //frmPrincipal.rvpFerpan.SetParam('Responsavel', Trim( cdsResponsavelNome.AsString ) );
   end
  else
   begin
    //frmPrincipal.rvpFerpan.SetParam('Responsavel', cdsListaGeradorGerResponsavel.AsString );
     iMostraProcedencia := 0;
     sProcedencia := '''' + '''';
  end;

  // MONTA A INSTRU��O SQL.
  cdsManifestos.Active := False;
  sqlManifestos.CommandText := ' SELECT '                                                  +
                                          '          f.Descricao AS NomeFantasia, '                   +
                                          '          m.GerDtEntrega, '                                +
                                          '          er.RazaoSocial AS RazaoSocialRecep, '            +
                                          '          p.Descricao AS Procedencia, '                    +
                                          '          r.Descricao AS Residuo, '                        +
                                          '          m.GerID_Empresa, '                               +
                                          '          e.RazaoSocial, '                                 +
                                          '          m.Numero, '                                      +
                                          '          m.Quantidade, '                                  +
                                          '          m.CDF, '                                         +
                                          '          m.RecepID_Empresa, '                             +
                                          '          m.ID_Residuo, '                                  +
                                          '          IF(m.GerID_Empresa=27, 200, r.ValorMercado) AS ValorMercado, ' +
                                          sCampoValorReceber                                          +
                                          '          m.ID_Situacao, '                                 +
                                          '          s.Descricao AS Situacao, '                       +
                                          '          e.ID_Fantasia, '                                 +
                                          '          e.Endereco, '                                    +
                                          '          e.Municipio, '                                   +
                                          '          e.UF, '                                          +
//                                          '          e.Responsavel, '                                 +
                                          '          IF( ' + IntToStr(iAlteraResponsavel) + '=0, e.Responsavel, ' + sResponsavel + ') AS Responsavel, ' +
                                          '          m.ID_Procedencia, '                              +
                                          '          e.Obs, '                                         +
                                          '          m.ID_Status, '                                   +
                                          '          IF(m.ID_Status=1,  CONCAT(''( '', me.Descricao , '' )'') , '''') AS Status, ' +
                                          '          IF( ' + IntToStr(iMostraProcedencia) + '=1,  p.Descricao , '''') AS MostraProcedencia ' +
                                          ' FROM '                                                    +
                                          '          manifesto m, '                                   +
                                          '          residuo r, '                                     +
                                          '          empresa e, '                                     +
                                          '          empresa er, '                                    +
                                          '          fantasia f, '                                    +
                                          '          situacao s, '                                    +
                                          '          procedencia p, '                                 +
                                          '          manifestoestado me '                             +
                                          ' WHERE '                                                   +
                                          sTipoManifesto                                              +
                                          sSituacao                                                   +
                                          sEmpresaGeradora                                            +
                                          sEmpresaReceptora                                           +
                                          sResiduo                                                    +
                                          '          ( m.GerDtEntrega         >= ' + sDtInicial + ' ) and ' +
                                          '          ( m.GerDtEntrega         <= ' + sDtFinal   + ' ) and ' +
                                          '          ( m.ID_Residuo           = r.ID_Residuo  ) and ' +
                                          '          ( m.GerID_Empresa        = e.ID_Empresa  ) and ' +
                                          '          ( e.ID_Fantasia          = f.ID_Fantasia ) and ' +
                                          '          ( m.RecepID_Empresa      = er.ID_Empresa ) and ' +
                                          '          ( m.ID_Situacao          = s.ID_Situacao ) and ' +
                                          '          ( m.ID_Procedencia       = p.ID_Procedencia ) and '  +
                                          '          ( m.ID_Status            = me.ID_ManifestoEstado ) ' +
                                          sOrderBy;
  // Retirar
  //sSQL := TStringList.Create;
  //sSQL.Text := sqlManifestos.CommandText;
  //sSQL.SaveToFile('c:\sistemas\aa.sql');
  //FreeAndNil(sSQL);


  cdsManifestos.Active := True;

  //
  sTituloPeriodo   := 'Per�odo de ' + txtDataInicial.Text + ' at� ' + txtDataFinal.Text;

  //
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloListaCDFPendentes', 'Verificar' );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPeriodo', sTituloPeriodo );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPrincipal', sTituloPrincipal );

  frmPrincipal.rvpGestao_Empresarial.SetParam('DataRelat', FormatDateTime('"Rio de Janeiro," dd "de" mmmm "de" yyyy',  StrToDate(txtDatatRelat.Text) ) );

  //  MOSTRA PROCED�NCIA
  if chkMostraProcedencia.Checked then
  begin
    frmPrincipal.rvpGestao_Empresarial.SetParam('MostraProcedencia', 'True' );
  end
  else
  begin
    frmPrincipal.rvpGestao_Empresarial.SetParam('MostraProcedencia', 'False' );
  end;

  // GERA PROTOCOLO
  GeraProtocolo( iCodEmpresaGeradora );

  // MOSTRA ASSINATURA DO RESPONSAVEL.                                        //
  iAssinaturaResponsavel  := StrToInt( iniSistemaArquivoIni.ReadString('RELATORIO', 'AssinaturaResponsavel', '' ) );
  sNomeCompleto           := iniSistemaArquivoIni.ReadString('RELATORIO', 'NomeCompleto',           '' );
  iAssinaturaDigitalizada := StrToInt( iniSistemaArquivoIni.ReadString('RELATORIO', 'AssinaturaDigitalizada', '' ) );
  sCaminhoArqAssDig       := iniSistemaArquivoIni.ReadString('RELATORIO', 'CaminhoArqAssDig',       '' );

  if iAssinaturaResponsavel = 0 then
   begin
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtLinha', '__________________________________________' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('lblAssinaturaResp', 'Respons�vel:' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtAssinaturaResp', sNomeCompleto );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sCaminhoArqAssDig', sCaminhoArqAssDig );

     if iAssinaturaDigitalizada = 0 then
      begin
        //sArq_Origem  := sSistemaPath + 'arq_assinatura.bmp';
        //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
        sCaminhoArqAssDig := sSistemaPath + 'arq_assinatura.bmp';
      end
     else if iAssinaturaDigitalizada = 1 then
      begin
        //sArq_Origem  := sSistemaPath + 'arq_em_branco.bmp';
        //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
        sCaminhoArqAssDig := sSistemaPath + 'arq_em_branco.bmp'
      end;
      //CopyFile(PChar(sArq_Origem), PChar(sArq_Destino), False);

   end
  else if iAssinaturaResponsavel = 1 then
   begin
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtLinha', '' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('lblAssinaturaResp', '' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtAssinaturaResp', '' );

     //sArq_Origem  := sSistemaPath + 'arq_em_branco.bmp';
     //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
     //CopyFile(PChar(sArq_Origem), PChar(sArq_Destino), False);

     sCaminhoArqAssDig := sSistemaPath + 'arq_em_branco.bmp';
     frmPrincipal.rvpGestao_Empresarial.SetParam('sCaminhoArqAssDig', sCaminhoArqAssDig );
   end;

  //
  if cbxRelatorios.ItemIndex = 0 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptListaManifPorEmpRecep');
   end
  else if cbxRelatorios.ItemIndex = 1 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptPagamentoSucata');
   end
  else if cbxRelatorios.ItemIndex = 2 then
   begin
     sTitulo    := 'RESTITUI��O COLETA SELETIVA';
     sSubTitulo := 'NO PER�ODO DE ' + txtDataInicial.Text + ' AT� ' + txtDataFinal.Text;




     frmPrincipal.rvpGestao_Empresarial.SetParam('sUsuarioNome', Trim(sSistemaUsuarioNome) );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sTitulo', Trim(sTitulo) );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sSubTitulo', Trim(sSubTitulo) );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sValorTotalReciclaveis', Trim(sValorTotalReciclaveis) );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sQtdeTotalReciclaveis', Trim(sQtdeTotalReciclaveis) );

     //frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptPagamentoReciclaveis');
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptNovoPagamentoReciclaveis');


   end
  else if cbxRelatorios.ItemIndex = 3 then
   begin

     sTitulo    := 'DEMOSTRATIVO DE RETIRA DE RES�DUOS';
     sSubTitulo := 'NO PER�ODO DE ' + txtDataInicial.Text + ' AT� ' + txtDataFinal.Text;

     frmPrincipal.rvpGestao_Empresarial.SetParam('sTitulo', sTitulo );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sSubTitulo', sSubTitulo );


     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptNovoFechamentoMensal');

   end;
end;

procedure TfrmModeloRelatWizard.btnReceptoraIncluirClick(Sender: TObject);
begin
  inherited;
  cdsEmpresaReceptoraDestino.Insert;
  cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsInteger := cdsEmpresaReceptoraOrigemID_Empresa.AsInteger;
  cdsEmpresaReceptoraDestino.FieldByName('RazaoSocial').AsString  := cdsEmpresaReceptoraOrigemRazaoSocial.AsString;
  cdsEmpresaReceptoraDestino.Post;

  cdsEmpresaReceptoraOrigem.Delete;

  SetButtonsEmpresaReceptora;
end;

procedure TfrmModeloRelatWizard.btnReceptoraIncluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsEmpresaReceptoraOrigem.First;
  while not cdsEmpresaReceptoraOrigem.Eof do
   begin
     cdsEmpresaReceptoraDestino.Insert;
     cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsInteger := cdsEmpresaReceptoraOrigemID_Empresa.AsInteger;
     cdsEmpresaReceptoraDestino.FieldByName('RazaoSocial').AsString  := cdsEmpresaReceptoraOrigemRazaoSocial.AsString;
     cdsEmpresaReceptoraDestino.Post;

     cdsEmpresaReceptoraOrigem.Delete;
   end;

  SetButtonsEmpresaReceptora;

end;

procedure TfrmModeloRelatWizard.btnReceptoraExcluirClick(Sender: TObject);
begin
  inherited;
  cdsEmpresaReceptoraOrigem.Insert;
  cdsEmpresaReceptoraOrigem.FieldByName('ID_Empresa').AsInteger := cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsInteger;
  cdsEmpresaReceptoraOrigem.FieldByName('RazaoSocial').AsString := cdsEmpresaReceptoraDestino.FieldByName('RazaoSocial').AsString;
  cdsEmpresaReceptoraOrigem.Post;

  cdsEmpresaReceptoraDestino.Delete;

  SetButtonsEmpresaReceptora;
end;

procedure TfrmModeloRelatWizard.btnReceptoraExcluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsEmpresaReceptoraDestino.First;
  while not cdsEmpresaReceptoraDestino.Eof do
   begin
     cdsEmpresaReceptoraOrigem.Insert;
     cdsEmpresaReceptoraOrigem.FieldByName('ID_Empresa').AsInteger := cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsInteger;
     cdsEmpresaReceptoraOrigem.FieldByName('RazaoSocial').AsString := cdsEmpresaReceptoraDestino.FieldByName('RazaoSocial').AsString;
     cdsEmpresaReceptoraOrigem.Post;

     cdsEmpresaReceptoraDestino.Delete;
   end;

  SetButtonsEmpresaReceptora;
end;

procedure TfrmModeloRelatWizard.SetButtonsEmpresaReceptora;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsEmpresaReceptoraOrigem.RecordCount  = 0;
  DestinoVazio := cdsEmpresaReceptoraDestino.RecordCount = 0;

  btnReceptoraIncluir.Enabled      := not OrigemVazio;
  btnReceptoraIncluirTodos.Enabled := not OrigemVazio;
  btnReceptoraExcluir.Enabled      := not DestinoVazio;
  btnReceptoraExcluirTodos.Enabled := not DestinoVazio;
end;


procedure TfrmModeloRelatWizard.btnSituacaoIncluirClick(Sender: TObject);
begin
  inherited;
  cdsSituacaoDestino.Insert;
  cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger := cdsSituacaoOrigemID_Situacao.AsInteger;
  cdsSituacaoDestino.FieldByName('Descricao').AsString    := cdsSituacaoOrigemDescricao.AsString;
  cdsSituacaoDestino.Post;

  cdsSituacaoOrigem.Delete;

  SetButtonsSituacao;
end;

procedure TfrmModeloRelatWizard.btnSituacaoIncluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsSituacaoOrigem.First;
  while not cdsSituacaoOrigem.Eof do
   begin
     cdsSituacaoDestino.Insert;
     cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger := cdsSituacaoOrigemID_Situacao.AsInteger;
     cdsSituacaoDestino.FieldByName('Descricao').AsString  := cdsSituacaoOrigemDescricao.AsString;
     cdsSituacaoDestino.Post;

     cdsSituacaoOrigem.Delete;
   end;

  SetButtonsSituacao;
end;

procedure TfrmModeloRelatWizard.btnSituacaoExcluirClick(Sender: TObject);
begin
  inherited;
  cdsSituacaoOrigem.Insert;
  cdsSituacaoOrigem.FieldByName('ID_Situacao').AsInteger := cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger;
  cdsSituacaoOrigem.FieldByName('Descricao').AsString    := cdsSituacaoDestino.FieldByName('Descricao').AsString;
  cdsSituacaoOrigem.Post;

  cdsSituacaoDestino.Delete;

  SetButtonsSituacao;
end;

procedure TfrmModeloRelatWizard.btnSituacaoExcluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsSituacaoDestino.First;
  while not cdsSituacaoDestino.Eof do
   begin
     cdsSituacaoOrigem.Insert;
     cdsSituacaoOrigem.FieldByName('ID_Situacao').AsInteger := cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger;
     cdsSituacaoOrigem.FieldByName('Descricao').AsString    := cdsSituacaoDestino.FieldByName('Descricao').AsString;
     cdsSituacaoOrigem.Post;

     cdsSituacaoDestino.Delete;
   end;

  SetButtonsSituacao;
end;

procedure TfrmModeloRelatWizard.SetButtonsSituacao;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsSituacaoOrigem.RecordCount  = 0;
  DestinoVazio := cdsSituacaoDestino.RecordCount = 0;

  btnSituacaoIncluir.Enabled      := not OrigemVazio;
  btnSituacaoIncluirTodos.Enabled := not OrigemVazio;
  btnSituacaoExcluir.Enabled      := not DestinoVazio;
  btnSituacaoExcluirTodos.Enabled := not DestinoVazio;
end;

procedure TfrmModeloRelatWizard.SetButtonsResiduo;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsResiduoOrigem.RecordCount  = 0;
  DestinoVazio := cdsResiduoDestino.RecordCount = 0;

  btnResiduoIncluir.Enabled      := not OrigemVazio;
  btnResiduoIncluirTodos.Enabled := not OrigemVazio;
  btnResiduoExcluir.Enabled      := not DestinoVazio;
  btnResiduoExcluirTodos.Enabled := not DestinoVazio;
end;

procedure TfrmModeloRelatWizard.btnResiduoIncluirClick(Sender: TObject);
begin
  inherited;
  cdsResiduoDestino.Insert;
  cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger := cdsResiduoOrigemID_Residuo.AsInteger;
  cdsResiduoDestino.FieldByName('Descricao').AsString    := cdsResiduoOrigemDescricao.AsString;
  cdsResiduoDestino.Post;

  cdsResiduoOrigem.Delete;

  SetButtonsResiduo;
end;

procedure TfrmModeloRelatWizard.btnResiduoIncluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoOrigem.First;
  while not cdsResiduoOrigem.Eof do
   begin
     cdsResiduoDestino.Insert;
     cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger := cdsResiduoOrigemID_Residuo.AsInteger;
     cdsResiduoDestino.FieldByName('Descricao').AsString  := cdsResiduoOrigemDescricao.AsString;
     cdsResiduoDestino.Post;

     cdsResiduoOrigem.Delete;
   end;

  SetButtonsResiduo;
end;

procedure TfrmModeloRelatWizard.btnResiduoExcluirClick(Sender: TObject);
begin
  inherited;
  cdsResiduoOrigem.Insert;
  cdsResiduoOrigem.FieldByName('ID_Residuo').AsInteger := cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger;
  cdsResiduoOrigem.FieldByName('Descricao').AsString   := cdsResiduoDestino.FieldByName('Descricao').AsString;
  cdsResiduoOrigem.Post;

  cdsResiduoDestino.Delete;

  SetButtonsResiduo;
end;

procedure TfrmModeloRelatWizard.btnResiduoExcluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoDestino.First;
  while not cdsResiduoDestino.Eof do
   begin
     cdsResiduoOrigem.Insert;
     cdsResiduoOrigem.FieldByName('ID_Residuo').AsInteger := cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger;
     cdsResiduoOrigem.FieldByName('Descricao').AsString    := cdsResiduoDestino.FieldByName('Descricao').AsString;
     cdsResiduoOrigem.Post;

     cdsResiduoDestino.Delete;
   end;

  SetButtonsResiduo;
end;

procedure TfrmModeloRelatWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsResponsavel.Active := False;
end;

procedure TfrmModeloRelatWizard.chkAlteraRespClick(Sender: TObject);
begin
  inherited;

  if chkAlteraResp.Checked then
  begin
    dblResponsavel.Color   := clWindow;
    dblResponsavel.Enabled := True;
  end
  else
  begin
    dblResponsavel.Color   := cl3DLight;
    dblResponsavel.Enabled := False;
  end;

end;

procedure TfrmModeloRelatWizard.GeraProtocolo(iEmpresaGeradora: Integer);
var
  iEmpresaAtu:     integer;
  iEmpresaAnt:     integer;
  sNumManifesto:   String;
  sMesAnoAnt:      String;
  sMesAnoAtu:      String;
  sProcedenciaAtu: String;
  sProcedenciaAnt: String;
  LongMonthNames:  array[1..12] of string;
begin
  // Preenche array com meses por extenso.
  LongMonthNames[01] := 'Janeiro';
  LongMonthNames[02] := 'Fevereiro';
  LongMonthNames[03] := 'Mar�o';
  LongMonthNames[04] := 'Abril';
  LongMonthNames[05] := 'Maio';
  LongMonthNames[06] := 'Junho';
  LongMonthNames[07] := 'Julho';
  LongMonthNames[08] := 'Agosto';
  LongMonthNames[09] := 'Setembro';
  LongMonthNames[10] := 'Outubro';
  LongMonthNames[11] := 'Novembro';
  LongMonthNames[12] := 'Dezembro';

  // limpa o dataset.
  sqlProtocEmpresa.CommandText := ' DELETE FROM protoc_empresa ';
  sqlProtocEmpresa.ExecSQL;

  // Ativa o dataset.
  sqlProtocEmpresa.CommandText := ' SELECT '                       +
                                  '      pe.Id_Protoc_Empresa, '   +
                                  '       pe.ProcedenciaResiduo, ' +
                                  '       pe.MesAno, '             +
                                  '       pe.NumManifesto '        +
                                  ' FROM '                         +
                                  '       protoc_empresa pe ';

  cdsProtocEmpresa.Active := True;
  cdsProtocEmpresa.EmptyDataSet;
  cdsProtocEmpresa.ApplyUpdates(-1);

  //
  cdsProtocManif.Active := False;;
  cdsProtocManif.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', StrToDate(txtDataInicialProtoc.Text));
  cdsProtocManif.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', StrToDate(txtDataFinalProtoc.Text));
  cdsProtocManif.Params.ParamByName('iID_Fantasia').AsInteger := iEmpresaGeradora;
  cdsProtocManif.Active   := True;

  // In�cio do loop.
  cdsProtocManif.First;
  while (not cdsProtocManif.Eof) do
  begin
    //
    cdsProtocEmpresa.Insert;
    cdsProtocEmpresaId_Protoc_Empresa.AsInteger := 0;
    cdsProtocEmpresaProcedenciaResiduo.AsString := cdsProtocManifProcedenciaDesc.AsString;;
    cdsProtocEmpresaMesAno.AsString             := LongMonthNames[cdsProtocManifMES.AsInteger] + ' de ' + cdsProtocManifANO.AsString;
    cdsProtocEmpresaNumManifesto.AsString       := cdsProtocManif.FieldByName('Numero').AsString;
    cdsProtocEmpresa.Post;

    cdsProtocEmpresa.ApplyUpdates(-1);
    //
    cdsProtocManif.Next;
  end;
end;


end.

