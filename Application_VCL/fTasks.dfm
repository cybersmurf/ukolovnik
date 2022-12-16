inherited frmTasks: TfrmTasks
  Caption = 'frmTasks'
  TextHeight = 15
  inherited rDBGrid1: TrDBGrid
    Top = 65
    Height = 456
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 521
    ExplicitWidth = 829
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 829
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Button1: TButton
      Left = 0
      Top = 8
      Width = 145
      Height = 51
      Action = actGenerateTasks
      TabOrder = 0
    end
  end
  inherited QueryUDB1: TQueryUDB
    SQL.Strings = (
      'SELECT * FROM tasks')
  end
  object QueryUDB2: TQueryUDB
    Connection = dmDatabase.ConnectionUDB1
    SQL.Strings = (
      'SELECT * FROM clients')
    Left = 656
    Top = 328
  end
  object QueryUDB3: TQueryUDB
    Connection = dmDatabase.ConnectionUDB1
    SQL.Strings = (
      'SELECT * FROM tasktype')
    Left = 736
    Top = 320
  end
  object ActionList1: TActionList
    Left = 696
    Top = 160
    object actGenerateTasks: TAction
      Caption = 'Vygeneruj '#250'koly'
    end
  end
end
