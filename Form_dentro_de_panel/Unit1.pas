unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Unit2, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDados: TTabSheet;
    pan1: TPanel;
    spl1: TSplitter;
    pan2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    f_Filho_1 : TForm2;
    f_Filho_2 : TForm2;
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_Filho_1);
   FreeAndNil(f_Filho_2);
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
   f_Filho_1 := TForm2.Create(Self);
   f_Filho_1.Parent := pan1;
   f_Filho_1.Align := alClient;
   f_Filho_1.show;

   f_Filho_2 := TForm2.Create(Self);
   f_Filho_2.Parent := pan2;
   f_Filho_2.Align := alClient;
   f_Filho_2.show;
end;


end.
