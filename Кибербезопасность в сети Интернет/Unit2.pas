unit Unit2;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;
type
  TForm2 = class(TForm)
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;
implementation
{$R *.dfm}
uses Unit1;
//music stop
procedure TForm2.FormShow(Sender: TObject);
begin
 Form1.MediaPlayer1.Stop;
end;
//music play
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.MediaPlayer1.Play;
end;
//create immage
procedure TForm2.FormCreate(Sender: TObject);
begin
Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\lock.bmp');
end;
// Progress
procedure TForm2.Timer1Timer(Sender: TObject);
begin
if ProgressBar1.Position < ProgressBar1.Max then
ProgressBar1.Position:=ProgressBar1.Position+10
else
begin
Timer1.Enabled:=False;
Form2.Close;
end;
end;
end.
