unit ufrmModeloMDIChild;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

const
 CM_FORMSETUP = WM_USER + 1;

type
  TfrmModeloMDIChild = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure CMFormSetup(var Message: TMessage); message CM_FORMSETUP;
  public
    { Public declarations }
  end;

var
  frmModeloMDIChild: TfrmModeloMDIChild;

implementation

{$R *.DFM}

procedure TfrmModeloMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmModeloMDIChild.FormShow(Sender: TObject);
begin
 PostMessage(Handle, CM_FORMSETUP, 0, 0);
end;

procedure TfrmModeloMDIChild.CMFormSetup(var Message: TMessage);
begin
 Update;
end;

end.


