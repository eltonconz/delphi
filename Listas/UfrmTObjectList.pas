unit UfrmTObjectList;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  UClas_Pessoa,
  Generics.Collections,
  Generics.Defaults;

type
  TfrmTObjectList = class(TForm)
    btnExemplo01: TButton;
    mmoResult: TMemo;
    procedure btnExemplo01Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}



procedure TfrmTObjectList.btnExemplo01Click(Sender: TObject);
var lListaPes : TObjectList<TPessoa>;
var lPes,lPesPesquisar : TPessoa;

   function CompararNomes(Item1, Item2: Pointer): Integer;
   begin
      Result := CompareText(TPessoa(Item1).Nome, TPessoa(Item2).Nome);
      //  MessageDlg('Compare ' + TMyClass(Item1).MyString + ' to ' + TMyClass(Item2).MyString,
      //                 mtInformation, [mbOk], 0);
   end;

   procedure ExibirInfoLista;
   var lPes : TPessoa;
   var lsLista : string;
   begin
      lsLista := '';

      for lPes in lListaPes do
         lsLista := lsLista + ' - ' + lPes.Nome + ' (' + IntToStr(lPes.Idade) + ')' ;

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      if lListaPes.Count > 0 then
      begin
         mmoResult.Lines.Add('Primeiro elemento: '+ lListaPes.First.Nome);
         mmoResult.Lines.Add('Último elemento: '+ lListaPes.Last.Nome);
      end;
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lListaPes.Count));
      mmoResult.Lines.Add('Capacidade : '+ IntToStr(lListaPes.Capacity));
   end;


begin

   mmoResult.Lines.Clear;

   // Criar
   lListaPes := TObjectList<TPessoa>.Create;


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
   lListaPes.Clear;
   ExibirInfoLista;

   FreeAndNil(lListaPes);

end;




end.
