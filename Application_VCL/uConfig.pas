unit uConfig;

interface

uses
  IniPersist, Winapi.Windows, System.SysUtils, System.DateUtils, System.IniFiles;

{$RTTI EXPLICIT
  METHODS(DefaultMethodRttiVisibility)
  FIELDS(DefaultFieldRttiVisibility)
  PROPERTIES([vcPublic,vcPublished])}

type
  TConfigBase = class (TObject)
  private
    FIniFile: string;
  public
    procedure Save;
    procedure Load;
    constructor Create;
  published
    property IniFile: string read FIniFile write FIniFile;
  end;

  TConfig = class (TConfigBase)
  private
    FeMistrDatabase: string;
    FeMistrServer: string;
    FeMistrPort: Integer;
    FeMistrSQLLog: Boolean;
    FVersion: string;

    FSmtpServer : string;
    FSmtpPort : integer;
    FSmtpUser : string;
    FSmtpPassword : string;

    FDaysOffset : integer;
    FEmailLastDate : string;
    FServiceTimeInSeconds : Integer;
    FServiceLogLevel : string;

    FServiceProcessJsonNew : boolean;

    FeMistrUseSecondaryDatabase: Boolean;
    FeMistrDatabaseSecondary: string;

    function GetDate (const Value: TDate ):TDate;


  published
    property Version: string read FVersion write FVersion;
    [IniValue('eMISTR','database', 'vyrobaonline')]
    property eMistrDatabase: string read FeMistrDatabase write FeMistrDatabase;
    [IniValue('eMISTR','server', 'localhost')]
    property eMistrServer: string read FeMistrServer write FeMistrServer;
    [IniValue('eMISTR','port','3306')]
    property eMistrPort: Integer read FeMistrPort write FeMistrPort;
    [IniValue('eMISTR','sqllog','true')]
    property eMistrSQLLog: Boolean read FeMistrSQLLog write FeMistrSQLLog;

    [IniValue('eMISTR','UseSecondaryDatabase','false')]
    property eMistrUseSecondaryDatabase: Boolean read FeMistrUseSecondaryDatabase write FeMistrUseSecondaryDatabase;

    [IniValue('eMISTR','database_secondary', '')]
    property eMistrDatabaseSecondary: string read FeMistrDatabaseSecondary write FeMistrDatabaseSecondary;

    [IniValue('SMTP','server','127.0.0.1')]
    property SMTPServer: string read FSmtpServer write FSmtpServer;
    [IniValue('SMTP','Port','443')]
    property SMTPPort: Integer read FSmtpPort write FSmtpPort;
    [IniValue('SMTP','User','crm')]
    property SMTPUser: string read FSmtpUser write FSmtpUser;
    [IniValue('SMTP','Password','crm')]
    property SMTPPassword: string read FSmtpPassword write FSmtpPassword;

    [IniValue('Settings','DaysOffset','7')]
    property DaysOffset: Integer read FDaysOffset write FDaysOffset;
    [IniValue('Settings','EmailLastDate','1.1.2099 00:00:00')]
    property EmailLastDate: string read FEmailLastDate write FEmailLastDate;
    [IniValue('Settings','ServiceTimeInSeconds','2')]
    property ServiceTimeInSeconds: integer read FServiceTimeInSeconds write FServiceTimeInSeconds;
    [IniValue('Settings','LogLevel','LOG_ALL')]
    property ServiceLogLevel: string read FServiceLogLevel write FServiceLogLevel;

    //2021-10-12 PŠ
    [IniValue('Settings','ProcessJsonNew','false')]
    property ServiceProcessJsonNew: Boolean read FServiceProcessJsonNew write FServiceProcessJsonNew;

  public
    procedure Save;
    procedure Load;
    constructor Create;

    procedure SetDate( const Value: TDate );
    procedure SetDateTime(const Value: TDateTime);
  end;

var Config:TConfig;

implementation

uses
  System.IOUtils;

function GetFmtFileVersion(const FileName: String = '';
  const Fmt: String = '%d.%d.%d.%d'): String;
var
  sFileName: String;
  iBufferSize: DWORD;
  iDummy: DWORD;
  pBuffer: Pointer;
  pFileInfo: Pointer;
  iVer: array[1..4] of Word;
begin
  // set default value
  Result := '';
  // get filename of exe/dll if no filename is specified
  sFileName := FileName;
  if (sFileName = '') then
  begin
    // prepare buffer for path and terminating #0
    SetLength(sFileName, MAX_PATH + 1);
    SetLength(sFileName,
      GetModuleFileName(hInstance, PChar(sFileName), MAX_PATH + 1));
  end;
  // get size of version info (0 if no version info exists)
  iBufferSize := GetFileVersionInfoSize(PChar(sFileName), iDummy);
  if (iBufferSize > 0) then
  begin
    GetMem(pBuffer, iBufferSize);
    try
    // get fixed file info (language independent)
    GetFileVersionInfo(PChar(sFileName), 0, iBufferSize, pBuffer);
    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
    // read version blocks
    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
    finally
      FreeMem(pBuffer);
    end;
    // format result string
    Result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
  end;
end;


{ TConfigBase }

constructor TConfigBase.Create;
begin
  FIniFile := Copy(ParamStr(0),1,Length(ParamStr(0))-4) + '.ini';
end;

procedure TConfigBase.Load;
begin
  TIniPersist.Load(FIniFile,Self);
end;

procedure TConfigBase.Save;
begin
  TIniPersist.Save(FIniFile,Self);
end;

{ TConfig }

constructor TConfig.Create;
begin
  inherited;
end;

function TConfig.GetDate(const Value: TDate): TDate;
begin
  //
end;

procedure TConfig.Load;
begin
  inherited;
end;

procedure TConfig.Save;
begin
  inherited;
end;

procedure TConfig.SetDate(const Value: TDate);
var
  myIni : TIniFile;
begin
  //
  myIni := TIniFile.Create(Config.IniFile);
  //myIni.WriteString('CNCCopyFiles','LastDateTimeProcess',DateToStr(Value));
end;

procedure TConfig.SetDateTime(const Value: TDateTime);
var
  myIni : TIniFile;
begin
  //
  myIni := TIniFile.Create(Config.IniFile);
  //myIni.WriteString('CNCCopyFiles','LastDateTimeProcess',DateTimeToStr(Value));
end;

initialization
  Config := TConfig.Create;
  Config.Version := GetFmtFileVersion();
  if TFile.Exists(Config.IniFile) then
    Config.Load
  else
    Config.Save;


end.
