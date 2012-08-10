unit urptEtiquetasCodBarPimacoA4348;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls, Barcode;

type
  TrptEtiquetasCodBarPimacoA4348 = class(TQuickRep)
    bndDetalhe: TQRBand;
    txtCodEAN: TQRDBText;
    txtPrecoVenda: TQRDBText;
    txtNomeProd: TQRDBText;
    BarcodeProd: TBarcode;
    imgCodBarra: TQRImage;
    QRDBText1: TQRDBText;
    procedure bndDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEtiquetasCodBarPimacoA4348: TrptEtiquetasCodBarPimacoA4348;

implementation

uses ufrmRelCodBarra;

{$R *.DFM}

procedure TrptEtiquetasCodBarPimacoA4348.bndDetalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 BarcodeProd.ShowText := bcoNone;
 BarcodeProd.Typ      := bcCodeEAN13;
 BarcodeProd.Left     := 1;
 BarcodeProd.Top      := 1;
 BarcodeProd.Height   := 22;
 BarcodeProd.Text     := frmRelCodBarra.txtCodEAN.Text;
 BarcodeProd.DrawBarcode(imgCodBarra.Canvas);
end;

end.
