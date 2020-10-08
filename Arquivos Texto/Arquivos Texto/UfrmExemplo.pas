unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    edtCaminhoArquivo: TEdit;
    btnSelecionarArquivo: TButton;
    lbl1: TLabel;
    dlgSelecionaArq: TOpenDialog;
    btnAbrir: TButton;
    mmoConteudoArquivo: TMemo;
    btnSalvar: TButton;
    mmoInfoArquivo: TMemo;
    Label1: TLabel;
    btnExcluir: TButton;
    edtCaminhoArquivoNovo: TEdit;
    Label2: TLabel;
    btnCopiar: TButton;
    procedure btnSelecionarArquivoClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
    procedure InformacoesDoArquivo;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.btnAbrirClick(Sender: TObject);
var lArqTexto : TextFile;
var lsLinhaArquivo : string;
begin

   // Verifica se o arquivo existe
   if not(FileExists(edtCaminhoArquivo.Text)) then
   begin
      ShowMessage('O arquivo ' + edtCaminhoArquivo.Text +' não existe');
      Exit;
   end;

   // Exibir informações do arquivo
   InformacoesDoArquivo;


   // Limpar o memo
   mmoConteudoArquivo.Lines.Clear;


   // Vincula o arquivo físico a variável
   AssignFile(lArqTexto , edtCaminhoArquivo.Text );

   // Prepara o arquivo para leitura
   Reset(lArqTexto);


   // Enquando não chegar ao final do arquivo
   while not eof(lArqTexto) do
   begin

      // Lê a linha corrente, joga o seu conteúdo na variável e posiciona na próxima linha
      ReadLn(lArqTexto , lsLinhaArquivo);

      // Escreve o conteúdo da linha no memo
      mmoConteudoArquivo.Lines.Add(lsLinhaArquivo);

   end;

   // Fecha o arquivo
   CloseFile(lArqTexto);


end;



procedure TfrmExemplo.InformacoesDoArquivo;
var lsArquivo, lsDiretorio, lsDrive, lsNomeArquivo, lsExtensao : string;
begin
   lsArquivo := edtCaminhoArquivo.Text;

   mmoInfoArquivo.Lines.Clear;

   // Verifica se o arquivo existe
   if FileExists (lsArquivo) then
   begin
      mmoInfoArquivo.Lines.Add('O arquivo '+ lsArquivo + ' existe ');
   end else
   begin
      mmoInfoArquivo.Lines.Add('O arquivo '+ lsArquivo + ' não existe ');
      exit;
   end;


   // Pegar a unidade  ( C:\ D:\ etc. )
   lsDrive := ExtractFileDrive(lsArquivo);
   mmoInfoArquivo.Lines.Add('');
   mmoInfoArquivo.Lines.Add('Drive');
   mmoInfoArquivo.Lines.Add(lsDrive);


   // Pegar o diretório do arquivo
   lsDiretorio := ExtractFilePath(lsArquivo);
   mmoInfoArquivo.Lines.Add('');
   mmoInfoArquivo.Lines.Add('Diretório');
   mmoInfoArquivo.Lines.Add(lsDiretorio);


   // Verificar se o diretório existe
   if DirectoryExists(lsDiretorio) then
      mmoInfoArquivo.Lines.Add('existe')
   else
      mmoInfoArquivo.Lines.Add('não existe');


   // Pegar o nome do arquivo
   lsNomeArquivo := ExtractFileName(lsArquivo);
   mmoInfoArquivo.Lines.Add('');
   mmoInfoArquivo.Lines.Add('Nome do Arquivo');
   mmoInfoArquivo.Lines.Add(lsNomeArquivo);


   // Pegar a extensão do arquivo
   lsExtensao := ExtractFileExt(lsArquivo);
   mmoInfoArquivo.Lines.Add('');
   mmoInfoArquivo.Lines.Add('Extensão do Arquivo');
   mmoInfoArquivo.Lines.Add(lsExtensao);

end;



procedure TfrmExemplo.btnCopiarClick(Sender: TObject);
begin
   // Verifica se o arquivo de origem existe
   if not(FileExists(edtCaminhoArquivo.Text)) then
   begin
      ShowMessage('O arquivo ' + edtCaminhoArquivo.Text +' não existe');
      Exit;
   end;

   // Verifica se o arquivo de destino já existe
   if FileExists(edtCaminhoArquivoNovo.Text) then
   begin
      ShowMessage('O arquivo de destino já existe!');
      Exit;
   end;

   // Copia da origem para o detino
   CopyFile( PWideChar(edtCaminhoArquivo.Text)  ,
             PWideChar(edtCaminhoArquivoNovo.Text),
             False );

   ShowMessage('Arquivo copiado!');

end;


procedure TfrmExemplo.btnExcluirClick(Sender: TObject);
begin
   if MessageBox(0, 'Deseja excluir o arquivo?', 'Pergunta', MB_ICONQUESTION or MB_YESNO) = idYes then
   begin

      // Se o arquivo informado existe
      if FileExists(edtCaminhoArquivo.Text) then
      begin
         // Apaga o arquivo
         DeleteFile(edtCaminhoArquivo.Text);
         ShowMessage('Arquivo excluido!');
         InformacoesDoArquivo;
      end;
   end;

end;



procedure TfrmExemplo.btnSalvarClick(Sender: TObject);
var lArqTexto : TextFile;
var lsLinhaArquivo : string;
var liPos, liNumLinhas : integer;
begin

   // Vincula o arquivo físico a variável
   AssignFile(lArqTexto , edtCaminhoArquivo.Text );

   // Prepara o arquivo para escrita
   Rewrite(lArqTexto);

   // Percorrer as linhas do memo e escrever cada linha no arquivo
   liNumLinhas := mmoConteudoArquivo.Lines.Count;
   for liPos := 0 to liNumLinhas -1 do
   begin

      lsLinhaArquivo := mmoConteudoArquivo.Lines[liPos] ;

      // Escreve o conteúdo da variável no arquivo e posiciona o arquivo na próxima linha
      Writeln(lArqTexto , lsLinhaArquivo);

   end;

   // Fecha o arquivo
   CloseFile(lArqTexto);


end;



procedure TfrmExemplo.btnSelecionarArquivoClick(Sender: TObject);
begin
   if dlgSelecionaArq.Execute then
      edtCaminhoArquivo.Text := dlgSelecionaArq.FileName;
end;

end.
