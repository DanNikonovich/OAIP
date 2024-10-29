unit Unit6;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw;
type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure setQ(num:integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AddBalanceIfCorrect(num: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form6: TForm6;
  q: array[1..10] of string;
  a: array[1..10] of string;
  v: array[1..10] of string;
  ra:string;
  cv:integer;
  ca:string;
  res:boolean;
  cn:integer;
implementation
{$R *.dfm}
uses Unit4;
//set number,answer,text, current value for quection
procedure Tform6.setQ(num:integer);
begin
  cn := num;
  memo1.Lines.Add(q[num]);
  ra := a[num];
  cv := strtoint(v[num]);
end;
//set answer true
procedure TForm6.Button1Click(Sender: TObject);
begin
ca := '�';
AddBalanceIfCorrect(cn);
end;
//add balance and show messeage in incorrect answer
procedure TForm6.AddBalanceIfCorrect(num:integer);
var
  filename: string;
  F: TextFile;
  messageText: string;
begin
  if ra = ca then
  begin
    unit4.balance := balance + cv;
    Form4.Label1.Caption := '����: ' + IntToStr(unit4.balance);
    res := true;
  end
  else
  begin
    res := false;
    filename := 'Answer\' + IntToStr(num) + '.txt';
    AssignFile(F, ExtractFilePath(ParamStr(0)) + filename);
    Reset(F);
    while not eof(F) do
    begin
      ReadLn(F, messageText);
      messageDlg(messageText, mtInformation, [mbOk],0);
    end;
    CloseFile(F);
  end;
  Close;
end;
//set answer false
procedure TForm6.Button2Click(Sender: TObject);
begin
ca := '�';
AddBalanceIfCorrect(cn);
end;
//raed questiona data
procedure TForm6.FormCreate(Sender: TObject);
var F:TextFile;
var s:string;
begin
  for var i := 1 to 10 do
    q[i] := '';
  var qind:integer:=1;
  var ind:integer:=1;
  AssignFile(F, ExtractFilePath(ParamStr(0)) + 'Question\1.txt');
  Reset(f);
  while not eof(f) do begin
    readln(f, s);
    if s[1] = '-' then
      q[qind] := q[qind] + s.Substring(1) + ' '
    else begin
      var spl := s.Split([' ']);
      a[ind] := spl[0];
      v[ind] := spl[1];
      qind := qind + 1;
      ind := ind + 1;
    end;
  end;
end;
end.
