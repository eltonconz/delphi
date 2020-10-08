program Vetores_Dinamicos;

uses
  Vcl.Forms,
  UfrmExemplo in 'UfrmExemplo.pas' {frmExemplo},
  UVetorDinamico in 'UVetorDinamico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.
