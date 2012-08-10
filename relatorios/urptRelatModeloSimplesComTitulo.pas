unit urptRelatModeloSimplesComTitulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  URPTRELATMODELOSIMPLES, ExtCtrls, quickrpt, Qrctrls, jpeg;

type
  TrptRelatModeloComTitulo = class(TrptRelatModeloSimples)
    PageHeaderBand1: TQRBand;
    lblTituloRelatorio: TQRLabel;
    lblSubTituloRelatorio: TQRLabel;
    PageFooterBand1: TQRBand;
    lblEndereco: TQRLabel;
    lblTelefone: TQRLabel;
    sysPagina: TQRSysData;
    lblInternet: TQRLabel;
    sysData: TQRSysData;
    sysHora: TQRSysData;
    lblGrupo: TQRLabel;
    lblNomePrograma: TQRLabel;
    lblUsuario: TQRLabel;
    QRLabel2: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRelatModeloComTitulo: TrptRelatModeloComTitulo;

implementation

uses uRotinasData, uVariaveisGlobais;

{$R *.DFM}

procedure TrptRelatModeloComTitulo.QuickRepStartPage(
  Sender: TCustomQuickRep);
begin
  inherited;

  lblGrupo.Caption   := 'Grupo: '   + UsuarioLogado.GrupoDesc;
  lblUsuario.Caption := 'Usuário: ' + UsuarioLogado.Apelido;

  lblEndereco.Caption := ClienteConfig.EndLogradouro + ' - ' +
                         ClienteConfig.EndBairro     + ' - ' +
                         ClienteConfig.EndCidade     + ' - ' +
                         ClienteConfig.EndUF         + ' - ' +
                         'CEP ' + ClienteConfig.EndCep;

  lblTelefone.Caption := 'Telefone: ' + ClienteConfig.Telef + ' - ' +
                         'SAC: '      + ClienteConfig.Sac;

  lblInternet.Caption := 'Site: '  + ClienteConfig.www + ' - ' +
                         'Email: ' + ClienteConfig.Email;

end;

end.
