unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, form_interceptor, Vcl.StdCtrls, edit_interceptor;

type
  TForm2 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}





procedure TForm2.btn1Click(Sender: TObject);
var liTemp : integer;
begin
   edt2.AsInteger := edt1.AsInteger * 2;
end;



procedure TForm2.FormCreate(Sender: TObject);
begin
   // asdad
end;

end.
