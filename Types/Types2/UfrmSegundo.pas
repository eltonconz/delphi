unit UfrmSegundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSegundo = class(TForm)
    cbo1: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses UDadosAplicacao, UProdutos;


procedure TfrmSegundo.FormCreate(Sender: TObject);
var lProd : TProduto;
begin

   lProd.Codigo   := 4;
   lProd.Nome     := 'Sprite';
   lProd.Marca    := 'Coca-Cola';
   lProd.Valdiade := StrToDate('31/12/2019');
   lProd.Valor    := 4;
   vgProdutos.AdicionarProduto(lProd);

   vgProdutos.CarregarDados(cbo1.Items);

end;


end.
