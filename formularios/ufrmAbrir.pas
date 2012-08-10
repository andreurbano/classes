unit ufrmAbrir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Buttons, StdCtrls, DB, DataSourceUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, DBClient,
  ClientDataSetUrb, DBCtrls, uVariaveisGlobais;

type
  TfrmAbrir = class(TfrmModeloMDIChild)
    lblSelecioneSetor: TLabel;
    lblSelecioneModulo: TLabel;
    cbxSetor: TDBLookupComboBox;
    cbxGrupo: TDBLookupComboBox;
    lbxAbrirModulo: TDBLookupListBox;
    cdsGrupo: TClientDataSetUrb;
    dtsGrupo: TDataSourceUrb;
    cdsModulo: TClientDataSetUrb;
    dtsModulo: TDataSourceUrb;
    cdsSetor: TClientDataSetUrb;
    dtsSetor: TDataSourceUrb;
    cdsSetorID_Setor: TIntegerField;
    cdsSetorDescricao: TStringField;
    cdsGrupoID_Grupo: TIntegerField;
    cdsGrupoID_Setor: TIntegerField;
    cdsGrupoDescricao: TStringField;
    cdsModuloID_Usuario_Modulo: TIntegerField;
    cdsModuloID_Usuario: TIntegerField;
    cdsModuloID_Modulo: TIntegerField;
    cdsModuloID_Setor: TIntegerField;
    cdsModuloID_Grupo: TIntegerField;
    cdsModuloDescricao: TStringField;
    cdsModuloNome_Form: TStringField;
    dspSetor: TDataSetProviderUrb;
    dspGrupo: TDataSetProviderUrb;
    dspModulo: TDataSetProviderUrb;
    btnAbrir: TBitBtn;
    procedure cbxGruposClick(Sender: TObject);
    procedure cbxSetoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxSetorClick(Sender: TObject);
    procedure cbxGrupoClick(Sender: TObject);
    procedure lbxAbrirModuloDblClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure MostraFormulario(sNomeForm: string);

var
  frmAbrir: TfrmAbrir;

implementation

uses ufrmCadUsuario, ufrmCadSetor, ufrmCadModulo, ufrmCadGrupo,
  ufrmCadModuloUsuario, ufrmCadCliente, ufrmCadSexo, ufrmCadResiduo,
  ufrmCadEstadoFisico, ufrmCadAcond, ufrmCadOrigem, ufrmCadProcedencia,
  ufrmCadTratDisp, ufrmCadManifesto, ufrmCadUnidadeMedida,
  ufrmCadManifestoEstado, ufrmCadCargo, ufrmCadPessoa, ufrmCadTipoEmpresa,
  ufrmCadResponsavel, ufrmCadEmpresa, ufrmCadTratamento,
  ufrmRelatRetiradaResiduo, ufrmEfetivaEnvioManifesto,
  ufrmCancEfetivaEnvioManif, ufrmCadPeriodoNumero, ufrmCadTitRelat,
  ufrmGeraProtocolo, ufrmCadNomeFantasia, ufrmEmissaoFatura,
  ufrmLocalizaManifesto, ufrmRelatListaCDFPendentes,
  ufrmAlteraNumCDFsManifesto, ufrmRelatoriosMensais, ufrmModeloRelatWizard,
  ufrmRelatFechaMensalRetResiduo, ufrmPrincipal, ufrmCadTipoLograduro,
  ufrmCadLograBairro;

{$R *.dfm}

procedure TfrmAbrir.cbxGruposClick(Sender: TObject);
begin
  inherited;
// sqlModulos.ParamByName('iMatricula').AsInteger := iSistemaUsuarioMatric;
// sqlModulos.ParamByName('iGrupo').AsInteger     := cdsGruposID_GRUPO.AsInteger;
// cdsModulos.Active := False;
// cdsModulos.Active := True;
end;

procedure TfrmAbrir.cbxSetoresClick(Sender: TObject);
begin
  inherited;
// cdsModulos.Active := False;

// sqlGrupos.ParamByName('iMatricula').AsInteger := iSistemaUsuarioMatric;
// sqlGrupos.ParamByName('iSetor').AsInteger     := cdsSetoresID_SETOR.AsInteger;
// cdsGrupos.Active := False;
// cdsGrupos.Active := True;
end;

procedure TfrmAbrir.FormCreate(Sender: TObject);
begin
  inherited;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 frmPrincipal.sqlDataSet.CommandText := ' SELECT DISTINCT '                     +
                                         '          M.ID_Setor, '                +
                                         '          S.Descricao '                +
                                         ' FROM     usuario_modulo U, '          +
                                         '          modulo M, '                  +
                                         '          setor S '                    +
                                         ' WHERE    U.ID_Usuario = ' + IntToStr(iSistemaUsuarioMatric) +
                                         '   AND    U.ID_Modulo  = M.ID_Modulo ' +
                                         '   AND    M.ID_Setor   = S.ID_Setor '  +
                                         ' ORDER BY 2 ';
 cdsSetor.Active := True;
end;

procedure TfrmAbrir.cbxSetorClick(Sender: TObject);
begin
  inherited;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 cdsModulo.Active := False;
 frmPrincipal.sqlDataSet.CommandText := ' SELECT DISTINCT ' +
                                         '          M.ID_Grupo, ' +
                                         '          M.ID_Setor, ' +
                                         '          G.Descricao ' +
                                         ' FROM     usuario_modulo U, ' +
                                         '          modulo M, ' +
                                         '          grupo G ' +
                                         ' WHERE    U.ID_Usuario = ' + IntToStr(iSistemaUsuarioMatric) +
                                         '   AND    M.ID_Setor   = ' + IntToStr(cdsSetorID_Setor.AsInteger) +
                                         '   AND    U.ID_Modulo  = M.ID_Modulo ' +
                                         '   AND    M.ID_Grupo   = G.ID_Grupo ' +
                                         ' ORDER BY 3 ';
 cdsGrupo.Active := False;
 cdsGrupo.Active := True;

end;

procedure TfrmAbrir.cbxGrupoClick(Sender: TObject);
begin
  inherited;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 frmPrincipal.sqlDataSet.CommandText := ' SELECT U.*, ' +
                                         '        M.ID_Setor, ' +
                                         '        M.ID_Grupo, ' +
                                         '        M.Descricao, ' +
                                         '        M.Nome_Form ' +
                                         ' FROM   usuario_modulo U, ' +
                                         '        modulo M ' +
                                         ' WHERE  U.ID_Usuario = ' + IntToStr(iSistemaUsuarioMatric) +
                                         '   AND  U.ID_Modulo  = M.ID_Modulo ' +
                                         '   AND  M.ID_Setor   = ' + IntToStr(cdsSetorID_Setor.AsInteger) +
                                         '   AND  M.ID_Grupo   = ' + IntToStr(cdsGrupoID_Grupo.AsInteger) +
                                         ' ORDER BY M.Descricao ';
 cdsModulo.Active := False;
 cdsModulo.Active := True;
end;

procedure TfrmAbrir.lbxAbrirModuloDblClick(Sender: TObject);
begin
  inherited;
  MostraFormulario(cdsModuloNome_Form.Value);
end;

procedure TfrmAbrir.btnAbrirClick(Sender: TObject);
begin
  inherited;
  MostraFormulario(cdsModuloNome_Form.Value);
end;

procedure TfrmAbrir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsSetor.Active := False;
  cdsGrupo.Active  := False;
  cdsModulo.Active := False;
end;

procedure MostraFormulario(sNomeForm: string);
var
 Componente: TComponent;
 Tela      : TForm;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 01 - FORMULÁRIO PARA CADASTRO DE USUÁRIOS.                                //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sNomeForm = 'frmCadUsuario' then
  begin
   Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 02 - FORMULÁRIO PARA CADASTRO DE SETORES.                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadSetor' then
  begin
   Application.CreateForm(TfrmCadSetor, frmCadSetor);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 03 - FORMULÁRIO PARA PARA CADASTRO DE MÓDULOS.                            //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadModulo' then
  begin
   Application.CreateForm(TfrmCadModulo, frmCadModulo);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 04 - FORMULÁRIO PARA CADASTRO DE GRUPOS DOS MÓDULOS DO SISTEMA.           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadGrupo' then
  begin
   Application.CreateForm(TfrmCadGrupo, frmCadGrupo);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 05 - FORMULÁRIO PARA CADASTRO DE MÓDULOS PARA USUÁRIOS.                   //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadModuloUsuario' then
  begin
   Application.CreateForm(TfrmCadModuloUsuario, frmCadModuloUsuario);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 06 - FORMULÁRIO PARA CADASTRO DE CLIENTES.                                //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadClientes' then
  begin
   Application.CreateForm(TfrmCadCliente, frmCadCliente);
   frmCadCliente.Top := frmCadCliente.Top - 40;
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 07 - FORMULÁRIO PARA CADASTRO DE SEXOS.                                   //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadSexo' then
  begin
   Application.CreateForm(TfrmCadSexo, frmCadSexo);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 08 - FORMULÁRIO PARA CADASTRO DE TRATAMENTOS.                             //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadTratamento' then
  begin
   Application.CreateForm(TfrmCadTratamento, frmCadTratamento);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 09 - FORMULÁRIO PARA CADASTRO DE CONDOMINIOS.                             //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadCondominio' then
  begin
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 10 - FORMULÁRIO PARA CADASTRO DE TIPOS DE LOGRADOUROS.                    //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadTipoLograduro' then
  begin
   Application.CreateForm(TfrmCadTipoLograduro, frmCadTipoLograduro);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 11 - FORMULÁRIO PARA CADASTRO DE BAIRROS.                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadLograBairro' then
  begin
   Application.CreateForm(TfrmCadLograBairro, frmCadLograBairro);
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 12 - FORMULÁRIO PARA CADASTRO DE HISTORICO DOS CLIENTES.                  //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadHistoricoClientes' then
  begin
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 13 - FORMULÁRIO PARA CADASTRO DE TIPOS DE HISTORICO DOS CLIENTES.         //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadHistTipo' then
  begin
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 14 - FORMULÁRIO PARA CONSULTAR O HISTORICO DOS CLIENTES.                  //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmConsultaHistoricoClientes' then
  begin
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 15 - FORMULÁRIO PARA GERAÇÃO DE BOLETO BANCÁRIO.                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmGeraBoletoBancario' then
  begin
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // 16 - FORMULÁRIO PARA CADASTRO DE BANCOS.                                  //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sNomeForm = 'frmCadBanco' then
  begin
  end;


end;

procedure TfrmAbrir.BitBtn1Click(Sender: TObject);
begin
 inherited;
 MostraFormulario(cdsModuloNome_Form.Value);
end;

end.

