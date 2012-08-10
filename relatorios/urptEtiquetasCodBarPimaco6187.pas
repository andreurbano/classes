unit urptEtiquetasCodBarPimaco6187;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls, Barcode, QRPrntr;

type
  TrptEtiquetasCodBarPimaco6187 = class(TQuickRep)
    bndDetalhe: TQRBand;
    txtCodEAN: TQRDBText;
    txtPrecoVenda: TQRDBText;
    txtNomeProd: TQRDBText;
    BarcodeProd: TBarcode;
    imgCodBarra: TQRImage;
    txtCodProd: TQRDBText;
    procedure bndDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptEtiquetasCodBarPimaco6187: TrptEtiquetasCodBarPimaco6187;

implementation

uses ufrmRelCodBarra, ufrmPreviewRelatorios;

{$R *.DFM}

procedure TrptEtiquetasCodBarPimaco6187.bndDetalheBeforePrint(Sender: TQRCustomBand;
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
