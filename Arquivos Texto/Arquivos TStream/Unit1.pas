unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    btn3: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
   ct_Arquivo = 'D:\teste.txt';


implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var lSW : TStreamWriter;
begin

   try
      lSW := TStreamWriter.Create(ct_Arquivo,True);
      //lSW := TStreamWriter.Create(lsArquivo,False); Desconsidara conteúdo existente no arquivo

      lSW.WriteLine('Linha 1');
      lSW.WriteLine('Linha 2');

      // OU
      //lSW.Write('Linha 1');
      //lSW.WriteLine;
      //lSW.Write('Linha 2');

      lSW.Close;
   finally
      FreeAndNil(lSW);
   end;

   ShowMessage('Arquivo ' + ct_Arquivo + ' gerado!');

end;





procedure TForm1.btn2Click(Sender: TObject);
var lSR : TStreamReader;
var lsLinha : string;
begin

   mmo1.Lines.Clear;
   lSR := TStreamReader.Create(ct_Arquivo);
   try
      while not lSR.EndOfStream do
      begin
         lsLinha := lSR.ReadLine;
         mmo1.Lines.Add(lsLinha);
      end;
      lSR.Close;
   finally
      FreeAndNil(lSR);
   end;

end;





procedure TForm1.btn3Click(Sender: TObject);
var lSR : TStreamReader;
begin

   mmo1.Lines.Clear;
   lSR := TStreamReader.Create(ct_Arquivo);
   try
      mmo1.Lines.Text := lSR.ReadToEnd();
      lSR.Close;
   finally
      FreeAndNil(lSR);
   end;

end;




procedure TForm1.FormCreate(Sender: TObject);
begin
   lbl1.Caption := ct_Arquivo;
end;

end.
