unit UdmPessoa;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Dialogs;

type TRet_Pessoa = (rOk,rErro_Codigo,rErro_Nome,rErro_Desconhecido);

type
  TdmPessoa = class(TDataModule)
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaDATANASC: TDateField;
    cdsPessoaSALARIO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Excluir_Pessoa;
    procedure Nova_Pessoa;
    function  Salvar_Pessoa : TRet_Pessoa;

    procedure AjustarCadastros;
  end;


const
   ct_Arq_Dados = 'dados_pessoa.dat';


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmPessoa.cdsPessoaBeforePost(DataSet: TDataSet);
begin
   if cdsPessoaNOME.Text = '' then
      cdsPessoaNOME.Text := 'INDEFINIDO';
end;

procedure TdmPessoa.cdsPessoaNewRecord(DataSet: TDataSet);
begin
   cdsPessoaDATANASC.AsDateTime := Date;
   cdsPessoaSALARIO.AsFloat     := 800;
end;



procedure TdmPessoa.DataModuleCreate(Sender: TObject);
begin
   cdsPessoa.CreateDataSet;
   cdsPessoa.IndexFieldNames := 'NOME;DATANASC';

   if FileExists(ct_Arq_Dados) then
      cdsPessoa.LoadFromFile(ct_Arq_Dados);

end;



procedure TdmPessoa.DataModuleDestroy(Sender: TObject);
begin
   cdsPessoa.SaveToFile(ct_Arq_Dados);
end;


procedure TdmPessoa.Excluir_Pessoa;
begin
   if not(cdsPessoa.IsEmpty) then
      cdsPessoa.Delete;
end;



procedure TdmPessoa.Nova_Pessoa;
begin
   cdsPessoa.Append;
end;

function TdmPessoa.Salvar_Pessoa : TRet_Pessoa;
begin
   result := rOk;

   if cdsPessoaCODIGO.AsInteger <= 0 then
      Exit(rErro_Codigo);

   if trim(cdsPessoaNOME.Text) = '' then
      Exit(rErro_Nome);

   if cdsPessoa.State in [dsEdit,dsInsert] then
   begin
      try
         cdsPessoa.Post;
      except
         result := rErro_Desconhecido;
      end;
   end;
end;


procedure TdmPessoa.AjustarCadastros;
begin
   cdsPessoa.DisableControls;
   cdsPessoa.First;
   while not(cdsPessoa.eof) do
   begin
      cdsPessoa.Edit;
      cdsPessoaNOME.Text := cdsPessoaNOME.Text + ' *';
      cdsPessoa.Post;

      cdsPessoa.Next;
   end;
   cdsPessoa.First;
   cdsPessoa.EnableControls;

{
   cdsPessoa.DisableControls;
   cdsPessoa.Last;
   while not(cdsPessoa.bof) do
   begin
      cdsPessoa.Edit;
      cdsPessoaNOME.Text := cdsPessoaNOME.Text + ' *';
      cdsPessoa.Post;

      sleep(150);

      cdsPessoa.Prior;
   end;
   cdsPessoa.First;
   cdsPessoa.EnableControls;
}


end;




end.
