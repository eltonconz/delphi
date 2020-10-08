unit UfrmTDictionary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  UClas_Pessoa,
  Generics.Collections,
  Generics.Defaults;

type
  TfrmTDictionary = class(TForm)
    btnExemplo01: TButton;
    mmoResult: TMemo;
    btnExemplo02: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnExemplo02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}


procedure TfrmTDictionary.btnExemplo01Click(Sender: TObject);
var lDic : TDictionary<integer,string>;
var lsAux : string;

   procedure ExibirLista;
   var liKey : integer;
   var lsLista : string;
   begin
      lsLista := '';
      for liKey in lDic.Keys do
         lsLista := lsLista + ' - [' +  IntToStr(liKey) +'] '+ lDic.Items[liKey];

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lDic.Count));
   end;

begin

   mmoResult.Lines.Clear;


   lDic := TDictionary<integer,string>.Create;

   lDic.Add(12,'ARGENTINA');
   lDic.Add(42,'BRASIL');
   lDic.Add(53,'CANADÁ');
   lDic.Add(2,'MÉXICO');
   lDic.Add(529,'URUGUAI');

   ExibirLista;




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da chave 42');
   lDic.Remove(42);
   ExibirLista;




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Adicionando ou atualizando o valor da chave 1010');
   lDic.AddOrSetValue(1010,'Brasil');
   ExibirLista;

   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Adicionando ou atualizando o valor da chave 1010');
   lDic.AddOrSetValue(1010,'BRASIL');
   ExibirLista;



   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Tentando retornoar valor da chave 55');
   if lDic.TryGetValue(55,lsAux) then
      mmoResult.Lines.Add(lsAux)
   else
      mmoResult.Lines.Add('Nada encontrado!');


   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Tentando retornoar valor da chave 2');
   if lDic.TryGetValue(2,lsAux) then
      mmoResult.Lines.Add(lsAux)
   else
      mmoResult.Lines.Add('Nada encontrado!');




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se a chave 12 existe');
   if lDic.ContainsKey(12) then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');

   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se a chave 99 existe');
   if lDic.ContainsKey(99) then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se o valor CANADÁ existe');
   if lDic.ContainsValue('CANADÁ') then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');

   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se o valor ESPANHA existe');
   if lDic.ContainsValue('ESPANHA') then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');



   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Limpar lista');
   lDic.Clear;
   ExibirLista;


   FreeAndNil(lDic);

end;





procedure TfrmTDictionary.btnExemplo02Click(Sender: TObject);
var lDic : TDictionary<string,TPessoa>;
var lPesAux : TPessoa;

   procedure ExibirLista;
   var lsKey : string;
   var lsLista : string;
   begin
      lsLista := '';
      for lsKey in lDic.Keys do
         lsLista := lsLista + ' - [' +  lsKey +'] '+ lDic.Items[lsKey].Nome + ' (' + IntToStr(lDic.Items[lsKey].Idade) +')';

      mmoResult.Lines.Add('Elementos : '+ lsLista);
      mmoResult.Lines.Add('Número de elementos : '+ IntToStr(lDic.Count));
   end;

   procedure LimparLista;
   var lsKey : string;
   begin
      for lsKey in lDic.Keys do
         TPessoa(lDic.Items[lsKey]).Free;

      lDic.Clear;
   end;


begin

   mmoResult.Lines.Clear;


   lDic := TDictionary<string,TPessoa>.Create;

   lDic.Add('M1',TPessoa.Create.CriaPessoa('MARIA',21));
   lDic.Add('M2',TPessoa.Create.CriaPessoa('MATEUS',23));
   lDic.Add('E1',TPessoa.Create.CriaPessoa('ELIAS',54));
   lDic.Add('E2',TPessoa.Create.CriaPessoa('EMERSON',11));
   lDic.Add('J1',TPessoa.Create.CriaPessoa('JOÃO',31));
   lDic.Add('J2',TPessoa.Create.CriaPessoa('JEFERSON',49));

   ExibirLista;


   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Removido o elemento da chave M1');
   lDic.Remove('M1');
   ExibirLista;


   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Adicionando ou atualizando o valor da chave T1');
   lDic.AddOrSetValue('T1',TPessoa.Create.CriaPessoa('TACIANO',49));
   ExibirLista;

   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Adicionando ou atualizando o valor da chave T1');
   lDic.AddOrSetValue('T1',TPessoa.Create.CriaPessoa('TADEU',44));
   ExibirLista;




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se a chave J1 existe');
   if lDic.ContainsKey('J1') then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');



   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Tentando retornoar valor da chave J2');
   if lDic.TryGetValue('J2',lPesAux) then
      mmoResult.Lines.Add(lPesAux.Nome)
   else
      mmoResult.Lines.Add('Nada encontrado!');




   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Verificar se o valor MARIA existe');

   lPesAux := TPessoa.CriaPessoa('MARIA',21);
   if lDic.ContainsValue(lPesAux) then
      mmoResult.Lines.Add('Existe')
   else
      mmoResult.Lines.Add('Não existe');





   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Limpar lista');
   LimparLista;
   // lDic.Clear; Não utilizar antes de desinstanciar os objetos da lista !!
   ExibirLista;



   mmoResult.Lines.Add('');
   mmoResult.Lines.Add('Ajustando capacidade');
   lDic.TrimExcess;



   FreeAndNil(lDic);

end;

end.
