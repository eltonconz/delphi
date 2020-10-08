program CadProdutos;

uses
  Vcl.Forms,
  UfrmListaProdutos in 'UfrmListaProdutos.pas' {frmListaProdutos},
  UdmProduto in 'UdmProduto.pas' {dmProduto: TDataModule},
  UfrmProduto in 'UfrmProduto.pas' {frmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListaProdutos, frmListaProdutos);
  Application.Run;
end.
