object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 454
  ClientWidth = 696
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Image1: TImage
    Left = -7
    Top = 0
    Width = 703
    Height = 454
    Stretch = True
  end
  object Label1: TLabel
    Left = 144
    Top = 8
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
  object ProgressBar1: TProgressBar
    Left = 112
    Top = 347
    Width = 473
    Height = 21
    Cursor = crHourGlass
    DragCursor = crHourGlass
    BarColor = clRed
    BackgroundColor = clRed
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 200
    Top = 64
  end
end
