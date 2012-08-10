unit uArqTxtBradesco;

interface

uses
  Forms,
  SysUtils,
  Classes,
  Dialogs,
//a  Designintf,
//a  DesignEditors,
//a  DesignMenus,
  Variants,
  DBClient,
  DB;
type

 TLayout = class(TComponent)
  private
   FHeaderArqTxt:              string;
   FTransacaoArqTxt:           string;
   FTraillerArqTxt:            string;

   FHeaderDataSet:     TClientDataSet;
   FTransacoesDataSet: TClientDataSet;
   FTraillerDataSet:   TClientDataSet;

   FHeaderDataSource:     TDataSource;
   FTransacoesDataSource: TDataSource;
   FTraillerDataSource:   TDataSource;

   procedure AlimentaDataSet(ArqLayout: string; DataSet: TClientDataSet);

   function  GetHeaderArqTxt: string;
   procedure SetHeaderArqTxt( Value: string );

   function GetTransacaoArqTxt: string;
   procedure SetTransacaoArqTxt( Value: string );

   function GetTraillerArqTxt: string;
   procedure SetTraillerArqTxt( Value: string );

   function GetHeaderDataSet: TClientDataSet;
   procedure SetHeaderDataSet(Value: TClientDataSet);

   function GetTransacoesDataSet: TClientDataSet;
   procedure SetTransacoesDataSet(Value: TClientDataSet);

   function GetTraillerDataSet: TClientDataSet;
   procedure SetTraillerDataSet(Value: TClientDataSet);

   function GetHeaderDataSource: TDataSource;
   procedure SetHeaderDataSource(Value: TDataSource);

   function GetTransacoesDataSource: TDataSource;
   procedure SetTransacoesDataSource(Value: TDataSource);

   function GetTraillerDataSource: TDataSource;
   procedure SetTraillerDataSource(Value: TDataSource);

  public
   constructor Create(AOwner: TComponent); override;
   property HeaderDataSet:     TClientDataSet  read GetHeaderDataSet     write SetHeaderDataSet;
   property TransacoesDataSet: TClientDataSet  read GetTransacoesDataSet write SetTransacoesDataSet;
   property TraillerDataSet:   TClientDataSet  read GetTraillerDataSet   write SetTraillerDataSet;

   property HeaderDataSource:     TDataSource  read GetHeaderDataSource     write SetHeaderDataSource;
   property TransacoesDataSource: TDataSource  read GetTransacoesDataSource write SetTransacoesDataSource;
   property TraillerDataSource:   TDataSource  read GetTraillerDataSource   write SetTraillerDataSource;

  published

{a
   property Header:    string read FHeader    write FHeader;
   property Transacao: string read FTransacao write FTransacao;
   property Trailler:  string read FTrailler  write FTrailler;
}
   property HeaderArqTxt:    string read GetHeaderArqTxt    write SetHeaderArqTxt;
   property TransacaoArqTxt: string read GetTransacaoArqTxt write SetTransacaoArqTxt;
   property TraillerArqTxt:  string read GetTraillerArqTxt  write SetTraillerArqTxt;

{
   property HeaderDataSet:     TClientDataSet  read GetHeaderDataSet     write SetHeaderDataSet;
   property TransacoesDataSet: TClientDataSet  read GetTransacoesDataSet write SetTransacoesDataSet;
   property TraillerDataSet:   TClientDataSet  read GetTraillerDataSet   write SetTraillerDataSet;
}
 end;
////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////
 TArqTxtBradesco = class(TComponent)
  private
   FLayout:            TLayout;
   function GetLayout: TLayout;

  protected
  public
   constructor Create(AOwner: TComponent); override;


  published
   property Layout:  TLayout    read GetLayout;
 end;

{a
 TArqProperty = class(TStringProperty)
  public
   function GetAttributes : TPropertyAttributes; override;
   procedure Edit; override;
 end;
}

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('AU - Outros', [TArqTxtBradesco]);
//a  RegisterPropertyEditor(TypeInfo(string),TLayout,'Header',TArqProperty);
//a  RegisterPropertyEditor(TypeInfo(string),TLayout,'Transacao',TArqProperty);
//a  RegisterPropertyEditor(TypeInfo(string),TLayout,'Trailler',TArqProperty);
end;

constructor TArqTxtBradesco.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
 FLayout              := TLayout.Create(Self);
end;

constructor TLayout.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
 FHeaderDataSet := TClientDataSet.Create(Self);
 FHeaderDataSet.FieldDefs.Clear;
 FHeaderDataSet.FieldDefs.Add('POS_INI',  ftInteger);
 FHeaderDataSet.FieldDefs.Add('POS_FIM',  ftInteger);
 FHeaderDataSet.FieldDefs.Add('QTDE_DIG', ftInteger);
 FHeaderDataSet.FieldDefs.Add('TIPO',     ftString, 1);
 FHeaderDataSet.CreateDataSet;
 FHeaderDataSet.FieldByName('POS_INI').DisplayLabel  := 'Pos. Inicial';
 FHeaderDataSet.FieldByName('POS_FIM').DisplayLabel  := 'Pos. Final';
 FHeaderDataSet.FieldByName('QTDE_DIG').DisplayLabel := 'Qtde. de Díg.';
 FHeaderDataSet.FieldByName('TIPO').DisplayLabel     := 'Tipo';

 FTransacoesDataSet := TClientDataSet.Create(Self);
 FTransacoesDataSet.FieldDefs.Clear;
 FTransacoesDataSet.FieldDefs.Add('POS_INI',  ftInteger);
 FTransacoesDataSet.FieldDefs.Add('POS_FIM',  ftInteger);
 FTransacoesDataSet.FieldDefs.Add('QTDE_DIG', ftInteger);
 FTransacoesDataSet.FieldDefs.Add('TIPO',     ftString, 1);
 FTransacoesDataSet.CreateDataSet;

 FTransacoesDataSet.FieldByName('POS_INI').DisplayLabel  := 'Pos. Inicial';
 FTransacoesDataSet.FieldByName('POS_FIM').DisplayLabel  := 'Pos. Final';
 FTransacoesDataSet.FieldByName('QTDE_DIG').DisplayLabel := 'Qtde. de Díg.';
 FTransacoesDataSet.FieldByName('TIPO').DisplayLabel     := 'Tipo';

 FTraillerDataSet := TClientDataSet.Create(Self);
 FTraillerDataSet.FieldDefs.Clear;
 FTraillerDataSet.FieldDefs.Add('POS_INI',  ftInteger);
 FTraillerDataSet.FieldDefs.Add('POS_FIM',  ftInteger);
 FTraillerDataSet.FieldDefs.Add('QTDE_DIG', ftInteger);
 FTraillerDataSet.FieldDefs.Add('TIPO',     ftString, 1);
 FTraillerDataSet.CreateDataSet;
 FTraillerDataSet.FieldByName('POS_INI').DisplayLabel  := 'Pos. Inicial';
 FTraillerDataSet.FieldByName('POS_FIM').DisplayLabel  := 'Pos. Final';
 FTraillerDataSet.FieldByName('QTDE_DIG').DisplayLabel := 'Qtde. de Díg.';
 FTraillerDataSet.FieldByName('TIPO').DisplayLabel     := 'Tipo';

 FHeaderDataSource := TDataSource.Create(Self);
 FHeaderDataSource.DataSet := FHeaderDataSet;

 FTransacoesDataSource := TDataSource.Create(Self);
 FTransacoesDataSource.DataSet := FTransacoesDataSet;

 FTraillerDataSource := TDataSource.Create(Self);
 FTraillerDataSource.DataSet := FTraillerDataSet;
end;


function TLayout.GetHeaderArqTxt: string;
begin
 Result:= Self.FHeaderArqTxt;
end;
procedure TLayout.SetHeaderArqTxt( Value: string );
begin
 Self.FHeaderArqTxt := Value;
 Self.AlimentaDataSet(Self.FHeaderArqTxt, FHeaderDataSet);
end;


function TLayout.GetTransacaoArqTxt: string;
begin
 Result:= Self.FTransacaoArqTxt;
end;
procedure TLayout.SetTransacaoArqTxt( Value: string );
begin
 Self.FTransacaoArqTxt := Value;
 Self.AlimentaDataSet(Self.FTransacaoArqTxt, FTransacoesDataSet);
end;


function TLayout.GetTraillerArqTxt: string;
begin
 Result:= Self.FTraillerArqTxt;
end;
procedure TLayout.SetTraillerArqTxt( Value: string );
begin
 Self.FTraillerArqTxt := Value;
 Self.AlimentaDataSet(Self.FTraillerArqTxt, FTraillerDataSet);
end;


function TLayout.GetHeaderDataSet: TClientDataSet;
begin
 Result:= Self.FHeaderDataSet;
end;
procedure TLayout.SetHeaderDataSet( Value: TClientDataSet );
begin
 Self.FHeaderDataSet := Value;
end;

function TLayout.GetTransacoesDataSet: TClientDataSet;
begin
 Result:= Self.FTransacoesDataSet;
end;
procedure TLayout.SetTransacoesDataSet( Value: TClientDataSet );
begin
 Self.FTransacoesDataSet := Value;
end;

function TLayout.GetTraillerDataSet: TClientDataSet;
begin
 Result:= Self.FTraillerDataSet;
end;
procedure TLayout.SetTraillerDataSet( Value: TClientDataSet );
begin
 Self.FTraillerDataSet := Value;
end;


function TLayout.GetHeaderDataSource: TDataSource;
begin
 Result:= Self.FHeaderDataSource;
end;
procedure TLayout.SetHeaderDataSource( Value: TDataSource );
begin
 Self.FHeaderDataSource := Value;
end;

function TLayout.GetTransacoesDataSource: TDataSource;
begin
 Result:= Self.FTransacoesDataSource;
end;
procedure TLayout.SetTransacoesDataSource( Value: TDataSource );
begin
 Self.FTransacoesDataSource := Value;
end;


function TLayout.GetTraillerDataSource: TDataSource;
begin
 Result:= Self.FTraillerDataSource;
end;
procedure TLayout.SetTraillerDataSource( Value: TDataSource );
begin
 Self.FTraillerDataSource := Value;
end;





function TArqTxtBradesco.GetLayout: TLayout;
begin
 Result:= Self.FLayout;
end;

{a
function TArqProperty.GetAttributes : TPropertyAttributes;
begin
  Result:=[paDialog];
end;
}

{a
procedure TArqProperty.Edit;
var
 OpenDialog: TOpenDialog;
begin
 OpenDialog := TOpenDialog.Create(Application);
 try
  OpenDialog.Filter:='All files|*.*';
  if OpenDialog.Execute then
   begin
    SetStrValue(OpenDialog.FileName);
   end;
 finally
  OpenDialog.Free;
 end;
end;
}

procedure TLayout.AlimentaDataSet(ArqLayout: string; DataSet: TClientDataSet);
var
 Estrutura:     TStringList;
 iTotLinhas: Integer;
 I:          Integer;
begin
 iTotLinhas := 0;
 I          := 0;

 Estrutura := TStringList.Create;

 Estrutura.LoadFromFile(ArqLayout);
 iTotLinhas := Estrutura.Count;

 for I := (iTotLinhas - 1) downto 0 do
  begin
   DataSet.Insert;
   DataSet.FieldByName('POS_INI').Value  := StrToInt( Copy( Estrutura[I] , 01, 05 ) );
   DataSet.FieldByName('POS_FIM').Value  := StrToInt( Copy( Estrutura[I] , 06, 05 ) );
   DataSet.FieldByName('QTDE_DIG').Value := StrToInt( Copy( Estrutura[I] , 11, 05 ) );
   DataSet.FieldByName('TIPO').Value     := Copy( Estrutura[I] , 16, 01 );
   DataSet.Post;
  end;

end;


end.

