program Vetores_e_Matrizes;

uses
  Vcl.Forms,
  UfrmExemplo in 'UfrmExemplo.pas' {frmExemplo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.
