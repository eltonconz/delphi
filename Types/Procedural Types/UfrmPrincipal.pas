unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    cboOperador: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UProceduralTypes;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var lfValor1, lfValor2, lfResultado : double;
var lFunc : TFuncaoMatematicaDoisOperadores;
begin


   lfValor1 := StrToFloatDef(edtValor1.Text,0);
   lfValor2 := StrToFloatDef(edtValor2.Text,0);

   // Selecionar a função conforme a escolha do usuário
   if cboOperador.Text = '+' then
      lFunc := Somar
   else if cboOperador.Text = '-' then
      lFunc := Subtrair
   else if cboOperador.Text = '*' then
      lFunc := Multiplicar
   else if cboOperador.Text = '/' then
      lFunc := Dividir;

   // Executar a função
   lfResultado := lFunc(lfValor1,lfValor2);

   edtResultado.Text := FloatToStr(lfResultado);

end;



end.
