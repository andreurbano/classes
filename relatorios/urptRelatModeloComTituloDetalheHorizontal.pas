unit urptRelatModeloComTituloDetalheHorizontal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRPrntr, uConfig_Aplic;

type
  TrptRelatModeloComTituloDetalheHorizontal = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    lblEndereco: TQRLabel;
    lblTelefone: TQRLabel;
    sysPagina: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    expTotalGeral: TQRExpr;
    QRShape1: TQRShape;
    lblTituloRelatorio: TQRLabel;
    lblSubTituloRelatorio: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    expUsuario: TQRExpr;
    QRLabel14: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    procedure QuickRepPreview(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  rptRelatModeloComTituloDetalheHorizontal: TrptRelatModeloComTituloDetalheHorizontal;

implementation

uses ufrmPreviewRelatorios;

{$R *.DFM}

procedure TrptRelatModeloComTituloDetalheHorizontal.QuickRepPreview(
  Sender: TObject);
begin
 Application.CreateForm(TfrmPreviewRelatorios, frmPreviewRelatorios);
 frmPreviewRelatorios.qrPreview.Zoom := 100;
 // frmPreviewRelatorios.WindowState := wsMaximized;
 frmPreviewRelatorios.WindowState := wsNormal;
 frmPreviewRelatorios.qrPreview.QRPrinter := TQRPrinter(Sender);
 frmPreviewRelatorios.Top := 7;
 frmPreviewRelatorios.Show;
end;

procedure TrptRelatModeloComTituloDetalheHorizontal.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 expTotalGeral.Expression := IntToStr( Self.DataSet.RecordCount );
 expUsuario.Expression    := IntToStr( iSistemaUsuarioMatric   );
end;

end.
