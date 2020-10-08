program DataSet;

uses
  Vcl.Forms,
  UfrmExemplo in 'UfrmExemplo.pas' {frmExemplo},
  UdmExemplo in 'UdmExemplo.pas' {dmExemplo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  Application.Run;
end.
