unit Unit5;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;
type
  TForm5 = class(TForm)
    RadioGroup1: TRadioGroup;
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form5: TForm5;
implementation
{$R *.dfm}
uses Unit1, Unit7;
//music play
procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.MediaPlayer1.Play;
end;
//AutoOpen off
procedure TForm5.FormCreate(Sender: TObject);
begin
MediaPlayer1.AutoOpen := False;
end;
//music stop
procedure TForm5.FormShow(Sender: TObject);
begin
Form1.MediaPlayer1.Stop;
end;
//play video or showmodale form7
procedure TForm5.RadioGroup1Click(Sender: TObject);
var
  videoPath: string;
begin
  case RadioGroup1.ItemIndex of
    0: videoPath := ExtractFilePath(ParamStr(0)) + 'Video\�������.wmv';
    1: videoPath := ExtractFilePath(ParamStr(0)) + 'Video\������ ����������.wmv';
    2:Begin
        Form5.Hide;
        Form7.ShowModal;
      End;
    3: videoPath := ExtractFilePath(ParamStr(0)) + 'Video\������ � ����������.wmv';
  end;
  if Length(videopath) > 0 then
  begin
  MediaPlayer1.FileName := videoPath;
  MediaPlayer1.Open;
  MediaPlayer1.Display := Panel1;
  end;
end;
end.
