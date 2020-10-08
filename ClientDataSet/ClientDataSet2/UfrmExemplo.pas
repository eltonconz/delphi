unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmExemplo, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    grdDados: TDBGrid;
    btnPopular: TButton;
    btnExcluir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPopularClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    f_dmExemplo : TdmExemplo;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
   f_dmExemplo := TdmExemplo.Create(Self);
end;


procedure TfrmExemplo.btnExcluirClick(Sender: TObject);
begin
   f_dmExemplo.ApagarRegistroSelecionado;
end;

procedure TfrmExemplo.btnPopularClick(Sender: TObject);
begin
   f_dmExemplo.PopularClient;
end;

procedure TfrmExemplo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmExemplo);
end;



end.
