unit Unit3;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ExtCtrls;
type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form3: TForm3;
  f:text;
implementation
{$R *.dfm}
uses Unit1;
//music play
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.MediaPlayer1.Play;
end;
//music stop
procedure TForm3.FormShow(Sender: TObject);
begin
Form1.MediaPlayer1.Stop;
end;
//display presentation
procedure TForm3.RadioGroup1Click(Sender: TObject);
var
  FileName: String;
  AppPath: String;
begin
  AppPath := ExtractFilePath(ParamStr(0));
  case RadioGroup1.ItemIndex of
    0: FileName :=   AppPath + 'Presentation\���������-�������.html';
    1: FileName :=   AppPath + 'Presentation\�������.html';
    2: FileName :=   AppPath + 'Presentation\������.html';
  end;
  WebBrowser1.Navigate(FileName);
end;
end.
