unit UdmAtividades;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Dialogs, DateUtils;

type
  TdmAtividades = class(TDataModule)
    cdsAtividades: TClientDataSet;
    cdsAtividadesTITULO: TStringField;
    cdsAtividadesDATA: TDateField;
    cdsAtividadesHORA_INICIO: TTimeField;
    cdsAtividadesHORA_FINAL: TTimeField;
    cdsAtividadesTEMPO_TOTAL: TFloatField;
    agrgtfldAtividadesAG_TEMPO_TOTAL: TAggregateField;
    agrgtfldAtividadesAG_CONTADOR: TAggregateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsAtividadesBeforePost(DataSet: TDataSet);
    procedure cdsAtividadesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalculaTempoTotal;
    procedure SalvarEmArquivo;
    procedure CarregarDeArquivo;
  public
    { Public declarations }
    procedure Registro_Novo;
    procedure Registro_Cancelar;
    function  Registro_Salvar : Boolean;
    function  Registro_Excluir : Boolean;
    function  Client_Vazio : Boolean;
    function  Resgistro_Localizar(inTitulo : string) : Boolean;
    function  Resgistro_Filtrar(inTitulo : string) : Boolean;
  end;

const ct_Arquivo = 'dados.dat';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmAtividades.CalculaTempoTotal;
var ldtDataHoraIni, ldtDataHoraFim : TDateTime;
begin
   ldtDataHoraIni := StrToDateTime(cdsAtividadesDATA.Text + ' ' + cdsAtividadesHORA_INICIO.Text);
   ldtDataHoraFim := StrToDateTime(cdsAtividadesDATA.Text + ' ' + cdsAtividadesHORA_FINAL.Text);
   cdsAtividadesTEMPO_TOTAL.AsFloat := SecondsBetween(ldtDataHoraIni, ldtDataHoraFim) / 3600 ;
end;

function TdmAtividades.Client_Vazio : Boolean;
begin
   Result := False;

   if not(cdsAtividades.Active) then
      Exit(True);

   // See o client está vazio, não temnos o que excluir
   if cdsAtividades.IsEmpty then
      Exit(True);
end;

procedure TdmAtividades.DataModuleCreate(Sender: TObject);
begin
   cdsAtividades.CreateDataSet;
   CarregarDeArquivo;
end;

procedure TdmAtividades.DataModuleDestroy(Sender: TObject);
begin
   SalvarEmArquivo;
   cdsAtividades.Close;
end;


procedure TdmAtividades.Registro_Novo;
begin
   cdsAtividades.Append;
end;


function TdmAtividades.Registro_Salvar: Boolean;
begin
   Result := False;

   if cdsAtividades.State in [dsInsert,dsEdit] then
   begin
      cdsAtividades.Post;
      Result := True;
   end;
end;



function TdmAtividades.Resgistro_Filtrar(inTitulo: string): Boolean;
begin
   if inTitulo.Trim <> '' then
   begin
      cdsAtividades.Filter   := 'TITULO='+ QuotedStr(inTitulo);
      cdsAtividades.Filtered := True;
   end else
      cdsAtividades.Filtered := False;
end;


function TdmAtividades.Resgistro_Localizar(inTitulo: string): Boolean;
begin
   result := cdsAtividades.Locate('TITULO',inTitulo,[loCaseInsensitive, loPartialKey]);
end;


procedure TdmAtividades.Registro_Cancelar;
begin
   if cdsAtividades.State in [dsEdit,dsInsert] then
      cdsAtividades.Cancel;
end;


function TdmAtividades.registro_Excluir: Boolean;
begin

   result := False;

   if Client_Vazio then
      Exit;

   // Se o usuário optar por não excluir
   if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0, mbNo) <> 6 then
      Exit;

   cdsAtividades.Delete;
   result := True;

end;


procedure TdmAtividades.SalvarEmArquivo;
begin
   cdsAtividades.SaveToFile(ct_Arquivo);
end;


procedure TdmAtividades.CarregarDeArquivo;
begin
   if FileExists(ct_Arquivo) then
   begin
      cdsAtividades.Close;
      cdsAtividades.CreateDataSet;
      cdsAtividades.LoadFromFile(ct_Arquivo);
   end;
end;


procedure TdmAtividades.cdsAtividadesBeforePost(DataSet: TDataSet);
begin
   CalculaTempoTotal;
end;

procedure TdmAtividades.cdsAtividadesNewRecord(DataSet: TDataSet);
begin
   cdsAtividadesDATA.AsDateTime := Date;
end;

end.
