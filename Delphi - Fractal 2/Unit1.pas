unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    PntBox1: TPaintBox;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure step(a, p : integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,x2,x3,x4,x5,x6,y1,y2,y3,y4,y5,y6 : real;
  x, y : real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var t, i, n, c, f, m : integer;
begin
  f := StrToInt(edit4.Text);
  x := 350;
  y := 270;
  n := StrToInt(edit3.Text);
  m := StrToInt(edit1.Text);
  If f = 2 then
  begin
    c := 2;
    x1 := 50;
    x2 := 550;
    y1 := 500;
    y2 := 500;
  end;
  If f = 31 then
  begin
    c := 3;
    x1 := 50;
    x2 := 550;
    x3 := 300;
    y1 := 500;
    y2 := 500;
    y3 := 100;
  end;
  If f = 32 then
  begin
    c := 3;
    x1 := 50;
    x2 := 550;
    x3 := 150;
    y1 := 500;
    y2 := 500;
    y3 := 100;
  end;
  If f = 41 then
  begin
    c := 4;
    x1 := 50;
    x2 := 550;
    x3 := 150;
    x4 := 450;
    y1 := 500;
    y2 := 500;
    y3 := 100;
    y4 := 100;
  end;
  If f = 42 then
  begin
    c := 4;
    x1 := 50;
    x2 := 550;
    x3 := 50;
    x4 := 550;
    y1 := 600;
    y2 := 600;
    y3 := 100;
    y4 := 100;
  end;
  If f = 43 then
  begin
    c := 4;
    x1 := 50;
    x2 := 550;
    x3 := 300;
    x4 := 300;
    y1 := 500;
    y2 := 500;
    y3 := 100;
    y4 := 350;
  end;
  If f = 51 then
  begin
    c := 5;
    x1 := 175;
    x2 := 425;
    x3 := 75;
    x4 := 525;
    x5 := 300;
    y1 := 550;
    y2 := 550;
    y3 := 300;
    y4 := 300;
    y5 := 150;
  end;
  If f = 52 then
  begin
    c := 5;
    x1 := 50;
    x2 := 550;
    x3 := 50;
    x4 := 550;
    x5 := 300;
    y1 := 600;
    y2 := 600;
    y3 := 100;
    y4 := 100;
    y5 := 350;
  end;
  If f = 61 then
  begin
    c := 6;
    x1 := 200;
    x2 := 400;
    x3 := 100;
    x4 := 500;
    x5 := 200;
    x6 := 400;
    y1 := 500;
    y2 := 500;
    y3 := 300;
    y4 := 300;
    y5 := 100;
    y6 := 100;
  end;
  If f = 62 then
  begin
    c := 6;
    x1 := 175;
    x2 := 425;
    x3 := 75;
    x4 := 525;
    x5 := 300;
    x6 := 300;
    y1 := 550;
    y2 := 550;
    y3 := 300;
    y4 := 300;
    y5 := 150;
    y6 := 350;
  end;
  Pntbox1.Canvas.Brush.Color := clBlack;
  Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
  Randomize;
  for i := 1 to n do
  begin
    t := random(c)+1;
    step(m,t);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Pntbox1.Canvas.Brush.Color := clWhite;
  Pntbox1.Canvas.Rectangle(0,0,700,650);
  Pntbox1.Canvas.Brush.Color := clBlack;
end;

procedure TForm1.step(a, p : integer);
begin
  if a = 1 then
  begin
  end else begin
    if p = 1 then
    begin
      x := x + (x1-x)/a;
      y := y + (y1-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,1);
    end;
    if p = 2 then
    begin
      x := x + (x2-x)/a;
      y := y + (y2-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,2);
    end;
    if p = 3 then
    begin
      x := x + (x3-x)/a;
      y := y + (y3-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,3);
    end;
    if p = 4 then
    begin
      x := x + (x4-x)/a;
      y := y + (y4-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,4);
    end;
    if p = 5 then
    begin
      x := x + (x5-x)/a;
      y := y + (y5-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,5);
    end;
    if p = 6 then
    begin
      x := x + (x6-x)/a;
      y := y + (y6-y)/a;
      Pntbox1.Canvas.Ellipse(round(x-1),round(y-1),round(x+1),round(y+1));
      step(a-1,6);
    end;
  end;
end;

end.
