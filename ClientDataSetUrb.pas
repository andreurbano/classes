unit ClientDataSetUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, DB, DBClient;

type
  TClientDataSetUrb = class(TClientDataSet)
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
  RegisterComponents('AU - Data Access', [TClientDataSetUrb]);
end;

end.
