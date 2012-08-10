unit ufrmPesquisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Grids, DBGrids, DBGridUrb, ComCtrls, DB,
  DBClient, StdCtrls, Buttons;

type
  TfrmPesquisar = class(TfrmModeloMDIChild)
    cdsFiltro: TClientDataSet;
    cdsFiltroCampoNome: TStringField;
    cdsFiltroCampoDesc: TStringField;
    cdsFiltroCondicao: TStringField;
    cdsFiltroCondicaoDesc: TStringField;
    cdsFiltroValor: TStringField;
    cdsFiltroE_OU: TStringField;
    cdsFiltroE_OU_Desc: TStringField;
    cdsCampos: TClientDataSet;
    cdsCamposNome: TStringField;
    cdsCamposDescricao: TStringField;
    cdsCondicoes: TClientDataSet;
    cdsCondicoesDescricao: TStringField;
    cdsCondicoesValor: TStringField;
    cdsE_OU: TClientDataSet;
    cdsE_OUE_OU: TStringField;
    cdsE_OUE_OU_Desc: TStringField;
    dtsFiltro: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridUrb1: TDBGridUrb;
    TabSheet2: TTabSheet;
    gbxRelatorios: TGroupBox;
    ltbRelatorios: TListBox;
    btnVisualizar: TSpeedButton;
    gbxTitulo: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisar: TfrmPesquisar;

implementation

{$R *.dfm}

end.
