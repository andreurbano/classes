unit ufrmPrincipalXP;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, DB, DBTables, DataBaseUrb, DBXpress, SqlExpr,
  ActnCtrls, ActnMan, ActnMenus, XPStyleActnCtrls, BandActn, DBClientActns,
  DBActns, ExtActns, ListActns;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// CRIAR UMA CONDIÇÃO "IF", PARA DEFINIR QUAL UNIT DE PROJETO SERÁ USADA.     //
// CONSIDERANDO A VARIÁVEL DO SISTEMA                                         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type
  TfrmPrincipalXP = class(TForm)
    OpenDialog: TOpenDialog;
    StatusBar: TStatusBar;
    actPrincipal: TActionList;
    EditarRecortar: TEditCut;
    EditarCopiar: TEditCopy;
    EditarColar: TEditPaste;
    ArquivoSalvar: TAction;
    ArquivoSair: TAction;
    ArquivoAbrir: TAction;
    ArquivoSalvarComo: TAction;
    JanelaCascata: TWindowCascade;
    JanelaHorizontal: TWindowTileHorizontal;
    JanelaArrumaTodas: TWindowArrange;
    JanelaMinimizaTodas: TWindowMinimizeAll;
    AjudaSobre: TAction;
    ArquivoFechar: TWindowClose;
    JanelaVertical: TWindowTileVertical;
    Opcoes: TAction;
    bdCPAD: TDataBaseUrb;
    acmPrincipal: TActionManager;
    ControlBar1: TControlBar;
    ammPrincipal: TActionMainMenuBar;
    ctbPrincipal: TActionToolBar;
    imlPrincipal16x16: TImageList;
    procedure ArquivoNovoExecute(Sender: TObject);
    procedure AjudaSobreExecute(Sender: TObject);
    procedure ArquivoSairExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  frmPrincipalXP: TfrmPrincipalXP;

implementation

{$R *.dfm}

uses ufrmSobre;

procedure TfrmPrincipalXP.CreateMDIChild(const Name: string);
///var
  ///Child: TMDIChild;
begin

  { create a new MDI child window }
  ///Child := TMDIChild.Create(Application);
  ///Child.Caption := Name;
  ///if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TfrmPrincipalXP.ArquivoNovoExecute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TfrmPrincipalXP.AjudaSobreExecute(Sender: TObject);
begin
 Application.CreateForm(TfrmSobre, frmSobre);
end;

procedure TfrmPrincipalXP.ArquivoSairExecute(Sender: TObject);
begin
 Close;
end;

end.
