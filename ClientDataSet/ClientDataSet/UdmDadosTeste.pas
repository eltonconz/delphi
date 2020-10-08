unit UdmDadosTeste;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, SqlExpr, Dialogs, Math;

type
  TdmDadosTeste = class(TDataModule)
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosDATA: TDateField;
    cdsDadosVALOR: TFloatField;
    agrgtfldcdsDadosAG_VALOR_TOTAL: TAggregateField;
    agrgtfldcdsDadosAG_PROX_COD: TAggregateField;
    procedure cdsDadosNewRecord(DataSet: TDataSet);
    procedure cdsDadosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function  Client_Criar : boolean;
    function  Client_Fechar : boolean;
    function  Client_Contar : integer;
    function  Client_TemDados : boolean;
    function  Client_Aberto : boolean;
    function  Client_Estado : string;
    procedure Client_Primeiro;
    procedure Client_Proximo;
    procedure Client_Anterior;
    procedure Client_Ultimo;
    procedure Client_Adicionar;
    procedure Client_Salvar;
    procedure Client_Cancelar;
    procedure Client_Excluir;
    procedure Client_Ordenar(inCampo : string);
    procedure Client_Povoar;
    procedure Client_Loop;
    procedure Client_Pesquisar(inTexto : string);
    procedure Client_Filtrar(inTexto : string);
    procedure Client_Salvar_Arquivo;
    procedure Client_Restaurar_Arquivo;

  end;


const c_Arquivo = 'dados.dat';

implementation


{$R *.dfm}

{ TdmDadosTeste }

procedure TdmDadosTeste.cdsDadosBeforePost(DataSet: TDataSet);
begin
   // Este evento é disparado ao executar Client.Post
   if trim(cdsDadosDESCRICAO.Text) = '' then
      cdsDadosDESCRICAO.Text := 'DESCRICAO ' + cdsDadosCODIGO.Text;
end;


procedure TdmDadosTeste.cdsDadosNewRecord(DataSet: TDataSet);
begin
   // O evento onNewRecord é executado sempre quando se executa Clien.Append ou Client.Insert
   cdsDadosDATA.AsDateTime := Date;
   cdsDadosVALOR.AsFloat   := 0;
end;




function TdmDadosTeste.Client_Aberto: boolean;
begin
   result := cdsDados.Active;
end;

procedure TdmDadosTeste.Client_Cancelar;
begin
   cdsDados.Cancel;
end;

function TdmDadosTeste.Client_Contar: integer;
begin
   result := cdsDados.RecordCount;
end;

function TdmDadosTeste.Client_Criar: boolean;
begin
   cdsDados.CreateDataSet;
   result := true;
end;


function TdmDadosTeste.Client_Estado: string;
begin
   if cdsDados.State = dsInsert then
      result := 'INSERINDO'
   else if cdsDados.State = dsEdit then
      result := 'EDITANDO'
   else if cdsDados.State = dsBrowse then
      result := 'NAVEGANDO'
   else
      result := 'OUTRO';
end;


procedure TdmDadosTeste.Client_Excluir;
begin
   if Client_TemDados then
      cdsDados.Delete;
end;

function TdmDadosTeste.Client_Fechar: boolean;
begin
   cdsDados.Close;
end;

procedure TdmDadosTeste.Client_Filtrar(inTexto: string);
begin
   cdsDados.Filtered := false;

   if inTexto <> '' then
   begin
      cdsDados.Filter   := 'DESCRICAO like'+QuotedStr(inTexto+'%');
      cdsDados.Filtered := true;
   end;
end;

procedure TdmDadosTeste.Client_Loop;
begin
   cdsDados.DisableControls;
   cdsDados.First;
   while not(cdsDados.eof) do
   begin
      Sleep(100);
      cdsDados.Next;
   end;
   cdsDados.First;
   cdsDados.EnableControls;
end;

procedure TdmDadosTeste.Client_Ordenar(inCampo: string);
begin
   cdsDados.IndexFieldNames := inCampo;
end;

procedure TdmDadosTeste.Client_Adicionar;
begin
   cdsDados.Append;
   // ou cdsDados.Insert;
end;

procedure TdmDadosTeste.Client_Anterior;
begin
   cdsDados.Prior;
end;

procedure TdmDadosTeste.Client_Proximo;
begin
   cdsDados.Next;
end;


procedure TdmDadosTeste.Client_Salvar_Arquivo;
begin
   cdsDados.SaveToFile(c_Arquivo);
end;


procedure TdmDadosTeste.Client_Restaurar_Arquivo;
begin
   if FileExists(c_Arquivo) then
      cdsDados.LoadFromFile(c_Arquivo);
end;


procedure TdmDadosTeste.Client_Salvar;
begin
   if cdsDados.State in [dsEdit,dsInsert] then
      cdsDados.Post;
end;



procedure TdmDadosTeste.Client_Pesquisar(inTexto: string);
var lbAchou : boolean;
begin
   lbAchou := cdsDados.Locate('DESCRICAO',inTexto,[loPartialKey]);

   if not(lbAchou) then
      ShowMessage('Não encontrado!');
end;


procedure TdmDadosTeste.Client_Povoar;
begin
   if Client_Aberto then
   begin
      Client_Adicionar;
      cdsDadosCODIGO.AsInteger := 1;
      cdsDadosDESCRICAO.Text   := 'ELTON';
      cdsDadosDATA.AsDateTime  := Date;
      cdsDadosVALOR.AsFloat    := 1000;
      Client_Salvar;

      Client_Adicionar;
      cdsDadosCODIGO.AsInteger := 2;
      cdsDadosDESCRICAO.Text   := 'LUCIANE';
      cdsDadosDATA.AsDateTime  := Date;
      cdsDadosVALOR.AsFloat    := 4000;
      Client_Salvar;

      Client_Adicionar;
      cdsDadosCODIGO.AsInteger := 3;
      cdsDadosDESCRICAO.Text   := 'MIKE';
      cdsDadosDATA.AsDateTime  := Date;
      cdsDadosVALOR.AsFloat    := 4000;
      Client_Salvar;

      Client_Adicionar;
      cdsDadosCODIGO.AsInteger := 3;
      cdsDadosDESCRICAO.Text   := 'ADEMIR';
      cdsDadosDATA.AsDateTime  := Date;
      cdsDadosVALOR.AsFloat    := 15000;
      Client_Salvar;

   end;
end;

procedure TdmDadosTeste.Client_Primeiro;
begin
   cdsDados.First;
end;

procedure TdmDadosTeste.Client_Ultimo;
begin
   cdsDados.Last;
end;

function TdmDadosTeste.Client_TemDados: boolean;
begin
   result := false;
   if Client_Aberto then
      result := not(cdsDados.IsEmpty);
end;




end.
