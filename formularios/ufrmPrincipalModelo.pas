unit ufrmPrincipalModelo;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, DB, DBTables, DataBaseUrb, DBXpress, SqlExpr,
  DBClient, MConnect, SConnect, RpDefine, RpRave, RpBase, RpSystem;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// CRIAR UMA CONDIÇÃO "IF", PARA DEFINIR QUAL UNIT DE PROJETO SERÁ USADA.     //
// CONSIDERANDO A VARIÁVEL DO SISTEMA                                         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type
  TfrmPrincipalModelo = class(TForm)
    mmuPrincipal: TMainMenu;
    mmuArquivo: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    mmuJanela: TMenuItem;
    mmuAjuda: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    mmuEditar: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
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
    WindowTileItem2: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    mmuExibir: TMenuItem;
    mmuFerramentas: TMenuItem;
    BarradeFerramentas1: TMenuItem;
    BarradeStatus1: TMenuItem;
    VisualizadordeRelatrios1: TMenuItem;
    Auditoria1: TMenuItem;
    ManutenodeUsurios1: TMenuItem;
    N3: TMenuItem;
    Opes1: TMenuItem;
    SairdoSistema1: TMenuItem;
    rocardeUsurio1: TMenuItem;
    N4: TMenuItem;
    ConfigurarImpressora1: TMenuItem;
    ImprimirTela1: TMenuItem;
    Opcoes: TAction;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    imlPrincipal: TImageList;
    dcom: TDCOMConnection;
    SharedConnection: TSharedConnection;
    rvpCED: TRvProject;
    RvSystem1: TRvSystem;
    procedure ArquivoAbrirExecute(Sender: TObject);
    procedure AjudaSobreExecute(Sender: TObject);
    procedure ArquivoSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipalModelo: TfrmPrincipalModelo;

implementation

{$R *.dfm}

uses ufrmSobre, ufrmAbrirCED;

procedure TfrmPrincipalModelo.ArquivoAbrirExecute(Sender: TObject);
begin
 Application.CreateForm(TfrmAbrirCED, frmAbrirCED);
end;

procedure TfrmPrincipalModelo.AjudaSobreExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmSobre, frmSobre);
end;

procedure TfrmPrincipalModelo.ArquivoSairExecute(Sender: TObject);
begin
  Close;
end;

end.
