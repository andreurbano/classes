unit uRotinasInternet;

interface

uses MAPI,
     Windows,
     Forms,
     IdSMTP,
     IdMessage,
     SqlExpr,
     Provider,
     uVariaveisGlobais,
     DBClient;

type

 TEmail = record
  TipoDeEnvio: String;
  De:          String;
  Para:        String;
  CC:          String;
  BCC:         String;
  Assunto:     String;
  Nome:        String;
  Host:        String;
  Usuario:     String;
  Mensagem:    WideString;
  //Mensagem:    String;
  ArqEmAnexo:  String;
  Confirma:    Boolean;
 end;


////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DEFINIÇÃO DAS CONSTANTES GLOBAIS                                           //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//const CR = #10;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DEFINIÇÃO DAS VARIÁVEIS GLOBAIS                                            //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//var

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que envia email.                                   //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 21/11/2003                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function EnviaEmail( Email: TEmail ): Boolean;


////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que envia email.                                   //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 29/01/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function SendMail( pTo, pCC, pCCo, pAssunto, pTexto: PChar; aFiles: Array Of PChar ) : Cardinal;
function EnviaEmail( Email: TEmail ): Cardinal;

implementation

uses Variants;


{ ANDRE EMAIL
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que envia email.                                   //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 21/11/2003                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function EnviaEmail( Email: TEmail ): Boolean;
var
  IdSMTP:     TIdSMTP;
  IdMessage:  TIdMessage;

  sqlMAPISQL: TSQLDataSet;
  dspMAPISQL: TDataSetProvider;
  cdsMAPISQL: TClientDataSet;

  Msg:         TMapiMessage;
  lpSender:    TMapiRecipDesc;
  lpRecepient: TMapiRecipDesc;

  lpCC:        TMapiRecipDesc;
  lpBCC:       TMapiRecipDesc;

  FileAttach:  TMapiFileDesc;
  SM:          TFNMapiSendMail;
  MAPIModule:  HModule;
  Flags:       Cardinal;

begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  ENVIO DE EMAIL VIA SERVIDOR SMTP.                                       //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if Email.TipoDeEnvio = 'SMTP' then
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // INICIALIZAÇÃO DAS VARIÁVEIS                                            //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP    := TIdSMTP.Create(Application);
    IdMessage := TIdMessage.Create(Application);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // NOME DO HOST -> exemplo: smtp.ig.com.br                                //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Host:= Email.Host;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // NOME DO USUÁRIO -> exemplo: andreurbano.ig.com.br                      //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Username:= Email.Usuario;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // CONECTAR COM O SERVIDOR SMTP                                           //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Connect();
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENDEREÇO DE EMAIL DO REMETENTE ( De: )                                 //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.From.Address := Email.De;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENDEREÇO DE EMAIL DO DESTINATÁRIO ( Para: )                            //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Recipients.EMailAddresses := Email.Para;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ASSUNTO DA MENSAGEM                                                    //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Subject := Email.Assunto;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // MENSAGEM A SER ENVIADA                                                 //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Body.Text := Email.Mensagem;
    IdMessage.MessageParts.Clear;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // AQUI PODE ANEXAR ARQUIVO                                               //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if Email.ArqEmAnexo <> '' then
    begin
      TIdAttachment.Create(IdMessage.MessageParts, Email.ArqEmAnexo);
    end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENVIA A MENSAGEM                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Send(IdMessage);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // TRATAR                                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    //MessageDlg('O envio de Email pelo SMTP falhou!', mtError, [mbAbort], 0);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // DESCONECTAR DO SERVIDOR SMTP                                           //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Disconnect;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Free;
    IdMessage.Free;
  end
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  ENVIO DE EMAIL VIA MAPI.                                                //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  else if Email.TipoDeEnvio = 'MAPI' then
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // cria propriedades da mensagem                                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    FillChar(Msg, SizeOf(Msg), 0);

    if (Email.Assunto <> '') then Msg.lpszSubject :=  PChar(Email.Assunto);

    if (Email.Mensagem <> '') then Msg.lpszNoteText := PChar(Email.Mensagem);

    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // remetente                                                              //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    Email.De := 'Timer';
    if (Email.De <> '') then
      begin
        lpSender.ulRecipClass := MAPI_ORIG;
        lpSender.lpszName     := PChar(Email.De);
        lpSender.lpszAddress  := PChar(Email.De);
        lpSender.ulReserved   := 0;
        lpSender.ulEIDSize    := 0;
        lpSender.lpEntryID    := nil;
        Msg.lpOriginator      := @lpSender;
      end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // destinatário                                                           //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if (Email.Para <> '') then
      begin
        lpRecepient.ulRecipClass := MAPI_TO;
        lpRecepient.lpszName     := PChar(Email.Para);
        lpRecepient.lpszAddress  := PChar(Email.Para);
        lpRecepient.ulReserved   := 0;
        lpRecepient.ulEIDSize    := 0;
        lpRecepient.lpEntryID    := nil;
        Msg.nRecipCount := 1;
        Msg.lpRecips := @lpRecepient;

        if (Email.CC <> '') then
        begin
          lpCC.ulRecipClass := MAPI_CC;
          lpCC.lpszName     := PChar(Email.CC);
          lpCC.lpszAddress  := PChar(Email.CC);
          lpCC.ulReserved   := 0;
          lpCC.ulEIDSize    := 0;
          lpCC.lpEntryID    := nil;

          Msg.nRecipCount := Msg.nRecipCount + 1;
          Msg.lpRecips := @lpCC;

        end;

        if (Email.BCC <> '') then
        begin
          lpBCC.ulRecipClass := MAPI_BCC;
          lpBCC.lpszName     := PChar(Email.BCC);
          lpBCC.lpszAddress  := PChar(Email.BCC);
          lpBCC.ulReserved   := 0;
          lpBCC.ulEIDSize    := 0;
          lpBCC.lpEntryID    := nil;

          Msg.nRecipCount := Msg.nRecipCount + 1;
          Msg.lpRecips := @lpBCC;

        end;

      end
    else
      Msg.lpRecips := nil;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // arquivo anexo                                                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if (Email.ArqEmAnexo = '') then
      begin
        Msg.nFileCount := 0;
        Msg.lpFiles    := nil;
      end
    else
      begin
        FillChar(FileAttach, SizeOf(FileAttach), 0);
        FileAttach.nPosition := Cardinal($FFFFFFFF);
        FileAttach.lpszPathName := PChar(Email.ArqEmAnexo);
        Msg.nFileCount := 1;
        Msg.lpFiles := @FileAttach;
      end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // carrega dll e o método para envio do email                             //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    MAPIModule := LoadLibrary(PChar(MAPIDLL));
    if MAPIModule = 0 then
      Result := False
    else
      try
        if Email.Confirma then
          Flags := MAPI_DIALOG or MAPI_LOGON_UI
        else
          Flags := 0;

        @SM := GetProcAddress(MAPIModule, 'MAPISendMail');

        if @SM <> nil then
          ///Result := SM(0, Application.Handle, Msg, Flags, 0)
          SM(0, Application.Handle, Msg, Flags, 0)
          ///Result := False;
        else
          ///Result := True;

      finally
        FreeLibrary(MAPIModule);
      end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // TRATAR                                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    //MessageDlg('O envio de Email pelo MAPI falhou!', mtError, [mbAbort], 0);

  end
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  ENVIO DE EMAIL VIA MAPISQL - SERVIDOR DE BD SQL SERVER.                 //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  else if Email.TipoDeEnvio = 'MAPISQL' then
  begin
try
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // INICIALIZAÇÃO DAS VARIÁVEIS                                            //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    sqlMAPISQL                   := TSQLDataSet.Create(Application);
    sqlMAPISQL.Name              := 'sqlMAPISQL';
    sqlMAPISQL.SQLConnection     := bdSistemaBancoDadosDBX;

    dspMAPISQL                   := TDataSetProvider.Create(Application);
    dspMAPISQL.Name              := 'dspMAPISQL';
    dspMAPISQL.DataSet           := sqlMAPISQL;

    cdsMAPISQL                   := TClientDataSet.Create(Application);
    cdsMAPISQL.Name              := 'cdsMAPISQL';
    cdsMAPISQL.ProviderName      := dspMAPISQL.Name;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // PREPARA E EXECUTA O SQL PARA ENVIO O DO EMAIL                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    cdsMAPISQL.Active      := False;

    sqlMAPISQL.CommandText := 'Exec master..xp_sendmail ' + #39 + Email.Para                  + #39 + ', '
                                                          + #39 + Email.Mensagem              + #39 + ', '
                                                          + #39 + ' '                         + #39 + ', '
                                                          + #39 + Email.ArqEmAnexo            + #39 + ', '
                                                          + #39 + ' '                         + #39 + ', '
                                                          + #39 + ' '                         + #39 + ', '
                                                          + #39 + Email.Assunto + #39;

    try
      cdsMAPISQL.Execute;
    except

    end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // TRATAR                                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    //MessageDlg('O envio de Email pelo MAPI falhou!', mtError, [mbAbort], 0);

    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    sqlMAPISQL.Free;
    dspMAPISQL.Free;
    cdsMAPISQL.Free;


except
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    sqlMAPISQL.Free;
    dspMAPISQL.Free;
    cdsMAPISQL.Free;
end;


  end;

 Result := True;

end;
}
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que envia email.                                   //
// SINTAXE        :                                                           //
// EXEMPLO        :                                                           //
// DT. ULT. ALT.  : 29/01/2004                                                //
// AUTOR ULT. ALT.: andreurbano@gencop.com.br                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function SendMail( pTo, pCC, pCCo, pAssunto, pTexto: PChar; aFiles: Array Of PChar ) : Cardinal;
function EnviaEmail( Email: TEmail ): Cardinal;
var
  sTo, sCC, sCCo, sAux: String;
  MapiMessage:          TMapiMessage;
  pRecipiente:          PMapiRecipDesc ;
  aRecipiente:          array of TMapiRecipDesc ;
  aArquivoEnvio:        array of TMapiFileDesc ;
  i, iRecip, iFiles:    integer;

  pTo:                  PChar;
  pCC:                  PChar;
  pCCo:                 PChar;
  pAssunto:             PChar;
  pTexto:               PChar;
  aFiles:               Array Of PChar;

  sqlMAPISQL:           TSQLDataSet;
  dspMAPISQL:           TDataSetProvider;
  cdsMAPISQL:           TClientDataSet;

  IdSMTP:               TIdSMTP;
  IdMessage:            TIdMessage;

begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // ***** ENVIO DE EMAIL VIA MAPI *****.                                     //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if Email.TipoDeEnvio = 'MAPI' then
  begin
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    //                                                                          //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    pTo      := PChar( Email.Para + ';' );
    pCC      := PChar( Email.CC   + ';' );
    pCCo     := PChar( Email.BCC  + ';' );
    pAssunto := PChar(Email.Assunto);
    pTexto   := PChar(Email.Mensagem);

    if Email.ArqEmAnexo <> '' then
    begin
      SetLength( aFiles, 1);
      aFiles[0] := PChar( Email.ArqEmAnexo );
    end;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    //                                                                          //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    iRecip := 0;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    // Define destinatários TO                                                  //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    sTo := '';
    if Assigned( pTo ) then
    begin
      sAux := pTo;
      if sAux[Length(sAux)] <> ';' then sAux := sAux + ';';

      while Pos( ';', sAux ) > 0 do
      begin
        Inc( iRecip );
        sTo := sTo + Copy( sAux, 1, Pos( ';', sAux ) );
        Delete( sAux, 1, Pos( ';', sAux ) );
      end;
    end;

    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    // Define destinatários CC                                                  //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    if Pos( '@', pCC ) > 0  then
    begin
      sCC := '';
      if Assigned( pCC ) then
      begin
        sAux := pCC;

        if sAux[Length(sAux)] <> ';' then sAux := sAux + ';';

        while Pos( ';', sAux ) > 0 do
        begin
          Inc( iRecip );
          sCC := sCC + Copy( sAux, 1, Pos( ';', sAux ) );
          Delete( sAux, 1, Pos( ';', sAux ) );
        end;
      end;
    end;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    // Define destinatários CCo                                                 //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    if Pos( '@', pCCo ) > 0  then
    begin
      sCCo := '';
      if Assigned( pCCo ) then
      begin
        sAux := pCCo;
        if sAux[Length(sAux)] <> ';' then sAux := sAux + ';';

        while Pos( ';', sAux ) > 0 do
        begin
          Inc( iRecip );
          sCCo := sCCo + Copy( sAux, 1, Pos( ';', sAux ) );
          Delete( sAux, 1, Pos( ';', sAux ) );
        end;
      end;
    end;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    // cria o tamanho do array de recipiente                                    //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    SetLength(aRecipiente, iRecip);
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    //                                                                          //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    I := 0;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          //
    // Define recipientes TO                                                    //
    //                                                                          //
    //////////////////////////////////////////////////////////////////////////////
    while sTO <> '' do
    begin
      Result := MAPIResolveName( 0, 0, PChar( Copy( sTo, 1, Pos(';', sTo) - 1 ) ), 0, 0, pRecipiente );

      // VERIFICA SE NÃO OCORREU ERROS
      if (Result <> SUCCESS_SUCCESS) Then
      begin
        case Result Of
          MAPI_E_AMBIGUOUS_RECIPIENT: Application.MessageBox( 'O destinatário não pode ser resolvido!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_FAILURE : Application.MessageBox( 'Ocorreram um ou mais erros não especificados!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_INSUFFICIENT_MEMORY: Application.MessageBox( 'Memória insuficiente!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_NOT_SUPPORTED : Application.MessageBox( 'Operação não suportada pelo sistema de mensagens!', 'Erro', MB_ICONERROR + MB_OK );
        else
          Application.MessageBox( 'Erro desconhecido!', 'Erro', MB_ICONERROR + MB_OK );
        end;
        exit;
      end;

      aRecipiente[i].ulReserved   := pRecipiente.ulReserved;
      aRecipiente[i].lpszName     := pRecipiente.lpszName;
      aRecipiente[i].lpszAddress  := pRecipiente.lpszAddress;
      aRecipiente[i].ulEIDSize    := pRecipiente.ulEIDSize;
      aRecipiente[i].lpEntryID    := pRecipiente.lpEntryID;
      aRecipiente[i].ulRecipClass := MAPI_TO;
      Delete( sTO, 1, Pos( ';', sTO ) );

      Inc( I );
    end;

    // Define recipientes CC
    while sCC <> '' do
    begin
      Result := MAPIResolveName( 0, 0, PChar( Copy( sCC, 1, Pos(';', sCC) -1 ) ), 0, 0, pRecipiente );

      // VERIFICA SE NÃO OCORREU ERROS
      if (Result <> SUCCESS_SUCCESS) then
      begin
        case Result of
          MAPI_E_AMBIGUOUS_RECIPIENT: Application.MessageBox( 'O destinatário não pode ser resolvido!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_FAILURE : Application.MessageBox( 'Ocorreram um ou mais erros não especificados!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_INSUFFICIENT_MEMORY: Application.MessageBox( 'Memória insuficiente!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_NOT_SUPPORTED : Application.MessageBox( 'Operação não suportada pelo sistema de mensagens!', 'Erro', MB_ICONERROR + MB_OK );
        else
          Application.MessageBox( 'Erro desconhecido!', 'Erro', MB_ICONERROR + MB_OK );
        end;
        exit;
      end;

      aRecipiente[i].ulReserved := pRecipiente.ulReserved;
      aRecipiente[i].lpszName := pRecipiente.lpszName;
      aRecipiente[i].lpszAddress := pRecipiente.lpszAddress;
      aRecipiente[i].ulEIDSize := pRecipiente.ulEIDSize;
      aRecipiente[i].lpEntryID := pRecipiente.lpEntryID;
      aRecipiente[i].ulRecipClass := MAPI_CC;
      Delete( sCC, 1, Pos( ';', sCC ) );
      Inc( I );
    end;

    // Define recipientes BCC
    while sCCo <> '' do
    begin
      Result := MAPIResolveName( 0, 0, PChar( Copy( sCCo, 1, Pos(';', sCCo) -1 ) ), 0, 0, pRecipiente );

      // VERIFICA SE NÃO OCORREU ERROS
      if (Result <> SUCCESS_SUCCESS) then
      begin
        case Result of
          MAPI_E_AMBIGUOUS_RECIPIENT: Application.MessageBox( 'O destinatário não pode ser resolvido!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_FAILURE : Application.MessageBox( 'Ocorreram um ou mais erros não especificados!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_INSUFFICIENT_MEMORY: Application.MessageBox( 'Memória insuficiente!!', 'Erro', MB_ICONERROR + MB_OK );
          MAPI_E_NOT_SUPPORTED : Application.MessageBox( 'Operação não suportada pelo sistema de mensagens!', 'Erro', MB_ICONERROR + MB_OK );
        else
          Application.MessageBox( 'Erro desconhecido!', 'Erro', MB_ICONERROR + MB_OK );
        end;
        exit;
      end;

      aRecipiente[i].ulReserved := pRecipiente.ulReserved;
      aRecipiente[i].lpszName := pRecipiente.lpszName;
      aRecipiente[i].lpszAddress := pRecipiente.lpszAddress;
      aRecipiente[i].ulEIDSize := pRecipiente.ulEIDSize;
      aRecipiente[i].lpEntryID := pRecipiente.lpEntryID;
      aRecipiente[i].ulRecipClass := MAPI_BCC;
      Delete( sCCo, 1, Pos( ';', sCCo ) );
      Inc( I );
    end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // arquivo anexo                                                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    iFiles := Length( aFiles );
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // cria o tamanho do array de anexos
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    SetLength(aArquivoEnvio, iFiles);

    if iFiles = 0 then
    begin
      MapiMessage.nFileCount := 0;
      MapiMessage.lpFiles    := nil;
    end
    else
    begin
{
      FillChar(FileAttach, SizeOf(FileAttach), 0);
      FileAttach.nPosition := Cardinal($FFFFFFFF);
      FileAttach.lpszPathName := PChar(Email.ArqEmAnexo);
      nFileCount := iFiles;
      lpFiles := @aArquivoEnvio[0];
}
      MapiMessage.nFileCount := iFiles;
      MapiMessage.lpFiles    := @aArquivoEnvio[0];
    end;

    // indica os parâmetros para cada recepiente de anexos
    for I := 0 to High(aArquivoEnvio) do
    begin
      aArquivoEnvio[i].ulReserved := 0;
      aArquivoEnvio[i].flFlags := 0;
      aArquivoEnvio[i].nPosition := 0;
      aArquivoEnvio[i].lpszPathName := aFiles[I];
      aArquivoEnvio[i].lpszFileName := Nil;
      aArquivoEnvio[i].lpFileType := Nil;
    end;

    // configura o MapiMessage para ser usando pelo MapiSendMail
    With MapiMessage Do
    Begin
      ulReserved := 0;
      lpszSubject := pAssunto;
      lpszNoteText := pTexto;
      lpszMessageType := Nil;
      lpszDateReceived := Nil;
      lpszConversationID := Nil;
      flFlags := 0;
      lpOriginator := Nil;
      nRecipCount := iRecip;
      lpRecips := @aRecipiente[0];
      //ver nFileCount := iFiles;
      //ver lpFiles := @aArquivoEnvio[0];
    end;

    // ativo o e-mail usado pelo usuário e coloca o destinatário, Assunto,corpo do e-mail e anexos
    // Result := MapiSendMail(0, 0, MapiMessage, MAPI_DIALOG or MAPI_LOGON_UI or MAPI_NEW_SESSION, 0);

    // caso você queira que não seja ativado o e-mail, apenas enviando a mensagem use a linha abaixo no lugar da linha acima.
    Result := MapiSendMail( 0, 0, MapiMessage, 0, 0 );

    If Result <> 0 Then Application.MessageBox('Erro no envio', 'Erro', MB_ICONERROR + MB_OK);

    // libera a memória alocada para o Recipiente
    MAPIFreeBuffer( pRecipiente );
  end
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  ENVIO DE EMAIL VIA MAPISQL - SERVIDOR DE BD SQL SERVER.                 //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  else if Email.TipoDeEnvio = 'MAPISQL' then
  begin
    try
      ////////////////////////////////////////////////////////////////////////////
      //                                                                        //
      // INICIALIZAÇÃO DAS VARIÁVEIS                                            //
      //                                                                        //
      ////////////////////////////////////////////////////////////////////////////
      sqlMAPISQL                   := TSQLDataSet.Create(Application);
      sqlMAPISQL.Name              := 'sqlMAPISQL';
      sqlMAPISQL.SQLConnection     := bdSistemaBancoDadosDBX;

      dspMAPISQL                   := TDataSetProvider.Create(Application);
      dspMAPISQL.Name              := 'dspMAPISQL';
      dspMAPISQL.DataSet           := sqlMAPISQL;

      cdsMAPISQL                   := TClientDataSet.Create(Application);
      cdsMAPISQL.Name              := 'cdsMAPISQL';
      cdsMAPISQL.ProviderName      := dspMAPISQL.Name;
      ////////////////////////////////////////////////////////////////////////////
      //                                                                        //
      // PREPARA E EXECUTA O SQL PARA ENVIO O DO EMAIL                          //
      //                                                                        //
      ////////////////////////////////////////////////////////////////////////////
      cdsMAPISQL.Active      := False;

      sqlMAPISQL.CommandText := 'Exec master..xp_sendmail ' + #39 + Email.Para                  + #39 + ', '
                                                            + #39 + Email.Mensagem              + #39 + ', '
                                                            + #39 + ' '                         + #39 + ', '
                                                            + #39 + Email.ArqEmAnexo            + #39 + ', '
                                                            + #39 + ' '                         + #39 + ', '
                                                            + #39 + ' '                         + #39 + ', '
                                                            + #39 + Email.Assunto + #39;

      try
        cdsMAPISQL.Execute;
      except

      end;
      ////////////////////////////////////////////////////////////////////////////
      //                                                                        //
      // TRATAR                                                                       //
      //                                                                        //
      ////////////////////////////////////////////////////////////////////////////
      //MessageDlg('O envio de Email pelo MAPI falhou!', mtError, [mbAbort], 0);

      ////////////////////////////////////////////////////////////////////////////
      //                                                                        //
      // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
      //                                                                        //
      ////////////////////////////////////////////////////////////////////////////
      sqlMAPISQL.Free;
      dspMAPISQL.Free;
      cdsMAPISQL.Free;


    except
      ////////////////////////////////////////////////////////////////////////////
      //                                                                        //
      // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
      //                                                                        //
      ////////////////////////////////////////////////////////////////////////////
      sqlMAPISQL.Free;
      dspMAPISQL.Free;
      cdsMAPISQL.Free;
    end;
  end
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  ENVIO DE EMAIL VIA SERVIDOR SMTP.                                       //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  else if Email.TipoDeEnvio = 'SMTP' then
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // INICIALIZAÇÃO DAS VARIÁVEIS                                            //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP    := TIdSMTP.Create(Application);
    IdMessage := TIdMessage.Create(Application);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // NOME DO HOST -> exemplo: smtp.ig.com.br                                //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Host:= Email.Host;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // NOME DO USUÁRIO -> exemplo: andreurbano.ig.com.br                      //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Username:= Email.Usuario;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // CONECTAR COM O SERVIDOR SMTP                                           //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Connect();
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENDEREÇO DE EMAIL DO REMETENTE ( De: )                                 //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.From.Address := Email.De;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENDEREÇO DE EMAIL DO DESTINATÁRIO ( Para: )                            //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Recipients.EMailAddresses := Email.Para;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ASSUNTO DA MENSAGEM                                                    //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Subject := Email.Assunto;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // MENSAGEM A SER ENVIADA                                                 //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdMessage.Body.Text := Email.Mensagem;
    IdMessage.MessageParts.Clear;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // AQUI PODE ANEXAR ARQUIVO                                               //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if Email.ArqEmAnexo <> '' then
    begin
      TIdAttachment.Create(IdMessage.MessageParts, Email.ArqEmAnexo);
    end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // ENVIA A MENSAGEM                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Send(IdMessage);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // TRATAR                                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    //MessageDlg('O envio de Email pelo SMTP falhou!', mtError, [mbAbort], 0);
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // DESCONECTAR DO SERVIDOR SMTP                                           //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Disconnect;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // LIBERAÇÃO DAS VARIÁVEIS E OBEJETOS DA MEMÓRIA                          //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    IdSMTP.Free;
    IdMessage.Free;
  end;

end;

end.
