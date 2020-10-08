unit UfrmListagemPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, UdmPessoa, Data.DB;

type
  TfrmListagemPessoas = class(TForm)
    grdDados: TDBGrid;
    btnNovo: TButton;
    btnExcluir: TButton;
    dsCad: TDataSource;
    btnAjuste: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure grdDadosDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAjusteClick(Sender: TObject);
  private
    { Private declarations }
    f_dmPessoa : TdmPessoa;
    procedure AcessarTelaCadastro(inNovo : boolean);

  public
    { Public declarations }
  end;

var
  frmListagemPessoas: TfrmListagemPessoas;

implementation

{$R *.dfm}

uses UfrmPessoa;


procedure TfrmListagemPessoas.AcessarTelaCadastro(inNovo : boolean);
var lfrmPessoa : TfrmPessoa;
begin
   lfrmPessoa:=TfrmPessoa.Create(Self);
   try
      lfrmPessoa.AbreTela(f_dmPessoa,inNovo);
   finally
      FreeAndNil(lfrmPessoa);
   end;
end;



procedure TfrmListagemPessoas.btnAjusteClick(Sender: TObject);
begin
   f_dmPessoa.AjustarCadastros;
end;

procedure TfrmListagemPessoas.btnExcluirClick(Sender: TObject);
begin
   f_dmPessoa.Excluir_Pessoa;
end;

procedure TfrmListagemPessoas.btnNovoClick(Sender: TObject);
begin
   AcessarTelaCadastro(True);
end;

procedure TfrmListagemPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmPessoa);
end;

procedure TfrmListagemPessoas.FormCreate(Sender: TObject);
begin
   f_dmPessoa    := TdmPessoa.Create(Self);
   dsCad.DataSet := f_dmPessoa.cdsPessoa;
end;

procedure TfrmListagemPessoas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TfrmListagemPessoas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;


procedure TfrmListagemPessoas.grdDadosDblClick(Sender: TObject);
begin
   AcessarTelaCadastro(False);
end;

end.
