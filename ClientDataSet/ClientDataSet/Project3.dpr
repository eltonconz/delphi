program Project3;

uses
  Forms,
  UfrmTeste in 'UfrmTeste.pas' {Form1},
  UdmDadosTeste in 'UdmDadosTeste.pas' {dmDadosTeste: TDataModule},
  UfrmTelaEntrada in 'UfrmTelaEntrada.pas' {frmTelaEntrada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
