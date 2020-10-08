unit UfrmTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, UdmDadosTeste, DB, ExtCtrls;

type
  TForm1 = class(TForm)
    grpNavegacao: TGroupBox;
    btnPrimeiro: TButton;
    btnProximo: TButton;
    btnAnterior: TButton;
    btnUltimo: TButton;
    grpManDados: TGroupBox;
    btnAdicionar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    grpFuncoes: TGroupBox;
    btnNumregistros: TButton;
    btnEstaVazio: TButton;
    btnAberto: TButton;
    btnCriar: TButton;
    btnDestruir: TButton;
    btnEstado: TButton;
    btnOrdenar: TButton;
    edtCampoOrdem: TEdit;
    edtAuxResposta: TEdit;
    Label1: TLabel;
    grpDados: TGroupBox;
    grdDados: TDBGrid;
    Label3: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    edtData: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    dsDados: TDataSource;
    btnPovoar: TButton;
    lbl1: TLabel;
    edtValorTotal: TDBEdit;
    edtProx_Cod: TDBEdit;
    Label6: TLabel;
    btnLoop: TButton;
    Label7: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TButton;
    Label8: TLabel;
    edtFiltro: TEdit;
    btnFiltrar: TButton;
    btnExportarDados: TButton;
    btnImportarDados: TButton;
    btnTelaEntrada: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCriarClick(Sender: TObject);
    procedure btnDestruirClick(Sender: TObject);
    procedure btnNumregistrosClick(Sender: TObject);
    procedure btnEstaVazioClick(Sender: TObject);
    procedure btnAbertoClick(Sender: TObject);
    procedure btnEstadoClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOrdenarClick(Sender: TObject);
    procedure btnPovoarClick(Sender: TObject);
    procedure btnLoopClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnExportarDadosClick(Sender: TObject);
    procedure btnImportarDadosClick(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure btnTelaEntradaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    f_dmDadosTeste : TdmDadosTeste;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const c_Sim = 'SIM';
const c_Nao = 'NÃO';

implementation

uses UfrmTelaEntrada;

{$R *.dfm}

procedure TForm1.btnAbertoClick(Sender: TObject);
begin
   if f_dmDadosTeste.Client_Aberto then
      edtAuxResposta.Text := c_Sim
   else
      edtAuxResposta.Text := c_Nao;
end;

procedure TForm1.btnAdicionarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Adicionar;
   f_dmDadosTeste.cdsDadosCODIGO.AsInteger := StrToIntDef(edtProx_Cod.Text,1);
end;

procedure TForm1.btnAnteriorClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Anterior;
end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Cancelar;
end;

procedure TForm1.btnCriarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Criar;
end;

procedure TForm1.btnDestruirClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Fechar;
end;

procedure TForm1.btnEstadoClick(Sender: TObject);
begin
   edtAuxResposta.Text := f_dmDadosTeste.Client_Estado;
end;

procedure TForm1.btnEstaVazioClick(Sender: TObject);
begin
   if f_dmDadosTeste.Client_TemDados then
      edtAuxResposta.Text := c_Sim
   else
      edtAuxResposta.Text := c_Nao;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Excluir;
end;

procedure TForm1.btnExportarDadosClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Salvar_Arquivo;
end;

procedure TForm1.btnFiltrarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Filtrar(edtFiltro.Text);
end;

procedure TForm1.btnImportarDadosClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Restaurar_Arquivo;
end;

procedure TForm1.btnLoopClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Loop;
end;

procedure TForm1.btnNumregistrosClick(Sender: TObject);
begin
   edtAuxResposta.Text := IntToStr(f_dmDadosTeste.Client_Contar);
end;

procedure TForm1.btnOrdenarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Ordenar(edtCampoOrdem.Text);
end;

procedure TForm1.btnPesquisarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Pesquisar(edtPesquisa.Text);
end;

procedure TForm1.btnPovoarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Povoar;
end;

procedure TForm1.btnPrimeiroClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Primeiro;
end;

procedure TForm1.btnProximoClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Proximo;
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Salvar;
end;

procedure TForm1.btnTelaEntradaClick(Sender: TObject);
var lfrmTelaEntrada : TfrmTelaEntrada;
begin
   lfrmTelaEntrada:=TfrmTelaEntrada.Create(Self);
   try
      lfrmTelaEntrada.AbrirTela(f_dmDadosTeste);
   finally
      FreeAndNil(lfrmTelaEntrada);
   end;
end;

procedure TForm1.btnUltimoClick(Sender: TObject);
begin
   f_dmDadosTeste.Client_Ultimo;
end;

procedure TForm1.dsDadosStateChange(Sender: TObject);
begin
   btnExcluir.Enabled   := dsDados.State in [dsBrowse];
   btnSalvar.Enabled    := dsDados.State in [dsedit,dsinsert];
   btnPesquisar.Enabled := dsDados.State in [dsBrowse, dsInactive];
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(f_dmDadosTeste);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   f_dmDadosTeste  := TdmDadosTeste.Create(self);
   dsDados.DataSet := f_dmDadosTeste.cdsDados;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

end.
