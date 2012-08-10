unit ufrmValidadorSenhaBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons;

type
  TfrmValidadorSenhaBD = class(TForm)
    lblNomeDoBanco: TLabel;
    txtNomeDoBanco: TEdit;
    lblLogin: TLabel;
    txtLogin: TEdit;
    lblBancoDeDados: TLabel;
    cbxBancoDeDados: TComboBox;
    lblHost: TLabel;
    txtHost: TEdit;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    lblSenha: TLabel;
    lblSenhaConfirmacao: TLabel;
    txtSenhaConfirmacao: TMaskEdit;
    txtSenha: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cbxBancoDeDadosChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Criptografa( sTexto: string ): string;
function DesCriptografa( sTexto: string ): string;

var
  frmValidadorSenhaBD: TfrmValidadorSenhaBD;
  sBancoDeDadosNome:   String;
  sBancoDeDadosDriver: String;

implementation

uses uVariaveisGlobais;

{$R *.dfm}


function Criptografa( sTexto: string ): string;
var
  I: Integer;
begin

  for I := 1 to Length(sTexto) do
  begin
    sTexto[I] := chr( 20 XOr Ord(sTexto[I]) );
  end;

  Result := sTexto;
end;


function DesCriptografa( sTexto: string ): string;
var
  I: Integer;
begin

  for I := 1 to Length(sTexto) do
  begin
    sTexto[I] := chr( 20 XOr Ord(sTexto[I]) );
 end;

 Result := sTexto;
end;


procedure TfrmValidadorSenhaBD.FormCreate(Sender: TObject);
begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sBancoDeDadosDriver := iniSistemaArquivoIni.ReadString('BD', 'DriverName', '');
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if sBancoDeDadosDriver = 'MSSQL' then
  begin
    cbxBancoDeDados.ItemIndex := 0;
    sBancoDeDadosNome := 'MS SQL Server';
  end
  else if sBancoDeDadosDriver = 'MySQL' then
  begin
    cbxBancoDeDados.ItemIndex := 1;
    sBancoDeDadosNome := 'MySQL';
  end
  else if sBancoDeDadosDriver = 'Oracle' then
  begin
    cbxBancoDeDados.ItemIndex := 2;
    sBancoDeDadosNome := 'Oracle';
  end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  txtHost.Text              := iniSistemaArquivoIni.ReadString('BD', 'Host'      , '');
  txtNomeDoBanco.Text       := iniSistemaArquivoIni.ReadString('BD', 'NomeBD'    , '');
  txtLogin.Text             := iniSistemaArquivoIni.ReadString('BD', 'Login'     , '');

  txtSenha.Text             := DesCriptografa( iniSistemaArquivoIni.ReadString('BD', 'Senha'     , '') );
  txtSenhaConfirmacao.Text  := DesCriptografa( iniSistemaArquivoIni.ReadString('BD', 'Senha'     , '') );
end;

procedure TfrmValidadorSenhaBD.btnOkClick(Sender: TObject);
begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  iniSistemaArquivoIni.WriteString('BD', 'Host',       txtHost.Text );
  iniSistemaArquivoIni.WriteString('BD', 'DriverName', sBancoDeDadosDriver );
  iniSistemaArquivoIni.WriteString('BD', 'NomeBD',     txtNomeDoBanco.Text );
  iniSistemaArquivoIni.WriteString('BD', 'Login',      txtLogin.Text );
  iniSistemaArquivoIni.WriteString('BD', 'Senha',      Criptografa( txtSenha.Text) );

  Self.Close;
end;

procedure TfrmValidadorSenhaBD.cbxBancoDeDadosChange(Sender: TObject);
begin

  if cbxBancoDeDados.ItemIndex = 0 then
  begin
    sBancoDeDadosNome   := cbxBancoDeDados.Text;
    sBancoDeDadosDriver := 'MSSQL';
  end
  else if cbxBancoDeDados.ItemIndex = 1 then
  begin
    sBancoDeDadosNome   := cbxBancoDeDados.Text;
    sBancoDeDadosDriver := 'MySQL';
  end
  else if cbxBancoDeDados.ItemIndex = 2 then
  begin
    sBancoDeDadosNome   := cbxBancoDeDados.Text;
    sBancoDeDadosDriver := 'Oracle';
  end;



end;

procedure TfrmValidadorSenhaBD.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

end.
