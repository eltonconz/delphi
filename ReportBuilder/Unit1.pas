unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer, ppParameter, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar;

type
  TForm1 = class(TForm)
    cdsServicos: TClientDataSet;
    cdsServicosNUMERO: TIntegerField;
    cdsServicosCLIENTE: TStringField;
    cdsServicosDATA: TDateField;
    cdsServicosSERVICO: TStringField;
    cdsServicosVALOR: TFloatField;
    dsServicos: TDataSource;
    grdDados: TDBGrid;
    panMenu: TPanel;
    btnRelatorio: TBitBtn;
    rbListagem: TRadioButton;
    lbl1: TLabel;
    rbPorData: TRadioButton;
    rbPorCliente: TRadioButton;
    rbPorServico: TRadioButton;
    ppRelatorio: TppDBPipeline;
    relListagem: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    relPorData: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    relPorCliente: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    relPorServico: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine8: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc7: TppDBCalc;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    rbResumoDataServico: TRadioButton;
    relResumoDataServico: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine10: TppLine;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppDBCalc8: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel30: TppLabel;
    ppDBText25: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc9: TppDBCalc;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText21: TppDBText;
    ppDBCalc10: TppDBCalc;
    rbResumoServicoData: TRadioButton;
    relReumoServicoData: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLine11: TppLine;
    ppLabel27: TppLabel;
    ppLabel31: TppLabel;
    ppLine12: TppLine;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc11: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel32: TppLabel;
    ppDBText22: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc12: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppDBText23: TppDBText;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    EST: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    lblTeste: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
    procedure PovoarTabela;
    procedure GerarRelatorio;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnRelatorioClick(Sender: TObject);
begin
   GerarRelatorio;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   PovoarTabela;
end;



procedure TForm1.PovoarTabela;
begin
   cdsServicos.Close;
   cdsServicos.CreateDataSet;

   cdsServicos.AppendRecord([1020,'03/10/2016','JOAO DA SILVA','FORMATAR PC',50]);
   cdsServicos.AppendRecord([1021,'03/10/2016','JOAO DA SILVA','INSTALAR WINDWOS',50]);
   cdsServicos.AppendRecord([1022,'03/10/2016','MARIA PEREIRA','FORMATAR PC',50]);
   cdsServicos.AppendRecord([1023,'03/10/2016','JEFERSON MOREIRA','FORMATAR PC',50]);
   cdsServicos.AppendRecord([1024,'03/10/2016','AUGUSTO SILVA','FORMATAR PC',50]);
   cdsServicos.AppendRecord([1025,'03/10/2016','AUGUSTO SILVA','INSTALAR WINDWOS',50]);

   cdsServicos.AppendRecord([1026,'04/10/2016','JOEL SANTANA','AULA DE INGLES',250]);
   cdsServicos.AppendRecord([1027,'04/10/2016','TAMARA LEONIDAS','FORMATAR PC',50]);
   cdsServicos.AppendRecord([1028,'04/10/2016','TAMARA LEONIDAS','INSTALAR WINDWOS',50]);

   cdsServicos.AppendRecord([1029,'05/10/2016','JOEL SANTANA','FORMATAR PC',75]);
   cdsServicos.AppendRecord([1030,'05/10/2016','JOEL SANTANA','INSTALAR WINDWOS',75]);
   cdsServicos.AppendRecord([1031,'05/10/2016','AUGUSTO SILVA','INSTALAR OFFICE',50]);
   cdsServicos.AppendRecord([1032,'05/10/2016','AUGUSTO SILVA','INSTALAR DELPHI',100]);

   cdsServicos.AppendRecord([1033,'07/10/2016','TAMARA LEONIDAS','INSTALAR DELPHI',100]);
   cdsServicos.AppendRecord([1034,'07/10/2016','TAMARA LEONIDAS','AULA DE DELPHI',300]);
   cdsServicos.AppendRecord([1035,'07/10/2016','JEFERSON MOREIRA','INSTALAR DELPHI',100]);
   cdsServicos.AppendRecord([1035,'07/10/2016','JEFERSON MOREIRA','AULA DE DELPHI',300]);

   cdsServicos.AppendRecord([1036,'10/10/2016','JORGE AUGUSTO','FORMATAR PC',100]);
   cdsServicos.AppendRecord([1037,'10/10/2016','JORGE AUGUSTO','INSTALAR WINDWOS',50]);
   cdsServicos.AppendRecord([1038,'10/10/2016','JORGE AUGUSTO','INSTALAR DELPHI',100]);
   cdsServicos.AppendRecord([1039,'10/10/2016','GUILHERME CONCEICAO','FORMATAR PC',100]);

   cdsServicos.AppendRecord([1040,'11/10/2016','JOEL SANTANA','AULA DE DELPHI',300]);
   cdsServicos.AppendRecord([1041,'11/10/2016','TAMARA LEONIDAS','AULA DE DELPHI',300]);
   cdsServicos.AppendRecord([1042,'11/10/2016','JEFERSON MOREIRA','AULA DE DELPHI',300]);
   cdsServicos.AppendRecord([1043,'11/10/2016','JORGE AUGUSTO','AULA DE DELPHI',300]);

   cdsServicos.AppendRecord([1044,'14/10/2016','AMANDA SILVEIRA','FORMATAR PC',115]);
   cdsServicos.AppendRecord([1045,'14/10/2016','RENATO PEREIRA','AULA DE DELPHI',300]);
   cdsServicos.AppendRecord([1046,'14/10/2016','AUGUSTO SILVA','AULA DE PHOTOSHOP',200]);
   cdsServicos.AppendRecord([1047,'14/10/2016','JORGE AUGUSTO','AULA DE PHOTOSHOP',200]);

   cdsServicos.First;

end;





procedure TForm1.GerarRelatorio;
begin

   cdsServicos.DisableControls;
   cdsServicos.First;


   // Listagem
   if rbListagem.Checked then
   begin
      lblTeste.Caption  := 'TESTE DE LABEL';
      cdsServicos.IndexFieldNames := 'DATA;CLIENTE;SERVICO';
      relListagem.Print;
   end;

   // Por Data
   if rbPorData.Checked then
   begin
      cdsServicos.IndexFieldNames := 'DATA;CLIENTE;SERVICO';
      relPorData.Print;
   end;

   // Por Cliente
   if rbPorCliente.Checked then
   begin
      cdsServicos.IndexFieldNames := 'CLIENTE;DATA;SERVICO';
      relPorCliente.Print;
   end;

   // Por Serviço
   if rbPorServico.Checked then
   begin
      cdsServicos.IndexFieldNames := 'SERVICO;DATA;CLIENTE';
      relPorServico.Print;
   end;

   // Resumo por Data/Serviço
   if rbResumoDataServico.Checked then
   begin
      cdsServicos.IndexFieldNames := 'DATA;SERVICO';
      relResumoDataServico.Print;
   end;

   // Resumo por Serviço/Data
   if rbResumoServicoData.Checked then
   begin
      cdsServicos.IndexFieldNames := 'SERVICO;DATA';
      relReumoServicoData.Print;
   end;

   cdsServicos.EnableControls;
   cdsServicos.IndexFieldNames := '';
   cdsServicos.First;

end;



end.
