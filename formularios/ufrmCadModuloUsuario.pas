unit ufrmCadModuloUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr;

type
  TfrmCadModuloUsuario = class(TfrmManutencaoBD)
    cdsManuBDID_Usuario_Modulo: TIntegerField;
    cdsManuBDID_Usuario: TIntegerField;
    cdsManuBDID_Modulo: TIntegerField;
    cdsUsuario: TClientDataSetUrb;
    dtsUsuario: TDataSourceUrb;
    cdsModulo: TClientDataSetUrb;
    dtsModulo: TDataSourceUrb;
    cdsUsuarioID_Usuario: TIntegerField;
    cdsUsuarioNome: TStringField;
    cdsModuloID_Modulo: TIntegerField;
    cdsModuloDescricao: TStringField;
    cdsManuBDDescUsuario: TStringField;
    cdsManuBDDescModulo: TStringField;
    Label1: TLabel;
    dblUsuario: TDBLookupComboBox;
    Label4: TLabel;
    dblModulo: TDBLookupComboBox;
    dspUsuario: TDataSetProviderUrb;
    dspModulo: TDataSetProviderUrb;
    sqlUsuario: TSQLDataSet;
    sqlModulo: TSQLDataSet;
    procedure FormCreate(Sender: TObject);
    procedure IncluirExecute(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure tbsListagemShow(Sender: TObject);
    procedure tbsCadastroShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModuloUsuario: TfrmCadModuloUsuario;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadModuloUsuario.FormCreate(Sender: TObject);
begin
 sTabelaNome  := 'usuario_modulo';
 sCampoIDNome := 'ID_Usuario_Modulo';
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 cdsUsuario.Active := False;
 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Usuario, Login, Senha, Nome, ID_Setor, Ramal from usuario order by Nome ';
 cdsUsuario.CommandText := ' select ID_Usuario, Login, Senha, Nome, ID_Setor, Ramal from usuario order by Nome ';
 cdsUsuario.Active := True;

 cdsModulo.Active := False;
 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Modulo, ID_Grupo, ID_Setor, Descricao, Nome_Form from modulo order by Descricao ';
 cdsModulo.CommandText := ' select ID_Modulo, ID_Grupo, ID_Setor, Descricao, Nome_Form from modulo order by Descricao ';
 cdsModulo.Active := True;

 //frmPrincipal.sqlDataSet.CommandText := ' select ID_Usuario_Modulo, ID_Usuario, ID_Modulo from usuario_modulo ';
 cdsManuBD.CommandText := ' select ID_Usuario_Modulo, ID_Usuario, ID_Modulo from usuario_modulo ';

 inherited;
end;

procedure TfrmCadModuloUsuario.IncluirExecute(Sender: TObject);
begin
 inherited;
 dblUsuario.SetFocus;
end;

procedure TfrmCadModuloUsuario.AlterarExecute(Sender: TObject);
begin
 inherited;
 dblUsuario.SetFocus;
end;

procedure TfrmCadModuloUsuario.tbsListagemShow(Sender: TObject);
begin
 inherited;
 Self.WindowState := wsMaximized;
end;

procedure TfrmCadModuloUsuario.tbsCadastroShow(Sender: TObject);
begin
 inherited;
 Self.WindowState := wsNormal;
end;

end.
