unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JclStrings, StdCtrls, JclFileUtils, IOUtils;

type
  TForm3 = class(TForm)
    edtEntrada: TEdit;
    btn1: TButton;
    chkLetras: TCheckBox;
    chkNumeros: TCheckBox;
    chkLetrasNumero: TCheckBox;
    btn2: TButton;
    edtTexto: TEdit;
    btnPrefixo: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    edtCar: TEdit;
    Button4: TButton;
    Button5: TButton;
    btn3: TButton;
    edtTam: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn4: TButton;
    Button6: TButton;
    Button7: TButton;
    btn5: TButton;
    edtSaida: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    edtArquivo: TEdit;
    btn11: TButton;
    Label6: TLabel;
    btn12: TButton;
    btn13: TButton;
    lst1: TListBox;
    Label7: TLabel;
    Label8: TLabel;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    btn15: TButton;
    chkCaseSensitive: TCheckBox;
    btn16: TButton;
    btn14: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnPrefixoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn10Click(Sender: TObject);
begin
   edtSaida.Text := StrRight(edtEntrada.Text,StrToInt(edtTam.Text));
end;

procedure TForm3.btn11Click(Sender: TObject);
begin
   edtSaida.Text := FileToString(edtArquivo.Text);
end;

procedure TForm3.btn12Click(Sender: TObject);
begin
   StringToFile(edtArquivo.Text,edtEntrada.Text);
end;

procedure TForm3.btn13Click(Sender: TObject);
var lLista : TStringList;
begin
   lLista := TStringList.Create;
   lLista.Clear;

   StrTokenToStrings(edtEntrada.Text,edtCar.Text[1],lLista);
   lst1.Items := lLista;

   FreeAndNil(lLista);
end;


procedure TForm3.btn14Click(Sender: TObject);
var lsParam : string;
begin
   lsParam := ExtractFilePath(ParamStr(0));
   ShowMessage(lsParam);

   lsParam := TDirectory.GetParent(ExcludeTrailingPathDelimiter(lsParam)) + '\';
   ShowMessage(lsParam);

   lsParam := TDirectory.GetParent(ExcludeTrailingPathDelimiter(lsParam));
   ShowMessage(lsParam);

   lsParam := TDirectory.GetParent(ExcludeTrailingPathDelimiter(lsParam));
   ShowMessage(lsParam);

end;

procedure TForm3.btn15Click(Sender: TObject);
var lsSituacao : string;
begin
   lsSituacao := 'DIFERENTES';
   if StrSame(edtOrigem.Text,edtDestino.Text,chkCaseSensitive.Checked) then
      lsSituacao := 'IGUAIS';
   edtSaida.Text := lsSituacao;
end;

procedure TForm3.btn16Click(Sender: TObject);
begin
   edtSaida.Text := StrQuote(edtEntrada.Text,edtCar.Text[1]);
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
   chkLetras.Checked       := StrIsAlpha(edtEntrada.Text);
   chkNumeros.Checked      := StrIsDigit(edtEntrada.Text);
   chkLetrasNumero.Checked := StrIsAlphaNum(edtEntrada.Text);
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
   edtSaida.Text := StrCenter(edtEntrada.Text,StrToInt(edtTam.Text),edtCar.Text[1]);
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
   edtSaida.Text := StrRepeat(edtCar.Text[1],StrToInt(edtTam.Text));
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
   edtSaida.Text := StrReverse(edtEntrada.Text);
end;

procedure TForm3.btn5Click(Sender: TObject);
var liCont : integer;
begin
   liCont := StrCharCount(edtEntrada.Text,edtCar.Text[1]);
   edtSaida.Text := 'O caractere '+edtCar.Text+' aparece '+IntToStr(liCont)+' vez(es)';;
end;

procedure TForm3.btn6Click(Sender: TObject);
var liCont : integer;
begin
   liCont := StrStrCount(edtEntrada.Text,edtTexto.Text);
   edtSaida.Text := 'A string '+edtTexto.Text+' aparece '+IntToStr(liCont)+' vez(es)';;
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
   edtSaida.Text := StrAfter(edtTexto.Text,edtEntrada.Text);
end;

procedure TForm3.btn8Click(Sender: TObject);
begin
   edtSaida.Text := StrBefore(edtTexto.Text,edtEntrada.Text);
end;

procedure TForm3.btn9Click(Sender: TObject);
begin
   edtSaida.Text := StrLeft(edtEntrada.Text,StrToInt(edtTam.Text));
end;

procedure TForm3.btnPrefixoClick(Sender: TObject);
begin
   edtSaida.Text := StrEnsurePrefix(edtTexto.Text,edtEntrada.Text)
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
   edtSaida.Text := StrEnsureNoPrefix(edtTexto.Text,edtEntrada.Text)
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   edtSaida.Text := StrEnsureSuffix(edtTexto.Text,edtEntrada.Text)
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
   edtSaida.Text := StrEnsureNoSuffix(edtTexto.Text,edtEntrada.Text)
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
   edtSaida.Text := StrPadLeft(edtEntrada.Text,StrToInt(edtTam.Text),edtCar.Text[1]);
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
   edtSaida.Text := StrPadRight(edtEntrada.Text,StrToInt(edtTam.Text),edtCar.Text[1]);
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
   edtSaida.Text := StrSmartCase(edtEntrada.Text,[' '])
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
   edtSaida.Text := 'Tamanho é: '+IntToStr(StrLength(edtEntrada.Text));
end;



end.
