unit UArrayProdutos;

interface

uses
  System.SysUtils, System.Variants, System.Classes, UProdutos;

  type TArrayProdutos = record
      Dados : array of TProduto;

      function  AdicionarProduto(inProduto : TProduto) : boolean;
      procedure CarregarDados(inControle : TStrings);
  end;


implementation


{ TArrayProdutos }

function TArrayProdutos.AdicionarProduto(inProduto: TProduto): boolean;
var liTam : integer;
begin

   result := False;

   if inProduto.IsValid then
   begin
      liTam := Length(Self.Dados);
      SetLength(Self.Dados,liTam+1);
      Self.Dados[liTam] := inProduto;
      result := True;
   end;

end;


procedure TArrayProdutos.CarregarDados(inControle: TStrings);
var lProd : TProduto;
begin
   inControle.Clear;

   for lProd in Self.Dados do
      inControle.Add(lprod.ToString);

end;



end.
