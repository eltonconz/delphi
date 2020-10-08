unit UPessoa;

interface

uses System.SysUtils, System.Classes, UVeiculo;


   type TPessoa = record
      Nome           : string;
      DataNascimento : TDate;
      Altura         : double;
      Peso           : double;
      Veiculo        : TVeiculo;
   end;


   function PessoaToString(inPessoa : TPessoa) : string;


implementation



function PessoaToString(inPessoa : TPessoa) : string;
begin
   result := inPessoa.Nome + ' (' + DateToStr(inPessoa.DataNascimento) + ')';
end;


end.
