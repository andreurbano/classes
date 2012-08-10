unit uRotinasBancoDeDados;

interface

Uses Dialogs, Forms, SysUtils, DBClient, Mask, SqlExpr, Variants, Controls,
     DBGrids, Graphics, Provider, uVariaveisGlobais, MidasLib, Windows, DB, Menus;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
//                                                                            //
// EXEMPLO        :                                                           //
//                                                                            //
// DT. ULT. ALT.  : 05/12/2003                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function ConectaBD( sDriverName: string; sHost: string; sNomeBD: string ;sLogin: string; sSenha: string ): Boolean;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 01/01/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaProxCodigo( sTabela: String; sCampo: String ): Integer;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 19/02/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function ApagaRegistro( sTabela: string; sCampo: string; sCampoValor: String ) : Boolean;


implementation

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
//                                                                            //
// EXEMPLO        :                                                           //
//                                                                            //
// DT. ULT. ALT.  : 05/12/2003                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function ConectaBD(sDriverName: string; sHost: string; sNomeBD: string ;sLogin: string; sSenha: string): Boolean;
var
  sOSAuthentication: String;
begin
  bdSistemaBancoDadosDBX := TSQLConnection.Create(Application);

  if UpperCase( sDriverName ) = 'MYSQL' then
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.ConnectionName := 'CED';
    bdSistemaBancoDadosDBX.DriverName     := 'MySQL';
    bdSistemaBancoDadosDBX.GetDriverFunc  := 'getSQLDriverMYSQL';
    bdSistemaBancoDadosDBX.LibraryName    := 'dbexpmysql.dll';
    bdSistemaBancoDadosDBX.LoginPrompt    := False;
    bdSistemaBancoDadosDBX.Name           := 'bdSistemaBancoDadosDBX';
    bdSistemaBancoDadosDBX.VendorLib      := 'libmysql.dll';
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.Params.Add('DriverName='        + sDriverName);
    bdSistemaBancoDadosDBX.Params.Add('HostName='          + sHost);
    bdSistemaBancoDadosDBX.Params.Add('Database='          + sNomeBD);
    bdSistemaBancoDadosDBX.Params.Add('User_Name='         + sLogin);
    bdSistemaBancoDadosDBX.Params.Add('Password='          + sSenha);
    bdSistemaBancoDadosDBX.Params.Add('BlobSize='          + '-1');
    bdSistemaBancoDadosDBX.Params.Add('ErrorResourceFile=' + '');
    bdSistemaBancoDadosDBX.Params.Add('LocaleCode='        + '0000');
  end else if UpperCase( sDriverName ) = 'MSSQL' then
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.ConnectionName := 'CED';
    bdSistemaBancoDadosDBX.DriverName     := 'MSSQL';
    bdSistemaBancoDadosDBX.GetDriverFunc  := 'getSQLDriverMSSQL';
    bdSistemaBancoDadosDBX.LibraryName    := 'dbexpmss.dll';
    bdSistemaBancoDadosDBX.LoginPrompt    := False;
    bdSistemaBancoDadosDBX.Name           := 'bdSistemaBancoDadosDBX';
    bdSistemaBancoDadosDBX.VendorLib      := 'oledb';
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.Params.Add('DriverName='           + sDriverName);
    bdSistemaBancoDadosDBX.Params.Add('HostName='             + sHost);
    bdSistemaBancoDadosDBX.Params.Add('DataBase='             + sNomeBD);
    bdSistemaBancoDadosDBX.Params.Add('User_Name='            + sLogin);
    bdSistemaBancoDadosDBX.Params.Add('Password='             + sSenha);
    bdSistemaBancoDadosDBX.Params.Add('BlobSize='             + '-1');
    bdSistemaBancoDadosDBX.Params.Add('ErrorResourceFile='    + '');
    bdSistemaBancoDadosDBX.Params.Add('LocaleCode='           + '0000');
    bdSistemaBancoDadosDBX.Params.Add('MSSQL TransIsolation=' + 'ReadCommited');
    sOSAuthentication := iniSistemaArquivoIni.ReadString('BD', 'OSAuthentication',         'True');
    bdSistemaBancoDadosDBX.Params.Add('OS Authentication=' + sOSAuthentication);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
  end else if UpperCase( sDriverName ) = 'ORACLE' then
  begin

    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.ConnectionName := 'CED';
    bdSistemaBancoDadosDBX.DriverName     := 'Oracle';
    bdSistemaBancoDadosDBX.GetDriverFunc  := 'getSQLDriverORACLE';
    bdSistemaBancoDadosDBX.LibraryName    := 'dbexpora.dll';
    bdSistemaBancoDadosDBX.LoginPrompt    := False;
    bdSistemaBancoDadosDBX.Name           := 'bdSistemaBancoDadosDBX';
    bdSistemaBancoDadosDBX.VendorLib      := 'oci.dll';
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    //                                                                        //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    bdSistemaBancoDadosDBX.Params.Add('DriverName='           + sDriverName);
    bdSistemaBancoDadosDBX.Params.Add('HostName='             + sHost);
    bdSistemaBancoDadosDBX.Params.Add('DataBase='             + sNomeBD);
    bdSistemaBancoDadosDBX.Params.Add('User_Name='            + sLogin);
    bdSistemaBancoDadosDBX.Params.Add('Password='             + sSenha);
    bdSistemaBancoDadosDBX.Params.Add('BlobSize='             + '-1');
    bdSistemaBancoDadosDBX.Params.Add('ErrorResourceFile='    + '');
    bdSistemaBancoDadosDBX.Params.Add('LocaleCode='           + '0000');
{
    bdSistemaBancoDadosDBX.Params.Add('MSSQL TransIsolation=' + 'ReadCommited');
    sOSAuthentication := iniSistemaArquivoIni.ReadString('BD', 'OSAuthentication',         'True');
    bdSistemaBancoDadosDBX.Params.Add('OS Authentication=' + sOSAuthentication);
}






  end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  try
    bdSistemaBancoDadosDBX.Connected := True;
  except
    begin
      ShowMessage( 'Falha na conexão com banco de Dados.' +
                    #10 +
                    'Host'         + #9+#9  + ': ' + ConexaoBancoDeDados.Host  +
                    #10 +
                    'Login'        + #9+#9  + ': ' + ConexaoBancoDeDados.Login );
    end;
  end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  Result := bdSistemaBancoDadosDBX.Connected;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 01/01/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaProxCodigo( sTabela: String; sCampo: String ): Integer;
var
  iResultado:       integer;
  sqlProxCodigo: TSQLDataSet;
  dspProxCodigo: TDataSetProvider;
  cdsProxCodigo: TClientDataSet;
begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRIA/PREPARA OS DATASETS.                                                //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sqlProxCodigo               := TSQLDataSet.Create(Application);
  sqlProxCodigo.Name          := 'sqlProxCodigo';
  sqlProxCodigo.SQLConnection := bdSistemaBancoDadosDBX;

  dspProxCodigo               := TDataSetProvider.Create(Application);
  dspProxCodigo.Name          := 'dspProxCodigo';
  dspProxCodigo.DataSet       := sqlProxCodigo;

  cdsProxCodigo               := TClientDataSet.Create(Application);
  cdsProxCodigo.Name          := 'cdsProxCodigo';
  cdsProxCodigo.ProviderName  := dspProxCodigo.Name;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProxCodigo.Active      := False;
  sqlProxCodigo.CommandText := 'SELECT MAX(' + sCampo + ') AS MAIOR FROM ' + sTabela;
  cdsProxCodigo.Active      := True;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if cdsProxCodigo.FieldByName('MAIOR').AsInteger = 0 then
  begin
    iResultado := 1;
  end
  else
  begin
    iResultado := cdsProxCodigo.FieldByName('MAIOR').AsInteger + 1;
  end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // LIBERA/LIMPA DA MEMÓRIA OS DATASETS.                                     //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sqlProxCodigo.Free;
  dspProxCodigo.Free;
  cdsProxCodigo.Free;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  Result := iResultado;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      :                                                           //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 19/02/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function ApagaRegistro( sTabela: string; sCampo: string; sCampoValor: String ) : Boolean;
var
  bResultado: Boolean;
  sqlApagaReg:  TSQLDataSet;
  dspApagaReg:  TDataSetProvider;
  cdsApagaReg:  TClientDataSet;
begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRIA/PREPARA OS DATASETS.                                                //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sqlApagaReg               := TSQLDataSet.Create(Application);
  sqlApagaReg.Name          := 'sqlApagaReg';
  sqlApagaReg.SQLConnection := bdSistemaBancoDadosDBX;

  dspApagaReg               := TDataSetProvider.Create(Application);
  dspApagaReg.Name          := 'dspApagaReg';
  dspApagaReg.DataSet       := sqlApagaReg;

  cdsApagaReg               := TClientDataSet.Create(Application);
  cdsApagaReg.Name          := 'cdsApagaReg';
  cdsApagaReg.ProviderName  := dspApagaReg.Name;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsApagaReg.Active      := False;
  sqlApagaReg.CommandText := 'DELETE FROM ' + sTabela + ' WHERE ' + sCampo + ' = ' + sCampoValor;
  cdsApagaReg.Execute;
  bResultado := True;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // LIBERA/LIMPA DA MEMÓRIA OS DATASETS.                                     //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sqlApagaReg.Free;
  dspApagaReg.Free;
  cdsApagaReg.Free;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  Result := bResultado;
end;


end.
