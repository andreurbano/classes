unit ufrmCadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr;

type
  TfrmCadSetor = class(TfrmManutencaoBD)
    Label2: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDID_Setor: TIntegerField;
    cdsManuBDDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure IncluirExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSetor: TfrmCadSetor;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadSetor.FormCreate(Sender: TObject);
begin
 //
 sTabelaNome  := 'setor';
 sCampoIDNome := 'ID_Setor';
 //
 cdsManuBD.CommandText := ' select ID_Setor, Descricao from setor order by Descricao ';
 inherited;
end;

procedure TfrmCadSetor.IncluirExecute(Sender: TObject);
begin
 inherited;
 txtDescricao.SetFocus;
end;

procedure TfrmCadSetor.AlterarExecute(Sender: TObject);
begin
 inherited;
 txtDescricao.SetFocus;
end;

end.
