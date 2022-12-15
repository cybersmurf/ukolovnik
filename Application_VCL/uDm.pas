unit uDm;

interface

uses
  System.SysUtils, System.Classes, uConfig, udmdatabase;

type
  Tdm = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDatabase;
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ Tdm }

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  SetDatabase;
end;

procedure Tdm.SetDatabase;
begin
  Config.Load;
  dmDatabase.ConnectionUDB1.DriverName := 'mysql';
  dmdatabase.ConnectionUDB1.Params.Values['Server']   := config.eMistrServer;
  dmdatabase.ConnectionUDB1.Params.Values['Port']     := config.eMistrPort.ToString();
  dmdatabase.ConnectionUDB1.Params.Values['Database'] :=  config.eMistrDatabase;
  dmdatabase.ConnectionUDB1.Connected := true;
end;

end.
