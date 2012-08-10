unit DBNavigatorUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls;

type
  TDBNavigatorUrb = class(TDBNavigator)
  private
    { Private declarations }
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
  RegisterComponents('AU - Data Controls', [TDBNavigatorUrb]);
end;

end.
