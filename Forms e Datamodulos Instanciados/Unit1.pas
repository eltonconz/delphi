unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvComponentBase, JvThreadTimer;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    pan1: TPanel;
    btn2: TButton;
    JvThreadTimer1: TJvThreadTimer;
    btn1: TButton;
    procedure btn2Click(Sender: TObject);
    procedure JvThreadTimer1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.btn1Click(Sender: TObject);
var lForm3 : TForm3;
begin
   lForm3:=TForm3.Create(Self);
   try
      lForm3.ShowModal;
   finally
      FreeAndNil(lForm3);
   end;
end;


procedure TForm1.btn2Click(Sender: TObject);
begin
   Form2.Show;
end;


procedure TForm1.JvThreadTimer1Timer(Sender: TObject);
var liCont : integer;
begin
   mmo1.Lines.Clear;

   if Screen.ActiveForm = Self then
   begin
      mmo1.Lines.Add('Esotu no principal');
   end;

   mmo1.Lines.Add('Form Ativo = ' + Screen.ActiveForm.Name );
   mmo1.Lines.Add('Controle Ativo = ' + Screen.ActiveControl.Name + ' (' + Screen.ActiveControl.ClassName + ')');


   mmo1.Lines.Add('');
   mmo1.Lines.Add('Forms Instanciados / Em Memória');
   for liCont := 0 to Pred(Screen.FormCount) do
   begin
      mmo1.Lines.Add(Screen.Forms[liCont].Name + '/' + Screen.Forms[liCont].Caption);
   end;


   mmo1.Lines.Add('');
   mmo1.Lines.Add('Datamodules Instanciados / Em Memória');
   for liCont := 0 to Pred(Screen.DataModuleCount) do
   begin
      mmo1.Lines.Add(Screen.DataModules[liCont].Name);
   end;



   mmo1.Lines.Add('');
   mmo1.Lines.Add('Monitores');
   for liCont := 0 to Pred(Screen.MonitorCount) do
   begin
      mmo1.Lines.Add('Numero: '+ IntToStr(Screen.Monitors[liCont].MonitorNum));

      if Screen.Monitors[liCont].Primary then
         mmo1.Lines.Add('Monitor Primário')
      else
         mmo1.Lines.Add('Monitor Não Primário');

      mmo1.Lines.Add('Dimensões: '+ IntToStr(Screen.Monitors[liCont].Width) + 'x' + IntToStr(Screen.Monitors[liCont].Height));
   end;


end;


end.
