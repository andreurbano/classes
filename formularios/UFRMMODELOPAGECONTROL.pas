unit ufrmModeloPageControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMODELOMDICHILD, ComCtrls, Buttons;

type
  TfrmModPageControl = class(TfrmModeloMDIChild)
    PageControl: TPageControl;
    btnAplicar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModPageControl: TfrmModPageControl;

implementation

{$R *.dfm}

procedure TfrmModPageControl.btnCancelarClick(Sender: TObject);
begin
  inherited;
 Close;
end;

end.
