unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    btnExemplo1: TButton;
    btnExemplo2: TButton;
    btnExemplo3: TButton;
    mmo1: TMemo;
    btnExemplo4: TButton;
    procedure btnExemplo1Click(Sender: TObject);
    procedure btnExemplo2Click(Sender: TObject);
    procedure btnExemplo3Click(Sender: TObject);
    procedure btnExemplo4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

uses UEnumerations;

procedure TfrmExemplo.btnExemplo1Click(Sender: TObject);
var lNaipe : TNaipesCartas;
var lDiaSemana : TDiasSemana;
var lDiasUteis : TDiasUteis;
begin

   mmo1.Lines.Clear;

   lNaipe := ncCopa;


   lDiaSemana := dsSegunda;

   lDiasUteis := dsQuarta;
   //lDiasUteis := dsDomingo;   Acusa erro

end;





procedure TfrmExemplo.btnExemplo2Click(Sender: TObject);
var lNaipe : TNaipesCartas;
var lSetNaipes : TNaipesSet;
begin

   mmo1.Lines.Clear;

   lSetNaipes := [ncCopa,ncEspada];

   lNaipe := ncCopa;
   if lNaipe in lSetNaipes then
   begin
      mmo1.Lines.Add('Copa esta no set');
   end else
   begin
      mmo1.Lines.Add('Copa não esta no set');
   end;


   lNaipe := ncOuro;
   if lNaipe in lSetNaipes then
   begin
      mmo1.Lines.Add('Ouro esta no set');
   end else
   begin
      mmo1.Lines.Add('Ouro não esta no set');
   end;


end;




procedure TfrmExemplo.btnExemplo3Click(Sender: TObject);
var lValores : TNumerosUmDigitoSet;
begin

   mmo1.Lines.Clear;


   lValores := [1,2,9,7,4,1];


   if 0 in lValores then
      mmo1.Lines.Add('0 está no set')
   else
      mmo1.Lines.Add('0 não está no set');

   // Adiciona 0 ao set
   Include(lValores, 0);

   if 0 in lValores then
      mmo1.Lines.Add('0 está no set')
   else
      mmo1.Lines.Add('0 não está no set');





   if 2 in lValores then
      mmo1.Lines.Add('2 está no set')
   else
      mmo1.Lines.Add('2 não está no set');


   // Remove o 2 do set
   Exclude(lValores,2);


   if 2 in lValores then
      mmo1.Lines.Add('2 está no set')
   else
      mmo1.Lines.Add('2 não está no set');




   if 1 in lValores then
      mmo1.Lines.Add('1 está no set')
   else
      mmo1.Lines.Add('1 não está no set');

   // Remove o 1 do set
   Exclude(lValores,1);

   if 1 in lValores then
      mmo1.Lines.Add('1 está no set')
   else
      mmo1.Lines.Add('1 não está no set');


end;



procedure TfrmExemplo.btnExemplo4Click(Sender: TObject);
var lValoresA, lValoresB, lValoresC  : TNumerosUmDigitoSet;
var lUniao, lDiferenca, lComuns : TNumerosUmDigitoSet;
begin

   lValoresA := [0,1,2,3,4];

   lValoresB := [5,6,7,8,9];

   lValoresC := [2,4,6,8];


   // Para verificar os valores depure o programa


   {
      Somente para sets de números existem algumas operações

       +  The union of two sets
       *  The intersection of two sets
       -  The difference of two sets
       =  Tests for identical sets
       <> Tests for non-identical sets
       >= Is one set a subset of another
       <= Is one set a superset of another
   }


   // União
   lUniao := lValoresA + lValoresB; // lUniao = [0,1,2,3,4,5,6,7,8,9]

   // Diferença
   lDiferenca := lValoresA - lValoresC; // lDiferenca = [0,1,3]

   // Intersecção
   lComuns := lValoresB * lValoresC; // lComuns = [6,8]


end;



end.
