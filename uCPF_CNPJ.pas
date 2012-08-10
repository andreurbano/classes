unit uCPF_CNPJ;

interface

uses SysUtils, Dialogs;

function CPF(num: string): boolean;
function CNPJ(num: string): boolean;

implementation

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO:      Função que verifica a validade do CPF.                     //
// SINTAXE:        CPF(num: string): boolean;                                 //
// EXEMPLO:                                                                   //
// AUTOR:                                                                     //
// ÚLT. ALTERAÇÃO:                                                            //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function CPF(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
 d1,d2: integer;
 iTamanhoNum: integer;
 digitado, calculado: string;
begin

 iTamanhoNum := Length(num);
 if iTamanhoNum <> 11 then
 begin
  MessageDlg('O CPF tem que ter onze dígitos. O nº digitado está com ' + IntToStr(iTamanhoNum) + ' dígito(s)!', mtError, [mbOK], 0);
  CPF:=false;
  Exit;
 end;

 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[10]+num[11];
 if calculado=digitado then
 begin
  CPF:=true;
 end
 else
 begin
  MessageDlg('O CPF digitado está inválido!', mtError, [mbOK], 0);
  CPF:=false;
  Exit;
 end;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que verifica a validade do CNPJ.                   //
// SINTAXE        : CNPJ(num: string): boolean;                               //
// EXEMPLO        :                                                           //
// AUTOR          :                                                           //
// ÚLT. ALTERAÇÃO :                                                           //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function CNPJ(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 iTamanhoNum: integer;
 digitado, calculado: string;
begin

 iTamanhoNum := Length(num);
 if iTamanhoNum <> 14 then
 begin
  MessageDlg('O CNPJ tem que ter quatorze dígitos. O nº digitado está com ' + IntToStr(iTamanhoNum) + ' dígito(s)!', mtError, [mbOK], 0);
  CNPJ:=false;
  Exit;
 end;

 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 n10:=StrToInt(num[10]);
 n11:=StrToInt(num[11]);
 n12:=StrToInt(num[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[13]+num[14];
 if calculado=digitado then
 begin
  CNPJ:=true
 end
 else
 begin
  MessageDlg('O CNPJ digitado está inválido!', mtError, [mbOK], 0);
  CNPJ:=false;
  Exit;
 end;

end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// DESCRIÇÃO      : Função que retira a formatação do CNPJ.                   //
// SINTAXE        : CNPJ_RetiraFormatacao(num: string): string;               //
// EXEMPLO        : CNPJ_RetiraFormatacao('02.721.311/0001-75');              //
// AUTOR          : cpad@andreurbano.net                                      //
// ÚLT. ALTERAÇÃO : 19/02/2003                                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
{
function CNPJ_RetiraFormatacao(sCNPJ: string): string;
var
 iTamanho:       integer;
 I:              integer;
 sCaracterAtual: string;
 sResultado:     string;
 cCNPJ:          Char;
begin

 iTamanho := length(sCNPJ);



 cCNPJ    := './-';

 for I := 1 to iTamanho do
  begin

    sCaracterAtual := Copy(sCNPJ, I, 1);




    if sCaracterAtual in cCNPJ then
      begin
       sResultado := sResultado + sCaracterAtual;
      end;
  end;

 Result := sResultado;

end;
}

end.
