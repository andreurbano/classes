unit ufrmCadModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr;

type
  TfrmCadModulo = class(TfrmManutencaoBD)
    cdsManuBDID_Modulo: TIntegerField;
    cdsManuBDID_Grupo: TIntegerField;
    cdsManuBDID_Setor: TIntegerField;
    cdsManuBDDescricao: TStringField;
    cdsManuBDNome_Form: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtDescricao: TDBEdit;
    Label4: TLabel;
    txtNomeForm: TDBEdit;
    cdsGrupo: TClientDataSetUrb;
    dtsGrupo: TDataSourceUrb;
    cdsManuBDDescGrupo: TStringField;
    dblGrupo: TDBLookupComboBox;
    cdsGrupoID_Grupo: TIntegerField;
    cdsGrupoDescricao: TStringField;
    cdsSetor: TClientDataSetUrb;
    dtsSetor: TDataSourceUrb;
    cdsSetorID_Setor: TIntegerField;
    cdsSetorDescricao: TStringField;
    cdsManuBDDescSetor: TStringField;
    dblSetor: TDBLookupComboBox;
    sqlGrupo: TSQLDataSet;
    dspGrupo: TDataSetProviderUrb;
    sqlSetor: TSQLDataSet;
    dspSetor: TDataSetProviderUrb;
    procedure FormCreate(Sender: TObject);
    procedure IncluirExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModulo: TfrmCadModulo;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadModulo.FormCreate(Sender: TObject);
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 sTabelaNome  := 'modulo';
 sCampoIDNome := 'ID_Modulo';
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 cdsGrupo.Active := False;
 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Grupo, Descricao from grupo order by Descricao ';
 cdsGrupo.CommandText := ' select ID_Grupo, Descricao from grupo order by Descricao ';
 cdsGrupo.Active := True;

 cdsSetor.Active := False;
 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Setor, Descricao from setor order by Descricao ';
 cdsSetor.CommandText := ' select ID_Setor, Descricao from setor order by Descricao ';
 cdsSetor.Active := True;

 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Modulo, ID_Grupo, ID_Setor, Descricao, Nome_Form from modulo order by Descricao ';
 cdsManuBD.CommandText := ' select ID_Modulo, ID_Grupo, ID_Setor, Descricao, Nome_Form from modulo order by Descricao ';

 inherited;
end;

procedure TfrmCadModulo.IncluirExecute(Sender: TObject);
begin
 inherited;
 dblGrupo.SetFocus;
end;

procedure TfrmCadModulo.AlterarExecute(Sender: TObject);
begin
 inherited;
 dblGrupo.SetFocus;
end;

end.
