unit urptEtiquetaCliente6180;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, urptEtiquetaPimaco6180, QRCtrls, QuickRpt, DB, DBClient,
  ClientDataSetUrb, ExtCtrls;

type
  TrptEtiquetaCliente6180 = class(TrptEtiquetaPimaco6180)
    expNome: TQRExpr;
    expBairroCep: TQRExpr;
    expCep_UF: TQRExpr;
    QRExpr1: TQRExpr;
    expEndereco: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEtiquetaCliente6180: TrptEtiquetaCliente6180;

implementation

{$R *.dfm}

end.
