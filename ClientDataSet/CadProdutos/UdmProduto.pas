unit UdmProduto;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Vcl.Dialogs, Vcl.Controls;


type TProduto = record
   Codigo    : integer;
   Descricao : string;
   Valor     : double;
end;


type
  TdmProduto = class(TDataModule)
    cdsProduto: TClientDataSet;
    cdsProdutoCODIGO: TIntegerField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoVALOR: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure cdsProdutoAfterPost(DataSet: TDataSet);
    procedure cdsProdutoAfterDelete(DataSet: TDataSet);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    const ct_Nome_Arq  = 'dados.dat';
    procedure SalvarEmArquivo;
    procedure CarregarDoArquivo;
  public
    { Public declarations }
    procedure RegistroNovo;
    function  RegistroExcluir(inExibirMensagem : boolean) : boolean;
    function  RegistroSalvar : boolean;

    class function RegistroAdicionarProduto(inProduto : TProduto) : boolean;
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmProduto.cdsProdutoAfterDelete(DataSet: TDataSet);
begin
   SalvarEmArquivo;
end;

procedure TdmProduto.cdsProdutoAfterPost(DataSet: TDataSet);
begin
   SalvarEmArquivo;
end;

procedure TdmProduto.cdsProdutoBeforePost(DataSet: TDataSet);
begin
   cdsProdutoDESCRICAO.Text := AnsiUpperCase(cdsProdutoDESCRICAO.Text);
end;

procedure TdmProduto.cdsProdutoNewRecord(DataSet: TDataSet);
begin
   cdsProdutoVALOR.AsFloat := 0;
end;

procedure TdmProduto.DataModuleCreate(Sender: TObject);
begin
   cdsProduto.CreateDataSet;
   CarregarDoArquivo;
end;


procedure TdmProduto.DataModuleDestroy(Sender: TObject);
begin
   cdsProduto.Close;
end;


function TdmProduto.RegistroExcluir(inExibirMensagem: boolean): boolean;
begin

   result := False;

   if not(cdsProduto.Active) then
      Exit;

   if cdsProduto.IsEmpty then
      Exit;

   if inExibirMensagem then
   begin
      if MessageDlg('Confirma a exclusão?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
      begin
         Exit;
      end;
   end;

   cdsProduto.Delete;
   result := True;

end;


procedure TdmProduto.RegistroNovo;
begin
   if not(cdsProduto.Active) then
      Exit;

   if cdsProduto.State in [dsEdit,dsInsert] then
      Exit;

   cdsProduto.Append;

end;



function TdmProduto.RegistroSalvar: boolean;
begin
   result := False;

   if not(cdsProduto.Active) then
      Exit;

   if not(cdsProduto.State in [dsEdit,dsInsert]) then
      Exit;

   try
      cdsProduto.Post;
      result := True;
   except
      result := False;
   end;

end;


procedure TdmProduto.SalvarEmArquivo;
begin
   cdsProduto.SaveToFile(ct_Nome_Arq);
end;


procedure TdmProduto.CarregarDoArquivo;
begin
   if FileExists(ct_Nome_Arq) then
      cdsProduto.LoadFromFile(ct_Nome_Arq);
end;


class function TdmProduto.RegistroAdicionarProduto(inProduto: TProduto): boolean;
var ldmProd : TdmProduto;
begin
   ldmProd:=TdmProduto.Create(nil);
   try
      ldmProd.RegistroNovo;
      ldmProd.cdsProdutoCODIGO.AsInteger := inProduto.Codigo;
      ldmProd.cdsProdutoDESCRICAO.Text   := inProduto.Descricao;
      ldmProd.cdsProdutoVALOR.AsFloat    := inProduto.Valor;
      result := ldmProd.RegistroSalvar;
   finally
      FreeAndNil(ldmProd);
   end;
end;






end.
