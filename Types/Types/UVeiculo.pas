unit UVeiculo;

interface

uses System.SysUtils;


   type TVeiculo = record
      Nome   : string;
      Marca  : string;
      Ano    : integer;

      function ToString : string;
   end;


implementation

{ TVeiculo }

function TVeiculo.ToString: string;
begin
   result := Self.Nome + ' ' + self.Marca + ' (' + IntToStr(Self.Ano) + ')';
end;

end.
