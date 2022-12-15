object dmDatabase: TdmDatabase
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'MonitorBy=FlatFile'
      'Database=ukolovnik'
      'Password=tnacarp'
      'Port=3336'
      'Server=192.168.222.13'
      'User_Name=pracant'
      'Pooled=False')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 72
  end
  object ConnectionUDB1: TConnectionUDB
    Params.Strings = (
      'DriverID=MySQL'
      'Database=ukolovnik'
      'Password=tnacarp'
      'Port=3336'
      'User_Name=pracant'
      'MonitorBy=FlatFile'
      'Server=192.168.222.13')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    Left = 296
    Top = 72
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    Left = 288
    Top = 168
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 296
    Top = 288
  end
end
