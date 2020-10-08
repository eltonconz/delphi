unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TIntProc = reference to procedure (n: Integer);
   TSenderProc =  reference to procedure (Sender: TObject);


type
  TForm1 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure CallTwice (value: Integer; anIntProc: TIntProc);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var anIntProc: TIntProc;
begin
   mmo1.Lines.Clear;

   anIntProc := procedure (n: Integer)
                begin
                   mmo1.Lines.Add(IntToStr (n));
                end;

   anIntProc (22);

end;



procedure TForm1.CallTwice (value: Integer; anIntProc: TIntProc);
begin
   anIntProc (value);
   Inc (value);
   anIntProc (value);
end;


procedure TForm1.btn2Click(Sender: TObject);
begin

   mmo1.Lines.Clear;

   CallTwice (48, procedure (n: Integer)
                  begin
                     mmo1.Lines.Add(IntToStr (n));
                  end);

   CallTwice (100, procedure (n: Integer)
                   begin
                      mmo1.Lines.Add(FloatToStr(Sqrt(n)));
                   end);

end;


procedure TForm1.btn3Click(Sender: TObject);
var aNumber: Integer;
var lProc : TSenderProc;
begin

   lProc := procedure (Sender: TObject)
            begin
               //raise Exception.Create('Opa');
               Application.Terminate;
            end;
   lProc(nil);


   mmo1.Lines.Clear;

   aNumber := 0;

   CallTwice(10, procedure (n: Integer)
                 begin
                    Inc(aNumber, n);
                 end);

   mmo1.Lines.Add(IntToStr(aNumber));

end;



end.

