unit UfrmTStack;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  UClas_Pessoa,
  Generics.Collections,
  Generics.Defaults;

type
  TfrmTStack = class(TForm)
    btnPush: TButton;
    mmoResult: TMemo;
    edtElemento: TEdit;
    btnPeek: TButton;
    btnPop: TButton;
    btnLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPushClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnPopClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    f_Pilha : TStack<string>;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmTStack.btnLimparClick(Sender: TObject);
begin
   f_Pilha.Clear;
end;

procedure TfrmTStack.btnPeekClick(Sender: TObject);
begin
   if f_Pilha.Count > 0 then
   begin
      mmoResult.Lines.Add('No topo da pilha está : ' +f_Pilha.Peek);
   end;
end;

procedure TfrmTStack.btnPopClick(Sender: TObject);
begin
   if f_Pilha.Count > 0 then
   begin
      mmoResult.Lines.Add(f_Pilha.Pop + ' removido da pilha');
      f_Pilha.TrimExcess;
   end;
end;

procedure TfrmTStack.btnPushClick(Sender: TObject);
begin
   if trim(edtElemento.Text) <> '' then
   begin
      f_Pilha.Push(edtElemento.Text);
      edtElemento.Text := 'Item '+ IntToStr(f_Pilha.Count+1);
   end;
   f_Pilha.TrimExcess;
end;


procedure TfrmTStack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_Pilha);
end;


procedure TfrmTStack.FormCreate(Sender: TObject);
begin
   f_Pilha := TStack<string>.Create;
end;

end.
