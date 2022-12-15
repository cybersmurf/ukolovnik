program Lenky_ukolovnik;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {frmMain},
  fTemplateCiselnik in '..\Shared\fTemplateCiselnik.pas' {frmTemplateCiselnik},
  uDmDatabase in '..\Shared\uDmDatabase.pas' {dmDatabase: TDataModule},
  fClients in 'fClients.pas' {frmClients},
  fTasksType in 'fTasksType.pas' {frmTasksType},
  uConfig in 'uConfig.pas',
  uDm in 'uDm.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
