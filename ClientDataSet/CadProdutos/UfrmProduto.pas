unit UfrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, UdmProduto, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmProduto = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDados: TTabSheet;
    panDados: TPanel;
    panMenu: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnSair: TBitBtn;
    dsCad: TDataSource;
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    edtValor: TDBEdit;
    nvgDados: TDBNavigator;
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsCadStateChange(Sender: TObject);
  private
    { Private declarations }
    f_dmProduto     : TdmProduto;
    f_bNovoRegistro : boolean;

    procedure NovoRegistro;
  public
    { Public declarations }
    procedure AbreTela(inNovo : boolean; indmProduto : TdmProduto );

  end;


implementation

{$R *.dfm}


procedure TfrmProduto.AbreTela(inNovo: boolean; indmProduto: TdmProduto);
begin
   f_bNovoRegistro := inNovo;
   f_dmProduto     := indmProduto;
   dsCad.DataSet   := f_dmProduto.cdsProduto;

   Self.ShowModal;
end;


procedure TfrmProduto.btnNovoClick(Sender: TObject);
begin
   NovoRegistro;
end;

procedure TfrmProduto.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmProduto.btnSalvarClick(Sender: TObject);
begin

   if trim(edtCodigo.Text) = '' then
   begin
      edtCodigo.SetFocus;
      ShowMessage('Informe o código!');
      Exit;
   end;
{
   if trim(edtDescricao.Text) = '' then
   begin
      edtDescricao.SetFocus;
      ShowMessage('Informe a descrição!');
      Exit;
   end;
}
   if f_dmProduto.RegistroSalvar then
   begin
      btnNovo.SetFocus;
   end;


end;



procedure TfrmProduto.dsCadStateChange(Sender: TObject);
begin
   btnNovo.Enabled   := dsCad.State in [dsInactive,dsBrowse];
   btnSalvar.Enabled := dsCad.State in [dsedit,dsinsert];
   nvgDados.Enabled  := btnNovo.Enabled;
end;

procedure TfrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   f_dmProduto.cdsProduto.Cancel;
end;


procedure TfrmProduto.FormCreate(Sender: TObject);
begin
   f_bNovoRegistro := False;
end;

procedure TfrmProduto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TfrmProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
   if f_bNovoRegistro then
   begin
      f_bNovoRegistro := False;
      NovoRegistro;
   end;
end;


procedure TfrmProduto.NovoRegistro;
begin
   f_dmProduto.RegistroNovo;
   edtCodigo.SetFocus;
end;

end.
