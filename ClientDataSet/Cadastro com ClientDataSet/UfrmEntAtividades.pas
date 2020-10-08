unit UfrmEntAtividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmAtividades, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEntAtividades = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDados: TTabSheet;
    panMenu: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnSair: TBitBtn;
    panDados: TPanel;
    dsCad: TDataSource;
    lbl1: TLabel;
    edtData: TDBEdit;
    Label1: TLabel;
    lbl2: TLabel;
    edtHORA_FINAL: TDBEdit;
    edtHORA_INICIO: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtTITULO: TDBEdit;
    nvDados: TDBNavigator;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dsCadStateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    f_dmAtividades : TdmAtividades;
    procedure NovoRegistro;
  public
    { Public declarations }
    procedure AbrirTela(inModoInsercao : boolean; inDataModulo : TdmAtividades  );
  end;

implementation

{$R *.dfm}

procedure TfrmEntAtividades.AbrirTela(inModoInsercao: boolean; inDataModulo: TdmAtividades);
begin
   f_dmAtividades := inDataModulo;
   dsCad.DataSet  := f_dmAtividades.cdsAtividades;

   if inModoInsercao then
      NovoRegistro;

   Self.ShowModal;
end;

procedure TfrmEntAtividades.btnNovoClick(Sender: TObject);
begin
   NovoRegistro;
end;

procedure TfrmEntAtividades.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmEntAtividades.btnSalvarClick(Sender: TObject);
begin
   // Fazer validações dos dados de entrada

   f_dmAtividades.Registro_Salvar;
end;

procedure TfrmEntAtividades.dsCadStateChange(Sender: TObject);
begin
   btnNovo.Enabled   := dsCad.State in [dsInactive,dsBrowse];
   btnSalvar.Enabled := dsCad.State in [dsedit,dsinsert];
   nvDados.Enabled   := not(btnSalvar.Enabled);
end;

procedure TfrmEntAtividades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   f_dmAtividades.Registro_Cancelar;
end;

procedure TfrmEntAtividades.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TfrmEntAtividades.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfrmEntAtividades.NovoRegistro;
begin
   f_dmAtividades.Registro_Novo;

   if Self.Showing then
      edtData.SetFocus;
end;

end.
