object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1042#1080#1076#1077#1086#1084#1072#1090#1077#1088#1080#1072#1083
  ClientHeight = 825
  ClientWidth = 1411
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object RadioGroup1: TRadioGroup
    Left = 12
    Top = 0
    Width = 1391
    Height = 57
    Caption = #1042#1099#1073#1077#1088#1077#1090#1077' '#1074#1080#1076' '#1074#1080#1076#1077#1086#1084#1072#1090#1077#1088#1080#1072#1083#1072
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      #1050#1072#1088#1076#1077#1088#1099
      #1060#1080#1096#1080#1085#1075' '#1074' '#1088#1077#1072#1083#1100#1085#1086#1089#1090#1080
      #1052#1086#1096#1077#1085#1085#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1087#1077#1088#1077#1087#1080#1089#1082#1072#1093
      #1046#1077#1088#1090#1074#1099' '#1086#1073#1084#1072#1085#1097#1080#1082#1086#1074)
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 640
    Top = 758
    Width = 85
    Height = 42
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    Display = Panel1
    FileName = 
      'E:\Delphi\'#1050#1055'\'#1050#1080#1073#1077#1088#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1074' '#1089#1077#1090#1080' '#1048#1085#1090#1077#1088#1085#1077#1090'\Win32\Debug\Video' +
      's\'#1050#1072#1088#1076#1077#1088#1099'.avi'
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 10
    Top = 64
    Width = 1393
    Height = 673
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 952
    Top = 758
    Width = 201
    Height = 42
    Caption = '&'#1053#1072' '#1075#1083#1072#1074#1085#1091#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
end
