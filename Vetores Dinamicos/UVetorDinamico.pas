unit UVetorDinamico;

interface

uses System.Classes, System.SysUtils ;

var luVetorDinamico : array of Integer;

procedure Vetor_Resetar;
function  Vetor_Retornar_Tamanho : Integer;
function  Vetor_Adicionar_Item(inNumero : integer) : integer;
function  Vetor_Listar : string;
function  Vetor_Alterar_Elemento_Da_Posicao(inPosicao, inNovoValor : integer) : Boolean;
function  Vetor_Remover_Elemento_Da_Posicao(inPosicao : integer) : Boolean;
procedure Vetor_Alimentar_Sequencial;


implementation


// Retorna o tamanho do vetor
function Vetor_Retornar_Tamanho : Integer;
begin
   result := Length(luVetorDinamico);
end;


// Adicionar item no vetor
function Vetor_Adicionar_Item(inNumero : integer) : integer;
var liTamanho, liPos : Integer;
begin

   // 1. Pegar o tamanho
   liTamanho := Vetor_Retornar_Tamanho;

   // 2. Aumentar em 1 o tamanho
   SetLength(luVetorDinamico , liTamanho + 1);

   // 3. Inserir o elemento na última posição
   liPos := liTamanho;
   luVetorDinamico[liPos] := inNumero;

   // 4. Retornar a posição em que o item foi incluido
   result := liPos ;

end;



// Lista o vetor em uma string
function Vetor_Listar : string;
var liTamanho, liPos : Integer;
begin
   result := '';

   // 1. Pegar o tamanho
   liTamanho := Vetor_Retornar_Tamanho;

   // 2; Percorrer o vetor e colocar o conteúdo em uma string
   for liPos := 0 to liTamanho -1 do
      result := result + '[' + IntToStr(liPos) + '] = ' + IntToStr(luVetorDinamico[liPos]) + #13+#10;

end;


// Apaga todos elementor do vetor
procedure Vetor_Resetar;
begin
   // Para resetar o vetor, basta setar o tamanho para zero
   SetLength(luVetorDinamico , 0);
end;


// Remove o elemento de uma determinada posição
function Vetor_Remover_Elemento_Da_Posicao(inPosicao : integer) : Boolean;
var liTamanho, liPos : Integer;
begin

   result := False;

   // 1. Pegar o tamanho do vetor
   liTamanho := Vetor_Retornar_Tamanho;

   // 2. Verificar se a posição existe
   if (inPosicao < 0) or ( inPosicao > (liTamanho-1))  then
   begin
      result := False;
      Exit;
   end;

   // 3. Move todos os elementos do vetor que estão a direita da posição que será removida para a esquerda
   for liPos := inPosicao + 1 to liTamanho -1 do
      luVetorDinamico[liPos-1] := luVetorDinamico[liPos];

   // 4. Diminuir em 1 o tamanho do vetor
   SetLength(luVetorDinamico , liTamanho - 1);

   result := True;

end;


// Altera o conteúdo de um determinado elemento do vetor
function  Vetor_Alterar_Elemento_Da_Posicao(inPosicao, inNovoValor : integer) : Boolean;
var liTamanho : Integer;
begin

   result := False;

   // 1. Pegar o tamanho do vetor
   liTamanho := Vetor_Retornar_Tamanho;

   // 2. Verificar se a posição existe
   if (inPosicao < 0) or ( inPosicao > (liTamanho-1))  then
   begin
      result := False;
      Exit;
   end;

   // 3. Altera o valor da posição
   luVetorDinamico[inPosicao] := inNovoValor;
   result := True;

end;





// Carrega um vetor com números sequenciais
procedure Vetor_Alimentar_Sequencial;
begin
   Vetor_Resetar;
   Vetor_Adicionar_Item(1);
   Vetor_Adicionar_Item(2);
   Vetor_Adicionar_Item(3);
   Vetor_Adicionar_Item(4);
   Vetor_Adicionar_Item(5);
   Vetor_Adicionar_Item(6);
   Vetor_Adicionar_Item(7);
   Vetor_Adicionar_Item(8);
   Vetor_Adicionar_Item(9);
   Vetor_Adicionar_Item(10);
end;


end.
