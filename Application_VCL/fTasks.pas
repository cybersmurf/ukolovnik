unit fTasks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fTemplateCiselnik, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  rDBComponents_UDB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, rDBGrid,
  Vcl.StdCtrls, System.Actions, Vcl.ActnList;

type
  TfrmTasks = class(TfrmTemplateCiselnik)
    QueryUDB2: TQueryUDB;
    QueryUDB3: TQueryUDB;
    Panel1: TPanel;
    Button1: TButton;
    ActionList1: TActionList;
    actGenerateTasks: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTasks: TfrmTasks;

implementation


{$R *.dfm}

end.
