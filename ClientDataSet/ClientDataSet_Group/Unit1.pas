unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    cdsDados: TClientDataSet;
    cdsDadosCODEMPRESA: TIntegerField;
    cdsDadosID_MASCARA: TIntegerField;
    cdsDadosMASCARA: TStringField;
    cdsDadosQTDE_ESTOQUE: TFloatField;
    dsDados: TDataSource;
    grdDados: TDBGrid;
    cdsDadosSOMA: TAggregateField;
    btn1: TButton;
    cdsDadosTotais: TClientDataSet;
    cdsDadosTotaisCODEMPRESA: TIntegerField;
    cdsDadosTotaisID_MASCARA: TIntegerField;
    cdsDadosTotaisQTDE_ESTOQUE: TFloatField;
    dsDadosTotais: TDataSource;
    DBGrid1: TDBGrid;
    cdsdadosEmpresa: TClientDataSet;
    cdsdadosEmpresaCODEMPRESA: TIntegerField;
    cdsDadosEmpresaQTDE_ESTOQUE: TFloatField;
    dsDadosEmpresa: TDataSource;
    DBGrid2: TDBGrid;
    cdsDadosSOMA_EMP: TAggregateField;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   cdsDadosTotais.Close;
   cdsDadosTotais.CreateDataSet;

   cdsdadosEmpresa.Close;
   cdsdadosEmpresa.CreateDataSet;

   cdsDados.DisableControls;
   cdsDados.First;
   while not(cdsDados.eof) do
   begin

      if gbFirst in cdsDados.GetGroupState(2) then
      begin
         cdsDadosTotais.Append;
         cdsDadosTotaisCODEMPRESA.AsInteger := cdsDadosCODEMPRESA.AsInteger;
         cdsDadosTotaisID_MASCARA.AsInteger := cdsDadosID_MASCARA.AsInteger;
         cdsDadosTotaisQTDE_ESTOQUE.Value   := cdsDadosSOMA.Value;
         cdsDadosTotais.Post;
      end;

      if gbFirst in cdsDados.GetGroupState(1) then
      begin
         cdsdadosEmpresa.Append;
         cdsdadosEmpresaCODEMPRESA.AsInteger := cdsDadosCODEMPRESA.AsInteger;
         cdsDadosEmpresaQTDE_ESTOQUE.Value   := cdsDadosSOMA_EMP.Value;
         cdsdadosEmpresa.Post;
      end;


      cdsDados.Next;
   end;
   cdsDados.First;
   cdsDados.EnableControls;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   cdsDados.CreateDataSet;

   cdsDados.InsertRecord([1,1,'MASCARA_001',10]);
   cdsDados.InsertRecord([1,2,'MASCARA_002',15]);
   cdsDados.InsertRecord([1,3,'MASCARA_003',5]);
   cdsDados.InsertRecord([1,4,'MASCARA_001',25]);

   cdsDados.InsertRecord([2,1,'MASCARA_001',9]);
   cdsDados.InsertRecord([2,2,'MASCARA_002',10]);
   cdsDados.InsertRecord([2,2,'MASCARA_002',70]);

end;

end.
