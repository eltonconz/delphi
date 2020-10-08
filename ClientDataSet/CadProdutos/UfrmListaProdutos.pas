unit UfrmListaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmProduto, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmListaProdutos = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDados: TTabSheet;
    panMenu: TPanel;
    panDados: TPanel;
    grdDados: TDBGrid;
    dsCad: TDataSource;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnTeste: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure btnTesteClick(Sender: TObject);
  private
    { Private declarations }
    f_dmProduto : TdmProduto;

    procedure AbreTelaEntrada(inNovo : boolean);
  public
    { Public declarations }
  end;

var
  frmListaProdutos: TfrmListaProdutos;

implementation

{$R *.dfm}

uses UfrmProduto;



procedure TfrmListaProdutos.AbreTelaEntrada(inNovo: boolean);
var lfrmProduto : TfrmProduto;
begin

   if inNovo = False then
   begin
      if f_dmProduto.cdsProduto.IsEmpty then
         inNovo := True;
   end;

   lfrmProduto:=TfrmProduto.Create(Self);
   try
      lfrmProduto.AbreTela(inNovo,f_dmProduto);
   finally
      FreeAndNil(lfrmProduto);
   end;
end;


procedure TfrmListaProdutos.btnExcluirClick(Sender: TObject);
begin
   f_dmProduto.RegistroExcluir(True);
end;

procedure TfrmListaProdutos.btnNovoClick(Sender: TObject);
begin
   AbreTelaEntrada(True);
end;

procedure TfrmListaProdutos.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfrmListaProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmProduto);
end;


procedure TfrmListaProdutos.FormCreate(Sender: TObject);
begin
   f_dmProduto   := TdmProduto.Create(Self);
   dsCad.DataSet := f_dmProduto.cdsProduto;
end;

procedure TfrmListaProdutos.grdDadosDblClick(Sender: TObject);
begin
   AbreTelaEntrada(False);
end;




procedure TfrmListaProdutos.btnTesteClick(Sender: TObject);
var lProd : TProduto;
begin

   lProd.Codigo    := 55;
   lProd.Descricao := 'Xícara';
   lProd.Valor     := 15;

   TdmProduto.RegistroAdicionarProduto(lProd);


end;


end.
