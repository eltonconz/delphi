unit UDiversosTiposPersonalziados;


interface


uses System.SysUtils, System.Classes, UPessoa, UVeiculo, UFormaGeometrica;


   type TArrayPessoas  = array[1..5] of TPessoa;

   type TArrayVeiculos = array[1..5] of TVeiculo;

   type TArrayFormas   = array[1..5] of TFormaGeometrica;

   type TArrayFormasDin = array of TFormaGeometrica;


   type TArrayPessoasDinamico = record
      Dados   : array of TPessoa; // Sempre começa na posição 0 (zero)
      function  AdicionarPessoa(inPessoa : TPessoa) : integer;
      procedure GetPessoas(inLista : TStrings);
      procedure LimparArray;
      function  GetPessoaMaisVelha(outPessoa : TPessoa) : boolean;
   end;



implementation


{ TArrayPessoasDinamico }

function TArrayPessoasDinamico.AdicionarPessoa(inPessoa: TPessoa): integer;
var liPos : integer;
begin

   liPos := Length(Self.Dados); // Pega o tamanho atual

   SetLength(Self.Dados,liPos+1); //  Aumenta o tamanho do array

   Self.Dados[liPos] := inPessoa; // Adiciona a pessoa no array

   result := liPos;

end;



function TArrayPessoasDinamico.GetPessoaMaisVelha(outPessoa : TPessoa) : boolean;
var lPessoa : TPessoa;
begin

   if Length(Self.Dados) = 0 then
   begin
      Exit(False);
   end;

   for lPessoa in Self.Dados do
   begin
      if lPessoa.DataNascimento < outPessoa.DataNascimento then
         outPessoa := lPessoa;
   end;

   result := True;

end;

procedure TArrayPessoasDinamico.GetPessoas(inLista: TStrings);
var lPessoa : TPessoa;
begin

   inLista.Clear;

   for lPessoa in Self.Dados do
   begin
      inLista.Add('Nome: '       + lPessoa.Nome);
      inLista.Add('Nascimento: ' + DateToStr(lPessoa.DataNascimento));
      inLista.Add('Altura: '     + FloatToStr(lPessoa.Altura));
      inLista.Add('Peso: '       + FloatToStr(lPessoa.Peso));
      inLista.Add('');
   end;

end;



procedure TArrayPessoasDinamico.LimparArray;
begin
   SetLength(Self.Dados,0);
end;


end.
