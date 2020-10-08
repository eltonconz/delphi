unit Unit3;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmDados = class(TDataModule)
    cds1: TClientDataSet;
    cds1DATA_HORA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
   cds1.CreateDataSet;

   cds1.Append;
   cds1DATA_HORA.Text := FormatDateTime('hh:mm:ss',Now);
   cds1.Post;
end;

end.
