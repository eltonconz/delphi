unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppStrtch, ppSubRpt;

type
  TForm1 = class(TForm)
    cdsEstados: TClientDataSet;
    cdsEstadosUF: TStringField;
    cdsEstadosNOME: TStringField;
    dsEstados: TDataSource;
    grdEstados: TDBGrid;
    cdsCidades: TClientDataSet;
    cdsCidadesNOME: TStringField;
    cdsCidadesUF: TStringField;
    dsCidades: TDataSource;
    grdCidades: TDBGrid;
    relTeste: TppReport;
    ppEstados: TppDBPipeline;
    ppCidades: TppDBPipeline;
    btnImprimir: TButton;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure cdsEstadosAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnImprimirClick(Sender: TObject);
begin
   cdsEstados.IndexFieldNames := 'UF';
   cdsCidades.IndexFieldNames := 'NOME';
   cdsEstados.First;

   relTeste.Print;
end;

procedure TForm1.cdsEstadosAfterScroll(DataSet: TDataSet);
begin
   cdsCidades.Filter   := 'UF='+ QuotedStr(cdsEstadosUF.Text);
   cdsCidades.Filtered := True;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
   cdsEstados.CreateDataSet;
   cdsEstados.AppendRecord(['RS','RIO GRANDE DO SUL']);
   cdsEstados.AppendRecord(['PR','PARANÁ']);
   cdsEstados.AppendRecord(['SC','SANTA CATARINA']);

   cdsCidades.CreateDataSet;
   cdsCidades.AppendRecord(['FLORES DA CUNHA','RS']);
   cdsCidades.AppendRecord(['CAXIAS DO SUL','RS']);
   cdsCidades.AppendRecord(['PATO BRANCO','PR']);
   cdsCidades.AppendRecord(['LONDRINA','PR']);
   cdsCidades.AppendRecord(['FLORIANOPOLIS','SC']);
   cdsCidades.AppendRecord(['TUBARÃO','SC']);

   cdsEstadosAfterScroll(cdsEstados);


end;

end.
