unit UFormaGeometrica;

interface

   Type TFormaGeometrica = record
      Altura  : double;
      Largura : double;

      function CalculaAreaRetangulo : double;
      function CalculaAreaTriangulo : double;

   end;


implementation

{ TFormaGeometrica }

function TFormaGeometrica.CalculaAreaRetangulo: double;
begin
   result := Self.Altura * Self.Largura;
end;


function TFormaGeometrica.CalculaAreaTriangulo: double;
begin
   result := Self.CalculaAreaRetangulo / 2 ;
end;


end.
