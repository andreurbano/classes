unit QueryUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBTables;

type
  TQueryUrb = class(TQuery)
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
  RegisterComponents('AU - BDE', [TQueryUrb]);
end;

end.
