{ Newsgroups: comp.lang.pascal.delphi.components
Subject: Number Editing Component
From: root@comu2.auckland.ac.nz (Richard Vowles)
Date: 15 Aug 1995 20:04:18 GMT

Some people have expressed a need for this, I certainly have
needed it! If anyone wants to put it on an ftp server feel welcome!
}


(*
** NumEdit Version 1.0, Released 15/08/95
**
** This component, Numedit is an expansion of the initial work on
** CurrencyEdit done by Robert Vivrette (of the Unofficial Newsletter
** of Delphi Users, a most excellent set of help files).
**
** It fixes three bugs that I know of in that code:
** the locations of the - and the . - which
** allowed the user to have a - anywhere they liked, and multiple
** decimal .'s, and the ability to use the delete and backspace keys.
**
** It also adds facilities for entering integers, long
** integers, and words, restricting users to what they are actually
** allowed to enter for those values, so you will always get a valid
** integer/longint/word/floatingpoint value back.
**
** This work is copyrighted by Richard Vowles, r.vowles@auckland.ac.nz.
** You can use it as you like it, you can publish as part of freeware
** collections and so forth. What you cannot do is take it am claim it
** as your own and sell it as part of a collection of your own work.
** Oh, and you must leave this entire text at the top of the unit
** declaration (which tells you that Robert did the start, and I did
** the rest).
**
** I would be most interested if anyone finds bugs in it that can be
** fixed. It is part of a more type-aware grid that I am working on
** y'see...
**
** The majority of the code added is in Keypress, but there are other
** bits scattered around.
*)

Unit numedit;

Interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Menus, Forms, Dialogs, StdCtrls;

type (* EM_LINEINDEX *)
  TNumberEditType = (integervalue, longintvalue, floatingpointvalue, wordvalue);

  TNumEdit = class(TCustomMemo)
  private
    FNumberEditType : TNumberEditType;
    DispFormat: string;
    FieldValue: Extended;
    procedure SetFormat(A: string);
    procedure SetFieldValue(A: Extended);
    procedure CMEnter(var Message: TCMEnter);           message CM_ENTER;
    procedure CMExit(var Message: TCMExit);             message CM_EXIT;
    procedure FormatText;
    procedure UnFormatText;
    procedure SetDefaultDisplay;
    procedure SetNumberEditType( newtype : TNumberEditType );
  protected
    procedure KeyPress(var Key: Char); override;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Alignment default taRightJustify;
    (*property AutoSize default True;*)
    property BorderStyle;

    property EntryRequired : TNumberEditType read FNumberEditType write SetNumberEditType;
    property Color;
    property Ctl3D;
    property DisplayFormat: string read DispFormat write SetFormat;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property Value: Extended read FieldValue write SetFieldValue;
    property Visible;
    property OnChange;

    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('AU - Extras', [TNumEdit]);
end;
procedure TNumEdit.SetNumberEditType( newtype : TNumberEditType );
begin
     FNumberEditType := newtype;
     SetDefaultDisplay;
end;

procedure TNumEdit.SetDefaultDisplay;
begin
     case FNumberEditType of
       integervalue:
         DispFormat := '0,00';
       longintvalue:
         DispFormat := '0,00';
       wordvalue:
         DispFormat := '0,00';
       floatingpointvalue:
         DispFormat := '0,00';
//         DispFormat := 'R$,0,00;(R$,0,00)';
     end;

     FormatText;
end;

constructor TNumEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  AutoSize := False;       (* allowing this causes some funny stuff! *)
  FNumberEditType := floatingpointvalue;
  Alignment := taRightJustify;
  Width := 121;
  Height := 21;

  SetDefaultDisplay;

  FieldValue := 0.0;
  AutoSelect := False;
  WantReturns := False;
  WordWrap := False;
  FormatText;
end;

procedure TNumEdit.SetFormat(A: String);
begin
  if DispFormat <> A then
    begin
      DispFormat:= A;
      FormatText;
    end;
end;

procedure TNumEdit.SetFieldValue(A: Extended);
begin
  if FieldValue <> A then
    begin
      FieldValue := A;
      FormatText;
    end;
end;

procedure TNumEdit.UnFormatText;
var
  TmpText : String;
  Tmp     : Byte;
  IsNeg   : Boolean;
  s : string;
begin

  TmpText := Text;

  FieldValue := StrToFloat(TmpText);

{  IsNeg := (Pos('-',Text) > 0) or (Pos('(',Text) > 0);
  TmpText := '';

  For Tmp := 1 to Length(Text) do
    if Text[Tmp] in ['0'..'9','.'] then
      TmpText := TmpText + Text[Tmp];
  try
    if length(TmpText) = 0 then
       FieldValue := 0.0
    else
       if Pos('.',TmpText) > 0 then
          TmpText[Pos('.',TmpText)] := ',' ;
       FieldValue := StrToFloat(TmpText);
    if IsNeg then FieldValue := -FieldValue;
  except
    MessageBeep(mb_IconAsterisk);
  end;}
end;

procedure TNumEdit.FormatText;
begin
  Text := FormatFloat(DispFormat,FieldValue);
end;

procedure TNumEdit.CMEnter(var Message: TCMEnter);
begin
  SelectAll;
  inherited;
end;

procedure TNumEdit.CMExit(var Message: TCMExit);
begin
  UnformatText;
  FormatText;
  Inherited;
end;

procedure TNumEdit.KeyPress(var Key: Char);
var
   posOf      : longint;
   pos1, pos2 : word;
   ok         : Boolean;
   isneg      : Boolean;
   val        : string;
   toinsert   : string[1];
begin
  case FNumberEditType of
   integervalue:
     ok := key in ['0'..'9','-', #8, #127];
   longintvalue:
     ok := key in ['0'..'9','-', #8, #127];
   wordvalue:
     ok := key in ['0'..'9', #8, #127];
   floatingpointvalue:
     ok := Key in ['0'..'9',',','-', #8, #127];
  end;

  if Not ok Then
     Key := #0
  else
     begin  (* both of the following if's need it *)
     posOf := SendMessage( Self.Handle, EM_GETSEL, 0, 0 );
     pos1 := posOf AND $FFFF;
     pos2 := posOf SHR 16;
     end;

   if (Key = '-') or (Key = '.') then
     begin
     if (Key = '-') and ( pos1 <> 0 ) then (* ie the char won't go into pos1 *)
        Key := #0
     else if ( Key = '.' ) then
       begin
       if pos('.', Text) > 0 then (* there is already a . in this line *)
         begin
         if pos1 <> pos2 then
           begin (* get the selected text and see if the . is in it (and
                 ** will thus be replaced
                 *)
           if pos('.', SelText) = 0 then
             Key := #0;
           end
         else
           Key := #0;
         end;
       end;
     end
  else if ok and (Key <> #8) and (Key <> #127) then
      begin
      (*
      ** first we need to ensure that the character isn't being
      ** inserted before a - sign (which is not allowed)
      *)
//      if pos('-', SelText) = 0 then (* they are not replacing it *)
//        if (pos1 = 0) and (Text[1] = '-') then
//          Key := #0;
      (*
      ** we have to ensure that the number is not too big for
      ** the value it will eventually go into. The only way we
      ** can do this is to figure out what it would be like if
      ** the key press goes thru (as we have to deal with selected
      ** text as well) and then decide as to whether it is legitimate
      ** or not.
      *)
      if key <> #0 then
        begin
        val := Text;

        toinsert[0] := #1;
        toinsert[1] := Key;

        if pos1 <> pos2 then (* something was selected *)
          begin
          Delete( val, pos1 + 1, pos2 - pos1 );
          end;

        Insert( toinsert, val, pos1 + 1 );
        (*
        ** now we have a representation of what the string WILL be
        ** We can determine if it is valid. For integer and word this
        ** is easy as we just convert it to an integer and check if
        ** is within the bounds. For longints it is more difficult.
        *)
        ok := True;

        case FNumberEditType of
          integervalue:
            begin
            if val <> '-' then
              begin
              posOf := StrToInt( val );
              if (posOf < -32768) or (posOf > 32767) then
                ok := False;
              end;
            end;
          wordvalue:
            begin
            posOf := StrToInt( val );
            if (posOf > 65535) then (* can't be < 0, no - allowed *)
               ok := False;
            end;
       longintvalue:
            begin
            if val[1] = '-' then
               begin
               Delete(val,1,1);
               if ((length(val) = 10) and (val > '2147483648')) or (length(val) > 10 ) then
                    ok := False;
               end
            else
               begin
               if ((length(val) = 10) and (val > '2147483647')) or (length(val) > 10 ) then
                    ok := False;
               end;
            end;
          end; (* case *)

        if not ok then
          Key := #0;
        end; (* if they weren't inserting a num before a - *)
      end;
     (* The Keypress .
     ** The . can occur anywhere in the text, but it can only occur
     ** ONCE. We could check to see if it were already there, but it
     ** is complicated by the fact that if they have selected text
     ** which has one (.) in it and they wish to hit the . then
     *)
  inherited KeyPress(Key);
end;

procedure TNumEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  case Alignment of
    taLeftJustify  : Params.Style := Params.Style or ES_LEFT and Not ES_MULTILINE;
    taRightJustify : Params.Style := Params.Style or ES_RIGHT and Not ES_MULTILINE;
    taCenter       : Params.Style := Params.Style or ES_CENTER and Not ES_MULTILINE;
  end;
end;

End.





