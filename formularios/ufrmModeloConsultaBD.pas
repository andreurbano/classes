unit ufrmModeloConsultaBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Grids, DBGrids, DBGridUrb, ComCtrls, ExtCtrls,
  DB, DataSourceUrb, DBClient, ClientDataSetUrb, Provider, DataSetProviderUrb,
  StdCtrls, FMTBcd, SqlExpr, RpDefine, RpCon, RpConDS, Buttons;

type
  TfrmModeloConsultaBD = class(TfrmModeloMDIChild)
    dspConsultaBD: TDataSetProviderUrb;
    cdsConsultaBD: TClientDataSetUrb;
    dtsConsultaBD: TDataSourceUrb;
    pnlConsultaBD: TPanel;
    stbConsultaBD: TStatusBar;
    gbxLocaliza: TGroupBox;
    txtLocaliza: TEdit;
    dbgConsultaBD: TDBGridUrb;
    sqlConsultaBD: TSQLDataSet;
    pnlBotoes: TPanel;
    btnRelatorio: TSpeedButton;
    btnAtualizar: TSpeedButton;
    procedure txtLocalizaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloConsultaBD: TfrmModeloConsultaBD;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmModeloConsultaBD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 cdsConsultaBD.Active := False;
end;

procedure TfrmModeloConsultaBD.FormCreate(Sender: TObject);
begin
 inherited;
 cdsConsultaBD.Active := True;
end;

procedure TfrmModeloConsultaBD.txtLocalizaChange(Sender: TObject);
begin
 inherited;

 if txtLocaliza.Text = '' then
 begin
   cdsConsultaBD.Filtered := False;
 end
 else
 begin
   cdsConsultaBD.Filter := 'Nome = ' + '''' + txtLocaliza.Text + '*' + '''';
   cdsConsultaBD.Filtered := True;
 end;

end;

procedure TfrmModeloConsultaBD.btnAtualizarClick(Sender: TObject);
begin
 inherited;
 cdsConsultaBD.Refresh;
end;

end.
