unit UfrmAtividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, UdmAtividades,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAtividades = class(TForm)
    pgcPrincipal: TPageControl;
    sheetDaods: TTabSheet;
    panMenu: TPanel;
    panDados: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    grdDados: TDBGrid;
    dsCad: TDataSource;
    panTotais: TPanel;
    lbl1: TLabel;
    edtTempoTotal: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    panFiltro: TPanel;
    Label2: TLabel;
    edtFiltroTitulo: TEdit;
    btnPesquisar: TBitBtn;
    rbLocalizar: TRadioButton;
    rbFiltrar: TRadioButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure grdDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    f_dmAtividades : TdmAtividades;
    procedure AbreTelaEntrada(inNovoRegistro : Boolean);
  public
    { Public declarations }
  end;

var
  frmAtividades: TfrmAtividades;

implementation

{$R *.dfm}

uses UfrmEntAtividades;

procedure TfrmAtividades.AbreTelaEntrada(inNovoRegistro: Boolean);
var lfrmEnt : TfrmEntAtividades;
begin
   if f_dmAtividades.Client_Vazio then
      inNovoRegistro := True;

   lfrmEnt := TfrmEntAtividades.Create(Self);
   try
      lfrmEnt.AbrirTela(inNovoRegistro,f_dmAtividades);
   finally
      FreeAndNil(lfrmEnt);
   end;
end;

procedure TfrmAtividades.btnExcluirClick(Sender: TObject);
begin
   f_dmAtividades.registro_Excluir;
end;

procedure TfrmAtividades.btnNovoClick(Sender: TObject);
begin
   AbreTelaEntrada(True);
end;


procedure TfrmAtividades.btnPesquisarClick(Sender: TObject);
begin

   if rbLocalizar.Checked then
   begin
      if edtFiltroTitulo.Text <> '' then
      begin
         if f_dmAtividades.Resgistro_Localizar(edtFiltroTitulo.Text) then
            grdDados.SetFocus
         else
            ShowMessage('Não encontrou!');
      end;
   end;

   if rbFiltrar.Checked then
   begin
      f_dmAtividades.Resgistro_Filtrar(edtFiltroTitulo.Text);

   end;


end;

procedure TfrmAtividades.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAtividades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmAtividades);
end;

procedure TfrmAtividades.FormCreate(Sender: TObject);
begin
   f_dmAtividades := TdmAtividades.Create(Self);
   dsCad.DataSet  := f_dmAtividades.cdsAtividades;
end;

procedure TfrmAtividades.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TfrmAtividades.grdDadosDblClick(Sender: TObject);
begin
   AbreTelaEntrada(False);
end;

procedure TfrmAtividades.grdDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then
      AbreTelaEntrada(False);
end;

end.
