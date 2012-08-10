unit uGeraBoleta;

interface

uses
 SysUtils, Controls;

{$R *.RES}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o fator de vencimento.                     //
// Sintaxe:     RetornaFatorVenc(dDataVenc: TDate): string;                   //
// Exemplo:     sFator := RetornaFatorVenc(StrToDate('03/07/2000'));          //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaFatorVenc(dDataVenc: TDate): string;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna a string do Código de Barras.              //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 24/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaStringCodBarra( sCodBanco:     string;
                                sCodAgencia:   string;
                                sCodCarteira:  string;
                                sNossoNum:     string;
                                sContaCedente: string;
                                sCodMoeda:     string;
                                dDataVenc:     TDate;
                                sValor:        string): string;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna a linha digitável.                         //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaLinhaDigitavel(sStringCodBar: string): string;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o dígito verificador geral.                //
// Sintaxe:     RetornaDigVerificadorGeral(sStringCodBar : string): string;   //
// Exemplo:     RetornaDigVerificadorGeral(sStringCodBar);                    //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function RetornaDigVerificadorGeral(sStringCodBar : string): string;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o dígito verificador da linha digitável.   //
// Sintaxe:     RetornaDigVerificadorLinhaDig(sCampo : string): string;       //
// Exemplo:     RetornaDigVerificadorLinhaDig(sCampo);                        //
// Alterado em: 24/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function RetornaDigVerificadorLinhaDig(sCampo : string): string;

////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que retorna o campo livre.                             //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaCampoLivre( sCodBan:      string;
                            sCodAge:      string;
                            sCodCart:     string;
                            sNossoNumero: string;
                            sContaCed:    string): string;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 10.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function RetornaDigVeriModulo10(sCodBanco: string; sDigitos: string): string;
function RetornaDigVeriModulo10( sDigitos : string ): string;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 11.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaDigVeriModulo11(sCodBanco: string; sDigitos : string ): string;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador do NossoNum.//
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 03/10/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaDigVeriNossoNum(sCodBanco: string; sDigitos : string ): string;

implementation

////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que retorna o fator de vencimento.                     //
// Sintaxe:     RetornaFatorVenc(dDataVenc: TDate): string;                   //
// Exemplo:     sFator := RetornaFatorVenc(StrToDate('03/07/2000'));          //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaFatorVenc(dDataVenc: TDate): string;
var
 sResultado:   string;
 dDataBase:    TDate;
 rFatorDeVenc: Double;
begin
 dDataBase    := StrToDate('07/10/1997');
 rFatorDeVenc := dDataVenc - dDataBase;
 sResultado   := FloatToStr(rFatorDeVenc);
 Result       := sResultado;
end;
////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que retorna a string do Código de Barras.              //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 24/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaStringCodBarra( sCodBanco:     string;
                                sCodAgencia:   string;
                                sCodCarteira:  string;
                                sNossoNum:     string;
                                sContaCedente: string;
                                sCodMoeda:     string;
                                dDataVenc:     TDate;
                                sValor:        string ): string;
var
 sResultado:            string;
 sDigVerificadorCodBar: string;
 sCampoLivre:           string;
 sFatorVenc:            string;
 sValorAux:             string;
begin
 sValorAux  := FormatFloat('00000000.00', StrToFloat(sValor));
 Delete(sValorAux, Pos(',', sValorAux), 1);

 sFatorVenc := RetornaFatorVenc(dDataVenc);

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PROCESSA CAMPO LIVRE.                                                     //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sCampoLivre := RetornaCampoLivre( sCodBanco,
                                   sCodAgencia,
                                   sCodCarteira,
                                   sNossoNum,
                                   sContaCedente );
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // CALCULA O DÍGITO VERIFICADOR DO CÓD. DE BARRAS.                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sResultado := sCodBanco + sCodMoeda + sFatorVenc + sValorAux + sCampoLivre;

 Result := sResultado;
end;

////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que retorna a linha digitável.                         //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaLinhaDigitavel(sStringCodBar: string): string;
var
 sResultado:             string;
 sCodBanco:              string;
 sCodMoeda:              string;
 s5PriPociCampoLivre:    string;
 sDigVeriPriCampo:       string;
 s6a_15aPociCampoLivre:  string;
 sDigVeriSegCampo:       string;
 s16a_25aPociCampoLivre: string;
 sDigVeriTerCampo:       string;
 sDigVeriGeral:          string;
 sFatorVencimento:       string;
 sValorNominal:          string;
 sDigVeriCampo1:         string;
 sDigVeriCampo2:         string;
 sDigVeriCampo3:         string;

 sCampo1:                string;
 sCampo2:                string;
 sCampo3:                string;
 sCampo4:                string;
 sCampo5:                string;

begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // IDENTIFICA O BANCO.                                                       //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sCodBanco := Copy(sStringCodBar, 01, 03);
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO BRADESCO.                                                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // ATRIBUIÇÃO DE VARIÁVEIS.                                                //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sCodMoeda              := Copy(sStringCodBar, 04, 01);
   s5PriPociCampoLivre    := Copy(sStringCodBar, 20, 05);
   s6a_15aPociCampoLivre  := Copy(sStringCodBar, 25, 10);
   s16a_25aPociCampoLivre := Copy(sStringCodBar, 35, 10);
   sDigVeriGeral          := Copy(sStringCodBar, 05, 01);
   sFatorVencimento       := Copy(sStringCodBar, 06, 04);
   sValorNominal          := Copy(sStringCodBar, 10, 10);
   sCampo1                := sCodBanco + sCodMoeda + s5PriPociCampoLivre;
   sCampo2                := s6a_15aPociCampoLivre;
   sCampo3                := s16a_25aPociCampoLivre;
   sCampo4                := sDigVeriGeral;
   sCampo5                := sFatorVencimento + sValorNominal;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 1.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo1 := RetornaDigVeriModulo10( sCampo1 );
   Insert( sDigVeriCampo1, sCampo1, Length( sCampo1 ) + 1 );
   Insert( '.', sCampo1, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 2.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo2 := RetornaDigVeriModulo10( sCampo2 );
   Insert( sDigVeriCampo2, sCampo2, Length( sCampo2 ) + 1 );
   Insert( '.', sCampo2, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 3.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo3 := RetornaDigVeriModulo10( sCampo3 );
   Insert( sDigVeriCampo3, sCampo3, Length( sCampo3 ) + 1 );
   Insert( '.', sCampo3, 6 );

   sResultado :=  sCampo1 + '  ' + sCampo2 + '  ' + sCampo3 + '  ' + sCampo4 + '  ' + sCampo5;

  end;

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO ITAÚ.                                                              //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '341' then
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // ATRIBUIÇÃO DE VARIÁVEIS.                                                //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sCodMoeda              := Copy(sStringCodBar, 04, 01);
   s5PriPociCampoLivre    := Copy(sStringCodBar, 20, 05);
   s6a_15aPociCampoLivre  := Copy(sStringCodBar, 25, 10);
   s16a_25aPociCampoLivre := Copy(sStringCodBar, 35, 10);
   sDigVeriGeral          := Copy(sStringCodBar, 05, 01);
   sFatorVencimento       := Copy(sStringCodBar, 06, 04);
   sValorNominal          := Copy(sStringCodBar, 10, 10);
   sCampo1                := sCodBanco + sCodMoeda + s5PriPociCampoLivre;
   sCampo2                := s6a_15aPociCampoLivre;
   sCampo3                := s16a_25aPociCampoLivre;
   sCampo4                := sDigVeriGeral;
   sCampo5                := sFatorVencimento + sValorNominal;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 1.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo1 := RetornaDigVeriModulo10( sCampo1 );
   Insert( sDigVeriCampo1, sCampo1, Length( sCampo1 ) + 1 );
   Insert( '.', sCampo1, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 2.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo2 := RetornaDigVeriModulo10( sCampo2 );
   Insert( sDigVeriCampo2, sCampo2, Length( sCampo2 ) + 1 );
   Insert( '.', sCampo2, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 3.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo3 := RetornaDigVeriModulo10( sCampo3 );
   Insert( sDigVeriCampo3, sCampo3, Length( sCampo3 ) + 1 );
   Insert( '.', sCampo3, 6 );

   sResultado :=  sCampo1 + ' ' + sCampo2 + ' ' + sCampo3 + ' ' + sCampo4 + ' ' + sCampo5;

  end;

 Result := sResultado;
end;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o dígito verificador geral.                //
// Sintaxe:     RetornaDigVerificadorGeral(sStringCodBar : string): string;   //
// Exemplo:     RetornaDigVerificadorGeral(sStringCodBar);                    //
// Alterado em: 22/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
{
function RetornaDigVerificadorGeral(sStringCodBar : string): string;
var
 iMultiplicador:  integer;
 I:               integer;
 iTamString:      integer;
 iPosicaoNumero:  integer;
 iNumero:         integer;
 iSomatorio:      integer;
 iRestoDaDivisao: integer;
 iDigVerificador: integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // ATRIBUIÇÕES DE VARIÁVEIS.                                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iMultiplicador := 2;
 iTamString     := Length(sStringCodBar);
 iPosicaoNumero := iTamString;
 iSomatorio     := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // LOOP QUE PROC. OS 43 DÍGITOS DO CÓD. DE BARRAS P/ GERAR O DÍG. VERIFICADOR//
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 for I := 1 to iTamString do
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // RECEBE Nº DO CÓD. DE BARRAS, INICIANDO DA DIREITA P/ A ESQUERDA E       //
   // PARA QUE SEJA PROCESSADO.                                               //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iNumero    := StrToInt( Copy(sStringCodBar, iPosicaoNumero, 1) );
   iSomatorio := iSomatorio + (iNumero * iMultiplicador);
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA O MULTIPLICADOR DE 2 ATÉ 9.                                  //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   if iMultiplicador = 9 then
    begin
     iMultiplicador := 2;
    end
   else
    begin
     iMultiplicador := iMultiplicador + 1;
    end;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA A VARIÁVEL QUE ARMAZENA A POSIÇÃO DO PRÓXIMO Nº.             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iPosicaoNumero := iPosicaoNumero - 1;
  end;

 iRestoDaDivisao := iSomatorio mod 11;

 if (iRestoDaDivisao = 0) or (iRestoDaDivisao = 10) or (iRestoDaDivisao = 1) then
  begin
   iDigVerificador := 1;
  end
 else
  begin
   iDigVerificador := 11 - iRestoDaDivisao;
  end;

  Insert( IntToStr(iDigVerificador), sStringCodBar, 5);

  Result := sStringCodBar;
end;
}
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o dígito verificador da linha digitável.   //
// Sintaxe:     RetornaDigVerificadorLinhaDig(sCampo : string): string;       //
// Exemplo:     RetornaDigVerificadorLinhaDig(sCampo);                        //
// Alterado em: 24/05/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
{
function RetornaDigVerificadorLinhaDig(sCampo : string): string;
var
 iMultiplicador:  integer;
 I:               integer;
 iTamString:      integer;
 iPosicaoNumero:  integer;
 iNumero:         integer;
 iSomatorio:      integer;
 iRestoDaDivisao: integer;
 iDigVerificador: integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // ATRIBUIÇÕES DE VARIÁVEIS.                                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iMultiplicador := 2;
 iTamString     := Length(sCampo);
 iPosicaoNumero := iTamString;
 iSomatorio     := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // LOOP QUE PROC. OS 43 DÍGITOS DO CÓD. DE BARRAS P/ GERAR O DÍG. VERIFICADOR//
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 for I := 1 to iTamString do
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // RECEBE Nº DO CÓD. DE BARRAS, INICIANDO DA DIREITA P/ A ESQUERDA E       //
   // PARA QUE SEJA PROCESSADO.                                               //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iNumero    := StrToInt( Copy(sCampo, iPosicaoNumero, 1) );
   iSomatorio := iSomatorio + (iNumero * iMultiplicador);
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA O MULTIPLICADOR.                                             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   if iMultiplicador = 1 then
    begin
     iMultiplicador := 2;
    end
   else if iMultiplicador = 2 then
    begin
     iMultiplicador := 1;
    end;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA A VARIÁVEL QUE ARMAZENA A POSIÇÃO DO PRÓXIMO Nº.             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iPosicaoNumero := iPosicaoNumero - 1;
  end;

 iRestoDaDivisao := iSomatorio mod 10;

 if (iRestoDaDivisao = 0)then
  begin
   iDigVerificador := 0;
  end
 else
  begin
   iDigVerificador := 10 - iRestoDaDivisao;
  end;

  Insert( IntToStr(iDigVerificador), sCampo, iTamString);

  Result := sCampo;
end;
}
////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que retorna o campo livre.                             //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaCampoLivre( sCodBan:      string;
                            sCodAge:      string;
                            sCodCart:     string;
                            sNossoNumero: string;
                            sContaCed:    string): string;
var
 sResultado:     string;
 sDigVeri_1Itau: string;
 sDigVeri_2Itau: string;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO BRADESCO.                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBan = '237' then
  begin
   sResultado := sCodAge      +
                 sCodCart     +
                 sNossoNumero +
                 sContaCed    +
                 '0';
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO ITAÚ.                                                               //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sCodBan = '341' then
  begin
   sDigVeri_1Itau := RetornaDigVeriModulo10( sCodAge + sContaCed + sCodCart + sNossoNumero );
   sDigVeri_2Itau := RetornaDigVeriModulo10( sCodAge + sContaCed );

   sResultado     := sCodCart        +
                     sNossoNumero    +
                     sDigVeri_1Itau  +
                     sCodAge         +
                     sContaCed       +
                     sDigVeri_2Itau  +
                     '000';
  end;

 Result := sResultado;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador do NossoNum.//
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//function RetornaDigVeriModulo10(sCodBanco: string; sDigitos : string ): string;
//function RetornaDigVeriNossoNum(NumBlqAux : Real) : String;
function RetornaDigVeriNossoNum(sCodBanco: string; sDigitos : string ): string;
var
 iMultiplicador:  integer;
 I:               integer;
 iTamString:      integer;
 iPosicaoNumero:  integer;
 iNumero:         integer;
 iSomatorio:      integer;
 iRestoDaDivisao: integer;
 sDigVerificador: string;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // ATRIBUIÇÕES DE VARIÁVEIS.                                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iMultiplicador := 2;
 iTamString     := Length(sDigitos);
 iPosicaoNumero := iTamString;
 iSomatorio     := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // LOOP QUE PROC. OS DÍGITOS PASSADOS NO PARÂMETRO.                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 for I := 1 to iTamString do
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // RECEBE Nº DA STRING DE DÍGITOS, INICIANDO DA DIREITA P/ A ESQUERDA E    //
   // PARA QUE SEJA PROCESSADO.                                               //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iNumero    := StrToInt( Copy(sDigitos, iPosicaoNumero, 1) );
   iSomatorio := iSomatorio + (iNumero * iMultiplicador);
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA O MULTIPLICADOR DE 2 ATÉ 7.                                  //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   if iMultiplicador = 7 then
    begin
     iMultiplicador := 2;
    end
   else
    begin
     iMultiplicador := iMultiplicador + 1;
    end;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA A VARIÁVEL QUE ARMAZENA A POSIÇÃO DO PRÓXIMO Nº.             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iPosicaoNumero := iPosicaoNumero - 1;
  end;

 iRestoDaDivisao := iSomatorio mod 11;

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO BRADESCO.                                                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin

   if iRestoDaDivisao = 0 then
    begin
     sDigVerificador := IntToStr( iRestoDaDivisao );
    end
   else
    begin

     sDigVerificador := IntToStr( 11 - iRestoDaDivisao );

     if sDigVerificador = '10' then
      begin
       sDigVerificador := 'P';
      end;

    end;
  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO ITAÚ.                                                              //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '341' then
  begin
{
   iDigVerificador := 11 - iRestoDaDivisao;

   if (iDigVerificador = 0) or (iDigVerificador = 1) or (iRestoDaDivisao = 10)  or (iDigVerificador = 11) then
    begin
     iDigVerificador := 1;
    end;
}
  end;

 Result := sDigVerificador;

{
   NumBlq := FormatFloat('00',strtoint(edtcarteira.text)) +
             FormatFloat('0000',strtoint(edtagencia.text)) +
             FormatFloat('0000000',NumBlqAux);
   Valor := ((StrToInt(Copy(NumBlq,1,1)) * 2) +
             (StrToInt(Copy(NumBlq,2,1)) * 7) +
             (StrToInt(Copy(NumBlq,3,1)) * 6) +
             (StrToInt(Copy(NumBlq,4,1)) * 5) +
             (StrToInt(Copy(NumBlq,5,1)) * 4) +
             (StrToInt(Copy(NumBlq,6,1)) * 3) +
             (StrToInt(Copy(NumBlq,7,1)) * 2) +
             (StrToInt(Copy(NumBlq,8,1)) * 7) +
             (StrToInt(Copy(NumBlq,9,1)) * 6) +
             (StrToInt(Copy(NumBlq,10,1)) * 5) +
             (StrToInt(Copy(NumBlq,11,1)) * 4) +
             (StrToInt(Copy(NumBlq,12,1)) * 3) +
             (StrToInt(Copy(NumBlq,13,1)) * 2));
   Resto := Valor Mod 11;
   Digito := IntToStr(11 - Resto);
   if Resto = 0 then Digito := IntToStr(Resto);
   if StrToInt(Digito) >= 10 then Digito := 'P';
   NumBlq := FormatFloat('0000',QryGer14.FieldByName('NUM_AGE').AsInteger) +
             FormatFloat('0000000',NumBlqAux) + Digito;
   Result := Digito;
}
end;
////////////////////////////////////////////////////////////////////////////////
// OK                                                                         //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 10.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaDigVeriModulo10(sDigitos : string ): string;
var
 iMultiplicador:      integer;
 I:                   integer;
 iTamString:          integer;
 iPosicaoNumero:      integer;
 iNumero:             integer;
 iSomatorio:          integer;
 iRestoDaDivisao:     integer;
 iDigVerificador:     integer;
 iNumMultiplicado:    integer;
 sNumMultiplicado:    string;
 iTamNumMultiplicado: integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // ATRIBUIÇÕES DE VARIÁVEIS.                                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iMultiplicador := 2;
 iTamString     := Length( sDigitos );
 iPosicaoNumero := iTamString;
 iSomatorio     := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // LOOP QUE PROC. OS DÍGITOS PASSADOS NO PARÂMETRO.                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 for I := 1 to iTamString do
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // RECEBE Nº DO CÓD. DE BARRAS, INICIANDO DA DIREITA P/ A ESQUERDA E       //
   // PARA QUE SEJA PROCESSADO.                                               //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iNumero             := StrToInt( Copy( sDigitos, iPosicaoNumero, 1) );
   iNumMultiplicado    := iNumero * iMultiplicador;
   sNumMultiplicado    := IntToStr( iNumMultiplicado );
   iTamNumMultiplicado := Length( sNumMultiplicado );

   if iTamNumMultiplicado = 2 then
    begin
     iNumMultiplicado := StrToInt( Copy( sNumMultiplicado, 1, 1) );
     iNumMultiplicado := iNumMultiplicado + StrToInt( Copy( sNumMultiplicado, 2, 1) );
    end;

   iSomatorio := iSomatorio + iNumMultiplicado;

   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA O MULTIPLICADOR.                                             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   if iMultiplicador = 1 then
    begin
     iMultiplicador := 2;
    end
   else if iMultiplicador = 2 then
    begin
     iMultiplicador := 1;
    end;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA A VARIÁVEL QUE ARMAZENA A POSIÇÃO DO PRÓXIMO Nº.             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iPosicaoNumero := iPosicaoNumero - 1;
  end;

 iRestoDaDivisao := iSomatorio mod 10;

 if ( iRestoDaDivisao = 0 )then
  begin
   iDigVerificador := 0;
  end
 else
  begin
   iDigVerificador := 10 - iRestoDaDivisao;
  end;

{
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO BRADESCO.                                                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin

   if ( iRestoDaDivisao = 0 )then
    begin
     iDigVerificador := 0;
     end
   else
    begin
     iDigVerificador := 10 - iRestoDaDivisao;
    end;

  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO ITAÚ.                                                              //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '341' then
  begin
   iDigVerificador := 10 - iRestoDaDivisao;
  end;
}
 Result := IntToStr( iDigVerificador );
end;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 11.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 06/06/2002                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function RetornaDigVeriModulo11(sCodBanco: string; sDigitos : string ): string;
var
 iMultiplicador:  integer;
 I:               integer;
 iTamString:      integer;
 iPosicaoNumero:  integer;
 iNumero:         integer;
 iSomatorio:      integer;
 iRestoDaDivisao: integer;
 iDigVerificador: integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // ATRIBUIÇÕES DE VARIÁVEIS.                                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iMultiplicador := 2;
 iTamString     := Length(sDigitos);
 iPosicaoNumero := iTamString;
 iSomatorio     := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // LOOP QUE PROC. OS DÍGITOS PASSADOS NO PARÂMETRO.                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 for I := 1 to iTamString do
  begin
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // RECEBE Nº DA STRING DE DÍGITOS, INICIANDO DA DIREITA P/ A ESQUERDA E    //
   // PARA QUE SEJA PROCESSADO.                                               //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iNumero    := StrToInt( Copy(sDigitos, iPosicaoNumero, 1) );
   iSomatorio := iSomatorio + (iNumero * iMultiplicador);
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA O MULTIPLICADOR DE 2 ATÉ 9.                                  //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   if iMultiplicador = 9 then
    begin
     iMultiplicador := 2;
    end
   else
    begin
     iMultiplicador := iMultiplicador + 1;
    end;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // INCREMENTA A VARIÁVEL QUE ARMAZENA A POSIÇÃO DO PRÓXIMO Nº.             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   iPosicaoNumero := iPosicaoNumero - 1;
  end;

 iRestoDaDivisao := iSomatorio mod 11;

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO BRADESCO.                                                          //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin

   if (iRestoDaDivisao = 0) or (iRestoDaDivisao = 10) or (iRestoDaDivisao = 1) then
    begin
     iDigVerificador := 1;
    end
   else
    begin
     iDigVerificador := 11 - iRestoDaDivisao;
    end;

  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PADRÃO ITAÚ.                                                              //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '341' then
  begin
   iDigVerificador := 11 - iRestoDaDivisao;

   if (iDigVerificador = 0) or (iDigVerificador = 1) or (iRestoDaDivisao = 10)  or (iDigVerificador = 11) then
    begin
     iDigVerificador := 1;
    end;

  end;

 Result := IntToStr( iDigVerificador );
end;

end.
