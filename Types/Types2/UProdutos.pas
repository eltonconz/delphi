unit UProdutos;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

   type TProduto = record
      Codigo   : integer;
      Nome     : string;
      Valdiade : TDate;
      Valor    : double;
      Marca    : string;
      function ToString : string;
      function IsValid : boolean;
   end;

implementation

{ TProduto }

function TProduto.IsValid: boolean;
begin
   result := True;

   if Self.Codigo<=0 then
      Exit(False);

   if Self.Nome.Trim = '' then
      Exit(False);

   if Self.Valor <=0 then
      Exit(False);

   if Self.Valdiade < Date then
      Exit(False);

end;


function TProduto.ToString: string;
begin
   result := IntToStr(Self.Codigo)
            + '-' + Self.Nome
            + '(' + DateToStr(Self.Valdiade) + ')'
            + ' R$ ' + FormatFloat('##0.00',Self.Valor);

   if Self.Marca.Trim <> '' then
      result := result + ' [' + Self.Marca + ']';

end;



end.
