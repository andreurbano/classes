unit ufrmLogin_Original;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmLogin_Original = class(TForm)
    pnlLogin: TPanel;
    lblSenha: TLabel;
    lblUsuario: TLabel;
    txtSenha: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    txtUsuario: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin_Original: TfrmLogin_Original;

implementation

uses uConfig_Aplic, ufrmPrincipal;

{$R *.dfm}

procedure TfrmLogin_Original.BitBtn1Click(Sender: TObject);
begin
 ModalResult := mrOK;
end;

procedure TfrmLogin_Original.BitBtn2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TfrmLogin_Original.OKBtnClick(Sender: TObject);
var
 sUsuario :string;
 sSenha   :string;
 PwdOra   :string;
 i        :integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 // VERIFICA SE O USUÁRIO TEM ACESSO AO BANCO                                 //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
{
 for i := Length(Trim(txtSenha.Text)) downto 1 do
  begin
   PwdOra := PwdOra + Copy(txtSenha.Text,i,1);
  end;

 sUsuario := 'USER NAME=' + txtUsuario.Text;
 sSenha   := 'PASSWORD='  + PwdOra;

 frmPrincipal.bdCPAD.Connected := False;
 frmPrincipal.bdCPAD.Params.Clear;
 frmPrincipal.bdCPAD.Params.Add(sUsuario);
 frmPrincipal.bdCPAD.Params.Add(sSenha);
 frmPrincipal.bdCPAD.AliasName := 'scc1';
 frmPrincipal.bdCPAD.Connected := True;
}
end;

procedure TfrmLogin_Original.CancelBtnClick(Sender: TObject);
begin
 ModalResult := mrCancel;
end;
end.

