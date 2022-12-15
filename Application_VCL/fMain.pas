unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdActns, System.Actions,
  Vcl.ActnList,fClients,fTasksType;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    actKlienti: TAction;
    FileExit1: TFileExit;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Klienti1: TMenuItem;
    selnky1: TMenuItem;
    ypykol1: TMenuItem;
    actTypy�kolu: TAction;
    procedure actKlientiExecute(Sender: TObject);
    procedure actTypy�koluExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.actKlientiExecute(Sender: TObject);
begin
  application.CreateForm(TfrmClients,frmClients);
  frmClients.Show;
end;

procedure TfrmMain.actTypy�koluExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmTasksType,frmTasksType);
  frmTasksType.show;
end;

end.
