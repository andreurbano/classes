unit uTimerUsuarioLogado;

interface

uses
  SysUtils, Classes, ExtCtrls;

type
  TTimerUsuarioLogado = class(TTimer)
  private
    { Private declarations }
   procedure 

  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Gencon - Outros', [TTimerUsuarioLogado]);
end;

end.
