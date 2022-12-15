inherited frmTemplateCiselnik: TfrmTemplateCiselnik
  Caption = 'frmTemplateCiselnik'
  ClientHeight = 547
  ClientWidth = 833
  ExplicitWidth = 845
  ExplicitHeight = 585
  TextHeight = 15
  object rDBGrid1: TrDBGrid
    Left = 0
    Top = 0
    Width = 833
    Height = 522
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OptionsEx2.Filters.FunnelBtn = True
    OptionsEx2.Filters.TextBar = True
    OptionsEx2.Filters.TextFilterType = oftAnyPosForNoLikeChar
    ColumnWidth = cwAutoWidth
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 522
    Width = 833
    Height = 25
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 344
    ExplicitTop = 280
    ExplicitWidth = 240
  end
  object DataSource1: TDataSource
    DataSet = QueryUDB1
    Left = 464
    Top = 240
  end
  object QueryUDB1: TQueryUDB
    Connection = dmDatabase.ConnectionUDB1
    Left = 472
    Top = 320
  end
end
