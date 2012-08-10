unit DataSourceUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, DB;

type
  TDataSourceUrb = class(TDataSource)
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
  RegisterComponents('AU - Data Access', [TDataSourceUrb]);
end;

end.
