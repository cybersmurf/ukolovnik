unit fTemplateCiselnik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fTemplateMdiChild, Data.DB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, rDBGrid,udmdatabase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  rDBComponents_UDB;

type
  TfrmTemplateCiselnik = class(TfrmTemplateMdiChild)
    rDBGrid1: TrDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    QueryUDB1: TQueryUDB;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTemplateCiselnik: TfrmTemplateCiselnik;

implementation

{$R *.dfm}

end.
