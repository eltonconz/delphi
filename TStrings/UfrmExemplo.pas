unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    mmoDados: TMemo;
    lstDados: TListBox;
    btnCopiarMemoList: TButton;
    lbl1: TLabel;
    Label1: TLabel;
    cboDados: TComboBox;
    Label2: TLabel;
    btnCopiarMemoCombo: TButton;
    Button1: TButton;
    procedure btnCopiarMemoListClick(Sender: TObject);
    procedure btnCopiarMemoComboClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.btnCopiarMemoComboClick(Sender: TObject);
begin
   cboDados.Items := mmoDados.Lines;
end;

procedure TfrmExemplo.btnCopiarMemoListClick(Sender: TObject);
begin
   lstDados.Items := mmoDados.Lines;
end;

procedure TfrmExemplo.Button1Click(Sender: TObject);
begin
   cboDados.Items := lstDados.Items;
end;

end.
