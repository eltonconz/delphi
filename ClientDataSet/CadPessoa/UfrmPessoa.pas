unit UfrmPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB, UdmPessoa,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPessoa = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDados: TTabSheet;
    panDados: TPanel;
    panMenu: TPanel;
    btnSalvar: TButton;
    btnSair: TButton;
    Label1: TLabel;
    dsCad: TDataSource;
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtDataNasc: TDBEdit;
    Label3: TLabel;
    edtSalario: TDBEdit;
    Label4: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCadStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    f_dmPessoa : TdmPessoa;
  public
    { Public declarations }
    procedure AbreTela(inDataModuloPessoa : TdmPessoa; inNovo : boolean);

  end;


implementation

{$R *.dfm}

procedure TfrmPessoa.AbreTela(inDataModuloPessoa: TdmPessoa; inNovo : boolean);
begin
   f_dmPessoa    := inDataModuloPessoa;
   dsCad.DataSet := f_dmPessoa.cdsPessoa;

   if inNovo then
      f_dmPessoa.Nova_Pessoa;

   Self.ShowModal;
end;


procedure TfrmPessoa.btnSairClick(Sender: TObject);
begin
   Close;
end;


procedure TfrmPessoa.btnSalvarClick(Sender: TObject);
var lRet : TRet_Pessoa;
begin

   lRet := f_dmPessoa.Salvar_Pessoa;

   if lRet = rErro_Codigo then
   begin
      edtCodigo.SetFocus;
      ShowMessage('Informe o código!');
      Exit;
   end;

   if lRet = rErro_Nome then
   begin
      edtNome.SetFocus;
      ShowMessage('Informe o nome!');
      Exit;
   end;

end;


procedure TfrmPessoa.dsCadStateChange(Sender: TObject);
begin
   btnSalvar.Enabled := dsCad.State in [dsEdit,dsInsert];
end;

procedure TfrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if f_dmPessoa.cdsPessoa.State in [dsEdit,dsInsert] then
      f_dmPessoa.cdsPessoa.Cancel;
end;

procedure TfrmPessoa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TfrmPessoa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

end.
