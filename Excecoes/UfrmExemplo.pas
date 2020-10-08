unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    lbl1: TLabel;
    Label1: TLabel;
    btnDividir: TButton;
    edtResultado: TEdit;
    Label2: TLabel;
    btnDividirTratando: TButton;
    btnDividirTratando2: TButton;
    procedure btnDividirClick(Sender: TObject);
    procedure btnDividirTratandoClick(Sender: TObject);
    procedure btnDividirTratando2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.btnDividirClick(Sender: TObject);
var lfValor1, lfValor2 , lfResultado : double;
begin
   // Modelo sem nenhum tratamento
   // O que acontece quando os edits não contém números ou quando valor do edtValor2 for zero ?

   lfValor1 := StrToFloat(edtValor1.Text);

   lfValor2 := StrToFloat(edtValor2.Text);

   lfResultado := lfValor1 / lfValor2;

   edtResultado.Text := FloatToStr(lfResultado);

end;



procedure TfrmExemplo.btnDividirTratandoClick(Sender: TObject);
var lfValor1, lfValor2 , lfResultado : double;
begin

   try
      lfValor1 := StrToFloat(edtValor1.Text);
   except
      lfValor1 := 0;
   end;

   try
      lfValor2 := StrToFloat(edtValor2.Text);
   except
      lfValor2 := 0;
   end;

   try
      lfResultado := lfValor1 / lfValor2;
      edtResultado.Text := FloatToStr(lfResultado);
   except
      edtResultado.Text := 'Divisão inválida';
   end;

end;



procedure TfrmExemplo.btnDividirTratando2Click(Sender: TObject);
var lfValor1, lfValor2 , lfResultado : double;
begin

   // Tenta converter a string em número, se der erro pega o valor default
   lfValor1 := StrToFloatDef(edtValor1.Text , 0);
   lfValor2 := StrToFloatDef(edtValor2.Text , 0);

   try
      lfResultado       := lfValor1 / lfValor2;
      edtResultado.Text := FloatToStr(lfResultado);
   except
      on E: Exception do
      begin
         edtResultado.Text := E.Message;
      end;
   end;

end;




end.
