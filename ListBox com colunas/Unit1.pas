unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lstTeste: TListBox;
    btnOpcao1: TButton;
    btnOpcao2: TButton;
    procedure btnOpcao1Click(Sender: TObject);
    procedure btnOpcao2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOpcao1Click(Sender: TObject);
var liCont : integer;
begin

   lstTeste.Items.Clear;

   lstTeste.Columns := 3;
   for liCont := 1 to 100 do
   begin
      lstTeste.Items.Add('Item ' + IntToStr(liCont));
   end;

end;



procedure TForm1.btnOpcao2Click(Sender: TObject);
begin

   lstTeste.Items.Clear;

   lstTeste.TabWidth := 50;
   lstTeste.Items.Add('Item 1' + #9 + 'Item 2');
   lstTeste.Items.Add('Item 3' + #9 + 'Item 4');
   lstTeste.Items.Add('Item 5' + #9 + 'Item 6');

end;



end.
