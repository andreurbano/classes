unit urptRelatModeloComTituloDetalhe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, jpeg, urptRelatModeloSimplesComTitulo;

type
  TrptRelatModeloComTituloDetalhe = class(TrptRelatModeloComTitulo)
    bndDetalhe: TQRBand;
    bndTitulo: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRelatModeloComTituloDetalhe: TrptRelatModeloComTituloDetalhe;

implementation

{$R *.DFM}

end.
