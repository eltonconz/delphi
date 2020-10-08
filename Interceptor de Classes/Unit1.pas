unit Unit1;

{
   Material

   https://www.portugal-a-programar.pt/forums/topic/50132-class-interceptors-criando-um-tbutton-com-dois-estados/
   https://wiki.portugal-a-programar.pt/dev_geral:pascal:delphi:class_interceptor


}


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, button_interceptor, edit_interceptor, form_interceptor;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    edt4: TEdit;
    edt3: TEdit;
    edt2: TEdit;
    mmo1: TMemo;
    btn2: TButton;
    btnConfirmacaoSaidaForm: TButton;
    btn5: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnConfirmacaoSaidaFormClick(Sender: TObject);
    procedure edt4Exit(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;



procedure TForm1.btn1Click(Sender: TObject);
begin
   ShowMessage('aa');
end;


procedure TForm1.btn2Click(Sender: TObject);
begin
   mmo1.Lines := edt1.GetHistorico;
   edt1.LimparHistorico;

   btn2.NossoTexto := 'TESTE';
   ShowMessage(pWideChar(btn2.Caption + ' / ' + btn2.NossoTexto));
end;



procedure TForm1.btnConfirmacaoSaidaFormClick(Sender: TObject);
begin
   Self.Confirmar_Saida_Form := not(Self.Confirmar_Saida_Form);

   if Self.Confirmar_Saida_Form then
      btnConfirmacaoSaidaForm.Caption := 'Desabilitar Confirmação ao Sair do Formulário'
   else
      btnConfirmacaoSaidaForm.Caption := 'Habilitar Confirmação ao Sair do Formulário';
end;


procedure TForm1.btn5Click(Sender: TObject);
begin
   Form2.ShowModal;
end;

procedure TForm1.edt4Exit(Sender: TObject);
begin
   edt3.Text := 'AAAA';
   edt4.ProcOnExit(Self);
end;


end.
