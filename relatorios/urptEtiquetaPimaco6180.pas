unit urptEtiquetaPimaco6180;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URPTRELATMODELOSIMPLES, QuickRpt, QRCtrls, ExtCtrls, DB,
  DBClient, ClientDataSetUrb;

type
  TrptEtiquetaPimaco6180 = class(TrptRelatModeloSimples)
    DetailBand1: TQRBand;
    cdsDados: TClientDataSetUrb;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEtiquetaPimaco6180: TrptEtiquetaPimaco6180;

implementation

uses ufrmEtiquetaClienteMalaDireta, ufrmEtiquetaClienteMalaDiretaAss;

{$R *.dfm}

end.
