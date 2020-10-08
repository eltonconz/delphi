unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, frxExportMail, frxExportPDF;

type
  TfrmExemplo = class(TForm)
    btnRel01: TButton;
    btnPorEstado: TButton;
    cdsCidades: TClientDataSet;
    cdsCidadesCODIGO: TIntegerField;
    cdsCidadesNOME: TStringField;
    cdsCidadesUF: TStringField;
    grdDados: TDBGrid;
    dsDados: TDataSource;
    Label1: TLabel;
    edtObs: TEdit;
    fdsCidades: TfrxDBDataset;
    Rel_Listagem: TfrxReport;
    Rel_PorEstado: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnRel01Click(Sender: TObject);
    procedure btnPorEstadoClick(Sender: TObject);
    procedure Rel_ListagemNewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
    procedure Rel_PorEstadoNewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}


procedure TfrmExemplo.btnPorEstadoClick(Sender: TObject);
begin
   cdsCidades.IndexFieldNames := 'UF;NOME';
   cdsCidades.First;

   Rel_PorEstado.PrepareReport();
   Rel_PorEstado.ShowPreparedReport;
end;


procedure TfrmExemplo.btnRel01Click(Sender: TObject);
begin
   cdsCidades.IndexFieldNames := 'NOME';
   cdsCidades.First;

   Rel_Listagem.PrepareReport();
   Rel_Listagem.ShowPreparedReport;
end;


procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
   cdsCidades.Close;
   cdsCidades.CreateDataSet;
   cdsCidades.AppendRecord([1,'FLORES DA CUNHA','RS']);
   cdsCidades.AppendRecord([2,'CAXIAS DO SUL','RS']);
   cdsCidades.AppendRecord([3,'FARROUPILHA','RS']);
   cdsCidades.AppendRecord([4,'PORTO ALEGRE','RS']);
   cdsCidades.AppendRecord([5,'CRICIÚMA','SC']);
   cdsCidades.AppendRecord([6,'FLORIANÓPOLIS','SC']);
   cdsCidades.AppendRecord([7,'TUBARÃO','SC']);
   cdsCidades.AppendRecord([8,'LONDRINA','PR']);
   cdsCidades.AppendRecord([9,'CURITIBA','PR']);
   cdsCidades.AppendRecord([10,'SÃO LUIZ','RS']);
   cdsCidades.AppendRecord([11,'PELOTAS','RS']);
   cdsCidades.AppendRecord([12,'TURMALINA','SP']);
   cdsCidades.AppendRecord([13,'OLIMPIA','SP']);
   cdsCidades.AppendRecord([14,'SÃO PAULO','SP']);
   cdsCidades.AppendRecord([15,'CATANDUVA','SP']);
   cdsCidades.AppendRecord([16,'MIRASSOL','SP']);
   cdsCidades.AppendRecord([17,'AMATURA','AM']);
   cdsCidades.AppendRecord([18,'IPIXUNA','AM']);
   cdsCidades.AppendRecord([19,'AUTAZES','AM']);
   cdsCidades.AppendRecord([20,'PORTO VELHO','RO']);
   cdsCidades.AppendRecord([21,'BURITIS','RO']);
   cdsCidades.AppendRecord([22,'VALE DO ANARI','RO']);
   cdsCidades.AppendRecord([23,'TARAUACA','AC']);
   cdsCidades.AppendRecord([24,'RIO BRANCO','AC']);
   cdsCidades.AppendRecord([25,'XAPURI','AC']);
   cdsCidades.AppendRecord([26,'JACUNDA','PA']);
   cdsCidades.AppendRecord([27,'TUCUMA','PA']);
   cdsCidades.AppendRecord([28,'REDENCAO','PA']);
   cdsCidades.AppendRecord([29,'CURIONOPOLIS','PA']);
   cdsCidades.AppendRecord([30,'GURUPI','TO']);
   cdsCidades.AppendRecord([31,'TALISMA','TO']);
   cdsCidades.AppendRecord([32,'ITACAJA','TO']);
   cdsCidades.AppendRecord([33,'LIZARDA','TO']);
   cdsCidades.AppendRecord([34,'JUREMA','PI']);
   cdsCidades.AppendRecord([35,'CURIMATA','PI']);
   cdsCidades.AppendRecord([36,'BOCAINA','PI']);
   cdsCidades.AppendRecord([37,'ISAIAS COELHO','PI']);
   cdsCidades.AppendRecord([38,'TRAIRI','CE']);
   cdsCidades.AppendRecord([39,'UMIRIM','CE']);
   cdsCidades.AppendRecord([40,'ARACOIABA','CE']);
   cdsCidades.First;
end;


procedure TfrmExemplo.FormDestroy(Sender: TObject);
begin
   cdsCidades.Close;
end;


procedure TfrmExemplo.Rel_ListagemNewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
begin
   if SameText(VarName, 'var_Obs') then
      Value := edtObs.Text;
end;


procedure TfrmExemplo.Rel_PorEstadoNewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
begin
   if SameText(VarName, 'var_Obs') then
      Value := edtObs.Text;
end;

end.
