unit uBanco;

interface

uses
  SysUtils, Classes;


type TCodigo = class(TComponent)

 private
  FNumero:   integer;
  FDAC:      integer;
  FCompleto: string;

  function GetNumero: integer;
  function GetDAC: integer;
  function GetCompleto: string;
  procedure SetNumero( iNumero: integer );

 public
  constructor Create(AOwner: TComponent); override;

 published
  property Numero:   integer read GetNumero write SetNumero;
  property DAC:      integer read GetDAC;
  property Completo: string  read GetCompleto;
end;

type
 TBanco = class(TComponent)
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
   // Aproveitar em outra ocasião
   // FCodigo:         TCodigo;

   FCod:            string;
   FCodDAC:         string;
   FCodDACompleto:  string;
   FRazaoSocial:    string;
   FNome:           string;
   FHomePage:       string;
   FEndTipoLogra:   string;
   FEndLogra:       string;
   FEndNumero:      string;
   FEndComplemento: string;
   FEndCEP:         string;
   FEndBairro:      string;
   FEndCidade:      string;
   FEndUF:          string;
{
   FCampoLivre:     string;
   FAgencia:        string;
   FCarteira:       string;
   FNossoNum:       string;
   FConta:          string;
}
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // DECLARAÇÕES DAS FUNÇÕES PRIVADAS.                                       //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   // Aproveitar em outra ocasião
   // function GetCodigo                                      : TCodigo;
   function GetCod                                         : string;
   function GetCodDAC                                      : string;
   function GetCodDACompleto                               : string;
   function GetRazaoSocial                                 : string;
   function GetNome                                        : string;
   function GetHomePage                                    : string;
   function GetEndTipoLogra                                : string;
   function GetEndLogra                                    : string;
   function GetEndNumero                                   : string;
   function GetEndComplemento                              : string;
   function GetEndCEP                                      : string;
   function GetEndBairro                                   : string;
   function GetEndCidade                                   : string;
   function GetEndUF                                       : string;

{
   function GetCampoLivre                                  : string;
   function GetAgencia                                     : string;
   function GetCarteira                                    : string;
   function GetNossoNum                                    : string;
   function GetConta                                       : string;
}




   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   // DECLARAÇÕES DOS PROCEDIMENTOS PRIVADOS.                                 //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   // Aproveitar em outra ocasião
   ////procedure SetCodigo(         sCodigo:           string );

   procedure SetCod(            sCod:            string );
   procedure SetCodDAC(         sCodDAC:         string );
   procedure SetCodDACompleto( sCod: string; sCodDAC: string );

   procedure SetRazaoSocial(    sRazaoSocial:    string );
   procedure SetNome(           sNome:           string );
   procedure SetHomePage(       sHomePage:       string );
   procedure SetEndTipoLogra(   sEndTipoLogra:   string );
   procedure SetEndLogra(       sEndLogra:       string );
   procedure SetEndNumero(      sEndNumero:      string );
   procedure SetEndComplemento( sEndComplemento: string );
   procedure SetEndCEP(         sEndCEP:         string );
   procedure SetEndBairro(      sEndBairro:      string );
   procedure SetEndCidade(      sEndCidade:      string );
   procedure SetEndUF(          sEndUF:          string );
   procedure AtualizaValores(   sCodBanco:       string );

{
   procedure CampoLivre(        sCampoLivre:     string );
   procedure Agencia(           sAgencia:        string );
   procedure Carteira(          sCarteira:       string );
   procedure NossoNum(          sNossoNum:       string );
   procedure Conta(             sConta:          string );
}

   procedure PreencheArrayBancos;


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

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // DECLARAÇÕES PÚBLICADAS (definindo a interface a design-time).            //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  published
   property Cod:            string read GetCod            write SetCod;
   //property CodDAC:         string read GetCodDAC         write SetCodDAC;
   //property CodDACompleto:  string read GetCodDACompleto  write SetCodDACompleto;

   // Aproveitar em outra ocasião
   //property Codigo:         TCodigo read GetCodigo; //         write SetCodigo;
   ////property Codigo:         TCodigo read GetCodigo; //         write SetCodigo;

   property RazaoSocial:    string  read GetRazaoSocial    write SetRazaoSocial;
   property Nome:           string  read GetNome           write SetNome;
   property HomePage:       string  read GetHomePage       write SetHomePage;
   property EndTipoLogra:   string  read GetEndTipoLogra   write SetEndTipoLogra;
   property EndLogra:       string  read GetEndLogra       write SetEndLogra;
   property EndNumero:      string  read GetEndNumero      write SetEndNumero;
   property EndComplemento: string  read GetEndComplemento write SetEndComplemento;
   property EndCEP:         string  read GetEndCEP         write SetEndCEP;
   property EndBairro:      string  read GetEndBairro      write SetEndBairro;
   property EndCidade:      string  read GetEndCidade      write SetEndCidade;
   property EndUF:          string  read GetEndUF          write SetEndUF;
end;


var
 ArrayBancos: array of TBanco;

procedure Register;

implementation

{$R *.dcr}

procedure Register;
begin
  RegisterComponents('AU - Outros', [TBanco]);
end;

function TCodigo.GetNumero: integer;
begin
 Result:= Self.FNumero;
end;

function TCodigo.GetDAC: integer;
begin
 Result:= Self.FDAC;
end;

function TCodigo.GetCompleto: string;
begin
 Result:= Self.FCompleto;
end;





constructor TBanco.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  // Aproveitar em outra ocasião
  // FCodigo := TCodigo.Create(Self);

  //Self.PreencheArrayBancos;
end;

procedure TCodigo.SetNumero( iNumero: integer );
begin
 Self.FNumero := iNumero;
end;


constructor TCodigo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //Self.PreencheArrayBancos;
end;


// Aproveitar em outra ocasião
//function TBanco.GetCodigo: TCodigo;
//begin
// Result:= Self.FCodigo;
//end;

function TBanco.GetCod: string;
begin
 Result:= Self.FCod;
end;

function TBanco.GetCodDAC: string;
begin
 Result:= Self.FCodDAC;
end;

function TBanco.GetCodDACompleto: string;
begin
 Result:= Self.FCodDACompleto;
end;


function TBanco.GetRazaoSocial: string;
begin
 Result:= Self.FRazaoSocial;
end;

function TBanco.GetNome: string;
begin
 Result:= Self.FNome;
end;

function TBanco.GetHomePage: string;
begin
 Result:= Self.FHomePage;
end;

function TBanco.GetEndTipoLogra: string;
begin
 Result:= Self.FEndTipoLogra;
end;

function TBanco.GetEndLogra: string;
begin
 Result:= Self.FEndLogra;
end;

function TBanco.GetEndNumero: string;
begin
 Result:= Self.FEndNumero;
end;

function TBanco.GetEndComplemento: string;
begin
 Result:= Self.FEndComplemento;
end;

function TBanco.GetEndCEP: string;
begin
 Result:= Self.FEndCEP;
end;

function TBanco.GetEndBairro: string;
begin
 Result:= Self.FEndBairro;
end;

function TBanco.GetEndCidade: string;
begin
 Result:= Self.FEndCidade;
end;

function TBanco.GetEndUF: string;
begin
 Result:= Self.FEndUF;
end;



//procedure TBanco.SetCodigo( sCodigo: string );
//begin
// Self.FCodigo := Codigo;
// AtualizaValores( IntToStr( Self.Codigo.Numero ) );
//end;


procedure TBanco.SetCod( sCod: string );
begin
 Self.FCod := sCod;
 AtualizaValores( Self.Cod );
{
 Self.SetCodigoDoBanco( Copy(sCodigoDeBarra, 01, 03) );
 Self.SetCodigoDaMoeda( Copy(sCodigoDeBarra, 04, 01) );
 Self.SetFatorDoVenc(   Copy(sCodigoDeBarra, 06, 04) );
 Self.SetDataDoVenc(    StrToInt( Self.FFatorDoVenc ) + StrToDate( '07/10/1997' ) );
 Self.SetValorTexto(    Copy(sCodigoDeBarra, 10, 10) );
 Self.SetValor(         StrToFloat( Copy(Self.FValorTexto, 1, 8) + ',' + Copy(Self.FValorTexto, 9, 2) ) );
 Self.SetCampoLivre(    Copy(sCodigoDeBarra, 20, 25) );

 Self.SetLinhaDigitavel(Self.RetornaLinhaDigitavel( Self.CodigoDeBarra ));

 DesmembraCampoLivre(Self.CodigoDoBanco);
}

end;

procedure TBanco.SetCodDAC( sCodDAC: string );
begin
 Self.FCodDAC := sCodDAC;
end;

procedure TBanco.SetCodDACompleto( sCod: string; sCodDAC: string );
begin
 Self.FCodDACompleto := sCod + '-' + sCodDAC;
end;


procedure TBanco.SetRazaoSocial( sRazaoSocial: string );
begin
 Self.FRazaoSocial := sRazaoSocial;
end;

procedure TBanco.SetNome( sNome: string );
begin
 Self.FNome := sNome;
end;

procedure TBanco.SetHomePage( sHomePage: string );
begin
 Self.FHomePage := sHomePage;
end;

procedure TBanco.SetEndTipoLogra( sEndTipoLogra: string );
begin
 Self.FEndTipoLogra := sEndTipoLogra;
end;

procedure TBanco.SetEndLogra( sEndLogra: string );
begin
 Self.FEndLogra := sEndLogra;
end;

procedure TBanco.SetEndNumero( sEndNumero: string );
begin
 Self.FEndNumero := sEndNumero;
end;

procedure TBanco.SetEndComplemento( sEndComplemento: string );
begin
 Self.FEndComplemento := sEndComplemento;
end;

procedure TBanco.SetEndCEP( sEndCEP: string );
begin
 Self.FEndCEP := sEndCEP;
end;

procedure TBanco.SetEndBairro( sEndBairro: string );
begin
 Self.FEndBairro := sEndBairro;
end;

procedure TBanco.SetEndCidade( sEndCidade: string );
begin
 Self.FEndCidade := sEndCidade;
end;

procedure TBanco.SetEndUF( sEndUF: string );
begin
 Self.FEndUF := sEndUF;
end;

procedure TBanco.PreencheArrayBancos;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // DEFINE O TAMANHO DO ARRAY.                                                //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 SetLength(ArrayBancos, 2);
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO BRADESCO.                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 ArrayBancos[0] := TBanco.Create(Owner);
// ArrayBancos[0].Codigo.Numero  := '237';
// ArrayBancos[0].CodDAC         := '';
 ArrayBancos[0].RazaoSocial    := 'Banco Bradesco S/A';
 ArrayBancos[0].Nome           := 'Bradesco';
 ArrayBancos[0].HomePage       := 'http://bradesco.com.br';
 ArrayBancos[0].EndTipoLogra   := '';
 ArrayBancos[0].EndLogra       := '';
 ArrayBancos[0].EndNumero      := '';
 ArrayBancos[0].EndComplemento := '';
 ArrayBancos[0].EndCEP         := '';
 ArrayBancos[0].EndBairro      := '';
 ArrayBancos[0].EndCidade      := '';
 ArrayBancos[0].EndUF          := '';
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO ITAÚ.                                                               //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 ArrayBancos[1] := TBanco.Create(Owner);
// ArrayBancos[1].Cod            := '341';
// ArrayBancos[1].CodDAC         := '';
 ArrayBancos[1].RazaoSocial    := 'Banco Itaú S/A';
 ArrayBancos[1].Nome           := 'Itaú';
 ArrayBancos[1].HomePage       := 'http://itau.com.br';
 ArrayBancos[1].EndTipoLogra   := '';
 ArrayBancos[1].EndLogra       := '';
 ArrayBancos[1].EndNumero      := '';
 ArrayBancos[1].EndComplemento := '';
 ArrayBancos[1].EndCEP         := '';
 ArrayBancos[1].EndBairro      := '';
 ArrayBancos[1].EndCidade      := '';
 ArrayBancos[1].EndUF          := '';
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // BANCO SAFRA.                                                               //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 ArrayBancos[2] := TBanco.Create(Owner);
// ArrayBancos[2].Cod            := '422';
// ArrayBancos[2].CodDAC         := '';
 ArrayBancos[2].RazaoSocial    := 'Banco Safra S/A';
 ArrayBancos[2].Nome           := 'Safra';
 ArrayBancos[2].HomePage       := 'http://www.safranet.com.br';
 ArrayBancos[2].EndTipoLogra   := '';
 ArrayBancos[2].EndLogra       := '';
 ArrayBancos[2].EndNumero      := '';
 ArrayBancos[2].EndComplemento := '';
 ArrayBancos[2].EndCEP         := '';
 ArrayBancos[2].EndBairro      := '';
 ArrayBancos[2].EndCidade      := '';
 ArrayBancos[2].EndUF          := '';
end;

procedure TBanco.AtualizaValores( sCodBanco: string );
begin

 if sCodBanco = '237' then
  begin
   //Self.SetCodDAC(         '2'                  );
   Self.SetRazaoSocial(    'Banco Bradesco S/A' );
   Self.SetNome(           'Bradesco'               );
   Self.SetHomePage(       'http://www.bradesco.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '341' then
  begin
   //Self.SetCodDAC(         '7' );
   Self.SetRazaoSocial(    'Banco Itaú S/A' );
   Self.SetNome(           'Itaú' );
   Self.SetHomePage(       'http://www.itau.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
   //Tel. Itaú
   //0800 118944
   //2202 4828
  end
 else if sCodBanco = '422' then
  begin
   //Self.SetCodDAC(         '7' );
   Self.SetRazaoSocial(    'Banco Safra S/A' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end

/////////////////////////////////////////////////////////////////////
 else if sCodBanco = '246' then
  begin
   Self.SetRazaoSocial(    'Banco ABC Brasil S.A.' );
   Self.SetNome(           'ABC Brasil' );
   Self.SetHomePage(       'http://www.abcbrasil.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '356' then
  begin
   Self.SetRazaoSocial(    'Banco ABN AMRO Real S.A.' );
   Self.SetNome(           'ABN AMRO Real' );
   Self.SetHomePage(       'http://www.abnamro.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '025' then
  begin
   Self.SetRazaoSocial(    'Banco Alfa S.A.' );
   Self.SetNome(           'Alfa' );
   Self.SetHomePage(       'http://www.bancoalfa.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '230' then
  begin
   Self.SetRazaoSocial(    'Banco Bandeirantes S.A.' );
   Self.SetNome(           'Bandeirantes' );
   Self.SetHomePage(       'http://www.bandeirantes.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '028' then
  begin
   Self.SetRazaoSocial(    'Banco Baneb S.A.' );
   Self.SetNome(           'Baneb' );
   Self.SetHomePage(       'http://www.baneb.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '029' then
  begin
   Self.SetRazaoSocial(    'Banco Banerj S.A.' );
   Self.SetNome(           'Banerj' );
   Self.SetHomePage(       'http://www.banerj.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '038' then
  begin
   Self.SetRazaoSocial(    'Banco Banestado S.A.' );
   Self.SetNome(           'Banestado' );
   Self.SetHomePage(       'http://www.banestado.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '719' then
  begin
   Self.SetRazaoSocial(    'Banco Banif Primus S.A.' );
   Self.SetNome(           'Banif Primus' );
   Self.SetHomePage(       'http://www.banifprimus.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '740' then
  begin
   Self.SetRazaoSocial(    'Banco Barclays S.A.' );
   Self.SetNome(           'Barclays' );
   Self.SetHomePage(       'http://www.barclays.com' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '107' then
  begin
   Self.SetRazaoSocial(    'Banco BBM S.A.' );
   Self.SetNome(           'BBM' );
   Self.SetHomePage(       'http://www.bbmbank.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '291' then
  begin
   Self.SetRazaoSocial(    'Banco BCN S.A.' );
   Self.SetNome(           'BCN' );
   Self.SetHomePage(       'http://www.bcn.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '068' then
  begin
   Self.SetRazaoSocial(    'Banco Bea S.A.' );
   Self.SetNome(           'Bea' );
   Self.SetHomePage(       'http://www.bea-sa.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '031' then
  begin
   Self.SetRazaoSocial(    'Banco Beg S.A.' );
   Self.SetNome(           'Beg' );
   Self.SetHomePage(       'http://www.beg.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '048' then
  begin
   Self.SetRazaoSocial(    'Banco Bemge S.A.' );
   Self.SetNome(           'Bemge' );
   Self.SetHomePage(       'http://www.bemge.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '641' then
  begin
   Self.SetRazaoSocial(    'Banco Bilbao Vizcaya Argentaria Brasil S.A.' );
   Self.SetNome(           'Bilbao Vizcaya' );
   Self.SetHomePage(       'http://www.bbvbrasil.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '394' then
  begin
   Self.SetRazaoSocial(    'Banco BMC S.A.' );
   Self.SetNome(           'BMC' );
   Self.SetHomePage(       'http://www.bmc.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '318' then
  begin
   Self.SetRazaoSocial(    'Banco BMG S.A.' );
   Self.SetNome(           'BMG' );
   Self.SetHomePage(       'http://www.bancobmg.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '116' then
  begin
   Self.SetRazaoSocial(    'Banco BNL do Brasil S.A.' );
   Self.SetNome(           'BNL do Brasil' );
   Self.SetHomePage(       'http://www.bnl.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '752' then
  begin
   Self.SetRazaoSocial(    'Banco BNP Paribas Brasil S.A.' );
   Self.SetNome(           'BNP Paribas' );
   Self.SetHomePage(       'http://www.bnpparibas.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '248' then
  begin
   Self.SetRazaoSocial(    'Banco Boavista Interatlântico S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.boavista.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '237' then
  begin
   Self.SetRazaoSocial(    'Banco Bradesco S.A.' );
   Self.SetNome(           'Bradesco' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '225' then
  begin
   Self.SetRazaoSocial(    'Banco Brascan S.A.' );
   Self.SetNome(           'Brascan' );
   Self.SetHomePage(       'http://www.bancobrascan.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '263' then
  begin
   //Self.SetCodDAC(         '7' );
   Self.SetRazaoSocial(    'Banco Cacique S.A.' );
   Self.SetNome(           'Cacique' );
   Self.SetHomePage(       'http://www.bancocacique.com' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '040' then
  begin
   Self.SetRazaoSocial(    'Banco Cargill S.A.' );
   Self.SetNome(           'Cargill' );
   Self.SetHomePage(       'não possue site' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '745' then
  begin
   Self.SetRazaoSocial(    'Banco Citibank S.A.' );
   Self.SetNome(           'Citibank' );
   Self.SetHomePage(       'http://www.citibank.com/brasil' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '215' then
  begin
   Self.SetRazaoSocial(    'Banco Comercial e de Investimento Sudameris S.A.' );
   Self.SetNome(           'Sudameris' );
   Self.SetHomePage(       'http://www.sudameris.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '756' then
  begin
   Self.SetRazaoSocial(    'Banco Cooperativo do Brasil S.A. - BANCOOB' );
   Self.SetNome(           'BANCOOB' );
   Self.SetHomePage(       'http://www.bancoob.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '748' then
  begin
   Self.SetRazaoSocial(    'Banco Cooperativo Sicredi S.A. - BANSICREDI' );
   Self.SetNome(           'BANSICREDI' );
   Self.SetHomePage(       'http://www.bansicredi.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '109' then
  begin
   Self.SetRazaoSocial(    'Banco Credibanco S.A.' );
   Self.SetNome(           'Credibanco' );
   Self.SetHomePage(       'http://www.credibanco.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '222' then
  begin
   Self.SetRazaoSocial(    'Banco Credit Lyonnais Brasil S.A.' );
   Self.SetNome(           'Credit Lyonnais' );
   Self.SetHomePage(       'http://www.bancoagf.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '505' then
  begin
   Self.SetRazaoSocial(    'Banco Credit Suisse First Boston S.A.' );
   Self.SetNome(           'Credit Suisse First' );
   Self.SetHomePage(       'http://www.csfb.com' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '003' then
  begin
   Self.SetRazaoSocial(    'Banco da Amazônia S.A.' );
   Self.SetNome(           'Amazônia' );
   Self.SetHomePage(       'http://www.bancoamazonia.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '707' then
  begin
   //Self.SetCodDAC(         '7' );
   Self.SetRazaoSocial(    'Banco Daycoval S.A.' );
   Self.SetNome(           'Daycoval' );
   Self.SetHomePage(       'http://www.daycoval.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '240' then
  begin
   Self.SetRazaoSocial(    'Banco de Crédito Real de Minas Gerais S.A.' );
   Self.SetNome(           'Crédito Real' );
   Self.SetHomePage(       'http://www.credireal.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '494' then
  begin
   Self.SetRazaoSocial(    'Banco de La Republica Oriental del Uruguay' );
   Self.SetNome(           'del Uruguay' );
   Self.SetHomePage(       'não possue site' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '024' then
  begin
   Self.SetRazaoSocial(    'Banco de Pernambuco S.A. - BANDEPE' );
   Self.SetNome(           'BANDEPE' );
   Self.SetHomePage(       'http://www.bandepe.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '456' then
  begin
   Self.SetRazaoSocial(    'Banco de Tokyo-Mitsubishi Brasil S.A.' );
   Self.SetNome(           'Tokyo-Mitsubishi' );
   Self.SetHomePage(       'http://www.btm.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '214' then
  begin
   Self.SetRazaoSocial(    'Banco Dibens S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.bancodibens.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '001' then
  begin
   Self.SetRazaoSocial(    'Banco do Brasil S.A.' );
   Self.SetNome(           'Brasil' );
   Self.SetHomePage(       'http://www.bb.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '027' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado de Santa Catarina S.A.' );
   Self.SetNome(           'BESC' );
   Self.SetHomePage(       'http://www.besc.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '033' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado de São Paulo S.A. - Banespa' );
   Self.SetNome(           'Banespa' );
   Self.SetHomePage(       'http://www.banespa.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '047' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado de Sergipe S.A.' );
   Self.SetNome(           'BANESE' );
   Self.SetHomePage(       'http://www.banese.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '036' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado do Maranhão S.A. - BEM' );
   Self.SetNome(           'BEM' );
   Self.SetHomePage(       'http://www.bemnet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '037' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado do Pará S.A.' );
   Self.SetNome(           'BANPARA' );
   Self.SetHomePage(       'http://www.banparanet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '041' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado do Rio Grande do Sul S.A.' );
   Self.SetNome(           'Banrisul' );
   Self.SetHomePage(       'http://www.banrisul.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '004' then
  begin
   Self.SetRazaoSocial(    'Banco do Nordeste do Brasil S.A.' );
   Self.SetNome(           'BancoNordeste' );
   Self.SetHomePage(       'http://www.banconordeste.gov.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '265' then
  begin
   Self.SetRazaoSocial(    'Banco Fator S.A.' );
   Self.SetNome(           'Fator' );
   Self.SetHomePage(       'http://www.bancofator.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '224' then
  begin
   Self.SetRazaoSocial(    'Banco Fibra S.A.' );
   Self.SetNome(           'Fibra' );
   Self.SetHomePage(       'http://www.bancofibra.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '626' then
  begin
   Self.SetRazaoSocial(    'Banco Ficsa S.A.' );
   Self.SetNome(           'Ficsa' );
   Self.SetHomePage(       'http://www.ficsa.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '175' then
  begin
   Self.SetRazaoSocial(    'Banco Finasa S.A.' );
   Self.SetNome(           'Finasa' );
   Self.SetHomePage(       'http://www.finasa.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '252' then
  begin
   Self.SetRazaoSocial(    'Banco Fininvest S.A.' );
   Self.SetNome(           'Fininvest' );
   Self.SetHomePage(       'http://www.fininvest.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '233' then
  begin
   Self.SetRazaoSocial(    'Banco GE Capital S.A.' );
   Self.SetNome(           'GE Capital' );
   Self.SetHomePage(       'http://www.bancoge.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '624' then
  begin
   Self.SetRazaoSocial(    'Banco GM S.A.' );
   Self.SetNome(           'GM' );
   Self.SetHomePage(       'http://www.bancogm.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '612' then
  begin
   Self.SetRazaoSocial(    'Banco Guanabara S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                    //não possue site

 else if sCodBanco = '604' then
  begin
   Self.SetRazaoSocial(    'Banco Industrial do Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                         //http://www.bancoindustrial.com.br

 else if sCodBanco = '320' then
  begin
   Self.SetRazaoSocial(    'Banco Industrial e Comercial S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                       //http://www.bicbanco.com.br

 else if sCodBanco = '653' then
  begin
   Self.SetRazaoSocial(    'Banco Indusval S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                         //            http://www.indusval.com.br

 else if sCodBanco = '204' then
  begin
   Self.SetRazaoSocial(    'Banco Inter American Express S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                      // http://www.iamex.com.br

 else if sCodBanco = '630' then
  begin
   Self.SetRazaoSocial(    'Banco Intercap S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                        //             http://www.intercap.com.br

 else if sCodBanco = '249' then
  begin
   Self.SetRazaoSocial(    'Banco Investcred Unibanco S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                          //não possue site

 else if sCodBanco = '184' then
  begin
   Self.SetRazaoSocial(    'Banco Itaú BBA S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                            //         http://www.bba.com.br

 else if sCodBanco = '652' then
  begin
   Self.SetRazaoSocial(    'Banco Itaú Holding Financeira S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                      //http://www.itau.com.br

 else if sCodBanco = '341' then
  begin
   Self.SetRazaoSocial(    'Banco Itaú S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                              ///           http://www.itau.com.br

 else if sCodBanco = '376' then
  begin
   Self.SetRazaoSocial(    'Banco J. P. Morgan S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                 //http://www.jpmorgan.com

 else if sCodBanco = '042' then
  begin
   Self.SetRazaoSocial(    'Banco J. Safra S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                     //                http://www.safra.com.br

 else if sCodBanco = '757' then
  begin
   Self.SetRazaoSocial(    'Banco KEB do Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                           //     http://site em construção

 else if sCodBanco = '600' then
  begin
   Self.SetRazaoSocial(    'Banco Luso Brasileiro S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                              //http://www.lusobrasileiro.com.br

 else if sCodBanco = '243' then
  begin
   Self.SetRazaoSocial(    'Banco Máxima S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.multistock.com.br

 else if sCodBanco = '392' then
  begin
   Self.SetRazaoSocial(    'Banco Mercantil de São Paulo S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                       //http://www.finasa.com.br

 else if sCodBanco = '389' then
  begin
   Self.SetRazaoSocial(    'Banco Mercantil do Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                          //http://www.mercantil.com.br

 else if sCodBanco = '755' then
  begin
   Self.SetRazaoSocial(    'Banco Merrill Lynch de Investimentos S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end               //http://www.ml.com

 else if sCodBanco = '151' then
  begin
   Self.SetRazaoSocial(    'Banco Nossa Caixa S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                  //http://www.nossacaixa.com.br

 else if sCodBanco = '045' then
  begin
   Self.SetRazaoSocial(    'Banco Opportunity S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                  //http://www.opportunity.com.br

 else if sCodBanco = '208' then
  begin
   Self.SetRazaoSocial(    'Banco Pactual S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                      //http://www.pactual.com.br

 else if sCodBanco = '623' then
  begin
   Self.SetRazaoSocial(    'Banco Panamericano S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                 //http://www.panamericano.com.br

 else if sCodBanco = '611' then
  begin
   Self.SetRazaoSocial(    'Banco Paulista S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                     //http://www.bancopaulista.com.br

 else if sCodBanco = '643' then
  begin
   Self.SetRazaoSocial(    'Banco Pine S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                         //http://www.bancopine.com.br

 else if sCodBanco = '747' then
  begin
   Self.SetRazaoSocial(    'Banco Rabobank International Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                //http://www.rabobank.com

 else if sCodBanco = '633' then
  begin
   Self.SetRazaoSocial(    'Banco Rendimento S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                   //http://www.rendimento.com.br

 else if sCodBanco = '453' then
  begin
   Self.SetRazaoSocial(    'Banco Rural S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                        //http://www.rural.com.br

 else if sCodBanco = '422' then
  begin
   Self.SetRazaoSocial(    'Banco Safra S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                        //http://www.safra.com.br

 else if sCodBanco = '353' then
  begin
   Self.SetRazaoSocial(    'Banco Santander Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                             //http://www.santander.com.br

 else if sCodBanco = '008' then
  begin
   Self.SetRazaoSocial(    'Banco Santander Meridional S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                         //http://www.meridional.com.br

 else if sCodBanco = '351' then
  begin
   Self.SetRazaoSocial(    'Banco Santander S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                    //http://www.santander.com.br

 else if sCodBanco = '702' then
  begin
   Self.SetRazaoSocial(    'Banco Santos S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.bancosantos.com.br

 else if sCodBanco = '250' then
  begin
   Self.SetRazaoSocial(    'Banco Schahin S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                      //http://www.bancoschahin.com.br

 else if sCodBanco = '749' then
  begin
   Self.SetRazaoSocial(    'Banco Simples S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                      //http://www.rural.com.br

 else if sCodBanco = '366' then
  begin
   Self.SetRazaoSocial(    'Banco Société Générale Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                      //http://www.sogeral.com.br

 else if sCodBanco = '637' then
  begin
   Self.SetRazaoSocial(    'Banco Sofisa S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.sofisa.com.br

 else if sCodBanco = '347' then
  begin
   Self.SetRazaoSocial(    'Banco Sudameris Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                             //http://www.sudameris.com.br

 else if sCodBanco = '205' then
  begin
   Self.SetRazaoSocial(    'Banco Sul América S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                  //http://www.sulinvest.com.br

 else if sCodBanco = '464' then
  begin
   Self.SetRazaoSocial(    'Banco Sumitomo Mitsui Brasileiro S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                   //http://www.smbc.com.br

 else if sCodBanco = '634' then
  begin
   Self.SetRazaoSocial(    'Banco Triângulo S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                    //http://www.tribanco.com.br

 else if sCodBanco = '247' then
  begin
   Self.SetRazaoSocial(    'Banco UBS S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                          //http://www.ubsw.com

 else if sCodBanco = '493' then
  begin
   Self.SetRazaoSocial(    'Banco Union - Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                               //http://www.bancunion.com.br

 else if sCodBanco = '496' then
  begin
   Self.SetRazaoSocial(    'Banco Uno - E Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                               //http://site em construção

 else if sCodBanco = '655' then
  begin
   Self.SetRazaoSocial(    'Banco Votorantim S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                   //http://www.bancovotorantim.com.br

 else if sCodBanco = '610' then
  begin
   Self.SetRazaoSocial(    'Banco VR S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                           //http://www.vr.com.br

 else if sCodBanco = '370' then
  begin
   Self.SetRazaoSocial(    'Banco Westlb do Brasil S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                             //http://www.westlb.com

 else if sCodBanco = '219' then
  begin
   Self.SetRazaoSocial(    'Banco Zogbi S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                        //http://www.bancozogbi.com.br

 else if sCodBanco = '062' then
  begin
   Self.SetRazaoSocial(    'Banco1.Net S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                         //http://www.banco1.net

 else if sCodBanco = '021' then
  begin
   Self.SetRazaoSocial(    'BANESTES S.A. Banco do Estado do Espírito Santo' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end         //http://www.banestes.com.br

 else if sCodBanco = '148' then
  begin
   Self.SetRazaoSocial(    'Bank of America - Brasil S.A. (Banco Múltiplo)' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end          //http://www.bofabrasil.com.br

 else if sCodBanco = '479' then
  begin
   Self.SetRazaoSocial(    'BankBoston Banco Múltiplo S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                          //http://www.bankboston.com.br

 else if sCodBanco = '744' then
  begin
   Self.SetRazaoSocial(    'BankBoston N.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                         //http://www.bankboston.com.br

 else if sCodBanco = '070' then
  begin
   Self.SetRazaoSocial(    'BRB - Banco de Brasília S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                            //http://www.brb.com.br

 else if sCodBanco = '104' then
  begin
   Self.SetRazaoSocial(    'Caixa Econômica Federal' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                 //http://www.caixa.gov.br

 else if sCodBanco = '477' then
  begin
   Self.SetRazaoSocial(    'Citibank N.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                           //http://www.citibank.com/brasil

 else if sCodBanco = '487' then
  begin
   Self.SetRazaoSocial(    'Deutsche Bank S.A. - Banco Alemão' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                       //http://www.deutsche-bank.com.br

 else if sCodBanco = '751' then
  begin
   Self.SetRazaoSocial(    'Dresdner Bank Brasil S.A. - Banco Múltiplo' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end              //http://www.dbla.com

 else if sCodBanco = '210' then
  begin
   Self.SetRazaoSocial(    'Dresdner Bank Lateinamerika Aktiengesellschaft' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end          //http://www.dbla.com

 else if sCodBanco = '399' then
  begin
   Self.SetRazaoSocial(    'HSBC Bank Brasil S.A. - Banco Múltiplo' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                  //http://www.hsbc.com.br

 else if sCodBanco = '492' then
  begin
   Self.SetRazaoSocial(    'ING Bank N.V.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                           //http://www.ing-barings.com.br

 else if sCodBanco = '488' then
  begin
   Self.SetRazaoSocial(    'JPMorgan Chase Bank' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                     //http://www.jpmorganchase.com

 else if sCodBanco = '065' then
  begin
   Self.SetRazaoSocial(    'Lemon Bank Banco Múltiplo S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                          //http://www.lemon.com

 else if sCodBanco = '472' then
  begin
   Self.SetRazaoSocial(    'Lloyds TSB Bank PLC.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                    //http://www.lloydstsb.com.br

 else if sCodBanco = '254' then
  begin
   Self.SetRazaoSocial(    'Paraná Banco S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.paranabanco.com.br

 else if sCodBanco = '409' then
  begin
   Self.SetRazaoSocial(    'UNIBANCO - União de Bancos Brasileiros S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end             //http://www.unibanco.com.br

 else if sCodBanco = '654' then
  begin
   Self.SetRazaoSocial(    'Banco A.J.Renner S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                   //http://www.bancorenner.com.br

 else if sCodBanco = '213' then
  begin
   Self.SetRazaoSocial(    'Banco Arbi S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                         //http://www.arbi.com.br

 else if sCodBanco = '739' then
  begin
   Self.SetRazaoSocial(    'Banco BGN S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                          //http://www.bgn.com.br

 else if sCodBanco = '218' then
  begin
   Self.SetRazaoSocial(    'Banco Bonsucesso S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                   //http://www.bancobonsucesso.com.br

 else if sCodBanco = '044' then
  begin
   Self.SetRazaoSocial(    'Banco BVA S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                          //http://www.bancobva.com.br

 else if sCodBanco = '412' then
  begin
   Self.SetRazaoSocial(    'Banco Capital S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                      //http://www.bancocapital.com.br

 else if sCodBanco = '266' then
  begin
   Self.SetRazaoSocial(    'Banco Cédula S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.bancocedula.com.br

 else if sCodBanco = '241' then
  begin
   Self.SetRazaoSocial(    'Banco Clássico S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                     //não possue site

 else if sCodBanco = '753' then
  begin
   Self.SetRazaoSocial(    'Banco Comercial Uruguai S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                            //http://www.bancocomercial.com.br

 else if sCodBanco = '721' then
  begin
   Self.SetRazaoSocial(    'Banco Credibel S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                     //http://www.credibel.com.br

 else if sCodBanco = '229' then
  begin
   Self.SetRazaoSocial(    'Banco Cruzeiro do Sul S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                              //http://www.bcsul.com.br

 else if sCodBanco = '300' then
  begin
   Self.SetRazaoSocial(    'Banco de La Nacion Argentina' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                           // não possue site

 else if sCodBanco = '495' then
  begin
   Self.SetRazaoSocial(    'Banco de La Provincia de Buenos Aires' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                   //não possue site

 else if sCodBanco = '035' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado do Ceará S.A. - BEC' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                     //http://www.bec.com.br

 else if sCodBanco = '039' then
  begin
   Self.SetRazaoSocial(    'Banco do Estado do Piauí S.A. - BEP' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                     //http://www.bep.com.br

 else if sCodBanco = '743' then
  begin
   Self.SetRazaoSocial(    'Banco Emblema S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                      //http://www.bancoemblema.com.br

 else if sCodBanco = '734' then
  begin
   Self.SetRazaoSocial(    'Banco Gerdau S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.bancogerdau.com.br

 else if sCodBanco = '063' then
  begin
   Self.SetRazaoSocial(    'Banco Ibi S.A. Banco Múltiplo' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                           //não possue site

 else if sCodBanco = '217' then
  begin
   Self.SetRazaoSocial(    'Banco John Deere S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                   //http://www.johndeere.com.br

 else if sCodBanco = '212' then
  begin
   Self.SetRazaoSocial(    'Banco Matone S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                       //http://www.bancomatone.com.br

 else if sCodBanco = '746' then
  begin
   Self.SetRazaoSocial(    'Banco Modal S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.safranet.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end                                        //http://www.bancomodal.com.br
 else if sCodBanco = '738' then
  begin
   Self.SetRazaoSocial(    'Banco Morada S.A.' );
   Self.SetNome(           'Morada' );
   Self.SetHomePage(       'http://www.bancomorada.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '066' then
  begin
   Self.SetRazaoSocial(    'Banco Morgan Stanley Dean Witter S.A.' );
   Self.SetNome(           'Morgan Stanley' );
   Self.SetHomePage(       'site em construção' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '650' then
  begin
   Self.SetRazaoSocial(    'Banco Pebb S.A.' );
   Self.SetNome(           'Pebb' );
   Self.SetHomePage(       'http://www.pebb.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '613' then
  begin
   Self.SetRazaoSocial(    'Banco Pecúnia S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.bancopecunia.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '735' then
  begin
   Self.SetRazaoSocial(    'Banco Pottencial S.A.' );
   Self.SetNome(           'Pottencial' );
   Self.SetHomePage(       'http://www.pottencial.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '638' then
  begin
   Self.SetRazaoSocial(    'Banco Prosper S.A.' );
   Self.SetNome(           'Safra' );
   Self.SetHomePage(       'http://www.bancoprosper.com.br' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '741' then
  begin
   Self.SetRazaoSocial(    'Banco Ribeirão Preto S.A.' );
   Self.SetNome(           'Ribeirão Preto' );
   Self.SetHomePage(       'http://site em construção' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end
 else if sCodBanco = '064' then
  begin
   Self.SetRazaoSocial(    'Goldman Sachs do Brasil Banco Múltiplo S.A.' );
   Self.SetNome(           'Goldman Sachs' );
   Self.SetHomePage(       'http://www.goldmansachs.com' );
   Self.SetEndTipoLogra(   '' );
   Self.SetEndLogra(       '' );
   Self.SetEndNumero(      '' );
   Self.SetEndComplemento( '' );
   Self.SetEndCEP(         '' );
   Self.SetEndBairro(      '' );
   Self.SetEndCidade(      '' );
   Self.SetEndUF(          '' );
  end

//////////////////////////////////////////////////////////////////////


end;



end.
