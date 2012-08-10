unit ufrmCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr;

type
  TfrmCadGrupo = class(TfrmManutencaoBD)
    cdsManuBDID_Grupo: TIntegerField;
    cdsManuBDDescricao: TStringField;
    Label1: TLabel;
    txtDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure IncluirExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrupo: TfrmCadGrupo;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadGrupo.FormCreate(Sender: TObject);
begin
 sTabelaNome  := 'grupo';
 sCampoIDNome := 'ID_Grupo';

 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Grupo, Descricao from grupo order by Descricao ';
 cdsManuBD.CommandText := ' select ID_Grupo, Descricao from grupo order by Descricao ';

 inherited;
end;

procedure TfrmCadGrupo.IncluirExecute(Sender: TObject);
begin
 inherited;
 txtDescricao.SetFocus;
end;

procedure TfrmCadGrupo.AlterarExecute(Sender: TObject);
begin
 inherited;
 txtDescricao.SetFocus;
end;

end.
