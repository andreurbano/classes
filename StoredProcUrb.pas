unit StoredProcUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBTables;

type
  TStoredProcUrb = class(TStoredProc)
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
  RegisterComponents('AU - BDE', [TStoredProcUrb]);
end;

end.
