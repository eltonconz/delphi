unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;



type
  TfrmExemplo = class(TForm)
    edtTamanho: TEdit;
    mmoListarVetor: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    btnResetar: TButton;
    btnAlimentar: TButton;
    grpAdicionar: TGroupBox;
    Label1: TLabel;
    edtNumero: TEdit;
    btnAdicionar: TBitBtn;
    grpAlterar: TGroupBox;
    grpRemover: TGroupBox;
    edtIndiceVetorAlt: TEdit;
    btnAlterar: TBitBtn;
    Label6: TLabel;
    edtNumeroAlt: TEdit;
    Label5: TLabel;
    edtIndiceVetor: TEdit;
    btnRemover: TButton;
    Label4: TLabel;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnResetarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnAlimentarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ListarVetor;
    procedure CarregarTamanhoVetor;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

uses UVetorDinamico;


procedure TfrmExemplo.btnAdicionarClick(Sender: TObject);
begin
   Vetor_Adicionar_Item( StrToInt(edtNumero.Text) );
   ListarVetor;
   CarregarTamanhoVetor;
end;

procedure TfrmExemplo.btnAlimentarClick(Sender: TObject);
begin
   Vetor_Alimentar_Sequencial;
   ListarVetor;
   CarregarTamanhoVetor;
end;

procedure TfrmExemplo.btnAlterarClick(Sender: TObject);
begin
   if Vetor_Alterar_Elemento_Da_Posicao( StrToInt(edtIndiceVetorAlt.Text) , StrToInt(edtNumeroAlt.Text) ) then
   begin
      ListarVetor;
      CarregarTamanhoVetor;
   end else
   begin
      MessageDlg('Não foi possível alterar o elemento do vetor.', mtError, [mbOK], 0);
   end;
end;

procedure TfrmExemplo.btnRemoverClick(Sender: TObject);
begin
   if Vetor_Remover_Elemento_Da_Posicao( StrToInt( edtIndiceVetor.Text ) ) then
   begin
      ListarVetor;
      CarregarTamanhoVetor;
   end else
   begin
      MessageDlg('Não foi possível excluir o elemento do vetor.', mtError, [mbOK], 0);
   end;
end;

procedure TfrmExemplo.btnResetarClick(Sender: TObject);
begin
   Vetor_Resetar;
   ListarVetor;
   CarregarTamanhoVetor;
end;

procedure TfrmExemplo.CarregarTamanhoVetor;
begin
   edtTamanho.Text := IntToStr( Vetor_Retornar_Tamanho );
end;

procedure TfrmExemplo.ListarVetor;
begin
   mmoListarVetor.Lines.Text := Vetor_Listar;
end;

end.
