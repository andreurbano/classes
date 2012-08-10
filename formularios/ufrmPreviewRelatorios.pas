unit ufrmPreviewRelatorios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UFRMMODELOMDICHILD, qrprntr, StdCtrls, ExtCtrls, Spin, Buttons, ComCtrls,
  QRExport, uConfig_Aplic;

type
  TfrmPreviewRelatorios = class(TfrmModeloMDIChild)
    pnlPreview: TPanel;
    qrPreview: TQRPreview;
    pnlLeft: TPanel;
    txtZoom: TSpinEdit;
    lblZoom: TLabel;
    btnPagPrimeira: TSpeedButton;
    btnPagProxima: TSpeedButton;
    btnPagUltima: TSpeedButton;
    btnPagAnterior: TSpeedButton;
    btnImprimir: TSpeedButton;
    pnlBottom: TPanel;
    StatusBar: TStatusBar;
    ProgressBar: TProgressBar;
    btnConfigImpressao: TSpeedButton;
    btnSalvar: TSpeedButton;
    SaveDialog: TSaveDialog;
    procedure txtZoomChange(Sender: TObject);
    procedure btnPagPrimeiraClick(Sender: TObject);
    procedure btnPagProximaClick(Sender: TObject);
    procedure btnPagAnteriorClick(Sender: TObject);
    procedure btnPagUltimaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure AtualizaBotoes(Botao: TSpeedButton);
    procedure qrPreviewProgressUpdate(Sender: TObject; Progress: Integer);
    procedure btnConfigImpressaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreviewRelatorios: TfrmPreviewRelatorios;

implementation

{$R *.DFM}

procedure TfrmPreviewRelatorios.txtZoomChange(Sender: TObject);
begin
  inherited;
 qrPreview.Zoom := txtZoom.Value;
end;

procedure TfrmPreviewRelatorios.btnPagPrimeiraClick(Sender: TObject);
begin
  inherited;
 AtualizaBotoes(btnPagPrimeira);
end;

procedure TfrmPreviewRelatorios.btnPagProximaClick(Sender: TObject);
begin
  inherited;
 AtualizaBotoes(btnPagProxima);
end;

procedure TfrmPreviewRelatorios.btnPagAnteriorClick(Sender: TObject);
begin
  inherited;
 AtualizaBotoes(btnPagAnterior);
end;

procedure TfrmPreviewRelatorios.btnPagUltimaClick(Sender: TObject);
begin
  inherited;
 AtualizaBotoes(btnPagUltima);
end;

procedure TfrmPreviewRelatorios.btnImprimirClick(Sender: TObject);
begin
  inherited;
 qrPreview.QRPrinter.Print;
end;

procedure TfrmPreviewRelatorios.AtualizaBotoes(Botao: TSpeedButton);
begin

 if Botao.Name = 'btnPagPrimeira' then
  begin
   qrPreview.PageNumber := 1;
   StatusBar.Panels[0].Text := 'Página: 1' + '/' + IntToStr(qrPreview.QRPrinter.PageCount);

   if qrPreview.PageNumber = 1 then
    begin
      btnPagPrimeira.Enabled := False;
      btnPagAnterior.Enabled := False;
      btnPagProxima.Enabled  := True;
      btnPagUltima.Enabled   := True;
    end;

  end

 else if Botao.Name = 'btnPagProxima' then
  begin
   qrPreview.PageNumber := qrPreview.PageNumber + 1;
   StatusBar.Panels[0].Text := 'Página: ' + IntToStr(qrPreview.PageNumber) + '/' + IntToStr(qrPreview.QRPrinter.PageCount);
  end
 else if Botao.Name = 'btnPagAnterior' then
  begin
   qrPreview.PageNumber := qrPreview.PageNumber - 1;
   StatusBar.Panels[0].Text := 'Página: ' + IntToStr(qrPreview.PageNumber) + '/' + IntToStr(qrPreview.QRPrinter.PageCount);
  end
 else if Botao.Name = 'btnPagUltima' then
  begin
   qrPreview.PageNumber := qrPreview.QRPrinter.PageCount;
   StatusBar.Panels[0].Text := 'Página: ' + IntToStr(qrPreview.QRPrinter.PageCount) + '/' + IntToStr(qrPreview.QRPrinter.PageCount);
  end;

 if qrPreview.PageNumber = 1 then
  begin
   btnPagPrimeira.Enabled := False;
   btnPagAnterior.Enabled := False;
   btnPagProxima.Enabled  := True;
   btnPagUltima.Enabled   := True;
  end
 else if qrPreview.PageNumber = qrPreview.QRPrinter.PageCount then
  begin
   btnPagPrimeira.Enabled := True;
   btnPagAnterior.Enabled := True;
   btnPagProxima.Enabled  := False;
   btnPagUltima.Enabled   := False;
  end
 else
  begin
   btnPagPrimeira.Enabled := True;
   btnPagAnterior.Enabled := True;
   btnPagProxima.Enabled  := True;
   btnPagUltima.Enabled   := True;
  end;
end;

procedure TfrmPreviewRelatorios.qrPreviewProgressUpdate(Sender: TObject;
  Progress: Integer);
begin
  inherited;
 ProgressBar.Position := Progress;
 StatusBar.Panels[0].Text := 'Página: 1' + '/' + IntToStr(qrPreview.QRPrinter.PageCount);

 if ProgressBar.Position = 100 then
  begin
   ProgressBar.Position := 0;
  end;

end;

procedure TfrmPreviewRelatorios.btnConfigImpressaoClick(Sender: TObject);
begin
  inherited;
 qrPreview.QRPrinter.PrintSetup;
end;

procedure TfrmPreviewRelatorios.FormShow(Sender: TObject);
begin
  inherited;
 Self.Top := Application.MainForm.Top + 30;
end;

procedure TfrmPreviewRelatorios.btnSalvarClick(Sender: TObject);
begin
  inherited;
 SaveDialog.Execute;

 // ***** ATENÇÃO ACHAR UMA MANEIRA DE PEGAR O DATASET DO PREVIEW
 // qrPreview.QRPrinter.
 //ExportaDataSet(Query1, 'txt', SaveDialog.FileName);

end;

end.
