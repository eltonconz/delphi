unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;


type TVetorInteiros = array[1..10] of Integer;


type TPessoa = record
   Nome  : string;
   Idade : Integer;
end;


type
  TfrmExemplo = class(TForm)
    btnVetorNumerico: TButton;
    mmoExemplo: TMemo;
    btnVetorTexto: TButton;
    btnMatrizNumeros: TButton;
    btnVetorDatas: TButton;
    btnVetorTipoDefinido: TButton;
    btnVetrorComoParametro: TButton;
    procedure btnVetorNumericoClick(Sender: TObject);
    procedure btnVetorTextoClick(Sender: TObject);
    procedure btnMatrizNumerosClick(Sender: TObject);
    procedure btnVetorDatasClick(Sender: TObject);
    procedure btnVetorTipoDefinidoClick(Sender: TObject);
    procedure btnVetrorComoParametroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function OrdenaVetorInteiros(inVetor : TVetorInteiros ) : TVetorInteiros;
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}


procedure TfrmExemplo.btnMatrizNumerosClick(Sender: TObject);
var lMatriz : array[1..3,1..3] of Integer;
var liLinha, liColuna : integer;
var lsTextoLinha : string;
begin

   // Carregar a matriz com valores randomicos
   for liLinha := 1 to 3 do
   begin
      for liColuna := 1 to 3 do
      begin
         lMatriz[liLinha,liColuna] := Random(9);
      end;
   end;

   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Escrever a Matriz
   for liLinha := 1 to 3 do
   begin

      lsTextoLinha := '';

      for liColuna := 1 to 3 do
         lsTextoLinha := lsTextoLinha + ' ' + IntToStr(lMatriz[liLinha,liColuna]);

      mmoExemplo.Lines.Add(lsTextoLinha);
   end;


end;



procedure TfrmExemplo.btnVetorDatasClick(Sender: TObject);
var lVetorDatas : array[1..10] of TDate;
var liPos : integer;
begin

   // Caerregar o vetor
   for liPos := 1 to 10 do
      lVetorDatas[liPos] := IncDay(Date,liPos);

   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Crragear o memo com os valores do vetor
   for liPos := 1 to 10 do
      mmoExemplo.Lines.Add( DateToStr(lVetorDatas[liPos]));

end;




procedure TfrmExemplo.btnVetorNumericoClick(Sender: TObject);
var lVetorNumeros : array[1..10] of Integer;
var liPos : integer;
begin

   // Carregar o vator posição a posição
   lVetorNumeros[1]  := 25;
   lVetorNumeros[2]  := 12;
   lVetorNumeros[3]  := 11;
   lVetorNumeros[4]  := 10;
   lVetorNumeros[5]  := 2;
   lVetorNumeros[6]  := 38;
   lVetorNumeros[7]  := 172;
   lVetorNumeros[8]  := 2;
   lVetorNumeros[9]  := 0;
   lVetorNumeros[10] := 716;

   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Crragear o memo com os valores do vetor
   for liPos := 1 to 10 do
   begin
      mmoExemplo.Lines.Text := mmoExemplo.Lines.Text + ' ' + IntToStr( lVetorNumeros[liPos] );
   end;

end;



procedure TfrmExemplo.btnVetorTextoClick(Sender: TObject);
var lVetorTextos : array[1..10] of string;
var liPos : integer;
begin

   // Carregar o vetor
   for liPos := 1 to 10 do
   begin
      lVetorTextos[liPos] := 'TEXTO '+ IntToStr(liPos) ;
   end;

   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Crragear o memo com os valores do vetor
   for liPos := 1 to 10 do
   begin
      mmoExemplo.Lines.Add(lVetorTextos[liPos])
   end;


end;



procedure TfrmExemplo.btnVetorTipoDefinidoClick(Sender: TObject);
var lVetor : array[1..5] of TPessoa;
var liPos : integer;
begin

   // Carregar o Vetor
   lVetor[1].Nome  := 'Elton';
   lVetor[1].Idade := 34;

   lVetor[2].Nome  := 'Luciane';
   lVetor[2].Idade := 20;

   lVetor[3].Nome  := 'Mike';
   lVetor[3].Idade := 20;

   lVetor[4].Nome  := 'Marcelo';
   lVetor[4].Idade := 25;

   lVetor[5].Nome  := 'Matthias';
   lVetor[5].Idade := 25;


   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Crragear o memo com os valores do vetor
   for liPos := 1 to 5 do
   begin
      mmoExemplo.Lines.Add(lVetor[liPos].Nome + ' tem '+ IntToStr(lVetor[liPos].Idade) + ' anos.' )
   end;

end;



procedure TfrmExemplo.btnVetrorComoParametroClick(Sender: TObject);
var lVetor, lVetorOrdenado : TVetorInteiros;
var liPos : integer;
var lsAux : string;
begin

   // Limpar o memo
   mmoExemplo.Lines.Clear;

   // Carrega o vetor
   lVetor[1]  := 4;
   lVetor[2]  := 2;
   lVetor[3]  := 8;
   lVetor[4]  := 1;
   lVetor[5]  := 5;
   lVetor[6]  := 6;
   lVetor[7]  := 10;
   lVetor[8]  := 3;
   lVetor[9]  := 9;
   lVetor[10] := 7;


   // Lista o vetor original
   lsAux := '';
   for liPos := 1 to 10 do
      lsAux := lsAux + ' ' + IntToStr(lVetor[liPos]);

   mmoExemplo.Lines.Add('Vetor Original');
   mmoExemplo.Lines.Add(lsAux);
   mmoExemplo.Lines.Add('');


   // Passa o vetor como parametro e recebe como retorno outro vetor
   lVetorOrdenado := OrdenaVetorInteiros(lVetor);


   // Lista o vetor ordenado
   lsAux := '';
   for liPos := 1 to 10 do
      lsAux := lsAux + ' ' + IntToStr(lVetorOrdenado[liPos]);

   mmoExemplo.Lines.Add('Vetor Ordenado');
   mmoExemplo.Lines.Add(lsAux);
   mmoExemplo.Lines.Add('');


end;



function TfrmExemplo.OrdenaVetorInteiros(inVetor: TVetorInteiros) : TVetorInteiros;
var liPos, liPos2, liAux : integer;
begin
   result := inVetor;

   for liPos := 1 to 10 do
   begin
      for liPos2 := liPos + 1 to 10 do
      begin
         if result[liPos2] < result[liPos] then
         begin
            liAux          := result[liPos];
            result[liPos]  := result[liPos2];
            result[liPos2] := liAux;
         end;
      end;
   end;

end;


end.
