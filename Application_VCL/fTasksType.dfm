inherited frmTasksType: TfrmTasksType
  Caption = 'frmTasksType'
  ClientHeight = 547
  ClientWidth = 833
  TextHeight = 15
  inherited rDBGrid1: TrDBGrid
    Width = 833
    Height = 522
  end
  inherited DBNavigator1: TDBNavigator
    Top = 522
    Width = 833
    DataSource = DataSource1
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 521
    ExplicitWidth = 829
  end
  inherited QueryUDB1: TQueryUDB
    Active = True
    SQL.Strings = (
      'select * from tasktype')
  end
end
