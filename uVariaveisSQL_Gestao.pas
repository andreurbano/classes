unit uVariaveisSQL_Gestao;

interface

procedure IniVarSQLSelect;
procedure IniVarSQLCreate;

var
 sTratamentoSelect:          String;
 sSexoSelect:                String;
 sSetorSelect:               String;
 sLogradouroSelect:          String;
 sLogra_TipoSelect:          String;
 sLogra_BairroSelect:        String;
 sLogra_RegiaoSelect:        String;

 sCondominioSelect:          String;
 sClienteSelect:             String;
 sCli_TipoSelect:            String;
 sCli_ClasificacaoSelect:    String;
 sCli_StatusSelect:          String;
 sCond_ConvenioSelect:       String;
 sHistorico_ClienteSelect:   String;
 sAtend_OrigemSelect:        String;
 sHistoricoConsulta:         String;
 sBancoSelect:               String;
 sCobrancaSelect:            String;
 sConta_CorrenteSelect:      String;
 sPlanoSelect:               String;
 sCarteira_ConvenioSelect:   String;
 sVencimentoSelect:          String;
 sProd_e_ServSelect:         String;
 sCliente_Prod_e_ServSelect: String;
 sCobranca_PeriodoSelect:    String;
 sUsuarioSelect:             String;
 sOrgao_EmissorSelect:       String;
 sForma_De_PgSelect:         String;
 sAtend_AssuntoSelect:       String;
 sAtend_TipoSelect:          String;
 sAtend_EquipeSelect:        String;
 sSituacaoSelect:            String;
 sCobrancaSituacaoSelect:    String;
 sAtend_Equipe_TipoSelect:   String;
 sEstadoCivilSelect:         String;
 sOrigem_contatoSelect:      String;
 sProfissaoSelect:           String;

 sTratamentoCreate:        String;
 sSexoCreate:              String;
 sLograTipoCreate:         String;
 sLogradouroCreate:        String;
 sLograBairroCreate:       String;
 sCondominiosCreate:       String;
 sClienteCreate:           String;
 sCli_TipoCreate:          String;
 sCli_ClasificacaoCreate:  String;
 sCli_StatusCreate:        String;
 sCond_ConvenioCreate:     String;
 sBancoCreate:             String;
 sCobrancaCreate:          String;
 sConta_CorrenteCreate:    String;
 sPlanoCreate:             String;
 sCarteira_ConvenioCreate: String;
 sVencimentoCreate:        String;

 iID_Cliente_Selecionado: integer;

implementation

procedure IniVarSQLSelect;
begin

 // Select da tabela tratamento
 sTratamentoSelect :=  ' SELECT '           +
                       '   ID_tratamento, ' +
                       '   Descricao, '     +
                       '   Sigla '          +
                       ' FROM '             +
                       '   tratamento '     +
                       ' ORDER BY Descricao; ';

 // Select da tabela sexo
 sSexoSelect       := ' SELECT '      +
                      '   ID_Sexo, '  +
                      '   Descricao ' +
                      ' FROM '        +
                      '   sexo '      +
                      ' ORDER BY Descricao; ';

 // Select da tabela setor
 sSetorSelect      := ' SELECT s.ID_Setor, s.Descricao FROM setor s ORDER BY s.Descricao; ';

 // Select da tabela logra_tipo
 sLogra_TipoSelect  := ' SELECT '          +
                      '   ID_logra_tipo, ' +
                      '   Descricao, '     +
                      '   Sigla '          +
                      ' FROM '             +
                      '   logra_tipo '     +
                      ' ORDER BY Descricao; ';

 // Select da tabela  logradouro
 sLogradouroSelect := ' SELECT '           +
                      '   ID_logradouro, ' +
                      '   Descricao '      +
                      ' FROM '             +
                      '   logradouro '     +
                       ' ORDER BY Descricao; ';

 // Select da tabela logra_bairro
 sLogra_BairroSelect := ' SELECT '            +
                       '   ID_logra_bairro, ' +
                       '   Descricao '        +
                       ' FROM '               +
                       '   logra_bairro'      +
                       ' ORDER BY Descricao; ';

 // Select da tabela condominio
 sCondominioSelect :=  '  SELECT '             +
                       '   ID_Condominio, '    +
                       '   Descricao, '        +
                       '   QtdeUnidades, '     +
                       '   QtdeBlocos, '       +
                       '   ID_TrataSindico, '  +
                       '   ID_SexoSindico, '   +
                       '   NomeSindico, '      +
                       '   SobreNomeSindico, ' +
                       '   DataNascSindico, '  +
                       '   EmailSindico, '     +
                       '   LograID, '          +
                       '   LograID_Bairro, '   +
                       '   LograID_Tipo, '     +
                       '   LograNumero, '      +
                       '   LograComplemento, ' +
                       '   LograCEP, '         +
                       '   LograCidade, '      +
                       '   LograUF, '          +
                       '   Tel1, '             +
                       '   Tel2, '             +
                       '   TelSindico, '       +
                       '   Fax, '              +
                       '   ID_Convenio, '      +
                       '   DataConvenio, '     +
                       '   Obs '               +
                      ' FROM  condominio; ';

 // Select da tabela cliente
 sClienteSelect := ' SELECT '                     +
                   '   ID_Cliente, '              +
                   '   ID_Pessoa, '               +
                   '   ID_Classificacao, '        +
                   '   ID_Condominio, '           +
                   '   ID_Status, '               +
                   '   ID_Vencimento, '           +
                   '   Nome_ou_Razao, '           +
                   '   SobreNome_ou_Fantasia, '   +
                   '   Cpf_ou_Cnpj, '             +
                   '   Ident_ou_InscEstado, '     +
                   '   Tel1, '                    +
                   '   Tel2, '                    +
                   '   Fax,  '                    +
                   '   Email, '                   +
                   '   ID_ContatoTratamento, '    +
                   '   ID_ContatoSexo, '          +
                   '   ContatoNome, '             +
                   '   ContatoSobrenome, '        +
                   '   ContatoDataNasc, '         +
                   '   ContatoTel, '              +
                   '   LograCorrespID, '          +
                   '   LograCorrespID_Tipo, '     +
                   '   LograCorrespID_Bairro, '   +
                   '   LograCorrespNumero, '      +
                   '   LograCorrespComplemento, ' +
                   '   LograCorrespCEP, '         +
                   '   LograCorrespCidade, '      +
                   '   LograCorrespUF, '          +
                   '   LograInstalaID, '          +
                   '   LograInstalaID_Tipo, '     +
                   '   LograInstalaID_Bairro, '   +
                   '   LograInstalaNumero, '      +
                   '   LograInstalaComplemeto, '  +
                   '   LograInstalaCEP, '         +
                   '   LograInstalaCidade, '      +
                   '   LograInstalaUF, '          +
                   '   Obs, '                     +
                   '   IP_Address, '              +
                   '   DataCadastro, '            +
                   '   MAC_Placa, '               +
                   '   Login, '                   +
                   '   Senha '                    +
                   ' FROM '                       +
                   '   cliente ';


 // Select da tabela cli_tipo
 sCli_TipoSelect := ' SELECT ID_Cli_Tipo, Descricao FROM cli_tipo ORDER BY Descricao; ';

 // Select da tabela cli_clasificacao
 sCli_ClasificacaoSelect := ' SELECT ID_Cli_Clasificacao, Descricao FROM cli_clasificacao ORDER BY Descricao; ';

 // Select da tabela cli_status
 sCli_StatusSelect := ' SELECT ID_Cli_Status, Descricao FROM cli_status ORDER BY Descricao; ';

 // Select da tabela cond_convenio
 sCond_ConvenioSelect := ' SELECT c.ID_Cond_Convenio, c.Descricao FROM cond_convenio c; ';

 // Select da tabela Atend
 sHistorico_ClienteSelect := ' SELECT ID_Atend, ID_Usuario, ID_Atend_Origem, Data, Hora, ID_Cliente, Obs,  SolucaoData, SolucaoHora, ID_Situacao, ID_UsuarioSolucao FROM atend; ';

 // Select da tabela Atend_Origem
 sAtend_OrigemSelect := ' SELECT ID_Atend_Origem, Descricao FROM atend_origem ORDER BY Descricao; ';

 // Select da consulta do histórico do cliente
 sHistoricoConsulta :=  ' SELECT   h.ID_Atend, '                               +
                        '          h.Data, '                                      +
                        '          h.Hora, '                                      +
                        '          c.ID_Cliente, '                                +
                        '          c.Nome_ou_Razao, '                             +
                        '          c.Cpf_ou_Cnpj, '                               +
                        '          u.Nome AS NomeUsuario, '                       +
                        '          ht.Descricao AS Tipo, '                        +
                        '          h.Obs '                                        +
                        ' FROM     atend h, '                                  +
                        '          cliente c, '                                   +
                        '          usuario u, '                                   +
                        '          atend_origem ht '                             +
                        ' WHERE    ( h.ID_Cliente = c.ID_Cliente ) and'           +
                        '          ( h.ID_Usuario = u.ID_Usuario ) and '          +
                        '          ( h.ID_Atend_Origem = ht.ID_Atend_Origem ) ' +
                        ' ORDER BY c.ID_Cliente, '                                +
                        '          h.Data, '                                      +
                        '          h.Hora ; ';

 // Select da tabela banco
 sBancoSelect := ' SELECT ' +
                 '    b.ID_Banco, ' +
                 '    b.Descricao, ' +
                 '    b.Cod_Banco ' +
                 ' FROM ' +
                 '    banco b ' +
                 ' ORDER BY b.Descricao; ';

 // Select da tabela cobranca
 sCobrancaSelect := ' SELECT ' +
                    '    ID_Cobranca, ' +
                    '    ID_Cliente, ' +
                    '    Cod_Banco, ' +
                    '    Linha_Digitavel, ' +
                    '    Local_Pagmento, ' +
                    '    Dt_Vencimento, ' +
                    '    CedenteNome, ' +
                    '    Cedente_Ag_Cod, ' +
                    '    Dt_Documento, ' +
                    '    Num_Documento, ' +
                    '    Especie_Doc, ' +
                    '    Aceite, ' +
                    '    Dt_Processamento, ' +
                    '    NossoNumero, ' +
                    '    Carteira, ' +
                    '    Especie, ' +
                    '    Quantidade, ' +
                    '    Valor, ' +
                    '    Valor_Documento, ' +
                    '    Instrucoes, ' +
                    '    Desc_Abat, ' +
                    '    Mora_Multa, ' +
                    '    Valor_Cobrado, ' +
                    '    Sacado_Nome, ' +
                    '    Sacado_Rua, ' +
                    '    Sacado_CEP, ' +
                    '    Sacado_Cidade, ' +
                    '    Sacado_Estado, ' +
                    '    Sacado_CPF_CNPJ, ' +
                    '    Cod_Baixa, ' +
                    '    ID_Status ' +
                    ' FROM ' +
                    '    cobranca; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela cobranca.                                                //
 ///////////////////////////////////////////////////////////////////////////////
 sCobrancaSituacaoSelect := ' SELECT cs.ID_Cobranca_Situacao, cs.Descricao FROM cobranca_situacao cs ORDER BY cs.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela conta_corrente.                                          //
 ///////////////////////////////////////////////////////////////////////////////
 sConta_CorrenteSelect := ' SELECT ' +
                          '    ID_conta_corrente, ' +
                          '    ID_Banco, ' +
                          '    NumAgencia, ' +
                          '    NumAgenciaDV, ' +
                          '    NumConta, ' +
                          '    NumContaDV ' +
                          ' FROM conta_corrente; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela plano.                                                   //
 ///////////////////////////////////////////////////////////////////////////////
 sPlanoSelect := ' SELECT ' +
                 '    ID_plano, ' +
                 '    Descricao, ' +
                 '    VelocidadeDown, ' +
                 '    VelocidadeUp, ' +
                 '    Valor ' +
                 ' FROM plano; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela carteira_convenio.                                       //
 ///////////////////////////////////////////////////////////////////////////////
 sCarteira_ConvenioSelect := ' SELECT '                     +
                             '    c.ID_carteira_convenio, ' +
                             '    c.ID_conta_corrente, '    +
                             '    c.NumCarteira, '          +
                             '    c.NumConvenio, '          +
                             '    c.ID_Banco, '             +
                             '    c.UltNossoNumImpresso, '  +
                             '    c.Instrucoes, '           +
                             '    c.ValorJuros, '           +
                             '    c.LocalPagamento, '       +
                             '    c.PathArqRemessa, '       +
                             '    c.PathArqRetorno, '       +
                             '    c.PriNumArqRemessa, '     +
                             '    c.UltNumArqRemessa, '     +
                             '    c.PriNumArqRetorno, '     +
                             '    c.UltNumArqRetorno, '     +
                             '    c.FormatoNossoNum '       +
                             ' FROM ' +
                             '    carteira_convenio c; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela vencimento.                                              //
 ///////////////////////////////////////////////////////////////////////////////
 sVencimentoSelect        := ' SELECT v.ID_Vencimento, v.Descricao, v.Dia FROM vencimento v; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela prod_e_serv.                                             //
 ///////////////////////////////////////////////////////////////////////////////
 sProd_e_ServSelect       := ' SELECT p.ID_prod_e_serv, p.Descricao, p.Valor, p.ID_Cobranca_Periodo FROM prod_e_serv p ORDER BY 2; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela cliente_prod_e_serv.                                     //
 ///////////////////////////////////////////////////////////////////////////////
 sCliente_Prod_e_ServSelect := ' SELECT c.ID_Cliente_Prod_e_Serv, c.ID_Cliente, c.ID_Prod_e_Serv, c.Quantidade FROM cliente_prod_e_serv c; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela cobranca_periodo.                                        //
 ///////////////////////////////////////////////////////////////////////////////
 sCobranca_PeriodoSelect    := ' SELECT c.ID_Cobranca_Periodo, c.Descricao FROM cobranca_periodo c; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela usuario.                                                 //
 ///////////////////////////////////////////////////////////////////////////////
 sUsuarioSelect := '  SELECT '                +
                   '    u.ID_Usuario, '       +
                   '    u.Login, '            +
                   '    u.Senha, '            +
                   '    u.Nome, '             +
                   '    u.ID_Setor, '         +
                   '    u.Ramal, '            +
                   '    u.Email, '            +
                   '    u.Identidade, '       +
                   '    u.ID_Emissor_Ident, ' +
                   '    u.CPF, '              +
                   '    u.TelResidencia, '    +
                   '    u.TelCelPessoal, '    +
                   '    u.TelCelEmpresa, '    +
                   '    u.ID_Sexo, '          +
                   '    u.ID_Logra_Tipo, '    +
                   '    u.ID_Logradouro, '    +
                   '    u.Logra_Numero, '     +
                   '    u.ID_Tratamento, '    +
                   '    u.SobreNome, '        +
                   '    u.Logra_Complemento, ' +
                   '    u.ID_Logra_Bairro, ' +
                   '    u.Logra_CEP, ' +
                   '    u.LograCidade, ' +
                   '    u.LograUF, ' +
                   '    u.Obs ' +
//                   '    u.ID_Atend_Equipe ' +
                   ' FROM ' +
                   '    usuario u; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela .                                                 //
 ///////////////////////////////////////////////////////////////////////////////
 sOrgao_EmissorSelect := ' SELECT o.ID_Orgao_Emissor, o.Descricao FROM orgao_emissor o ORDER BY o.Descricao; ' ;

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela forma_de_pg.                                             //
 ///////////////////////////////////////////////////////////////////////////////
 sForma_De_PgSelect := ' SELECT f.ID_forma_de_pg, f.Descricao FROM forma_de_pg f; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela atend_assunto.                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sAtend_AssuntoSelect := ' SELECT a.ID_Atend_Assunto, a.Descricao FROM atend_assunto a; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela atend_tipo.                                              //
 ///////////////////////////////////////////////////////////////////////////////
 sAtend_TipoSelect := ' SELECT a.ID_Atend_Tipo, a.Descricao FROM atend_tipo a ORDER BY a.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela atend_equipe.                                            //
 ///////////////////////////////////////////////////////////////////////////////
//// sAtend_EquipeSelect := ' SELECT a.ID_Atend_Equipe, a.Descricao, a.ID_Lider, a.ID_Atend_Equipe_Tipo, a.Valor_Comissao FROM atend_equipe a ORDER BY a.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela situacao.                                                //
 ///////////////////////////////////////////////////////////////////////////////
 sSituacaoSelect := ' SELECT s.ID_Situacao, s.Descricao FROM situacao s; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela atend_equipe_tipo.                                       //
 ///////////////////////////////////////////////////////////////////////////////
//// sAtend_Equipe_TipoSelect := ' SELECT a.ID_Atend_Equipe_Tipo, a.Descricao FROM atend_equipe_tipo a ORDER BY a.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela logra_regiao.                                            //
 ///////////////////////////////////////////////////////////////////////////////
 sLogra_RegiaoSelect := ' SELECT l.ID_Logra_Regiao, l.Descricao FROM logra_regiao l ORDER BY l.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela estadocivil.                                             //
 ///////////////////////////////////////////////////////////////////////////////
 sEstadoCivilSelect := ' SELECT e.ID_estadocivil, e.Descricao FROM estadocivil e ORDER BY e.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela origem_contato.                                          //
 ///////////////////////////////////////////////////////////////////////////////
 sOrigem_contatoSelect := ' SELECT o.ID_origem_contato, o.Descricao FROM origem_contato o ORDER BY o.Descricao; ';

 ///////////////////////////////////////////////////////////////////////////////
 // Select da tabela profissao.                                               //
 ///////////////////////////////////////////////////////////////////////////////
 sProfissaoSelect := ' SELECT p.ID_profissao, p.Descricao FROM profissao p ORDER BY p.Descricao; ';

end;

procedure IniVarSQLCreate;
begin
 // Create da tabela cliente.
 sClienteCreate := '';

 // Cria a tabela cobranca
{
 sCobrancaSelect := ' CREATE TABLE  cobranca ( ' +
                    '   ID_Cobraca       int(11)     NOT NULL auto_increment, ' +
                    '   ID_Cliente       int(11)     NOT NULL default '0', ' +
                    '   Cod_Banco        varchar(05) NOT NULL default '', ' +
                    '   Linha_Digitavel  varchar(60) NOT NULL default '', ' +
                    '   Local_Pagmento   varchar(60) NOT NULL default '', ' +
                    '   Dt_Vencimento    timestamp   NOT NULL, ' +
                    '   CedenteNome      varchar(70) NOT NULL default '', ' +
                    '   Cedente_Ag_Cod   varchar(20) NOT NULL default '', ' +
                    '   Dt_Documento     timestamp   NOT NULL, ' +
                    '   Num_Documento    varchar(15) NOT NULL default '', ' +
                    '   Especie_Doc      varchar(05) NOT NULL default '', ' +
                    '   Aceite           varchar(05) NOT NULL default '', ' +
                    '   Dt_Processamento timestamp   NOT NULL, ' +
                    '   NossoNumero      varchar(25) NOT NULL default '', ' +
                    '   Carteira         varchar(06) NOT NULL default '', ' +
                    '   Especie          varchar(05) NOT NULL default '', ' +
                    '   Quantidade       float       NOT NULL default '0', ' +
                    '   Valor            float       NOT NULL default '0', ' +
                    '   Valor_Documento  float       NOT NULL default '0', ' +
                    '   Instrucoes       blob        NOT NULL, ' +
                    '   Desc_Abat        float       NOT NULL default '0', ' +
                    '   Mora_Multa       float       NOT NULL default '0', ' +
                    '   Valor_Cobrado    float       NOT NULL default '0', ' +
                    '   Sacado_Nome      varchar(60) NOT NULL default '', ' +
                    '   Sacado_Rua       varchar(40) NOT NULL default '', ' +
                    '   Sacado_CEP       varchar(08) NOT NULL default '', ' +
                    '   Sacado_Cidade    varchar(40) NOT NULL default '', ' +
                    '   Sacado_Estado    varchar(03) NOT NULL default '', ' +
                    '   Sacado_CPF_CNPJ  varchar(15) NOT NULL default '', ' +
                    '   Cod_Baixa        varchar(25) NOT NULL default '', ' +
                    '   PRIMARY KEY  (ID_Cobraca) ' +
                    ' ) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8; ';
}


{
 sCobrancaCreate :=

CREATE TABLE  cobranca (
  ID_Cobraca       int(11)     NOT NULL auto_increment,
  ID_Cliente       int(11)     NOT NULL default '0',
  Cod_Banco        varchar(05) NOT NULL default '',
  Linha_Digitavel  varchar(60) NOT NULL default '',
  Local_Pagmento   varchar(60) NOT NULL default '',
  Dt_Vencimento    timestamp   NOT NULL,
  CedenteNome      varchar(70) NOT NULL default '',
  Cedente_Ag_Cod   varchar(20) NOT NULL default '',
  Dt_Documento     timestamp   NOT NULL,
  Num_Documento    varchar(15) NOT NULL default '',
  Especie_Doc      varchar(05) NOT NULL default '',
  Aceite           varchar(05) NOT NULL default '',
  Dt_Processamento timestamp   NOT NULL,
  NossoNumero      varchar(25) NOT NULL default '',
  Carteira         varchar(06) NOT NULL default '',
  Especie          varchar(05) NOT NULL default '',
  Quantidade       float       NOT NULL default '0',
  Valor            float       NOT NULL default '0',
  Valor_Documento  float       NOT NULL default '0',
  Instrucoes       blob        NOT NULL,
  Desc_Abat        float       NOT NULL default '0',
  Mora_Multa       float       NOT NULL default '0',
  Valor_Cobrado    float       NOT NULL default '0',
  Sacado_Nome      varchar(60) NOT NULL default '',
  Sacado_Rua       varchar(40) NOT NULL default '',
  Sacado_CEP       varchar(08) NOT NULL default '',
  Sacado_Cidade    varchar(40) NOT NULL default '',
  Sacado_Estado    varchar(03) NOT NULL default '',
  Sacado_CPF_CNPJ  varchar(15) NOT NULL default '',
  Cod_Baixa        varchar(25) NOT NULL default '',
  PRIMARY KEY  (ID_Cobraca)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
}

{
///////////////////////////
// Tabela conta_corrente //
///////////////////////////
CREATE TABLE  conta_corrente (
  ID_conta_corrente int(11) NOT NULL auto_increment,
  NumAgencia        varchar(04) NOT NULL default '',
  NumAgenciaDV      varchar(01) NOT NULL default '',
  NumConta          varchar(10) NOT NULL default '',
  NumContaDV        varchar(01) NOT NULL default '',
  Carteira          varchar(04) NOT NULL default '',
  Convenio          varchar(10) NOT NULL default '',
  UltimoNossoNumero varchar(20) NOT NULL default '',
  PRIMARY KEY  (ID_conta_corrente)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

////////////////////////////
// Tabela plano           //
////////////////////////////
CREATE TABLE  plano (
  ID_plano           int(11)     NOT NULL auto_increment,
  Descricao          varchar(04) NOT NULL default '',
  VelocidadeDown     int(07)     NOT NULL default '0',
  VelocidadeUp       int(07)     NOT NULL default '0',
  Valor              float       NOT NULL default '0',
  PRIMARY KEY  (ID_plano)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


//////////////////////////////
// Tabela carteira_convenio //
//////////////////////////////
CREATE TABLE carteira_convenio (
  ID_carteira_convenio int(11)     NOT NULL auto_increment,
  ID_conta_corrente    int(11)     NOT NULL default '0',
  NumCarteira          varchar(5)  NOT NULL default '',
  NumConvenio          varchar(10) NOT NULL default '',
  PRIMARY KEY  (ID_carteira_convenio)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
}


end;

end.

