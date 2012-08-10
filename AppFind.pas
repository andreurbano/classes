unit AppFind;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  StdCtrls, Buttons, FindIT ;

type
  TAppFind = class(TBitBtn)
  FLines1 : TStrings ;
  FLines2 : TStrings ;
  FLines3 : TStrings ;
  private
    { Private declarations }
    FDBName: String ;
    FSQL : String ;
    FEdit: String ;
    FOrder: String;
    FAutoOpen : Boolean ;
    FCustomConstraint : String ;
    FOnAfterShow: TNotifyEvent;
    procedure SetLines1(Value : TStrings) ;
    function GetLines1: TStrings ;
    procedure SetLines2(Value : TStrings) ;
    function GetLines2: TStrings ;
    procedure Click ; override ;
  public
    { Public declarations }
    vResult: String ;
    vResult2: String ;
    constructor Create(AOwner: TComponent) ; override ;
    destructor Destroy; override ;
    function GetResult : string ;
  published
    { Published declarations }
    Property DatabaseName : String Read FDBName Write FDBName  ;
    Property DefaultSQL : String Read FSQL Write FSQL ;
    Property EditControlName : String Read FEdit Write FEdit ;
    Property FieldsList: TStrings Read GetLines1 Write SetLines1 ;
    Property LabelsList: TStrings Read GetLines2 Write SetLines2 ;
    Property CustomConstraint : String Read FCustomConstraint Write FCustomConstraint ;
    Property OrderBy : String Read FOrder Write FOrder  ;
    Property AutoOpen : Boolean Read FAutoOpen Write FAutoOpen default True ;
    Property OnAfterShow: TNotifyEvent read FOnAfterShow write FOnAfterShow ; {Evento}
  end;

procedure Register;

implementation

constructor TAppFind.Create(AOwner: TComponent) ;
begin

  inherited Create(AOwner) ;

  FLines1 := TStringList.Create ;
  FLines2 := TStringList.Create ;

  FAutoOpen := True ;

  FDBName := 'DESENV' ;

  Height := 15;
  Width := 15 ;

  Try
    // Coloca o Bmp de ZoomIn do diretorio Delphi3/image/button
    Glyph.LoadFromFile('ZoomIn.bmp') ;
    NumGlyphs := 2;
  Except
    on Exception do ;
  end;

end;

destructor TAppFind.Destroy ;
begin
  FLines1.Free ;
  FLines2.Free ;
  inherited Destroy ;
end;

function TAppFind.GetResult: String ;
begin
  Try
    Result := vResult ;
  Except
    On Exception do ;
  end;
end;

procedure TAppFind.Click ;
var
  Temp :  TComponent ;
begin

  inherited Click; { perform standard handling, including calling handler }

  if (Nil = FindITForm) then
  Application.CreateForm(TFindITForm, FindITForm) ;

  With FindITForm do begin

    Try

      FFields.Clear ;
      FFields.Assign(FieldsList) ;

      vCustomConstraint := FCustomConstraint ;
      vOrderBy := FOrder ;
      vAutoOpen := FAutoOpen ;

      cbCampos1.Items.Clear ;
      cbCampos1.Items.Assign(LabelsList) ;
      Query.SQL.Clear ;
      Query.SQL.Add(DefaultSQL) ;

      // parte final da SQL => selecoes customizadas e ordenacao
      if FCustomConstraint <> '' then
      Query.SQL.Add( ' WHERE ' + FCustomConstraint ) ;

      if FOrder <> '' then
      Query.SQL.Add(' ORDER BY ' + FOrder) ;

//      ShowMessage(Query.SQL.Text) ;

      Query.DatabaseName := FDBName ;

      try

        Temp := Screen.ActiveForm.FindComponent(FEdit) ;

        if (ShowModal = mrOk) then begin
          vResult := Query.Fields[0].AsString ;
          vResult2 := Query.Fields[1].AsString ;
          if (Temp is TEdit) then begin
            (Temp As TEdit).Text := Query.Fields[0].AsString ;
          end;
        end
        else vResult := '' ;

        if (Temp is TEdit) then
        (Temp As TEdit).SetFocus ;

        if Assigned(FOnAfterShow) then OnAfterShow(Self) ;

      Except
        on Exception do;
      end;

    Except

      On Exception do begin
        MessageDlg('ERRO na localização do componente: ' + FEdit ,
                   mtInformation,
                   [mbOk], 0) ;
      end;
    end;

  end ;
end;

function TAppFind.GetLines1: TStrings ;
begin
  Result := FLines1 ;
end;

procedure TAppFind.SetLines1(Value: TStrings);
begin
  FLines1.Assign(Value);
end;

function TAppFind.GetLines2: TStrings ;
begin
  Result := FLines2 ;
end;

procedure TAppFind.SetLines2(Value: TStrings);
begin
  FLines2.Assign(Value);
end;

procedure Register;
begin
  RegisterComponents('AU - Extras', [TAppFind]);
end;

end.
