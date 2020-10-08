unit UfrmTQueue;

{
   Link interessante
   https://www.youtube.com/watch?v=BQRBa1-cPP8
}


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  UClas_Pessoa,
  Generics.Collections,
  Generics.Defaults;

type
  TfrmTQueue = class(TForm)
    btnEnq: TButton;
    mmoResult: TMemo;
    edtElemento: TEdit;
    btnPeek: TButton;
    btnDeq: TButton;
    btnExt: TButton;
    btnLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEnqClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnDeqClick(Sender: TObject);
    procedure btnExtClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    f_Fila : TQueue<string>;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}


procedure TfrmTQueue.btnDeqClick(Sender: TObject);
begin
   if f_Fila.Count > 0 then
      mmoResult.Lines.Add(f_Fila.Dequeue + ' saiu da fila');
   f_Fila.TrimExcess;
end;


procedure TfrmTQueue.btnEnqClick(Sender: TObject);
begin
   if trim(edtElemento.Text) <> '' then
   begin
      f_Fila.Enqueue(edtElemento.Text);
      edtElemento.Text := 'Pessoa '+ IntToStr(f_Fila.Count+1);
   end;
   f_Fila.TrimExcess;
end;


procedure TfrmTQueue.btnExtClick(Sender: TObject);
begin
   if f_Fila.Count > 0 then
      mmoResult.Lines.Add(f_Fila.Extract + ' extraido da fila');
   f_Fila.TrimExcess;
end;


procedure TfrmTQueue.btnLimparClick(Sender: TObject);
begin
   f_Fila.Clear;
end;

procedure TfrmTQueue.btnPeekClick(Sender: TObject);
begin
   if f_Fila.Count > 0 then
      mmoResult.Lines.Add('Primeiro da fila : ' + f_Fila.Peek);
end;

procedure TfrmTQueue.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_Fila);
end;

procedure TfrmTQueue.FormCreate(Sender: TObject);
begin
   f_Fila := TQueue<string>.Create;
end;



end.
