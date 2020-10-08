program ATIVIDADES;

uses
  Vcl.Forms,
  UfrmAtividades in 'UfrmAtividades.pas' {frmAtividades},
  UdmAtividades in 'UdmAtividades.pas' {dmAtividades: TDataModule},
  UfrmEntAtividades in 'UfrmEntAtividades.pas' {frmEntAtividades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAtividades, frmAtividades);
  Application.Run;
end.
