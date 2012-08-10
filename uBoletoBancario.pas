unit uBoletoBancario;

interface

uses
  SysUtils,
  Classes,
  Controls,
  uBanco;
type
 TBoletoBancario = class(TComponent)
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // DECLARAÇÕES PRIVADAS (escondendo os detalhes de implementação).          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  private
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // DECLARAÇÕES DOS CAMPOS DA CLASSE.                                       //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   FCodigoDeBarra:    string;
   FLinhaDigitavel:   string;
   FCodigoDaMoeda:    string;
   FFatorDoVenc:      string;
   FDataDoVenc:       TDateTime;
   FValorTexto:       string;
   FValor:            Double;
   FCampoLivre:       string;
   FCarteira:         string;
   FNossoNum:         string;
   FNossoNumComDig:   string;
   FNumAgencia:       string;
   FNumAgenciaDig:    string;
   FNumAgenciaComDig: string;
   FNumConta:         string;
   FNumContaDig:      string;
   FNumContaComDig:   string;
   //FZeros:
   FBanco:            TBanco;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // DECLARAÇÕES DAS FUNÇÕES PRIVADAS.                                       //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   function GetCodigoDeBarra                                    : string;
   function GetLinhaDigitavel                                   : string;
   function GetCodigoDaMoeda                                    : string;
   function GetFatorDoVenc                                      : string;
   function GetDataDoVenc                                       : TDateTime;
   function GetValorTexto                                       : string;
   function GetValor                                            : Double;
   function GetCampoLivre                                       : string;
   function GetCarteira                                         : string;

   function GetNossoNum                                         : string;
   function GetNossoNumComDig                                   : string;
   function GetNumAgencia                                       : string;
   function GetNumAgenciaDig                                    : string;
   function GetNumAgenciaComDig                                 : string;
   function GetNumConta                                         : string;
   function GetNumContaDig                                      : string;
   function GetNumContaComDig                                   : string;

   function GetBanco                                            : TBanco;

   function MontaCampoLivre(        sCodBanco:       string    ): string;
   function RetornaFatorVenc(       dDataVenc:       TDate     ): string;
   function RetornaCodBarra(        sCodBanco:       string;
                                    sCodAgencia:     string;
                                    sCodCarteira:    string;
                                    sNossoNum:       string;
                                    sContaCedente:   string;
                                    sCodMoeda:       string;
                                    dDataVenc:       TDate;
                                    sValor:          string    ): string;
   function RetornaCampoLivre(      sCodBan:         string;
                                    sCodAge:         string;
                                    sCodCart:        string;
                                    sNossoNumero:    string;
                                    sContaCed:       string    ): string;
   function RetornaLinhaDigitavel(  sStringCodBar:   string    ): string;
   function RetornaDigVeriModulo10( sDigitos :       string    ): string;
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // DECLARAÇÕES DOS PROCEDIMENTOS PRIVADOS.                                 //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   procedure SetCodigoDeBarra(      sCodigoDeBarra:  string    );
   procedure SetLinhaDigitavel(     sLinhaDigitavel: string    );
   procedure SetCodigoDaMoeda(      sCodigoDaMoeda:  string    );
   procedure SetFatorDoVenc(        sFatorDoVenc:    string    );
   procedure SetDataDoVenc(         dDataDoVenc:     TDateTime );
   procedure SetValorTexto(         sValorTexto:     string    );
   procedure SetValor(              Valor:           Double    );
   procedure SetCampoLivre(         sCampoLivre:     string    );
   procedure SetCarteira(           sCarteira:       string    );

   procedure SetNossoNum(           sNossoNum:         string    );
   procedure SetNossoNumComDig(     sNossoNumComDig:   string    );
   procedure SetNumAgencia(         sNumAgencia:       string    );
   procedure SetNumAgenciaDig(      sNumAgenciaDig:    string    );
   procedure SetNumAgenciaComDig(   sNumAgenciaComDig: string    );
   procedure SetNumConta(           sNumConta:         string    );
   procedure SetNumContaDig(        sNumContaDig:      string    );
   procedure SetNumContaComDig(     sNumContaComDig:   string    );

   procedure SetBanco(              Banco:           TBanco    );
   procedure DesmembraCampoLivre(   sCodBanco:       string    );
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // DECLARAÇÕES PRIVADAS (definindo a interface do programador).             //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  protected

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // DECLARAÇÕES PÚBLICAS (definindo a interface a tempo de execução).        //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  public
   constructor Create(AOwner: TComponent); override;

   function RetornaStringCodBarra(  sCodBanco:     string;
                                    sCodAgencia:   string;
                                    sCodCarteira:  string;
                                    sNossoNum:     string;
                                    sContaCedente: string;
                                    sCodMoeda:     string;
                                    dDataVenc:     TDate;
                                    sValor:        string): string;

   function RetornaDigVeriModulo11( sCodBanco: string; sDigitos : string ): string;
   function RetornaDigVeriNossoNum( sCodBanco: string; sDigitos : string ): string;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // DECLARAÇÕES PÚBLICADAS (definindo a interface a design-time).            //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  published

   property CodigoDeBarra:    string    read GetCodigoDeBarra    write SetCodigoDeBarra;
   property LinhaDigitavel:   string    read GetLinhaDigitavel   write SetLinhaDigitavel;
   property CodigoDaMoeda:    string    read GetCodigoDaMoeda    write SetCodigoDaMoeda;
   property FatorDoVenc:      string    read GetFatorDoVenc      write SetFatorDoVenc;
   property DataDoVenc:       TDateTime read GetDataDoVenc       write SetDataDoVenc;
   property ValorTexto:       string    read GetValorTexto       write SetValorTexto;
   property Valor:            Double    read GetValor            write SetValor;
   property CampoLivre:       string    read GetCampoLivre       write SetCampoLivre;
   property Carteira:         string    read GetCarteira         write SetCarteira;

{
   property NossoNum:         string    read GetNossoNum         write SetNossoNum;
   property NossoNumComDig:   string    read GetNossoNumComDig   write SetNossoNum;
   property NumAgencia:       string    read GetNumAgencia       write SetNumAgencia;
   property NumAgenciaComDig: string    read GetNumAgenciaComDig write SetNumAgencia;
   property NumConta:         string    read GetNumConta         write SetNumConta;
   property NumContaComDig:   string    read GetNumContaComDig   write SetNumConta;
}
   property NossoNum:         string    read GetNossoNum         ;
   property NossoNumComDig:   string    read GetNossoNumComDig   ;
   property NumAgencia:       string    read GetNumAgencia       ;
   property NumAgenciaDig:    string    read GetNumAgenciaDig    ;
   property NumAgenciaComDig: string    read GetNumAgenciaComDig ;
   property NumConta:         string    read GetNumConta         ;
   property NumContaDig:      string    read GetNumContaDig      ;
   property NumContaComDig:   string    read GetNumContaComDig   ;

   property Banco:          TBanco    read GetBanco;         // write SetBanco;
   // property Banco:          TBanco    index 0 read GetBanco;

end;

procedure Register;

implementation

{$R *.dcr}

uses SysConst;

procedure Register;
begin
  RegisterComponents('AU - Outros', [TBoletoBancario]);
end;

constructor TBoletoBancario.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
 FBanco := TBanco.Create(Self);

end;

function TBoletoBancario.GetCodigoDeBarra: string;
begin
 Result:= Self.FCodigoDeBarra;
end;

function TBoletoBancario.GetLinhaDigitavel: string;
begin
 Result:= Self.FLinhaDigitavel;
end;

function TBoletoBancario.GetCodigoDaMoeda: string;
begin
 Result:= Self.FCodigoDaMoeda;
end;

function TBoletoBancario.GetFatorDoVenc: string;
begin
 Result:= Self.FFatorDoVenc;
end;

function TBoletoBancario.GetDataDoVenc: TDateTime;
begin
 Result:= Self.FDataDoVenc;
end;

function TBoletoBancario.GetValorTexto: string;
begin
 Result:= Self.FValorTexto;
end;

function TBoletoBancario.GetValor: double;
begin
 Result:= Self.FValor;
end;

function TBoletoBancario.GetCampoLivre: string;
begin
 Result:= Self.FCampoLivre;
end;

function TBoletoBancario.GetCarteira: string;
begin
 Result:= Self.FCarteira;
end;

function TBoletoBancario.GetNossoNum: string;
begin
 Result:= Self.FNossoNum;
end;

function TBoletoBancario.GetNossoNumComDig: string;
begin
 Result:= Self.FNossoNumComDig;
end;


function TBoletoBancario.GetNumAgencia: string;
begin
 Result:= Self.FNumAgencia;
end;


function TBoletoBancario.GetNumAgenciaDig: string;
begin
 Result:= Self.FNumAgenciaDig;
end;


function TBoletoBancario.GetNumAgenciaComDig: string;
begin
 Result:= Self.FNumAgenciaComDig;
end;


function TBoletoBancario.GetNumConta: string;
begin
 Result:= Self.FNumConta;
end;

function TBoletoBancario.GetNumContaDig: string;
begin
 Result:= Self.FNumContaDig;
end;


function TBoletoBancario.GetNumContaComDig: string;
begin
 Result:= Self.FNumContaComDig;
end;


function TBoletoBancario.GetBanco: TBanco;
begin
 Result:= Self.FBanco;
end;



procedure TBoletoBancario.SetCodigoDeBarra( sCodigoDeBarra: string );
begin
 Self.FCodigoDeBarra := sCodigoDeBarra;

 //Self.SetCodigoDoBanco( Copy(sCodigoDeBarra, 01, 03) );

 Self.Banco.Cod := Copy(sCodigoDeBarra, 01, 03);

 Self.SetCodigoDaMoeda( Copy(sCodigoDeBarra, 04, 01) );
 Self.SetFatorDoVenc(   Copy(sCodigoDeBarra, 06, 04) );
 Self.SetDataDoVenc(    StrToInt( Self.FFatorDoVenc ) + StrToDate( '07/10/1997' ) );
 Self.SetValorTexto(    Copy(sCodigoDeBarra, 10, 10) );
 Self.SetValor(         StrToFloat( Copy(Self.FValorTexto, 1, 8) + ',' + Copy(Self.FValorTexto, 9, 2) ) );
 Self.SetCampoLivre(    Copy(sCodigoDeBarra, 20, 25) );




 Self.SetLinhaDigitavel(Self.RetornaLinhaDigitavel( Self.CodigoDeBarra ));

 Self.DesmembraCampoLivre(Self.Banco.Cod);
end;

procedure TBoletoBancario.SetLinhaDigitavel( sLinhaDigitavel: string );
begin
 Self.FLinhaDigitavel := sLinhaDigitavel;
end;

procedure TBoletoBancario.SetCodigoDaMoeda( sCodigoDaMoeda: string );
begin
 Self.FCodigoDaMoeda := sCodigoDaMoeda;
end;

procedure TBoletoBancario.SetFatorDoVenc( sFatorDoVenc: string );
begin
 Self.FFatorDoVenc := sFatorDoVenc;
end;

procedure TBoletoBancario.SetDataDoVenc( dDataDoVenc: TDateTime );
begin
 Self.FDataDoVenc := dDataDoVenc;
end;

procedure TBoletoBancario.SetValorTexto( sValorTexto: string) ;
begin
 Self.FValorTexto := sValorTexto;
end;

procedure TBoletoBancario.SetValor( Valor: double) ;
begin
 Self.FValor := Valor;
end;

procedure TBoletoBancario.SetCampoLivre( sCampoLivre: string );
begin
 Self.FCampoLivre := sCampoLivre;
end;

procedure TBoletoBancario.SetCarteira( sCarteira: string );
begin
 Self.FCarteira := sCarteira;
end;


procedure TBoletoBancario.SetNossoNum( sNossoNum: string );
begin
 Self.FNossoNum := sNossoNum;
end;

procedure TBoletoBancario.SetNossoNumComDig( sNossoNumComDig: string );
begin
 Self.FNossoNumComDig := sNossoNumComDig;
end;


procedure TBoletoBancario.SetNumAgencia( sNumAgencia: string ) ;
begin
 Self.FNumAgencia := sNumAgencia;
end;


procedure TBoletoBancario.SetNumAgenciaDig( sNumAgenciaDig: string ) ;
begin
 Self.FNumAgenciaDig := sNumAgenciaDig;
end;

procedure TBoletoBancario.SetNumAgenciaComDig( sNumAgenciaComDig: string ) ;
begin
 Self.FNumAgenciaComDig := sNumAgenciaComDig;
end;


procedure TBoletoBancario.SetNumConta( sNumConta: string );
begin
 Self.FNumConta := sNumConta;
end;

procedure TBoletoBancario.SetNumContaDig( sNumContaDig: string );
begin
 Self.FNumContaDig := sNumContaDig;
end;


procedure TBoletoBancario.SetNumContaComDig( sNumContaComDig: string );
begin
 Self.FNumContaComDig := sNumContaComDig;
end;


procedure TBoletoBancario.SetBanco( Banco: TBanco );
begin
 Self.FBanco := Banco;
end;


procedure TBoletoBancario.DesmembraCampoLivre(sCodBanco: string);
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO BRADESCO.                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin
   Self.SetCarteira(  Copy(Self.CodigoDeBarra, 24, 02) );
   Self.SetNossoNum(  Copy(Self.CodigoDeBarra, 26, 11) );
   Self.SetNossoNumComDig(  Self.NossoNum + '-' + Self.RetornaDigVeriNossoNum(sCodBanco, Self.Carteira + Self.NossoNum) );

   Self.SetNumAgencia( Copy(Self.CodigoDeBarra, 20, 04) );
   Self.SetNumAgenciaDig( Self.RetornaDigVeriNossoNum( sCodBanco, Self.NumAgencia ) );
   // Self.SetNumAgenciaComDig ( Self.NumAgencia + '-' + Self.RetornaDigVeriNossoNum(sCodBanco, Self.NumAgencia) );
   Self.SetNumAgenciaComDig ( Self.NumAgencia + '-' +  Self.NumAgenciaDig);

   Self.SetNumConta(  Copy(Self.CodigoDeBarra, 37, 07) );
   Self.SetNumContaDig(  Self.RetornaDigVeriNossoNum(sCodBanco, Self.NumConta) );
   // Self.SetNumContaComDig(  Self.NumConta + '-' + Self.RetornaDigVeriNossoNum(sCodBanco, Self.NumConta) );
   Self.SetNumContaComDig(  Self.NumConta + '-' + Self.NumContaDig );
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO ITAÚ.                                                               //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sCodBanco = '341' then
  begin
   Self.SetCarteira(  Copy(Self.CodigoDeBarra, 20, 03) );
   Self.SetNossoNum(  Copy(Self.CodigoDeBarra, 23, 08) );
   // NÃO ESQUECER DE CALCULAR O 1º DAC.
   Self.SetNumAgencia( Copy(Self.CodigoDeBarra, 32, 04) );
   Self.SetNumConta(  Copy(Self.CodigoDeBarra, 36, 05) );
   // NÃO ESQUECER DE CALCULAR O 2º DAC.
  end;

end;

function TBoletoBancario.MontaCampoLivre(sCodBanco: string): string;
var
 sResultado: string;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO BRADESCO.                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if sCodBanco = '237' then
  begin
{
   sResultado := sCodAge      +
                 sCodCart     +
                 sNossoNumero +
                 sContaCed    +
                 '0';
}
   sResultado := Self.NumAgencia +
                 Self.Carteira   +
                 Self.NossoNum   +
                 Self.NumConta   +
                 '0';
  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO ITAÚ.                                                               //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else if sCodBanco = '341' then
  begin

{
   //sDigVeri_1Itau := RetornaDigVeriModulo10( sCodAge + sContaCed + sCodCart + sNossoNumero );
   //sDigVeri_2Itau := RetornaDigVeriModulo10( sCodAge + sContaCed );
   sResultado     := sCodCart        +
                     sNossoNumero    +
                     sDigVeri_1Itau  +
                     sCodAge         +
                     sContaCed       +
                     sDigVeri_2Itau  +
                     '000';
}

   //sDigVeri_1Itau := RetornaDigVeriModulo10( sCodAge + sContaCed + sCodCart + sNossoNumero );
   //sDigVeri_2Itau := RetornaDigVeriModulo10( sCodAge + sContaCed );
   sResultado     := Self.Carteira   +
                     Self.NossoNum   +
                     //sDigVeri_1Itau  +
                     Self.NumAgencia  +
                     Self.NumConta   +
                     //sDigVeri_2Itau  +
                     '000';
  end;

end;


// ****************** INÍCIO PROCEDURE JÁ TESTADAS ************************** //
//                                                                            //
// ************************************************************************** //

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que retorna o Código de Barras.                        //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 14/02/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaCodBarra( sCodBanco:     string;
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

 sFatorVenc := Self.RetornaFatorVenc(dDataVenc);

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PROCESSA CAMPO LIVRE.                                                     //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sCampoLivre := Self.RetornaCampoLivre( sCodBanco,
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
//                                                                            //
// Descrição:   Função que retorna o fator de vencimento.                     //
// Sintaxe:     RetornaFatorVenc(dDataVenc: TDate): string;                   //
// Exemplo:     sFator := RetornaFatorVenc(StrToDate('03/07/2000'));          //
// Alterado em: 14/02/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaFatorVenc(dDataVenc: TDate): string;
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
//                                                                            //
// Descrição:   Função que retorna o campo livre.                             //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 14/02/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaCampoLivre( sCodBan:      string;
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
   //sDigVeri_1Itau := RetornaDigVeriModulo10( sCodAge + sContaCed + sCodCart + sNossoNumero );
   //sDigVeri_2Itau := RetornaDigVeriModulo10( sCodAge + sContaCed );
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
// Descrição:   Função que retorna a linha digitável.                         //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 14/02/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaLinhaDigitavel(sStringCodBar: string): string;
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
   sDigVeriCampo1 := Self.RetornaDigVeriModulo10( sCampo1 );
   Insert( sDigVeriCampo1, sCampo1, Length( sCampo1 ) + 1 );
   Insert( '.', sCampo1, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 2.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo2 := Self.RetornaDigVeriModulo10( sCampo2 );
   Insert( sDigVeriCampo2, sCampo2, Length( sCampo2 ) + 1 );
   Insert( '.', sCampo2, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 3.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo3 := Self.RetornaDigVeriModulo10( sCampo3 );
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
   sDigVeriCampo1 := Self.RetornaDigVeriModulo10( sCampo1 );
   Insert( sDigVeriCampo1, sCampo1, Length( sCampo1 ) + 1 );
   Insert( '.', sCampo1, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 2.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo2 := Self.RetornaDigVeriModulo10( sCampo2 );
   Insert( sDigVeriCampo2, sCampo2, Length( sCampo2 ) + 1 );
   Insert( '.', sCampo2, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 3.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo3 := Self.RetornaDigVeriModulo10( sCampo3 );
   Insert( sDigVeriCampo3, sCampo3, Length( sCampo3 ) + 1 );
   Insert( '.', sCampo3, 6 );

   sResultado :=  sCampo1 + ' ' + sCampo2 + ' ' + sCampo3 + ' ' + sCampo4 + ' ' + sCampo5;

  end
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // OUTROS BANCOS.                                                            //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 else
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
   sDigVeriCampo1 := Self.RetornaDigVeriModulo10( sCampo1 );
   Insert( sDigVeriCampo1, sCampo1, Length( sCampo1 ) + 1 );
   Insert( '.', sCampo1, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 2.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo2 := Self.RetornaDigVeriModulo10( sCampo2 );
   Insert( sDigVeriCampo2, sCampo2, Length( sCampo2 ) + 1 );
   Insert( '.', sCampo2, 6 );
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // CALCULA E ATRIBUI O DÍGITO VERIFICADOR AO CAMPO 3.                      //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   sDigVeriCampo3 := Self.RetornaDigVeriModulo10( sCampo3 );
   Insert( sDigVeriCampo3, sCampo3, Length( sCampo3 ) + 1 );
   Insert( '.', sCampo3, 6 );

   sResultado :=  sCampo1 + ' ' + sCampo2 + ' ' + sCampo3 + ' ' + sCampo4 + ' ' + sCampo5;

  end;
 Result := sResultado;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 10.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 14/02/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaDigVeriModulo10(sDigitos : string ): string;
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
// Descrição:   Função que calcula e retorna o dígito verificador do NossoNum.//
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 14/04/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaDigVeriNossoNum(sCodBanco: string; sDigitos : string ): string;
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
// Descrição:   Função que retorna a string do Código de Barras.              //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 16/04/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaStringCodBarra( sCodBanco:     string;
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

 sFatorVenc := Self.RetornaFatorVenc(dDataVenc);

 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // PROCESSA CAMPO LIVRE.                                                     //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sCampoLivre := Self.RetornaCampoLivre( sCodBanco,
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
//                                                                            //
// Descrição:   Função que calcula e retorna o dígito verificador módulo 11.  //
// Sintaxe:                                                                   //
// Exemplo:                                                                   //
// Alterado em: 16/04/2003                                                    //
// Autor:       cpad@andreurbano.net                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function TBoletoBancario.RetornaDigVeriModulo11(sCodBanco: string; sDigitos : string ): string;
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


// ******************* FINAL PROCEDURE JÁ TESTADAS ************************** //
//                                                                            //
// ************************************************************************** //




end.
