unit UdmExemplo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Winapi.Windows;

type
  TdmExemplo = class(TDataModule)
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaDATA_NASCIMENTO: TDateField;
    cdsPessoaSEXO: TStringField;
    dsPessoa: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PopularClient;
    procedure ApagarRegistroSelecionado;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmExemplo.ApagarRegistroSelecionado;
begin

   if cdsPessoa.IsEmpty then
      Exit;


   if MessageBox(0, 'Deseja excluir este registro?', '', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idYes then
   begin
      cdsPessoa.Delete;
   end;

end;


procedure TdmExemplo.DataModuleCreate(Sender: TObject);
begin
   cdsPessoa.CreateDataSet;
end;

procedure TdmExemplo.DataModuleDestroy(Sender: TObject);
begin
   cdsPessoa.Close;
end;


procedure TdmExemplo.PopularClient;
begin
   cdsPessoa.Append;
   cdsPessoaCODIGO.AsInteger     := 1;
   cdsPessoaNOME.Text            := 'ADAMASTOR APOLINARIO SILVEIRA';
   cdsPessoaDATA_NASCIMENTO.Text := '27/07/1968';
   cdsPessoaSEXO.Text            := 'M';
   cdsPessoa.Post;

   cdsPessoa.Append;
   cdsPessoaCODIGO.AsInteger     := 2;
   cdsPessoaNOME.Text            := 'JOSE DA SILVA PEREIRA';
   cdsPessoaDATA_NASCIMENTO.Text := '02/01/1997';
   cdsPessoaSEXO.Text            := 'M';
   cdsPessoa.Post;

   cdsPessoa.Append;
   cdsPessoaCODIGO.AsInteger     := 3;
   cdsPessoaNOME.Text            := 'MARIA JOAQUINA PEREIRA';
   cdsPessoaDATA_NASCIMENTO.Text := '16/08/2004';
   cdsPessoaSEXO.Text            := 'F';
   cdsPessoa.Post;

end;

end.
