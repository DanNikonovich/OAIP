unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.MPlayer, Vcl.Menus,ShellAPI;
type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Image2: TImage;
    MediaPlayer1: TMediaPlayer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
uses Unit2, Unit3, Unit4, Unit5;
var IsSplashScreenShown: Boolean = False;
//Form3 - open
procedure TForm1.Button1Click(Sender: TObject);
begin
Form3.ShowModal;
end;
//Form4 - open,music - stop
procedure TForm1.Button2Click(Sender: TObject);
begin
Form4.ShowModal;
MediaPlayer1.Stop;
end;
//Form5 - open
procedure TForm1.Button3Click(Sender: TObject);
begin
Form5.ShowModal;
end;
//create images and music play
procedure TForm1.FormCreate(Sender: TObject);
begin
if not IsSplashScreenShown then
begin
  MediaPlayer1.Open;
end;
Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\lock1.bmp');
Image2.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\valueoff.bmp');
Image3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\valueon.bmp');
MediaPlayer1.Play;
end;
// show form2
procedure TForm1.FormShow(Sender: TObject);
begin
Form2.ShowModal;
end;
//pause music
procedure TForm1.Image2Click(Sender: TObject);
begin
MediaPlayer1.Pause;
end;
//play music
procedure TForm1.Image3Click(Sender: TObject);
begin
MediaPlayer1.Play;
end;
//show rules
procedure TForm1.N2Click(Sender: TObject);
var
  TextFromFile: TStringList;
begin
TextFromFile := TStringList.Create;
TextFromFile.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'rules\1.txt');
ShowMessage(TextFromFile.Text);
end;
// open spravka
procedure TForm1.N3Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('Spravka\�������.chm'), nil, nil, SW_SHOW);
end;
//Close programm
procedure TForm1.N4Click(Sender: TObject);
begin
Close;
end;
//message about author
procedure TForm1.N5Click(Sender: TObject);
begin
ShowMessage('��������� �.�.' +#13+ '�� ���� ���-40');
end;
end.
