program Listas;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UfrmTList in 'UfrmTList.pas' {frmTList},
  UClas_Pessoa in 'UClas_Pessoa.pas',
  UfrmTObjectList in 'UfrmTObjectList.pas' {frmTObjectList},
  UfrmTDictionary in 'UfrmTDictionary.pas' {frmTDictionary},
  UfrmTObjectDictionary in 'UfrmTObjectDictionary.pas' {frmTObjectDictionary},
  UfrmTQueue in 'UfrmTQueue.pas' {frmTQueue},
  UfrmTStack in 'UfrmTStack.pas' {frmTStack};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
