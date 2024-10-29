unit Unit4;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw;
type
  TForm4 = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    BitBtn1: TBitBtn;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    function AskQ(num:integer) : boolean;
    procedure Image9Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form4: TForm4;
  balance:integer;
implementation
{$R *.dfm}
uses Unit1, Unit6;
//music play
procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.MediaPlayer1.Play;
end;
//create 15 images
procedure TForm4.FormCreate(Sender: TObject);
var
  questionFile: TextFile;
  question: string;
  line: string;
   AppPath: string;
begin
balance := 0;
Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image2.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\balance.bmp');
Image3.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image4.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image5.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\balance.bmp');
Image6.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image7.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image8.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\balance.bmp');
Image9.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image10.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image11.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\balance.bmp');
Image12.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image13.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image14.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\1.bmp');
Image15.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'image\balance.bmp');
end;
//music stop and ask about rules
procedure TForm4.FormShow(Sender: TObject);
begin
Form1.MediaPlayer1.Stop;
messageDlg('�� ��������� �������?', mtInformation, [mbYes],0);
end;
//new image afte the 7th question
procedure TForm4.Image10Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(7) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image10.Picture.LoadFromFile(path);
  image10.Enabled := false
end;
//new image afte the 8th question
procedure TForm4.Image12Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(8) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image12.Picture.LoadFromFile(path);
  image12.Enabled := false
end;
//new image afte the 9th question
procedure TForm4.Image13Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(9) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image13.Picture.LoadFromFile(path);
  image13.Enabled := false
end;
//new image afte the 10th question
procedure TForm4.Image14Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(10) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image14.Picture.LoadFromFile(path);
  image14.Enabled := false
end;
//new image afte the 1st question
procedure TForm4.Image1Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(1) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image1.Picture.LoadFromFile(path);
  image1.Enabled := false
end;
//new image afte the 2nd question
procedure TForm4.Image3Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(2) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image3.Picture.LoadFromFile(path);
  image3.Enabled := false
end;
//new image afte the 3rd question
procedure TForm4.Image4Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(3) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image4.Picture.LoadFromFile(path);
  image4.Enabled := false
end;
//new image afte the 4th question
procedure TForm4.Image6Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(4) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image6.Picture.LoadFromFile(path);
  image6.Enabled := false
end;
//new image afte the 5th question
procedure TForm4.Image7Click(Sender: TObject);
begin
 var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(5) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image7.Picture.LoadFromFile(path);
  image7.Enabled := false
end;
//new image afte the 6th question
procedure TForm4.Image9Click(Sender: TObject);
begin
  var path := ExtractFilePath(ParamStr(0)) + 'image\';
  if AskQ(6) then
    path := path + '2.bmp'
  else
    path := path + '3.bmp';
  image9.Picture.LoadFromFile(path);
  image9.Enabled := false
end;
//set question on form6
function Tform4.AskQ(num:integer) : boolean;
begin
  form6.setQ(num);
  form6.ShowModal;
  Result := unit6.res;
end;
end.
