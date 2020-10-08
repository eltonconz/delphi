unit UfrmTList;

{
   Links �teis
   http://www.delphibasics.co.uk/RTL.asp?Name=tlist
   http://docwiki.embarcadero.com/CodeExamples/Tokyo/en/Generics_Collections_TList_(Delphi)
}


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Types,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UClas_Pessoa,
  Generics.Collections,
  Generics.Defaults;

type
  TfrmTList = class(TForm)
    btnExemplo01: TButton;
    mmoResult: TMemo;
    btnExemplo02: TButton;
    btnExemplo03: TButton;
    btnExemplo04: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnExemplo02Click(Sender: TObject);
    procedure btnExemplo03Click(Sender: TObject);
    procedure btnExemplo04Click(Sender: TObject);
  private
    { Private declarations }
    procedure ListChanged(Sender: TObject; const Item: String; Action: TCollectionNotification);
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}



procedure TfrmTList.btnExemplo01Click(Sender: TObject);
var lListaInt : TList<Integer>;

   procedure ExibirInfoLista;
   var liPos, liCont : integer;
   var lsLista : string;
   begin
      lsLista := '';
      liCont  := lListaInt.Count - 1;
      for liPos := 0 to liCont do
      begin
         lsLista := lsLista + ' - ' + IntToStr(lListaInt[liPos]);
      end;

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      if liCont >=0 then
      begin
         mmoResult.Lines.Add('Primeiro elemento: '+ IntToStr(lListaInt.First));
         mmoResult.Lines.Add('�ltimo elemento: '+ IntToStr(lListaInt.Last));
      end;
      mmoResult.Lines.Add('N�mero de elementos : '+ IntToStr(lListaInt.Count));
      mmoResult.Lines.Add('Capacidade : '+ IntToStr(lListaInt.Capacity));
   end;

begin

   mmoResult.Lines.Clear;

   // Criar
   lListaInt := TList<Integer>.Create;

   // Adicionar N elementos
   lListaInt.AddRange([5, 1, 8, 2, 9, 14, 4, 5, 1]);


   ExibirInfoLista;


   // Adicionar um elemento
   lListaInt.Add(100);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Inserido o n�mero 100');
   ExibirInfoLista;


   // Verificar a presen�a de um elemento
   mmoResult.Lines.Add('');
   if lListaInt.Contains(999) then
      mmoResult.Lines.Add('A lista tem o n�mero 999')
   else
      mmoResult.Lines.Add('A lista n�o tem o n�mero 999');


   // Remove o elemento da posi��o 0
   lListaInt.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posi��o 0');
   ExibirInfoLista;

   // Remove 3 elementos a partir da posi��o 5
   lListaInt.DeleteRange(5,3);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posi��o 5, 6 e 7');
   ExibirInfoLista;


   // Realocar mem�ria para a lista
   lListaInt.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar mem�ria para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posi��o 4
   lListaInt[4] := 848;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posi��o 4 para 848');
   ExibirInfoLista;


   // Ordenar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ordenar');
   lListaInt.Sort;
   ExibirInfoLista;

   // Reverter
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Reverter');
   lListaInt.Reverse;
   ExibirInfoLista;


   // Limpar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Limpar lista');
   lListaInt.Clear;
   ExibirInfoLista;

   FreeAndNil(lListaInt);

end;





procedure TfrmTList.btnExemplo02Click(Sender: TObject);
var lListaStr : TList<String>;

   procedure ExibirInfoLista;
   var liPos, liCont : integer;
   var lsLista : string;
   begin
      lsLista := '';
      liCont  := lListaStr.Count - 1;
      for liPos := 0 to liCont do
      begin
         lsLista := lsLista + ' - ' + lListaStr[liPos];
      end;

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      if liCont >= 0 then
      begin
         mmoResult.Lines.Add('Primeiro elemento: '+ lListaStr.First);
         mmoResult.Lines.Add('�ltimo elemento: '+ lListaStr.Last);
      end;
      mmoResult.Lines.Add('N�mero de elementos : '+ IntToStr(lListaStr.Count));
      mmoResult.Lines.Add('Capacidade : '+ IntToStr(lListaStr.Capacity));
   end;

begin

   mmoResult.Lines.Clear;

   // Criar
   lListaStr := TList<String>.Create;

   // Adicionar N elementos
   lListaStr.AddRange(['CRO�CIA','FRAN�A','PANAM�','BRASIL','M�XICO','SU�CIA']);


   ExibirInfoLista;


   // Adicionar um elemento
   lListaStr.Add('PARAGUAI');
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Inserido PARAGUAI');
   ExibirInfoLista;


   // Verificar a presen�a de um elemento
   mmoResult.Lines.Add('');
   if lListaStr.Contains('ARGENTINA') then
      mmoResult.Lines.Add('ARGENTINA est� na lista')
   else
      mmoResult.Lines.Add('ARGENTINA n�o est� na lista');


   // Remove o elemento da posi��o 0
   lListaStr.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posi��o 0');
   ExibirInfoLista;


   // Remove 3 elementos a partir da posi��o 2
   lListaStr.DeleteRange(2,3);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posi��o 2, 3 e 4');
   ExibirInfoLista;



   // Realocar mem�ria para a lista
   lListaStr.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar mem�ria para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posi��o 1
   lListaStr[1] := 'CANAD�';
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posi��o 1 para CANAD�');
   ExibirInfoLista;


   // Ordenar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ordenar');
   lListaStr.Sort;
   ExibirInfoLista;

   // Reverter
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Reverter');
   lListaStr.Reverse;
   ExibirInfoLista;


   // Limpar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Limpar lista');
   lListaStr.Clear;
   ExibirInfoLista;

   FreeAndNil(lListaStr);

end;




procedure TfrmTList.btnExemplo03Click(Sender: TObject);
var lListaPes : TList<TPessoa>;
var lPes,lPesPesquisar : TPessoa;

   procedure ExibirInfoLista;
   var liPos, liCont : integer;
   var lsLista : string;
   begin
      lsLista := '';
      liCont  := lListaPes.Count - 1;
      for liPos := 0 to liCont do
      begin
         lsLista := lsLista + ' - ' + lListaPes[liPos].Nome + ' (' + IntToStr(lListaPes[liPos].Idade) + ')' ;
      end;

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      if liCont >= 0 then
      begin
         mmoResult.Lines.Add('Primeiro elemento: '+ lListaPes.First.Nome);
         mmoResult.Lines.Add('�ltimo elemento: '+ lListaPes.Last.Nome);
      end;
      mmoResult.Lines.Add('N�mero de elementos : '+ IntToStr(lListaPes.Count));
      mmoResult.Lines.Add('Capacidade : '+ IntToStr(lListaPes.Capacity));
   end;


   procedure LimparLista;
   var liPos, liCont : integer;
   begin
      liCont  := lListaPes.Count - 1;
      for liPos := 0 to liCont do
      begin
         TPessoa(lListaPes[liPos]).Free;
      end;
      lListaPes.Clear;
   end;

begin

   mmoResult.Lines.Clear;

   // Criar
   lListaPes := TList<TPessoa>.Create;


   // Adicionar
   lListaPes.Add(TPessoa.Create.CriaPessoa('JO�O',32));
   lListaPes.Add(TPessoa.Create.CriaPessoa('MARIA',21));
   lListaPes.Add(TPessoa.Create.CriaPessoa('CARMEM',58));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VER�NICA',36));
   lListaPes.Add(TPessoa.Create.CriaPessoa('EMERSON',71));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VER�NICA',87));
   lListaPes.Add(TPessoa.Create.CriaPessoa('CARLOS',20));
   lListaPes.Add(TPessoa.Create.CriaPessoa('Z�LIA',79));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VER�NICA',15));
   lListaPes.Add(TPessoa.Create.CriaPessoa('ANA',8));
   lListaPes.Add(TPessoa.Create.CriaPessoa('MARIA',44));

   lPes := TPessoa.CriaPessoa('AFONSO',37);
   lListaPes.Add(lPes);
   ExibirInfoLista;


   // Se alterar o objeto lPes, ir� alterar o elemento da lista - Descomente para testar
   // lPes.Nome := 'RICARDO';
   // ExibirInfoLista;



   // Remove o elemento da posi��o 0
   lListaPes.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posi��o 0');
   ExibirInfoLista;


   // Remove 3 elementos a partir da posi��o 2
   lListaPes.DeleteRange(2,2);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posi��o 2 e 3');
   ExibirInfoLista;


   // Realocar mem�ria para a lista
   lListaPes.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar mem�ria para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posi��o 1
   lListaPes[1].Nome := 'AMANDA';
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posi��o 1 para AMANDA');
   ExibirInfoLista;


   // Ordenar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ordenar por Idade');
   lListaPes.Sort(
      TComparer<TPessoa>.Construct(
         function(const Left, Right: TPessoa): Integer
         begin
            result := Left.Idade - Right.Idade;
         end
      )
   );
   ExibirInfoLista;


   // Ordenar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ordenar por Nome');
   lListaPes.Sort(
      TComparer<TPessoa>.Construct(
         function(const Left, Right: TPessoa): Integer
         begin
            result := CompareText(TPessoa(Left).Nome, TPessoa(Right).Nome);
         end
      )
   );
   ExibirInfoLista;


   // Ordenar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ordenar por Nome / Idade');
   lListaPes.Sort(
      TComparer<TPessoa>.Construct(
         function(const Left, Right: TPessoa): Integer
         begin
            result := CompareText(TPessoa(Left).Nome, TPessoa(Right).Nome);
            if result = 0 then // Iguais
            begin
               result := Left.Idade - Right.Idade;
            end;
         end
      )
   );
   ExibirInfoLista;



   // Reverter
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Reverter');
   lListaPes.Reverse;
   ExibirInfoLista;



   // Limpar
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Limpar lista');
   LimparLista;
   // lListaPes.Clear; N�o utilizar antes de desinstanciar os objetos da lista !!
   ExibirInfoLista;

   FreeAndNil(lListaPes);

end;




procedure TfrmTList.btnExemplo04Click(Sender: TObject);
var lListaStr : TList<String>;
begin

   mmoResult.Lines.Clear;

   // Criar
   lListaStr := TList<String>.Create;

   // Evento
   lListaStr.OnNotify := ListChanged;

   // Adicionar N elementos
   lListaStr.AddRange(['CRO�CIA','FRAN�A','PANAM�','BRASIL','M�XICO','SU�CIA']);

   lListaStr.Add('R�SSIA');


   lListaStr.RemoveItem('PANAM�',FromBeginning);

   lListaStr.RemoveItem('ARGENTINA',FromBeginning);  // N�o gera evento pois n�o existe

   lListaStr.Sort;


   // Destruir
   FreeAndNil(lListaStr);

end;


procedure TfrmTList.ListChanged(Sender: TObject; const Item: String; Action: TCollectionNotification);
begin
   if Action = cnAdded then
      mmoResult.Lines.Add('+ Adicionado: ' + Item)
   else if Action = cnRemoved then
      mmoResult.Lines.Add('- Removido: ' + Item)
   else if Action = cnExtracted then
      mmoResult.Lines.Add('x Extraido: ' + Item);
end;


end.
