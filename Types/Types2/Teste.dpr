program Teste;

uses
  Vcl.Forms,
  UfrmTeste in 'UfrmTeste.pas' {frmTeste},
  UProdutos in 'UProdutos.pas',
  UArrayProdutos in 'UArrayProdutos.pas',
  UDadosAplicacao in 'UDadosAplicacao.pas',
  UfrmSegundo in 'UfrmSegundo.pas' {frmSegundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTeste, frmTeste);
  Application.Run;
end.
