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
    DBNavigator2: TDBNavigator;
    QueryUDB2clienttasksid: TFDAutoIncField;
    QueryUDB2clienttasksclientid: TIntegerField;
    QueryUDB2clienttaskstasktype: TLongWordField;
    QueryUDB2clienttasksactive: TLongWordField;
    QueryUDB3: TQueryUDB;
    QueryUDB2tasktypeName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QueryUDB2BeforePost(DataSet: TDataSet);
    procedure QueryUDB2BeforeInsert(DataSet: TDataSet);
    procedure QueryUDB2AfterEdit(DataSet: TDataSet);
    procedure QueryUDB2BeforeApplyUpdates(DataSet: TFDDataSet);
    procedure QueryUDB2BeforeEdit(DataSet: TDataSet);
    procedure QueryUDB2BeforeRowRequest(DataSet: TFDDataSet);
    procedure QueryUDB2AfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
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

procedure TfrmClients.QueryUDB2AfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2AfterEdit(DataSet: TDataSet);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2BeforeApplyUpdates(DataSet: TFDDataSet);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2BeforeInsert(DataSet: TDataSet);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2BeforePost(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

procedure TfrmClients.QueryUDB2BeforeRowRequest(DataSet: TFDDataSet);
begin
  inherited;
  //Dataset.FieldByName('clienttasksclientid').AsInteger := queryUDB1.FieldByName('clientsid').AsInteger;
end;

end.
