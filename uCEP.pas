unit uCEP;

interface

uses
  IdHTTP,
  Classes,
  SysUtils,
  Forms;

function BuscaCEP(sCEP: String): TStringList;

implementation

function BuscaCEP(sCEP: String): TStringList;
var
  HTTP:     TIdHTTP;
  sEnd:     String;
  ListaEnd: TStringList;
begin
  try
    try
      HTTP          := TIdHTTP.Create(Application);
      sEnd          := HTTP.Get('http://republicavirtual.com.br/web_cep.php?cep=' + sCEP + '&formato=query_string');
      ListaEnd      := TStringList.Create;
//      ListaEnd.Text := UpperCase(StringReplace(sEnd, '&', #13#10, [rfreplaceAll]));
      ListaEnd.Text := StringReplace(sEnd, '&', #13#10, [rfreplaceAll]);
      Result        := ListaEnd;
    except
      Result := nil;
    end;
  finally
    FreeAndNil(HTTP);
//    FreeAndNil(ListaEnd);
  end;
end;

end.

(*
// exemplo
var
  loCEP: TStringList;
begin
    loCEP := Geral.buscaCEP(RetiraCharsAlfa(_edtCEP.Text));
    if loCEP = nil then
      MensagemOK('CEP n�o localizado ou n�o h� conex�o com a Internet!!!')
    else if loCEP.Values['RESULTADO'] <> '1' then
      MensagemOK('CEP n�o localizado!!!')
    else
      begin
      _edtEndereco.Text    := loCEP.Values['TIPO_LOGRADOURO'] + ' ' + loCEP.Values['LOGRADOURO'];
      _edtBairro  .Text    := loCEP.Values['BAIRRO'];
      _edtCidade  .Text    := loCEP.Values['CIDADE'];
      _edtEstado.ItemIndex := _edtEstado.Items.IndexOf(loCEP.Values['UF']);
      end;
end;

*)

(*
Consultando CEP no Delphi sem usar WebService
Posted by: Paulo Bezerra in DELPHI undefined
undefined
fonte: http://www.devmedia.com.br/articles/viewcomp.asp?comp=7783

Ai galera uma fun��ozinha formatada para voc�s usarem em suas aplica��es para consultar o CEP dos correios... Essa fun��o retorna um TStrings onde cada linha cont�m uma informa��o do CEP como Rua, Bairro, UF, Endere�o
OBS: Acrescente no USES NMHTTP, NMURL.
// cria��o da fun��o
function buscaCEP(lcCEP: string): TStringList;
var
loHTTP : TNMHTTP;
loURL : TNMURL;
lnCont : integer;
begin
try
loHTTP := TNMHTTP.Create(Application);
loURL := TNMURL.Create(Application);
try
loHTTP.Get('http://republicavirtual.com.br/web_cep.php?cep='+lcCEP+'&formato=query_string');
// retorna o conteudo da string e formata-o
loURL.InputString := loHTTP.Body;
// usa o separador de quebra de linha
result := TStringList.Create;
result.Text := UpperCase(StringReplace(loURL.Decode, '&', #13#10, [rfreplaceAll]));
for lnCont := result.Count - 1 downto 0 do
if trim(result[lnCont]) = '' then
result.Delete(lncont);
finally
loHTTP.Free;
loURL.Free;
end;
except
result := nil;
end;
end;
// exemplo
var
loCEP: TStringList;
begin
loCEP := Geral.buscaCEP(RetiraCharsAlfa(_edtCEP.Text));
if loCEP = nil then
MensagemOK('CEP n�o localizado ou n�o h� conex�o com a Internet!!!')
else if loCEP.Values['RESULTADO'] <> '1' then
MensagemOK('CEP n�o localizado!!!')
else
begin
_edtEndereco.Text := loCEP.Values['TIPO_LOGRADOURO'] + ' ' + loCEP.Values['LOGRADOURO'];
_edtBairro .Text := loCEP.Values['BAIRRO'];
_edtCidade .Text := loCEP.Values['CIDADE'];
_edtEstado.ItemIndex := _edtEstado.Items.IndexOf(loCEP.Values['UF']);
end;
end;
*)

