{$DEFINE UDB_FD}
unit uDmDatabase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.ConsoleUI.Wait, Data.DB, FireDAC.Comp.Client,
  rDBComponents_UDB, FireDAC.Moni.Base, FireDAC.Moni.FlatFile, FireDAC.Comp.UI;

type
  TdmDatabase = class(TDataModule)
    FDConnection1: TFDConnection;
    ConnectionUDB1: TConnectionUDB;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDatabase(server,database:string; port:integer);
  end;

var
  dmDatabase: TdmDatabase;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmDatabase }

procedure TdmDatabase.SetDatabase(server, database: string; port: integer);

begin
  connectionUDB1.Params.Values['Server'] := '';
end;

end.
