Unit FindIT;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids, ComCtrls, Dialogs;

type
  TFindITForm = class(TForm)
    GroupBox2: TGroupBox;
    gResultado: TDBGrid;
    dsQuery: TDataSource;
    Query: TQuery;
    Animate: TAnimate;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnExecutar: TBitBtn;
    btnClear: TSpeedButton;
    cbCampos1: TComboBox;
    cbOperadores1: TComboBox;
    cDS_CRITERIO1: TEdit;
    cbCampos2: TComboBox;
    cbOperadores2: TComboBox;
    cDS_CRITERIO2: TEdit;
    cbBind: TComboBox;
    btnMais: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure cbOperadores1Change(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure cbOperadores2Change(Sender: TObject);
    procedure cbCampos1Change(Sender: TObject);
    procedure cDS_CRITERIO1KeyPress(Sender: TObject; var Key: Char);
    procedure cDS_CRITERIO2KeyPress(Sender: TObject; var Key: Char);
    procedure cbCampos2Change(Sender: TObject);
    procedure cDS_CRITERIO1Change(Sender: TObject);
    procedure cDS_CRITERIO2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);

    procedure SetLines(Value : TStrings) ;
    function GetLines: TStrings ;
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    SrchFld1, SrchFld2 : TField;

    aCampos : array[0..19] of string ;
    aOperadores : array[0..6] of string ;
    aBind : array[0..1] of string ;
    DefaultSQL: String ;
  public
    { Public declarations }
    vCustomConstraint, vOrderBy : String ;
    vAutoOpen : boolean ;
    FFields : TStrings ;
    Property Properties: TStrings Read GetLines Write SetLines ;
  end;

var
  FindITForm: TFindITForm;

type
  ENotFound = class (Exception) ;

implementation

{$R *.DFM}

procedure TFindITForm.FormShow(Sender: TObject);
var
  i: integer ;
begin

  try

    DefaultSQL := Query.SQL.Strings[0] ;

    // if vAutoOpen then Query.Open
    if vAutoOpen then Query.Open
    else begin
      Query.Close ;
      Query.SQL.Clear ;
      Query.SQL.Add( DefaultSQL + ' WHERE ROWID = '''' ' ) ;
      Query.Open ;
    end ;

    // nao precisava usar array, poderia usar o
    // conteudo das TStrings e dos ComboBoxs, mas...
    for i:=0 to (FFields.Count - 1) do begin
      aCampos[i] := FFields.Strings[i] ;
    end;

    cbCampos2.Items.Assign(cbCampos1.Items) ;
//    DefaultSQL := Query.SQL.Strings[0] ;

    cbCampos1.ItemIndex := 0 ;
    cbOperadores1.ItemIndex := 0 ;
    cDS_CRITERIO1.Text := '' ;

    cbBind.ItemIndex := 0 ;
    cbCampos2.ItemIndex := 0 ;
    cbOperadores2.ItemIndex := 0 ;
    cDS_CRITERIO2.Text := '' ;

    btnMais.Caption := '&>>' ;

    FindITForm.Height := 323 ;

    cDS_CRITERIO1.SetFocus ;

  except

    On Exception do
     MessageDlg('ERRO de programacao: ' + #13 +
                'Uma propriedade do componente AppFind' + #13 +
                'deve estar incorreta.' + #13 +
                'VERIFIQUE !',
                 mtInformation,
                 [mbOk], 0) ;

  end;

end;

procedure TFindITForm.btnExecutarClick(Sender: TObject);
var

  MySQL, c : string ;
  s, p, l : string[1] ;

begin

  s:= ' ' ;

  // converte virgula em ponto
  c := cDS_CRITERIO1.Text ;
  while Pos(',', c) > 0 do
    c[Pos(',', c)] := '.' ;

  cDS_CRITERIO1.Text := c ;

  if ((Query.FindField(aCampos[cbCampos1.ItemIndex]).DataType = ftString ) or
    (cbOperadores1.ItemIndex = 6)) then p := ''''
  else
    p := '' ;

  if cbOperadores1.ItemIndex = 6 then l := '%'
  else l := '' ;

  MySQL := DefaultSQL + ' WHERE' ;
  MySQL := MySQL + s + aCampos[cbCampos1.ItemIndex] + s + aOperadores[cbOperadores1.ItemIndex] + s ;

  if (Query.FindField(aCampos[cbCampos1.ItemIndex]).DataType = ftDateTime ) then begin
    p:= '''' ;
    MySQL := MySQL + 'to_date(''' + cDS_CRITERIO1.Text + ''', ''dd/mm/yyyy'' )' ;
  end
  else MySQL := MySQL + p + l + cDS_CRITERIO1.Text + l + p ;

  if cDS_CRITERIO2.Text <> '' then begin

    // converte virgula em ponto
    c := cDS_CRITERIO2.Text ;
    while Pos(',', c) > 0 do
      c[Pos(',', c)] := '.' ;

    cDS_CRITERIO2.Text := c ;

    if ((Query.FindField(aCampos[cbCampos2.ItemIndex]).DataType = ftString ) or (cbOperadores2.ItemIndex = 6)) then p := ''''
    else p := '' ;

    if cbOperadores2.ItemIndex = 6 then l := '%'
    else l := '' ;

    MySQL := MySQL + s + aBind[cbBind.ItemIndex] ;
    MySQL := MySQL + s + aCampos[cbCampos2.ItemIndex] + s + aOperadores[cbOperadores2.ItemIndex] + s ;

    if (Query.FindField(aCampos[cbCampos2.ItemIndex]).DataType = ftDateTime ) then begin
      p:= '''' ;
      MySQL := MySQL + 'to_date(''' + cDS_CRITERIO2.Text + ''', ''dd/mm/yyyy'' )' ;
    end
    else MySQL := MySQL + p + l + cDS_CRITERIO2.Text + l + p ; // estava criterio1 - Amilton

  end ;

  if vCustomConstraint <> '' then
  MySQL := MySQL + s + 'AND' + s + vCustomConstraint + s ;

  if vOrderBy <> ''
  then MySQL := MySQL + s + 'ORDER BY' + s + vOrderBy ;

  Try

//  SHOWMESSAGE(MYSQL) ;

    Animate.Active := True ;
    Query.Close ;
    Query.Sql.Clear ;
    Query.Sql.Add(MySQL) ;
    Query.Open ;

    if Query.RecordCount = 0 then
      MessageDlg('NENHUM registro foi encontrado com' + #13 + ' o critério selecionado !' ,
                  mtInformation,
                  [mbOk], 0)
    else begin
//      MessageDlg(IntToStr(Query.RecordCount) + ' registros foram LOCALIZADOS !' ,
//                 mtInformation,
//                 [mbOk], 0) ;
    end;

  Except
    On Exception do
      MessageDlg('Não foi possível executar SQL.' + #13 + #13 + MySQL ,
                  mtInformation,
                  [mbOk], 0);

  end;

  Animate.Active := False ;

  cDS_CRITERIO1.SetFocus ;

end;

procedure TFindITForm.cbOperadores1Change(Sender: TObject);
begin
 if ((cbOperadores1.ItemIndex = 2) OR (cbOperadores1.ItemIndex = 4)) then begin

    cbBind.ItemIndex:= 0 ;
    cbCampos2.ItemIndex:= cbCampos1.ItemIndex ;
    cbOperadores2.ItemIndex := cbOperadores1.ItemIndex + 1 ;

    FindITForm.Height := 370 ;

  end ;

  cDS_CRITERIO1.SetFocus ;

end;

procedure TFindITForm.btnMaisClick(Sender: TObject);
begin
  if btnMais.Caption = '&<<' then begin
    FindITForm.Height := 323 ;
    cDS_CRITERIO2.Text := '';
    btnMais.Caption := '&>>' ;
  end
  else begin
    FindITForm.Height := 370 ;
    cDS_CRITERIO2.Text := '';
    btnMais.Caption := '&<<' ;
  end;
end;

procedure TFindITForm.cbOperadores2Change(Sender: TObject);
begin
  cDS_CRITERIO2.SetFocus ;
end;

procedure TFindITForm.cbCampos1Change(Sender: TObject);
begin
  cDS_CRITERIO1.Text := '';
end;

procedure TFindITForm.cDS_CRITERIO1KeyPress(Sender: TObject;
  var Key: Char);
begin

  if Query.Active = False then Exit ;

  SrchFld1 := dsQuery.Dataset.FieldByName(aCampos[cbCampos1.ItemIndex]);
  if Assigned(SrchFld1) and (Key > ' ') and not (SrchFld1.IsValidChar(Key)) then
  begin
    MessageBeep(0);
    Key := #0;
  end;
end;

procedure TFindITForm.cDS_CRITERIO2KeyPress(Sender: TObject;
  var Key: Char);
begin

  if Query.Active = false then Exit ;

  if Assigned(SrchFld2) and (Key > ' ') and not (SrchFld2.IsValidChar(Key)) then
  begin
    MessageBeep(0);
    Key := #0;
  end;

end;

procedure TFindITForm.cbCampos2Change(Sender: TObject);
begin

  SrchFld2 := dsQuery.Dataset.FieldByName(aCampos[cbCampos2.ItemIndex]);

  cDS_CRITERIO2.Text := '';

end;

procedure TFindITForm.cDS_CRITERIO1Change(Sender: TObject);
begin
  btnExecutar.Enabled := cDS_CRITERIO1.Text <> '';
end;

procedure TFindITForm.cDS_CRITERIO2Change(Sender: TObject);
begin
  btnExecutar.Enabled := cDS_CRITERIO2.Text <> '';
end;

procedure TFindITForm.FormCreate(Sender: TObject);
begin

  FFields := TStringList.Create ;

  aOperadores[0] := '=' ;
  aOperadores[1] := '<>' ;
  aOperadores[2] := '>' ;
  aOperadores[3] := '<' ;
  aOperadores[4] := '>=' ;
  aOperadores[5] := '<=' ;
  aOperadores[6] := 'LIKE' ;

  aBind[0] := 'AND' ;
  aBind[1] := 'OR' ;

end;

procedure TFindITForm.btnClearClick(Sender: TObject);
begin

  cbCampos1.ItemIndex := 0 ;
  cbOperadores1.ItemIndex := 0;
  cDS_CRITERIO1.Text := '' ;

  cbBind.ItemIndex := 0 ;
  cbCampos2.ItemIndex := 0 ;
  cbOperadores2.ItemIndex := 0;
  cDS_CRITERIO2.Text := '' ;

end;

function TFindITForm.GetLines: TStrings ;
begin
  Result := FFields ;
end;

procedure TFindITForm.SetLines(Value: TStrings);
begin
  FFields.Assign(Value);
end;

procedure TFindITForm.FormDestroy(Sender: TObject);
begin
  FFields.Free ;
end;

end.
