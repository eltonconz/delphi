program ExemplosTypes;

uses
  Vcl.Forms,
  UfrmExemplosTypes in 'UfrmExemplosTypes.pas' {frmExemplosTypes},
  UPessoa in 'UPessoa.pas',
  UVeiculo in 'UVeiculo.pas',
  UFormaGeometrica in 'UFormaGeometrica.pas',
  UDiversosTiposPersonalziados in 'UDiversosTiposPersonalziados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplosTypes, frmExemplosTypes);
  Application.Run;
end.
