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
    Height = 366
  end
  inherited DBNavigator1: TDBNavigator
    Top = 511
    Width = 994
    DataSource = DataSource2
    Hints.Strings = ()
    ExplicitLeft = -16
    ExplicitTop = 518
    ExplicitWidth = 994
  end
  object rDBGrid_MS1: TrDBGrid_MS [2]
    Left = 0
    Top = 391
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
  object DBNavigator2: TDBNavigator [3]
    Left = 0
    Top = 366
    Width = 994
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 399
  end
  inherited QueryUDB1: TQueryUDB
    Active = True
    SQL.Strings = (
      'SELECT * FROM clients')
  end
  object DataSource2: TDataSource
    DataSet = QueryUDB2
    Left = 536
    Top = 448
  end
  object QueryUDB2: TQueryUDB
    Active = True
    BeforeInsert = QueryUDB2BeforeInsert
    BeforeEdit = QueryUDB2BeforeEdit
    AfterEdit = QueryUDB2AfterEdit
    BeforePost = QueryUDB2BeforePost
    MasterSource = DataSource1
    MasterFields = 'clientsid'
    BeforeApplyUpdates = QueryUDB2BeforeApplyUpdates
    AfterApplyUpdates = QueryUDB2AfterApplyUpdates
    BeforeRowRequest = QueryUDB2BeforeRowRequest
    Connection = dmDatabase.ConnectionUDB1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select * from clientstasks where clienttasksclientid = :clientsi' +
        'd')
    Left = 704
    Top = 456
    ParamData = <
      item
        Name = 'CLIENTSID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object QueryUDB2clienttasksid: TFDAutoIncField
      FieldName = 'clienttasksid'
      Origin = 'clienttasksid'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QueryUDB2clienttasksclientid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'clienttasksclientid'
      Origin = 'clienttasksclientid'
    end
    object QueryUDB2clienttaskstasktype: TLongWordField
      FieldName = 'clienttaskstasktype'
      Origin = 'clienttaskstasktype'
      Required = True
    end
    object QueryUDB2clienttasksactive: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'clienttasksactive'
      Origin = 'clienttasksactive'
    end
    object QueryUDB2tasktypeName: TStringField
      FieldKind = fkLookup
      FieldName = 'tasktypeName'
      LookupDataSet = QueryUDB3
      LookupKeyFields = 'tasktypeid'
      LookupResultField = 'tasktypename'
      KeyFields = 'clienttaskstasktype'
      Lookup = True
    end
  end
  object QueryUDB3: TQueryUDB
    Active = True
    Connection = dmDatabase.ConnectionUDB1
    SQL.Strings = (
      'SELECT * FROM tasktype')
    Left = 792
    Top = 408
  end
end
