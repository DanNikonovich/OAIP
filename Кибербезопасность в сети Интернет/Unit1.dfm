object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = #1050#1080#1073#1077#1088#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1074' '#1089#1077#1090#1080' '#1048#1085#1090#1077#1088#1085#1077#1090
  ClientHeight = 425
  ClientWidth = 654
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 121
    Top = 40
    Width = 420
    Height = 35
    Caption = #1050#1080#1073#1077#1088#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1074' '#1089#1077#1090#1080' '#1048#1085#1090#1077#1088#1085#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 324
    Top = 96
    Width = 273
    Height = 145
  end
  object Image2: TImage
    Left = 33
    Top = 300
    Width = 65
    Height = 65
    Stretch = True
    OnClick = Image2Click
  end
  object Image3: TImage
    Left = 121
    Top = 300
    Width = 65
    Height = 65
    Stretch = True
    OnClick = Image3Click
  end
  object Button1: TButton
    Left = 0
    Top = 96
    Width = 318
    Height = 25
    Cursor = crHandPoint
    Caption = #1055#1088#1077#1079#1077#1085#1090#1072#1094#1080#1080' '#1086' '#1074#1080#1076#1072#1093' '#1084#1086#1096#1077#1085#1085#1080#1095#1077#1089#1090#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 52
    Top = 216
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = #1052#1080#1085#1080' '#1080#1075#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 12
    Top = 160
    Width = 306
    Height = 25
    Cursor = crHandPoint
    Caption = #1042#1080#1076#1077#1086' '#1086' '#1074#1080#1076#1072#1093' '#1084#1086#1096#1077#1085#1085#1080#1095#1077#1089#1090#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 324
    Top = 328
    Width = 266
    Height = 37
    Caption = '&'#1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object MediaPlayer1: TMediaPlayer
    Left = 232
    Top = 344
    Width = 29
    Height = 37
    Enabled = False
    VisibleButtons = []
    AutoOpen = True
    DoubleBuffered = True
    FileName = 
      'E:\Delphi\'#1050#1055'\'#1050#1080#1073#1077#1088#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100' '#1074' '#1089#1077#1090#1080' '#1048#1085#1090#1077#1088#1085#1077#1090'\Win32\Debug\Music' +
      '\'#1041#1080#1083#1083#1080' '#1040#1081#1083#1080#1096' - CHIHIRO.mp3'
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 16
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N5: TMenuItem
        Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
        OnClick = N5Click
      end
      object N4: TMenuItem
        Caption = #1047#1072#1082#1088#1072#1090#1100
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1088#1072#1074#1080#1083#1072' '#1086' '#1080#1075#1088#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N3Click
    end
  end
end
