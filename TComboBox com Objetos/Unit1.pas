unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;



type TCarro = class
   private
      f_sMarca : string;
      f_sNome  : string;
      f_iAno   : integer;
   public
      constructor Novo(inMarca, inNome : string; inAno : integer);
      function ToString : string;
end;





type
  TForm1 = class(TForm)
    cbo1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
var lCarro : TCarro;
begin
   cbo1.Items.Clear;
   cbo1.Items.AddObject('Fusca 63',TCarro.Novo('Volkswagen','Fusca',1963));
   cbo1.Items.AddObject('Kombi 71',TCarro.Novo('Volkswagen','Kombi',1971));
   cbo1.Items.AddObject('Uno 92',TCarro.Novo('Fiat','Uno',1992));

   lCarro := TCarro.Novo('GM','Corsa',1996);
   cbo1.Items.AddObject('Corsa 96',lCarro);

   lCarro := TCarro.Novo('Ford','Ka',2005);
   cbo1.Items.AddObject('Ka 2005',lCarro);

   cbo1.ItemIndex := 0;

end;



procedure TForm1.btn2Click(Sender: TObject);
begin
   ShowMessage(
       TCarro(
         cbo1.Items.Objects[cbo1.ItemIndex]
       ).ToString
   );
end;



{ TCarro }

constructor TCarro.Novo(inMarca, inNome : string; inAno : integer);
begin
   Self.f_sMarca := inMarca;
   Self.f_sNome  := inNome;
   Self.f_iAno   := inAno;
end;

function TCarro.ToString: string;
begin
   result := Self.f_sMarca + ' ' + Self.f_sNome + ' ' + IntToStr(Self.f_iAno);
end;


end.
