unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Unit3;

type
  TForm2 = class(TForm)
    dsCad: TDataSource;
    grd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    f_dmDados : TdmDados;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}



procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmDados);
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
   f_dmDados := TdmDados.Create(Self);
   dsCad.DataSet := f_dmDados. cds1;
end;


end.
