inherited frmClients: TfrmClients
  Caption = 'frmClients'
  ClientHeight = 536
  ClientWidth = 994
  OnCreate = FormCreate
  ExplicitWidth = 1006
  ExplicitHeight = 574
  TextHeight = 15
  inherited rDBGrid1: TrDBGrid
    Width = 994
    Height = 391
  end
  inherited DBNavigator1: TDBNavigator
    Top = 391
    Width = 994
    DataSource = DataSource1
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 520
    ExplicitWidth = 624
  end
  object rDBGrid_MS1: TrDBGrid_MS [2]
    Left = 0
    Top = 416
    Width = 994
    Height = 120
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  inherited QueryUDB1: TQueryUDB
    SQL.Strings = (
      'SELECT * FROM clients')
  end
  object DataSource2: TDataSource
    DataSet = QueryUDB2
    Left = 536
    Top = 448
  end
  object QueryUDB2: TQueryUDB
    MasterSource = DataSource1
    MasterFields = 'clientsid'
    Connection = dmDatabase.ConnectionUDB1
    SQL.Strings = (
      
        'select * from clientstasks where clienttasksclientid = :clientsi' +
        'd')
    Left = 704
    Top = 456
    ParamData = <
      item
        Name = 'CLIENTSID'
        ParamType = ptInput
      end>
  end
end
