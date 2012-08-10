unit ufrmFiltrar;

interface

{$R *.DCR}

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, Db, Menus, Dialogs, Mask, DBCtrls, Math, DBClient, DBgrids,
  Grids;

// Maximum quantity of supported Memo/Blob fields
const
  MAX_BLOB_COUNT = 5;


type
{***************** TZFilterDlg definition ********************}
TFiltrarDialog = class(TComponent)
private
  FDataSet: TDataSet;
protected
  function  GetTextFilter(const AFilter: string; Direct: Boolean): string;
  procedure Notification(AComponent: TComponent; Operation: TOperation); override;
public
  function  Execute: Boolean;
  procedure Sort(FieldName: string);
//  procedure Sort(Coluna: TColumn; cdsDados: TClientDataSet);
  procedure SortDesc(FieldName: string);
  procedure ClearFilter;
  procedure SetFilter(const Filter: string);
  function  GetFilter: string;
  procedure SetIncludeFilter(FieldName: string);
  procedure SetExcludeFilter(FieldName: string);
published
  property DataSet: TDataSet read FDataSet write FDataSet;
end;


TfrmFiltrar = class(TForm)
 mmFilter: TMemo;
 gbField:  TGroupBox;
 btnIgual: TSpeedButton;
 btnAnd: TSpeedButton;
 btnDiferente: TSpeedButton;
 btnMenor: TSpeedButton;
 btnOr: TSpeedButton;
 btnNot: TSpeedButton;
 btnMaior: TSpeedButton;
 btnMenorIgual: TSpeedButton;
 btnMaiorIgual: TSpeedButton;
 btnXor: TSpeedButton;
 btnField: TSpeedButton;
 btnParentEsquerdo: TSpeedButton;
 btnParentDireito: TSpeedButton;
 lsbFields: TListBox;
    dbgFiltro: TDBGrid;
    dtsFiltro: TDataSource;
    cdsCondicoes: TClientDataSet;
    cdsCampos: TClientDataSet;
    cdsCondicoesDescricao: TStringField;
    cdsCondicoesValor: TStringField;
    cdsCamposNome: TStringField;
    cdsCamposDescricao: TStringField;
    cdsFiltro: TClientDataSet;
    cdsFiltroCampoNome: TStringField;
    cdsFiltroCampoDesc: TStringField;
    cdsFiltroCondicao: TStringField;
    cdsFiltroCondicaoDesc: TStringField;
    cdsFiltroE_OU: TStringField;
    cdsE_OU: TClientDataSet;
    cdsFiltroE_OU_Desc: TStringField;
    cdsFiltroValor: TStringField;
    cdsE_OUE_OU: TStringField;
    cdsE_OUE_OU_Desc: TStringField;
    btnSetarFiltro: TSpeedButton;
    btnApagarFiltro: TSpeedButton;
 procedure FormShow(Sender: TObject);
 procedure btnFilterClick(Sender: TObject);
 procedure lsbFieldsDblClick(Sender: TObject);
 procedure btnSetFilterClick(Sender: TObject);
 procedure btnDelFilterClick(Sender: TObject);
 procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
 procedure btnDiferenteClick(Sender: TObject);
 procedure btnAndClick(Sender: TObject);
 procedure btnNotClick(Sender: TObject);
 procedure btnOrClick(Sender: TObject);
 procedure btnXorClick(Sender: TObject);
 procedure btnIgualClick(Sender: TObject);
 procedure btnMenorClick(Sender: TObject);
 procedure btnMaiorClick(Sender: TObject);
 procedure btnMenorIgualClick(Sender: TObject);
 procedure btnMaiorIgualClick(Sender: TObject);
 procedure btnSomaClick(Sender: TObject);
 procedure btnSubtraiClick(Sender: TObject);
 procedure btnDivideClick(Sender: TObject);
 procedure btnMultiplicaClick(Sender: TObject);
 procedure btnPotenciaClick(Sender: TObject);
 procedure btnPercentualClick(Sender: TObject);
 procedure btnParentEsquerdoClick(Sender: TObject);
 procedure btnParentDireitoClick(Sender: TObject);
 procedure btnSetarFiltroClick(Sender: TObject);
private
 FFilterDlg: TFiltrarDialog;
 function  GetFilter: string;
 function  GetDataSet: TDataSet;
public
 property Filter: string read GetFilter;
 function Execute: Boolean;
 property DataSet: TDataSet read GetDataSet;

end;

var
  frmFiltrar: TfrmFiltrar;

implementation

{$R *.DFM}

{ Format field value }
function ConvertValField(Field: TField): string;
var
  Temp: Char;
begin
  Result := '';
  Temp := DecimalSeparator;
  DecimalSeparator := '.';
  if not Assigned(Field) then Exit;
  case Field.DataType of
    ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency
    {$IFNDEF VER100}, ftLargeInt {$ENDIF}, ftAutoInc :
      Result := Field.AsString;
    else
      Result := '''' + Field.AsString + '''';
  end;
  DecimalSeparator := Temp;
end;

{***************** TZFilterDialog implementation *****************}

{ Process notification method }
procedure TFiltrarDialog.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FDataset) and (Operation = opRemove) then
    FDataset := nil;
end;

{ Show form and set filter equation }
function TFiltrarDialog.Execute: Boolean;
var
  frmFilter: TfrmFiltrar;
begin
  Application.CreateForm(TfrmFiltrar, frmFilter);
  try
    frmFilter.FFilterDlg := Self;
    Result := frmFilter.Execute;
  finally
    frmFilter.Destroy;
  end;
end;

{ Clear filter equation }
procedure TFiltrarDialog.ClearFilter;
begin
  with DataSet do
  begin
    Filtered := False;
    Filter := '';
  end;
end;

{ Ascending sort by field }
procedure TFiltrarDialog.Sort(FieldName: string);
begin

{
var
  Field: TField;
begin
  if not Assigned(FDataset) then Exit;
  Field := FDataset.FieldByName(FieldName);
  if not Assigned(Field) then Exit;

  with FDataset do
    if Field.FieldKind = fkData then
      SortByField(Field.FieldName)
    else if Field.FieldKind = fkLookup then
      SortByField(Field.KeyFields);
}
end;



{ Descending sort by field }
procedure TFiltrarDialog.SortDesc(FieldName: string);
var
  Field: TField;
begin
  if not Assigned(FDataset) then Exit;
  Field := FDataset.FieldByName(FieldName);
  if not Assigned(Field) then Exit;

  with FDataset do
    if Field.FieldKind = fkData then
//      SortDescByField(Field.FieldName)
    else if Field.FieldKind = fkLookup then
//      SortDescByField(Field.KeyFields);
end;

{ Filter only include the current field value }
procedure TFiltrarDialog.SetIncludeFilter(FieldName: string);
var
  FilterStr, AFieldName: string;
  Field: TField;
begin
  if not Assigned(FDataset) then Exit;
  Field := FDataset.FieldByName(FieldName);

  if not Assigned(Field) then Exit;

  with Field.DataSet do
  begin
    if not (Field.FieldKind in [fkData, fkLookup]) then Exit;
    if Field.FieldKind = fkLookup then
     begin
      AFieldName := Field.KeyFields;
      Field      := FDataset.FieldByName(Field.KeyFields);
     end
    else
     begin
      AFieldName := Field.FieldName;
     end;
    FilterStr := Filter;
    if FilterStr <> '' then
      FilterStr := '('+FilterStr+') AND ';
    if Pos(' ', AFieldName) > 0 then
      AFieldName := '['+AFieldName+']';
    FilterStr := FilterStr + AFieldName + '=' + ConvertValField(Field);
    try
      Filter := FilterStr;
      Filtered := True;
    except on E : Exception do begin
//ANDRE        MessageDlg(ResStr(SFilterError),mtError,[mbOk], 0);
        Filtered := False;
        Filter := '';
      end;
    end;
  end;
end;

{ Get dataset value }
function TfrmFiltrar.GetDataSet: TDataSet;
begin
  if Assigned(FFilterDlg) then
    Result := FFilterDlg.DataSet
  else
    Result := nil;
end;

{ On form show event }
procedure TfrmFiltrar.FormShow(Sender: TObject);
var
  I: Integer;
begin
  mmFilter.Lines.Text := FFilterDlg.GetFilter;
  lsbFields.Items.Clear;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRIA NOVAS OPÇÕES DE FILTRO.                                             //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsCampos.Active := False;
  cdsCampos.CreateDataSet;
  cdsCampos.Active := True;

  //////////////////////////////////////////////////////////////////////////////
  cdsCondicoes.Active := False;
  cdsCondicoes.CreateDataSet;
  cdsCondicoes.Active := True;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Igual';
  cdsCondicoesValor.Value     := '=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Diferente';
  cdsCondicoesValor.Value     := '<>';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Maior';
  cdsCondicoesValor.Value     := '>';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Maior Igual';
  cdsCondicoesValor.Value     := '>=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Menor';
  cdsCondicoesValor.Value     := '<';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Menor Igual';
  cdsCondicoesValor.Value     := '<=';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem a Direita do Valor';
  cdsCondicoesValor.Value     := 'LIKE%';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem a Esquerda do Valor';
  cdsCondicoesValor.Value     := '%LIKE';
  cdsCondicoes.Post;

  cdsCondicoes.Insert;
  cdsCondicoesDescricao.Value := 'Contem no Meio do Valor';
  cdsCondicoesValor.Value     := '%LIKE%';
  cdsCondicoes.Post;

  cdsE_OU.Active := False;
  cdsE_OU.CreateDataSet;
  cdsE_OU.Active := True;

  cdsE_OU.Insert;
  cdsE_OUE_OU.Value      := 'AND';
  cdsE_OUE_OU_Desc.Value := 'E';
  cdsE_OU.Post;

  cdsE_OU.Insert;
  cdsE_OUE_OU.Value      := 'OR';
  cdsE_OUE_OU_Desc.Value := 'OU';
  cdsE_OU.Post;
  //////////////////////////////////////////////////////////////////////////////


  cdsFiltro.Active := False;
  cdsFiltro.CreateDataSet;
  cdsFiltro.Active := True;


  for I := 0 to DataSet.FieldCount - 1 do
   begin

    if DataSet.Fields[I].Visible then
     begin
      lsbFields.Items.Add(DataSet.Fields[I].DisplayName);
     end;

     ///////////////////////////////////////////////////////////////////////////
     //                                                                       //
     // CRIA NOVAS OPÇÕES DE FILTRO.                                          //
     //                                                                       //
     ///////////////////////////////////////////////////////////////////////////
     cdsCampos.Insert;
     cdsCamposNome.Value      := DataSet.Fields[I].FieldName;
     cdsCamposDescricao.Value := DataSet.Fields[I].DisplayName;
     cdsCampos.Post;
   end;

  lsbFields.ItemIndex := 0;

end;

{ Set a filter }
function TfrmFiltrar.Execute: Boolean;
begin
  Position := poScreenCenter;
  Result   := (ShowModal = mrOk);
end;

{ Decode filter string }
function TFiltrarDialog.GetTextFilter(const AFilter: string; Direct: Boolean): string;

{ Convert field desc to field name }
  function ConvertNameField(AFieldName: string): string;
  var
    Field: TField;
    I: Integer;
  begin
    Result := AFieldName;
    if (AFieldName[1] = '[') and (AFieldName[Length(AFieldName)] = ']') then
      AFieldName := Copy(AFieldName, 2, Length(AFieldName) - 2);

    if Direct then with DataSet do
    begin
      for I := 0 to FieldCount - 1 do
        if Fields[I].DisplayName = AFieldName then
        begin
          Result := Fields[I].FieldName;
          if Pos(' ',Result) > 0 then
            Result := '['+ Result +']';
          Break;
        end
    end
    else
    begin
      Field := DataSet.FindField(AFieldName);
      if not Assigned(Field) then Exit;
      Result := Field.DisplayName;
      if Pos(' ',Result) > 0 then
        Result := '['+ Result +']';
    end;
  end;

const
  SkipToken = ' OR NOT XOR AND LIKE ';
var
  Sub, Token: string;
begin
  Result := '';
  Sub := AFilter;
{
  while Sub <> '' do
  begin

    if ExtractTokenEx(Sub, Token) = ttAlpha then
      if Pos(UpperCase(Token), SkipToken) = 0 then
        Result := Result + ConvertNameField(Token)
      else
        Result := Result + ' ' + Token + ' '
    else
     Result := Result + Token;

  end;
}
end;

{ Setting filter equation }
procedure TFiltrarDialog.SetFilter(const Filter: string);
begin
  DataSet.Filter   := GetTextFilter(Filter, True);
  DataSet.Filtered := True;
end;

{ Get filter equation }
function TFiltrarDialog.GetFilter: string;
begin
  if DataSet.Filtered then
    Result := GetTextFilter(DataSet.Filter, False)
  else
    Result := '';
end;

{ Filter only exclude the current field value }
procedure TFiltrarDialog.SetExcludeFilter(FieldName: string);
var
  FilterStr, AFieldName: string;
  Field: TField;
begin
  if not Assigned(FDataset) then Exit;
  Field := FDataset.FieldByName(FieldName);
  if not Assigned(Field) then Exit;
  with Field.DataSet do
  begin
    if not (Field.FieldKind in [fkData, fkLookup]) then Exit;
    if Field.FieldKind = fkLookup then
     begin
      AFieldName := Field.KeyFields;
      Field      := FDataset.FieldByName(Field.KeyFields);
     end
    else
     begin
      AFieldName := Field.FieldName;
     end;


    FilterStr := Filter;
    if FilterStr <> '' then
      FilterStr := '('+FilterStr+') AND ';
    if Pos(' ', AFieldName) > 0 then
      AFieldName := '['+AFieldName+']';
    FilterStr := FilterStr+AFieldName+'<>'+ConvertValField(Field);
    Filter    := FilterStr;
    Filtered  := True;
  end;
end;

{ On operation button click }
procedure TfrmFiltrar.btnFilterClick(Sender: TObject);
var
  EnterStr: string;
begin
  with Sender as TSpeedButton do
  if Name <> 'btnField' then
  begin
    EnterStr := Caption;
    if Length(EnterStr) = 3 then
      EnterStr := ' ' + EnterStr + ' ';
    mmFilter.SetSelTextBuf(PChar(EnterStr));
  end else
    lsbFieldsDblClick(lsbFields)
end;

{ On field click }
procedure TfrmFiltrar.lsbFieldsDblClick(Sender: TObject);
var
  EnterStr: string;
begin
  EnterStr := lsbFields.Items[lsbFields.ItemIndex];
  if Pos(' ', EnterStr) > 0 then
    EnterStr := '[' + EnterStr + ']'
  else
    EnterStr := ' ' + EnterStr + ' ';
  mmFilter.SetSelTextBuf(PChar(EnterStr));
end;

{ Get filter equation string }
function TfrmFiltrar.GetFilter: string;
begin
  Result := mmFilter.Lines.Text;
end;

{ On set filter button click }
procedure TfrmFiltrar.btnSetFilterClick(Sender: TObject);
begin
  FFilterDlg.SetFilter(Filter);
  ModalResult := mrOk;
end;

{ On clear filter button click }
procedure TfrmFiltrar.btnDelFilterClick(Sender: TObject);
begin
  FFilterDlg.ClearFilter;
  ModalResult := mrOk;
end;

{ On key down event }
procedure TfrmFiltrar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Key := 0;
    ModalResult := mrCancel;
  end;
  if (ssCtrl in Shift) and (Key = VK_RETURN) then
  begin
    Key := 0;
    btnSetFilterClick(Sender);
  end;
end;

procedure TfrmFiltrar.btnDiferenteClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnDiferente.Caption;
end;

procedure TfrmFiltrar.btnAndClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnAnd.Caption;
end;

procedure TfrmFiltrar.btnNotClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnNot.Caption;
end;

procedure TfrmFiltrar.btnOrClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnOr.Caption;
end;

procedure TfrmFiltrar.btnXorClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnXor.Caption;
end;

procedure TfrmFiltrar.btnIgualClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnIgual.Caption;
end;

procedure TfrmFiltrar.btnMenorClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnMenor.Caption;
end;

procedure TfrmFiltrar.btnMaiorClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnMaior.Caption;
end;

procedure TfrmFiltrar.btnMenorIgualClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnMenorIgual.Caption;
end;

procedure TfrmFiltrar.btnMaiorIgualClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnMaiorIgual.Caption;
end;

procedure TfrmFiltrar.btnSomaClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnSoma.Caption;
end;

procedure TfrmFiltrar.btnSubtraiClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnSubtrai.Caption;
end;

procedure TfrmFiltrar.btnDivideClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnDivide.Caption;
end;

procedure TfrmFiltrar.btnMultiplicaClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnMultiplica.Caption;
end;

procedure TfrmFiltrar.btnPotenciaClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnPotencia.Caption;
end;

procedure TfrmFiltrar.btnPercentualClick(Sender: TObject);
begin
// mmFilter.Text := mmFilter.Text + btnPercentual.Caption;
end;

procedure TfrmFiltrar.btnParentEsquerdoClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnParentEsquerdo.Caption;
end;

procedure TfrmFiltrar.btnParentDireitoClick(Sender: TObject);
begin
 mmFilter.Text := mmFilter.Text + btnParentDireito.Caption;
end;

procedure TfrmFiltrar.btnSetarFiltroClick(Sender: TObject);
var
 sLinha:        string;
 sCampoNome:    string;
 sCondicao:     string;
 sValor:        string;
 sE_OU:         string;
begin
 sLinha        := '';
 sCampoNome    := '';
 sCondicao     := '';
 sValor        := '';
 sE_OU         := '';

 cdsFiltro.First;

 while not cdsFiltro.Eof do
  begin

   sCampoNome    := cdsFiltroCampoNome.Value;
   sCondicao     := cdsFiltroCondicao.Value;
   sValor        := cdsFiltroValor.Value;
   sE_OU         := cdsFiltroE_OU.Value;

   if sCondicao = 'LIKE%' then
    begin
     sCondicao := ' LIKE ';
     sValor    := '%' + sValor;
    end

   else if sCondicao = '%LIKE' then
    begin
     sCondicao := ' LIKE ';
     sValor    := sValor + '%';
    end

   else if sCondicao = '%LIKE%' then
    begin
     sCondicao := ' LIKE ';
     sValor    :=  '%' + sValor + '%';
    end;


   sLinha := sCampoNome +
             sCondicao  +
             ''''       +
             sValor     +
             ''''       +
             sE_OU;
   mmFilter.Lines.Add(sLinha);

{
   sLinha := cdsFiltroCampoNome.Value +
             cdsFiltroCondicao.Value  +
             ''''                     +
             cdsFiltroValor.Value     +
             ''''                     +
             cdsFiltroE_OU.Value;
   mmFilter.Lines.Add(sLinha);
}


   cdsFiltro.Next;
  end;

 DataSet.Filter   := Filter;
 DataSet.Filtered := True;
 //FFilterDlg.SetFilter(Filter);
 ModalResult := mrOk;
end;

end.

