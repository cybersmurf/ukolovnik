object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Lenky '#250'kolovn'#237'k'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 304
    Top = 264
    object N1: TMenuItem
      Caption = 'Program'
      object Klienti1: TMenuItem
        Action = actKlienti
      end
      object selnky1: TMenuItem
        Caption = #268#237'seln'#237'ky'
        object ypykol1: TMenuItem
          Action = actTypyúkolu
        end
      end
      object Exit1: TMenuItem
        Action = FileExit1
      end
    end
  end
  object ActionList1: TActionList
    Left = 472
    Top = 240
    object actKlienti: TAction
      Caption = 'Klienti'
      OnExecute = actKlientiExecute
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object actTypyúkolu: TAction
      Caption = 'Typy '#250'kol'#367
      OnExecute = actTypyúkoluExecute
    end
  end
end
