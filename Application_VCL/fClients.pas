unit fClients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fTemplateCiselnik, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  rDBComponents_UDB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, rDBGrid,
  rDBGrid_MS;

type
  TfrmClients = class(TfrmTemplateCiselnik)
    rDBGrid_MS1: TrDBGrid_MS;
    DataSource2: TDataSource;
    QueryUDB2: TQueryUDB;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClients: TfrmClients;

implementation

{$R *.dfm}

procedure TfrmClients.FormCreate(Sender: TObject);
begin
  inherited;
  QueryUDB1.Open;
  QUeryUdb2.Open;
end;

end.
