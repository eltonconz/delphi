unit UfrmGenerics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmGenerics = class(TForm)
    btnExemplo1: TButton;
    btnExemplo2: TButton;
    btnExemplo3: TButton;
    btnExemplo4: TButton;
    procedure btnExemplo1Click(Sender: TObject);
    procedure btnExemplo2Click(Sender: TObject);
    procedure btnExemplo3Click(Sender: TObject);
    procedure btnExemplo4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerics: TfrmGenerics;

implementation

{$R *.dfm}

uses UfrmGenerics_1, UfrmGenerics_2, UfrmGenerics_3, UfrmGenerics_4;

procedure TfrmGenerics.btnExemplo1Click(Sender: TObject);
var lfrmGenerics_1 : TfrmGenerics_1;
begin
   lfrmGenerics_1:=TfrmGenerics_1.Create(Self);
   try
      lfrmGenerics_1.ShowModal;
   finally
      FreeAndNil(lfrmGenerics_1);
   end;
end;



procedure TfrmGenerics.btnExemplo2Click(Sender: TObject);
var lfrmGenerics_2 : TfrmGenerics_2;
begin
   lfrmGenerics_2:=TfrmGenerics_2.Create(Self);
   try
      lfrmGenerics_2.ShowModal;
   finally
      FreeAndNil(lfrmGenerics_2);
   end;
end;



procedure TfrmGenerics.btnExemplo3Click(Sender: TObject);
var lfrmGenerics_3 : TfrmGenerics_3;
begin
   lfrmGenerics_3:=TfrmGenerics_3.Create(Self);
   try
      lfrmGenerics_3.ShowModal;
   finally
      FreeAndNil(lfrmGenerics_3);
   end;
end;


procedure TfrmGenerics.btnExemplo4Click(Sender: TObject);
var lfrmGenerics_4 : TfrmGenerics_4;
begin
   lfrmGenerics_4:=TfrmGenerics_4.Create(Self);
   try
      lfrmGenerics_4.ShowModal;
   finally
      FreeAndNil(lfrmGenerics_4);
   end;
end;


end.
