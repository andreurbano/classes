unit ufrmModPageControlWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMODELOMDICHILD, ComCtrls, Buttons;

type
  TfrmModPageControlWizard = class(TfrmModeloMDIChild)
    pgcMain: TPageControl;
    btnProximo: TSpeedButton;
    btnFinalizar: TSpeedButton;
    btnAnterior: TSpeedButton;
    procedure MovimentaPagina(Botao: TSpeedButton);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModPageControlWizard: TfrmModPageControlWizard;

implementation

{$R *.dfm}

procedure TfrmModPageControlWizard.MovimentaPagina(Botao: TSpeedButton);
var
 PaginaAtual:       TTabSheet;
 PaginaProxima:     TTabSheet;
 iIndicePagAtual:   integer;
 iIndicePagProxima: integer;
begin
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 iIndicePagAtual   := pgcMain.ActivePageIndex;
// iIndicePagProxima := 0;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if Botao.Name = 'btnAnterior' then
  begin
   iIndicePagProxima := pgcMain.ActivePageIndex - 1;
  end
 else if Botao.Name = 'btnProximo' then
  begin
   iIndicePagProxima := pgcMain.ActivePageIndex + 1;
  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 PaginaAtual   := pgcMain.Pages[iIndicePagAtual];
 PaginaProxima := pgcMain.Pages[iIndicePagProxima];
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 pgcMain.ActivePage := PaginaProxima;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
// andre
// pgcMain.ActivePage.TabVisible := True;
// PaginaAtual.TabVisible         := False;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if pgcMain.ActivePageIndex = 0 then
  begin
   btnAnterior.Enabled  := False;
   btnProximo.Enabled   := True;
   btnFinalizar.Enabled := False;
  end
 else
  begin
   btnAnterior.Enabled  := True;
   btnFinalizar.Enabled := False;
  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
 if pgcMain.ActivePageIndex = pgcMain.PageCount -1 then
  begin
   btnProximo.Enabled   := False;
   btnAnterior.Enabled  := True;
   btnFinalizar.Enabled := True;
  end
 else
  begin
   btnProximo.Enabled   := True;
   btnFinalizar.Enabled := False;
  end;
 ///////////////////////////////////////////////////////////////////////////////
 //                                                                           //
 //                                                                           //
 //                                                                           //
 ///////////////////////////////////////////////////////////////////////////////
{
 if pgcMain.ActivePageIndex = 0 then
  begin
   btnBuscarPed.Visible := True;
  end
 else
  begin
   btnBuscarPed.Visible := False;
  end;
 }

end;

procedure TfrmModPageControlWizard.btnAnteriorClick(Sender: TObject);
begin
  inherited;
 MovimentaPagina(btnAnterior);
end;

procedure TfrmModPageControlWizard.btnProximoClick(Sender: TObject);
begin
  inherited;
 MovimentaPagina(btnProximo);
end;

procedure TfrmModPageControlWizard.FormCreate(Sender: TObject);
var
 I:             integer;
 iTotalPaginas: integer;
begin
  inherited;

 iTotalPaginas :=  Self.pgcMain.PageCount - 1;

 for I := 1 to iTotalPaginas do
  begin
// andre
//   Self.pgcMain.Pages[I].TabVisible := False;
  end;

end;

end.
