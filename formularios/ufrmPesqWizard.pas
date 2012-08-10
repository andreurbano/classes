unit ufrmPesqWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModPageControlWizard, ComCtrls, Buttons, StdCtrls, Grids,
  DBGrids, DBGridUrb, DB, DBClient;

type
  TfrmPesqWizard = class(TfrmModPageControlWizard)
    tshFiltrar: TTabSheet;
    tshListagem: TTabSheet;
    tshImpressao: TTabSheet;
    cdsFiltro: TClientDataSet;
    cdsFiltroCampoNome: TStringField;
    cdsFiltroCampoDesc: TStringField;
    cdsFiltroCondicao: TStringField;
    cdsFiltroCondicaoDesc: TStringField;
    cdsFiltroValor: TStringField;
    cdsFiltroE_OU: TStringField;
    cdsFiltroE_OU_Desc: TStringField;
    dtsFiltro: TDataSource;
    cdsCampos: TClientDataSet;
    cdsCamposNome: TStringField;
    cdsCamposDescricao: TStringField;
    cdsCondicoes: TClientDataSet;
    cdsCondicoesDescricao: TStringField;
    cdsCondicoesValor: TStringField;
    cdsE_OU: TClientDataSet;
    cdsE_OUE_OU: TStringField;
    cdsE_OUE_OU_Desc: TStringField;
    DBGridUrb1: TDBGridUrb;
    DBGridUrb2: TDBGridUrb;
    gbxRelatorios: TGroupBox;
    ltbRelatorios: TListBox;
    gbxTitulo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqWizard: TfrmPesqWizard;

implementation

{$R *.dfm}

procedure TfrmPesqWizard.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
//  mmFilter.Lines.Text := FFilterDlg.GetFilter;
//  lsbFields.Items.Clear;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRIA NOVAS OPÇÕES DE FILTRO.                                             //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsCampos.Active := False;
  cdsCampos.CreateDataSet;
  cdsCampos.Active := True;

  //////////////////////////////////////////////////////////////////////////////
  cdsCondicoes.Active := False;
  cdsCondicoes.CreateDataSet;
  cdsCondicoes.Active := True;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Igual';
  cdsCondicoesValor.Value     := '=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Diferente';
  cdsCondicoesValor.Value     := '<>';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Maior';
  cdsCondicoesValor.Value     := '>';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Maior Igual';
  cdsCondicoesValor.Value     := '>=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Menor';
  cdsCondicoesValor.Value     := '<';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Menor Igual';
  cdsCondicoesValor.Value     := '<=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem a Direita do Valor';
  cdsCondicoesValor.Value     := 'LIKE%';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem a Esquerda do Valor';
  cdsCondicoesValor.Value     := '%LIKE';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem no Meio do Valor';
  cdsCondicoesValor.Value     := '%LIKE%';
  cdsCondicoes.Post;

  cdsE_OU.Active := False;
  cdsE_OU.CreateDataSet;
  cdsE_OU.Active := True;

  cdsE_OU.Insert;
  cdsE_OUE_OU.Value      := 'AND';
  cdsE_OUE_OU_Desc.Value := 'E';
  cdsE_OU.Post;

  cdsE_OU.Insert;
  cdsE_OUE_OU.Value      := 'OR';
  cdsE_OUE_OU_Desc.Value := 'OU';
  cdsE_OU.Post;
  //////////////////////////////////////////////////////////////////////////////


  cdsFiltro.Active := False;
  cdsFiltro.CreateDataSet;
  cdsFiltro.Active := True;

{
  for I := 0 to DataSet.FieldCount - 1 do
   begin

    if DataSet.Fields[I].Visible then
     begin
      lsbFields.Items.Add(DataSet.Fields[I].DisplayName);
     end;

     ///////////////////////////////////////////////////////////////////////////
     //                                                                       //
     // CRIA NOVAS OPÇÕES DE FILTRO.                                          //
     //                                                                       //
     ///////////////////////////////////////////////////////////////////////////
     cdsCampos.Insert;
     cdsCamposNome.Value      := DataSet.Fields[I].FieldName;
     cdsCamposDescricao.Value := DataSet.Fields[I].DisplayName;
     cdsCampos.Post;
   end;

  lsbFields.ItemIndex := 0;
}
end;

end.
