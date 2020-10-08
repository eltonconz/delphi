unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    mmoEventos: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    chkConsiderarOnKeyDown: TCheckBox;
    Label4: TLabel;
    chkConsiderarOnKeyPress: TCheckBox;
    btnIniciarParar: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIniciarPararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.btnIniciarPararClick(Sender: TObject);
begin

   if Self.KeyPreview then
   begin
      Self.KeyPreview         := False;
      btnIniciarParar.Caption := 'Iniciar captura de teclado';
   end else
   begin
      Self.KeyPreview         := True;
      btnIniciarParar.Caption := 'Parar captura de teclado';
   end;

end;


procedure TfrmExemplo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

   // Quando pressiona o F1
   if Key = VK_F1 then
      mmoEventos.Lines.Clear;

   // Quando pressiona o ESC
   if Key = VK_ESCAPE then
      Close;

   if chkConsiderarOnKeyDown.Checked then
      mmoEventos.Lines.Add('Evento OnKeyDown tecla '+ IntToStr(Key) );

end;


procedure TfrmExemplo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if chkConsiderarOnKeyPress.Checked then
      mmoEventos.Lines.Add('Evento OnKeyPress tecla '+ Key );

end;

end.
