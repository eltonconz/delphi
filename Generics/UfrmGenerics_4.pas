unit UfrmGenerics_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls;


// Classe
type
  TPessoa = class
  private
     Nome      : string;
     Sobrenome : string;
  public
     procedure SetPessoa(const inNome, inSobreNome : string);
     function  AsText : string;
end;


// Record
type TTipo_Pessoa = record
   NomeCompleto : string;
end;


type
  TfrmGenerics_4 = class(TForm)
    btnCarregar: TButton;
    Button1: TButton;
    mmo1: TMemo;
    procedure btnCarregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
   lstPessoa  : TList<TPessoa>;
   lstPessoa2 : TList<TTipo_Pessoa>;
   dctPessoa  : TDictionary<string,TPessoa>;

implementation

{$R *.dfm}

procedure TfrmGenerics_4.FormCreate(Sender: TObject);
begin
   lstPessoa  := TList<TPessoa>.Create;
   lstPessoa2 := TList<TTipo_Pessoa>.Create;
   dctPessoa  := TDictionary<string,TPessoa>.Create;
end;


procedure TfrmGenerics_4.btnCarregarClick(Sender: TObject);
var lPessoa : TPessoa;
var lPes : TTipo_Pessoa;
begin

   lPessoa := TPessoa.Create;
   lPessoa.SetPessoa('João','Silva');
   lstPessoa.Add(lPessoa);        // Adicionar no TList com Classe
   dctPessoa.Add('JOAO',lPessoa); // Adicionar no TDictionary

   lPessoa := TPessoa.Create;
   lPessoa.SetPessoa('Maria','Pereira');
   lstPessoa.Add(lPessoa);         // Adicionar no TList com Classe
   dctPessoa.Add('MARIA',lPessoa); // Adicionar no TDictionary


   // Adicionar no TList com Record
   lPes.NomeCompleto := 'Afonso Martelo';
   lstPessoa2.Add(lPes);

   lPes.NomeCompleto := 'Pedro Henrique';
   lstPessoa2.Add(lPes);

end;


procedure TfrmGenerics_4.Button1Click(Sender: TObject);
var lPessoa : TPessoa;
var lPes : TTipo_Pessoa;
begin
   mmo1.Lines.Clear;

   for lPessoa in lstPessoa do
   begin
      mmo1.Lines.Add(lPessoa.AsText);
   end;

   mmo1.Lines.Add('--------------------------');
   for lPes in lstPessoa2 do
   begin
      mmo1.Lines.Add(lPes.NomeCompleto);
   end;


   mmo1.Lines.Add('--------------------------');
   for lPessoa in dctPessoa.Values do
   begin
      mmo1.Lines.Add(lPessoa.AsText);
   end;


   // Número de itens
   mmo1.Lines.Add(IntToStr(dctPessoa.Count));

   // Listar pessoa do indice JOAO
   if dctPessoa.TryGetValue('MARIA',lPessoa) then
   begin
      mmo1.Lines.Add('. . .');
      mmo1.Lines.Add(lPessoa.AsText);
   end;

   // Remover pessoa do indice MARIA e listar dados
   dctPessoa.Remove('MARIA');
   dctPessoa.TrimExcess; { Make sure the dictionary's capacity is set to the number of entries. }

   mmo1.Lines.Add('. . .');
   for lPessoa in dctPessoa.Values do
   begin
      mmo1.Lines.Add(lPessoa.AsText);
   end;


end;



{ TPessoa }

function TPessoa.AsText: string;
begin
   result := Self.Nome + ' ' + Self. Sobrenome;
end;

procedure TPessoa.SetPessoa(const inNome, inSobreNome: string);
begin
   Self.Nome      := inNome;
   Self.Sobrenome := inSobreNome;
end;



end.
