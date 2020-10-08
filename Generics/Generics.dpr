program Generics;

uses
  Vcl.Forms,
  UfrmGenerics in 'UfrmGenerics.pas' {frmGenerics},
  UfrmGenerics_1 in 'UfrmGenerics_1.pas' {frmGenerics_1},
  UfrmGenerics_2 in 'UfrmGenerics_2.pas' {frmGenerics_2},
  UfrmGenerics_3 in 'UfrmGenerics_3.pas' {frmGenerics_3},
  UfrmGenerics_4 in 'UfrmGenerics_4.pas' {frmGenerics_4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGenerics, frmGenerics);
  Application.Run;
end.
