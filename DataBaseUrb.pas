unit DataBaseUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBTables;

type
  TDataBaseUrb = class(TDataBase)
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
  RegisterComponents('AU - BDE', [TDataBaseUrb]);
end;

end.
