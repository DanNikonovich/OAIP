object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1086#1096#1077#1085#1085#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1087#1077#1088#1077#1087#1080#1089#1082#1072#1093
  ClientHeight = 789
  ClientWidth = 579
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  TextHeight = 15
  object MediaPlayer1: TMediaPlayer
    Left = 239
    Top = 755
    Width = 85
    Height = 42
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    Display = Panel1
    FileName = 
      'E:\Delphi\'#1050#1055'\'#1050#1080#1073#1077#1088#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1074' '#1089#1077#1090#1080' '#1048#1085#1090#1077#1088#1085#1077#1090'\Win32\Debug\Video' +
      's\'#1050#1072#1088#1076#1077#1088#1099'.avi'
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 59
    Top = 0
    Width = 470
    Height = 749
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
