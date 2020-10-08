unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JclCounter, StdCtrls;

type
  TForm3 = class(TForm)
    btn1: TButton;
    Button1: TButton;
    edt1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  luContador : TJclCounter;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
   if luContador.Counting then
   begin
      ShowMessage('clique em parar');
      exit;
   end;

   edt1.Clear;
   luContador.Start;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
   if not(luContador.Counting) then
   begin
      ShowMessage('clique em iniciar');
      exit;
   end;

   luContador.Stop;
   edt1.Text := FloatToStr(luContador.ElapsedTime)+' ssegundos';
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   edt1.Text := FloatToStr(luContador.RunElapsedTime)+' ssegundos';
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   luContador := TJclCounter.Create(true);
end;

end.
