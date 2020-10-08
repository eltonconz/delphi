unit UfrmTList;

{
   Links Úteis
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
         mmoResult.Lines.Add('Último elemento: '+ IntToStr(lListaInt.Last));
      end;
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lListaInt.Count));
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
   mmoResult.Lines.Add('Inserido o número 100');
   ExibirInfoLista;


   // Verificar a presença de um elemento
   mmoResult.Lines.Add('');
   if lListaInt.Contains(999) then
      mmoResult.Lines.Add('A lista tem o número 999')
   else
      mmoResult.Lines.Add('A lista não tem o número 999');


   // Remove o elemento da posição 0
   lListaInt.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posição 0');
   ExibirInfoLista;

   // Remove 3 elementos a partir da posição 5
   lListaInt.DeleteRange(5,3);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posição 5, 6 e 7');
   ExibirInfoLista;


   // Realocar memória para a lista
   lListaInt.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar memória para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posição 4
   lListaInt[4] := 848;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posição 4 para 848');
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
         mmoResult.Lines.Add('Último elemento: '+ lListaStr.Last);
      end;
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lListaStr.Count));
      mmoResult.Lines.Add('Capacidade : '+ IntToStr(lListaStr.Capacity));
   end;

begin

   mmoResult.Lines.Clear;

   // Criar
   lListaStr := TList<String>.Create;

   // Adicionar N elementos
   lListaStr.AddRange(['CROÁCIA','FRANÇA','PANAMÁ','BRASIL','MÉXICO','SUÉCIA']);


   ExibirInfoLista;


   // Adicionar um elemento
   lListaStr.Add('PARAGUAI');
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Inserido PARAGUAI');
   ExibirInfoLista;


   // Verificar a presença de um elemento
   mmoResult.Lines.Add('');
   if lListaStr.Contains('ARGENTINA') then
      mmoResult.Lines.Add('ARGENTINA está na lista')
   else
      mmoResult.Lines.Add('ARGENTINA não está na lista');


   // Remove o elemento da posição 0
   lListaStr.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posição 0');
   ExibirInfoLista;


   // Remove 3 elementos a partir da posição 2
   lListaStr.DeleteRange(2,3);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posição 2, 3 e 4');
   ExibirInfoLista;



   // Realocar memória para a lista
   lListaStr.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar memória para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posição 1
   lListaStr[1] := 'CANADÁ';
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posição 1 para CANADÁ');
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
         mmoResult.Lines.Add('Último elemento: '+ lListaPes.Last.Nome);
      end;
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lListaPes.Count));
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
   lListaPes.Add(TPessoa.Create.CriaPessoa('JOÂO',32));
   lListaPes.Add(TPessoa.Create.CriaPessoa('MARIA',21));
   lListaPes.Add(TPessoa.Create.CriaPessoa('CARMEM',58));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VERÔNICA',36));
   lListaPes.Add(TPessoa.Create.CriaPessoa('EMERSON',71));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VERÔNICA',87));
   lListaPes.Add(TPessoa.Create.CriaPessoa('CARLOS',20));
   lListaPes.Add(TPessoa.Create.CriaPessoa('ZÉLIA',79));
   lListaPes.Add(TPessoa.Create.CriaPessoa('VERÔNICA',15));
   lListaPes.Add(TPessoa.Create.CriaPessoa('ANA',8));
   lListaPes.Add(TPessoa.Create.CriaPessoa('MARIA',44));

   lPes := TPessoa.CriaPessoa('AFONSO',37);
   lListaPes.Add(lPes);
   ExibirInfoLista;


   // Se alterar o objeto lPes, irá alterar o elemento da lista - Descomente para testar
   // lPes.Nome := 'RICARDO';
   // ExibirInfoLista;



   // Remove o elemento da posição 0
   lListaPes.Delete(0);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da posição 0');
   ExibirInfoLista;


   // Remove 3 elementos a partir da posição 2
   lListaPes.DeleteRange(2,2);
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removidos os elementos da posição 2 e 3');
   ExibirInfoLista;


   // Realocar memória para a lista
   lListaPes.TrimExcess;
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Realocar memória para a lista');
   ExibirInfoLista;


   // Alterado o elemento da posição 1
   lListaPes[1].Nome := 'AMANDA';
   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Alterado o elemento da posição 1 para AMANDA');
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
   // lListaPes.Clear; Não utilizar antes de desinstanciar os objetos da lista !!
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
   lListaStr.AddRange(['CROÁCIA','FRANÇA','PANAMÁ','BRASIL','MÉXICO','SUÉCIA']);

   lListaStr.Add('RÚSSIA');


   lListaStr.RemoveItem('PANAMÁ',FromBeginning);

   lListaStr.RemoveItem('ARGENTINA',FromBeginning);  // Não gera evento pois não existe

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
