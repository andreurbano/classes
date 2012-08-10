unit ufrmLocalizar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, Variants;

{$R *.DCR}

type
  TZLocateSimile = (lsPartialAny, lsExact, lsPartialStart);
  TZStartPos = (spUp, spDown, spAll);

{***************** TZFindDlg Definição ********************}
{
  TLocalizarDialogo = class(TComponent)
  private
    FDataSet:       TDataSet;
    FDataField:     string;
//    FSimile:        TZLocateSimile;
    FCaseSensitive: Boolean;
    FIsPattern:     Boolean;
//    FStartPos:      TZStartPos;
    FIncrSearch:    Boolean;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Execute;
  published
    property DataSet: TDataSet read FDataset write FDataset;
    property DataField: string read FDataField write FDataField;
//    property Simile: TZLocateSimile read FSimile write FSimile default lsPartialStart;
    property CaseSensitive: Boolean read FCaseSensitive write FCaseSensitive default False;
    property IsPattern: Boolean read FIsPattern write FIsPattern default False;
//    property StartPos: TZStartPos read FStartPos write FStartPos default spAll;
    property IncrSearch: Boolean read FIncrSearch write FIncrSearch default False;
  end;
}
  TfrmLocalizar = class(TForm)
    lblSample: TLabel;
    edtSample: TEdit;
    btnFind: TButton;
    btnClose: TButton;
    cbxSensivel: TCheckBox;
    cbxParte: TCheckBox;
    procedure acCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acFindExecute(Sender: TObject);
    procedure acFindNextExecute(Sender: TObject);
    procedure edtSampleChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDataSet: TDataSet;
    FDataField: string;
    FFieldName: string;
    FCaseSensitive: Boolean;
    FIsPattern:     Boolean;

    function GetSimile: TZLocateSimile;
    procedure SetSimile(Value: TZLocateSimile);
    function GetCaseSensetive: Boolean;
    procedure SetCaseSensetive(Value: Boolean);
    function GetPattern: Boolean;
    procedure SetPattern(Value: Boolean);
    function GetStartPos: TZStartPos;
    procedure SetStartPos(Value: TZStartPos);
    function GetSample: string;
    procedure SetSample(Value: string);
    function GetIncrSearch: Boolean;
    procedure SetIncrSearch(Value: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    procedure Execute;
    property DataSet: TDataSet read FDataSet write FDataSet;
    property DataField: string read FDataField write FDataField;
    property Sample: string read GetSample write SetSample;
    property FieldName: string read FFieldName write FFieldName;
    property Simile: TZLocateSimile read GetSimile write SetSimile;
    property CaseSensitive: Boolean read GetCaseSensetive write SetCaseSensetive;
    property IsPattern: Boolean read GetPattern write SetPattern;
    property StartPos: TZStartPos read GetStartPos write SetStartPos;
    property IncrSearch: Boolean read GetIncrSearch write SetIncrSearch default False;
  published


  end;


procedure Localizar(DataSet: TDataSet; sNomeDoCampo: string; vValorDoCampo: Variant; bMaiusMinus: Boolean; bLocalizaParte: Boolean );


var
  frmLocalizar: TfrmLocalizar;

procedure Register;

implementation

//uses udmVector;

{$R *.DFM}


procedure Localizar(DataSet: TDataSet; sNomeDoCampo: string; vValorDoCampo: Variant; bMaiusMinus: Boolean; bLocalizaParte: Boolean);
begin

//TLocateOption = (loCaseInsensitive, loPartialKey);

{
Locate('Company;Contact;Phone',
       VarArrayOf(['Sight Diver', 'P', '831-431-1000']),
       [loPartialKey]);
}

 if (bMaiusMinus = True) and (bLocalizaParte = True) then
  begin
   DataSet.Locate(sNomeDoCampo,VarArrayOf([vValorDoCampo]), [loPartialKey]);
  end
 else if (bMaiusMinus = False) and (bLocalizaParte = False) then
  begin
   DataSet.Locate(sNomeDoCampo,VarArrayOf([vValorDoCampo]), []);
  end
 else if (bMaiusMinus = True) and (bLocalizaParte = False) then
  begin
   DataSet.Locate(sNomeDoCampo,VarArrayOf([vValorDoCampo]), [loCaseInsensitive]);
  end
 else if (bMaiusMinus = False) and (bLocalizaParte = True) then
  begin
   DataSet.Locate(sNomeDoCampo,VarArrayOf([vValorDoCampo]), [loPartialKey,loCaseInsensitive]);
  end;

end;


{ Execute a find dialog }
procedure TfrmLocalizar.Execute;
var
  FieldSearch: TField;
begin
{
  if not Assigned(DataSet) then Exit;
  FieldSearch := DataSet.FindField(FieldName);
  if FieldSearch = nil then Exit;

  case GetDataType(FieldSearch) of
    zftUnknown:
      Exit;
    zftString:
      begin
        cbxCaseSensitive.Enabled := True;
        cbxPattern.Enabled       := True;
        cmbSimile.Enabled        := True;
      end;
    zftDate:
      begin
        cbxCaseSensitive.Enabled := False;
        cbxPattern.Enabled       := True;
        cmbSimile.Enabled        := True;
      end;
    zftNumeric :
      begin
        Simile := lsExact;
        cbxCaseSensitive.Enabled := False;
        cbxPattern.Enabled       := False;
        cmbSimile.Enabled        := False;
      end;
  end;
  Caption := ResStr(SFindBy)+FieldSearch.DisplayName;
}
  ShowModal;
end;

{***************** TZFindDialog implementation *****************}

{ Class constructor }
constructor TfrmLocalizar.Create(AOwner: TComponent);
begin
//  FSimile        := lsPartialStart;
  FCaseSensitive := False;
  FIsPattern     := False;
//  FStartPos      := spAll;
  FDataSet       := nil;
  FDataField     := '';
  inherited Create(AOwner);
end;

{ Process notification method }

{
procedure TLocalizarDialogo.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (AComponent = FDataset ) and (Operation = opRemove) then
    FDataset := nil;

end;
}
{ Execute find dialog }
{
procedure TLocalizarDialogo.Execute;
var
  FindDialog: TfrmLocalizar;
begin

  if not Assigned(FDataSet) or (FDataField = '') then Exit;

  Application.CreateForm(TfrmLocalizar, frmLocalizar);
  try
    FindDialog.DataSet    := FDataSet;
    FindDialog.FieldName  := FDataField;
//    FindDialog.Simile     := Simile;
    FindDialog.CaseSensitive := CaseSensitive;
    FindDialog.IsPattern  := IsPattern;
//    FindDialog.StartPos   := StartPos;
    FindDialog.IncrSearch := IncrSearch;
    FindDialog.Execute;
//    Simile        := FindDialog.Simile;
    CaseSensitive := FindDialog.CaseSensitive;
    IsPattern     := FindDialog.IsPattern;
//    StartPos      := FindDialog.StartPos;
    IncrSearch    := FindDialog.IncrSearch;
  finally
    FindDialog.Free;
  end;
end;
}
{ Get pattern }
function TfrmLocalizar.GetSample: string;
begin
  Result := edtSample.Text;
end;

{ Set pattern }
procedure TfrmLocalizar.SetSample(Value: string);
begin
  edtSample.Text := Value;
end;

{ Get similar }
function TfrmLocalizar.GetSimile: TZLocateSimile;
begin
{
  if cmbSimile.Enabled then
    Result := TZLocateSimile(cmbSimile.ItemIndex)
  else
    Result := lsExact;
}
end;

{ Set similar }
procedure TfrmLocalizar.SetSimile(Value: TZLocateSimile);
begin
//  cmbSimile.ItemIndex := Ord(Value);
end;

{ Get case sensetive }
function TfrmLocalizar.GetCaseSensetive: Boolean;
begin
  Result := cbxSensivel.Checked;
end;

{ Set case sensitive }
procedure TfrmLocalizar.SetCaseSensetive(Value: Boolean);
begin
  cbxSensivel.Checked := Value;
end;

{ Get incremental search }
function TfrmLocalizar.GetIncrSearch: Boolean;
begin
//  Result := cbxIncSearch.Checked;
end;

{ Set incremental search }
procedure TfrmLocalizar.SetIncrSearch(Value: Boolean);
begin
//  cbxIncSearch.Checked := Value;
end;

{ Get search pattern }
function TfrmLocalizar.GetPattern: Boolean;
begin
//  Result := cbxPattern.Checked;
end;

{ Set search pattern }
procedure TfrmLocalizar.SetPattern(Value: Boolean);
begin
//  cbxPattern.Checked := Value;
end;

{ Get start position }
function TfrmLocalizar.GetStartPos: TZStartPos;
begin
//  Result := TZStartPos(cmbStartPos.ItemIndex);
end;

{ Set start position }
procedure TfrmLocalizar.SetStartPos(Value: TZStartPos);
begin
//  cmbStartPos.ItemIndex := Ord(Value);
end;

{ On close button click }
procedure TfrmLocalizar.acCloseExecute(Sender: TObject);
begin
  Close;
end;

{ On form show event }
procedure TfrmLocalizar.FormShow(Sender: TObject);
begin
//  edtSampleChange(edtSample);
end;

{ Find button click event }
procedure TfrmLocalizar.acFindExecute(Sender: TObject);
begin
 Localizar(Self.DataSet, Self.DataField, edtSample.Text, cbxSensivel.Checked, cbxParte.Checked);
end;

{ Find Next button click event }
procedure TfrmLocalizar.acFindNextExecute(Sender: TObject);
begin
{
  if not FindAdvanced(DataSet, FieldName, Sample,
    True, CaseSensitive, IsPattern, Simile, StartPos) then
    MessageDlg(ResStr(SNoMoreRecords),mtInformation,[mbOk],0);
}
end;

{ On sample change event }
procedure TfrmLocalizar.edtSampleChange(Sender: TObject);
begin
{
  if edtSample.Text = '' then
  begin
    btnFindNext.Enabled := False;
    btnFind.Enabled     := False;
  end
  else
  begin
    btnFindNext.Enabled := True;
    btnFind.Enabled     := True;
  end;
  if cbxIncSearch.Checked and (edtSample.Text <> '') then
  begin
    FindAdvanced(DataSet, FieldName, Sample, False,
      CaseSensitive, IsPattern, lsPartialStart, spAll);
  end;
}
end;

{**********************************************************}

{ Register component in a component pallette }
procedure Register;
begin
//  RegisterComponents(ZEOS_PALETTE, [TLocalizarDialogo]);
end;

procedure TfrmLocalizar.FormCreate(Sender: TObject);
begin
{
  Caption              := ResStr(SFindCaption);
  btnFind.Caption      := ResStr(SFindItem);
  btnFindNext.Caption  := ResStr(SFindNextItem);
  btnClose.Caption     := ResStr(SCancelItem);
  lblSample.Caption    := ResStr(SSampleItem);
  lblStartPos.Caption  := ResStr(SStartItem);
  cmbStartPos.Items[0] := ResStr(SForwardItem);
  cmbStartPos.Items[1] := ResStr(SBackwardItem);
  cmbStartPos.Items[2] := ResStr(SAllItem);
  lblSimile.Caption    := ResStr(SSimilarItem);
  cmbSimile.Items[0]   := ResStr(SAnyPartItem);
  cmbSimile.Items[1]   := ResStr(SWholeFieldItem);
  cmbSimile.Items[2]   := ResStr(SFromBeginItem);
  cbxCaseSensitive.Caption := ResStr(SCaseCaption);
  cbxPattern.Caption   := ResStr(SRegularCaption);
  cbxIncSearch.Caption := ResStr(SIncSearch);

  cmbStartPos.ItemIndex := 2;
  cmbSimile.ItemIndex   := 1;
}
end;

end.





