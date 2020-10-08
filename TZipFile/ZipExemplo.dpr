program ZipExemplo;

uses
  Vcl.Forms,
  UfrmZip in 'UfrmZip.pas' {frmZip};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmZip, frmZip);
  Application.Run;
end.
