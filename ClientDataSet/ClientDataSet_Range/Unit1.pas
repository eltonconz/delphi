unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    dsDados: TDataSource;
    grdDados: TDBGrid;
    btn2: TButton;
    btn3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtCod_Inicial: TEdit;
    edtCodigo_Final: TEdit;
    btn1: TButton;
    Label3: TLabel;
    edtUF: TEdit;
    Label4: TLabel;
    edtCidade1: TEdit;
    Label5: TLabel;
    edtCidade2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;


procedure TForm1.btn1Click(Sender: TObject);
begin
   DataModule2.ApplyRange_Codigo(StrToInt(edtCod_Inicial.Text),StrToInt(edtCodigo_Final.Text));
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
   DataModule2.SetRange_Codigo(StrToInt(edtCod_Inicial.Text),StrToInt(edtCodigo_Final.Text));
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
   DataModule2.CancelRange;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   DataModule2.SetRange_Cidade_UF(edtUF.Text,edtCidade1.Text,edtCidade2.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   DataModule2.ApplyRange_Cidade_UF(edtUF.Text,edtCidade1.Text,edtCidade2.Text);
end;

end.
