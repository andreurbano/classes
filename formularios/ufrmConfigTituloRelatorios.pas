unit ufrmConfigTituloRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, StdCtrls, uConfig_Aplic;

type
  TfrmConfigTituloRelatorios = class(TfrmModeloMDIChild)
    txtTitulo: TEdit;
    lblTitulo: TLabel;
    Label1: TLabel;
    txtSubTitulo: TEdit;
    btnOk: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigTituloRelatorios: TfrmConfigTituloRelatorios;

implementation

uses ufrmCadOrdemPag, urptOrdemDePagamentoListagem;

{$R *.dfm}

procedure TfrmConfigTituloRelatorios.btnOkClick(Sender: TObject);
begin
  inherited;
 sTitulo    := txtTitulo.Text;
 sSubTitulo := txtSubTitulo.Text;

 Application.CreateForm(TrptOrdemDePagamentoListagem, rptOrdemDePagamentoListagem);

 rptOrdemDePagamentoListagem.lblTituloRelatorio.Caption    := sTitulo;
 rptOrdemDePagamentoListagem.lblSubTituloRelatorio.Caption := sSubTitulo;

 rptOrdemDePagamentoListagem.Preview;
 rptOrdemDePagamentoListagem.Free;

 Self.Close;
end;

procedure TfrmConfigTituloRelatorios.FormCreate(Sender: TObject);
begin
  inherited;
 txtTitulo.Text    := sTitulo;
 txtSubTitulo.Text := sSubTitulo;
end;

end.
