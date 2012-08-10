unit DataSetProviderUrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Provider;

type
  TDataSetProviderUrb = class(TDataSetProvider)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
   constructor Create(AOwner: TComponent); override;

  published
    { Published declarations }
  end;

procedure Register;

implementation

{ Class constructor }
constructor TDataSetProviderUrb.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
 Self.Options := [poAllowCommandText];
end;



procedure Register;
begin
  RegisterComponents('AU - Data Access', [TDataSetProviderUrb]);
end;

end.
