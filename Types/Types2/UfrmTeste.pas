unit UfrmTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTeste = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    lst1: TListBox;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeste: TfrmTeste;

implementation

{$R *.dfm}

uses UDadosAplicacao, UProdutos, UfrmSegundo;

procedure TfrmTeste.btn1Click(Sender: TObject);
var lProd : TProduto;
begin

   lProd.Codigo   := 1;
   lProd.Nome     := 'Agua mineral';
   lProd.Marca    := 'Sarandi';
   lProd.Valdiade := StrToDate('31/12/2019');
   lProd.Valor    := 2.5;
   vgProdutos.AdicionarProduto(lProd);

   with lProd do
   begin
      Codigo   := 2;
      Nome     := 'Pepsi';
      Marca    := 'Pepsico';
      Valdiade := StrToDate('31/12/2022');
      Valor    := 3;
   end;
   vgProdutos.AdicionarProduto(lProd);


   lProd.Codigo   := 3;
   lProd.Nome     := 'Fanta';
   lProd.Marca    := 'Coca-Cola';
   lProd.Valdiade := StrToDate('31/12/2019');
   lProd.Valor    := 0;
   vgProdutos.AdicionarProduto(lProd);

   vgProdutos.CarregarDados(mmo1.Lines);

   vgProdutos.CarregarDados(lst1.Items);

end;



procedure TfrmTeste.btn2Click(Sender: TObject);
var lfrmSegundo : TfrmSegundo;
begin
   lfrmSegundo:=TfrmSegundo.Create(Self);
   try
      lfrmSegundo.ShowModal;
   finally
      FreeAndNil(lfrmSegundo);
   end;

   vgProdutos.CarregarDados(mmo1.Lines);
   vgProdutos.CarregarDados(lst1.Items);

end;

end.

