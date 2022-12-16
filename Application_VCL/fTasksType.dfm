inherited frmTasksType: TfrmTasksType
  Caption = 'frmTasksType'
  ClientHeight = 547
  ClientWidth = 833
  OnShow = FormShow
  TextHeight = 15
  inherited rDBGrid1: TrDBGrid
    Width = 833
    Height = 522
    FieldsAsBoolean.Strings = (
      'tasktypeactive=1;0')
    Columns = <
      item
        Expanded = False
        FieldName = 'tasktypeid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tasktypename'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tasktypeactive'
        Visible = True
      end>
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
