unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UdmTeste;

type
  TForm3 = class(TForm)
    mmoDoForm3: TMemo;
    grd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    f_dmTeste : TdmTeste;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmTeste);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   f_dmTeste := TdmTeste.Create(Self);
end;

end.
