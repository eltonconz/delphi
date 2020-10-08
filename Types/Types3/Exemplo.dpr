program Exemplo;

uses
  Vcl.Forms,
  UfrmExemplo in 'UfrmExemplo.pas' {frmExemplo},
  UEnumerations in 'UEnumerations.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.
