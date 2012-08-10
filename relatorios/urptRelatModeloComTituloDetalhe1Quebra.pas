unit urptRelatModeloComTituloDetalhe1Quebra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  URPTRELATMODELOCOMTITULODETALHE, Qrctrls, quickrpt, ExtCtrls, jpeg;

type
  TrptRelatModeloComTituloDetalhe1Quebra = class(TrptRelatModeloComTituloDetalhe)
    bndGrupoHeader: TQRGroup;
    bndGrupoFooter: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRelatModeloComTituloDetalhe1Quebra: TrptRelatModeloComTituloDetalhe1Quebra;

implementation

{$R *.DFM}

end.
