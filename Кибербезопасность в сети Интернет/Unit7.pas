unit Unit7;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer;
type
  TForm7 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Panel1: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form7: TForm7;
implementation
{$R *.dfm}
uses Unit5;
// show Form5
procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  form5.Show;
end;
//video play
procedure TForm7.FormShow(Sender: TObject);
begin
Form5.MediaPlayer1.Stop;
MediaPlayer1.FileName := ExtractFilePath(ParamStr(0))+'Video\Мошенничество в переписках.wmv';
  MediaPlayer1.Open;
  MediaPlayer1.Display := Panel1;
end;
end.
