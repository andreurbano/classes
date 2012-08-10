unit ufrmCadAgencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmManutencaoBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadAgencias = class(TfrmManutencaoBD)
    cdsManuBDNUM_BCO: TFloatField;
    cdsManuBDNUM_AGE: TFloatField;
    cdsManuBDNUM_DVR_AGE: TStringField;
    cdsManuBDNUM_CCR: TStringField;
    cdsManuBDNUM_DVR_CCR: TStringField;
    cdsManuBDNUM_CRT: TFloatField;
    cdsManuBDAPE_AGE: TFloatField;
    cdsManuBDDSC_APE: TStringField;
    cdsManuBDTIP_CCR: TStringField;
    cdsManuBDSLD_CCR: TFloatField;
    cdsManuBDCNT_CTB: TStringField;
    cdsManuBDHST_CTB: TFloatField;
    cdsManuBDFLG_DBT_CRD: TStringField;
    cdsManuBDNUM_AGE_CED: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAgencias: TfrmCadAgencias;

implementation

{$R *.dfm}

end.
