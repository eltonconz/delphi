program CadPessoas;

uses
  Vcl.Forms,
  UfrmListagemPessoas in 'UfrmListagemPessoas.pas' {frmListagemPessoas},
  UdmPessoa in 'UdmPessoa.pas' {dmPessoa: TDataModule},
  UfrmPessoa in 'UfrmPessoa.pas' {frmPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListagemPessoas, frmListagemPessoas);
  Application.Run;
end.
