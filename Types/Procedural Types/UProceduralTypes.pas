unit UProceduralTypes;


interface

Type
   TFuncaoMatematicaDoisOperadores = function (inVal1, inVal2 : double ) : double;


function Somar(inVal1, inVal2 : double ) : double;
function Subtrair(inVal1, inVal2 : double ) : double;
function Multiplicar(inVal1, inVal2 : double ) : double;
function Dividir(inVal1, inVal2 : double ) : double;


implementation

function Somar(inVal1, inVal2 : double ) : double;
begin
   result := inVal1 + inVal2;
end;

function Subtrair(inVal1, inVal2 : double ) : double;
begin
   result := inVal1 - inVal2;
end;

function Multiplicar(inVal1, inVal2 : double ) : double;
begin
   result := inVal1 * inVal2;
end;

function Dividir(inVal1, inVal2 : double ) : double;
begin
   if inVal2 > 0 then
      result := inVal1 / inVal2
   else
      result := 0;
end;


end.
