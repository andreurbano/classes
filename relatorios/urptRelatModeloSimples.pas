unit urptRelatModeloSimples;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Quickrpt, QRCtrls, QRPrntr, Forms;

type
  TrptRelatModeloSimples = class(TQuickRep)
    procedure QuickRepPreview(Sender: TObject);
  private

  public

  end;

var
  rptRelatModeloSimples: TrptRelatModeloSimples;

implementation

uses ufrmPreviewRelatorios;

{$R *.DFM}


{
 Application.CreateForm(TfrmPreviewRelatorios, frmPreviewRelatorios);
 frmPreviewRelatorios.qrPreview.Zoom := 100;
 // frmPreviewRelatorios.WindowState := wsMaximized;
 frmPreviewRelatorios.WindowState := wsNormal;
 frmPreviewRelatorios.qrPreview.QRPrinter := TQRPrinter(Sender);
 //frmPreviewRelatorios.Top := 7;
 //frmPreviewRelatorios.Show;
} 


procedure TrptRelatModeloSimples.QuickRepPreview(Sender: TObject);
begin
 Application.CreateForm(TfrmPreviewRelatorios, frmPreviewRelatorios);
 frmPreviewRelatorios.qrPreview.Zoom := 100;
 // frmPreviewRelatorios.WindowState := wsMaximized;
 frmPreviewRelatorios.WindowState := wsNormal;
 frmPreviewRelatorios.qrPreview.QRPrinter := TQRPrinter(Sender);
 //frmPreviewRelatorios.Top := 7;
 //frmPreviewRelatorios.Show;

end;

end.
