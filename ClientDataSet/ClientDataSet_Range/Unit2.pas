unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDataModule2 = class(TDataModule)
    cdsDados: TClientDataSet;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosUF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarDados;
  public
    { Public declarations }
    procedure SetRange_Codigo(inCodigoInicial, inCodigoFinal: integer);
    procedure ApplyRange_Codigo(inCodigoInicial, inCodigoFinal: integer);

    procedure SetRange_Cidade_UF(inUF, inCidadeIni, inCidadeFin : string);
    procedure ApplyRange_Cidade_UF(inUF, inCidadeIni, inCidadeFin : string);

    procedure CancelRange;

  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }

procedure TDataModule2.AdicionarDados;
begin
   cdsDados.Close;
   cdsDados.CreateDataSet;

   cdsDados.AppendRecord([1,'ALVORADA','RS']);
   cdsDados.AppendRecord([2,'ANTONIO PRADO','RS']);
   cdsDados.AppendRecord([3,'ARACAJU','SE']);
   cdsDados.AppendRecord([4,'ARAPONGAS','PR']);
   cdsDados.AppendRecord([6,'BALNEARIO CAMBORIU','SC']);
   cdsDados.AppendRecord([7,'BARREIRAS','BA']);
   cdsDados.AppendRecord([8,'BELEM','PA']);
   cdsDados.AppendRecord([9,'BENTO GONCALVES','RS']);
   cdsDados.AppendRecord([10,'BOTUCATU','SP']);
   cdsDados.AppendRecord([11,'BRUSQUE','SC']);
   cdsDados.AppendRecord([12,'CABO FRIO','RJ']);
   cdsDados.AppendRecord([13,'CACHOEIRINHA','RS']);
   cdsDados.AppendRecord([14,'CACOAL','RO']);
   cdsDados.AppendRecord([15,'CAMPINAS','SP']);
   cdsDados.AppendRecord([16,'CAMPO GRANDE','MS']);
   cdsDados.AppendRecord([17,'CAMPOS DOS GOYTACAZES','RJ']);
   cdsDados.AppendRecord([18,'CANOAS','RS']);
   cdsDados.AppendRecord([19,'CAPAO DA CANOA','RS']);
   cdsDados.AppendRecord([20,'CAXIAS DO SUL','RS']);
   cdsDados.AppendRecord([21,'COLOMBO','PR']);
   cdsDados.AppendRecord([22,'COTIA','SP']);
   cdsDados.AppendRecord([23,'CUIABA','MT']);
   cdsDados.AppendRecord([24,'CURITIBA','PR']);
   cdsDados.AppendRecord([25,'EMBU','SP']);
   cdsDados.AppendRecord([26,'ENCANTADO','RS']);
   cdsDados.AppendRecord([27,'ERECHIM','RS']);
   cdsDados.AppendRecord([28,'ESTANCIA VELHA','RS']);
   cdsDados.AppendRecord([29,'ESTEIO','RS']);
   cdsDados.AppendRecord([30,'ESTRELA','RS']);
   cdsDados.AppendRecord([31,'FARROUPILHA','RS']);
   cdsDados.AppendRecord([32,'FLORES DA CUNHA','RS']);
   cdsDados.AppendRecord([33,'FLORIANOPOLIS','SC']);
   cdsDados.AppendRecord([34,'FORTALEZA','CE']);
   cdsDados.AppendRecord([35,'FOZ DO IGUACU','PR']);
   cdsDados.AppendRecord([36,'GARIBALDI','RS']);
   cdsDados.AppendRecord([37,'GASPAR','SC']);
   cdsDados.AppendRecord([38,'GRAVATAI','RS']);
   cdsDados.AppendRecord([39,'GUARULHOS','SP']);
   cdsDados.AppendRecord([40,'HONG KONG','EX']);
   cdsDados.AppendRecord([41,'ITAGUAI','RJ']);
   cdsDados.AppendRecord([42,'ITAPEMA','SC']);
   cdsDados.AppendRecord([43,'ITAPETININGA','SP']);
   cdsDados.AppendRecord([44,'JARAGUA','GO']);
   cdsDados.AppendRecord([45,'JARDINOPOLIS','SP']);
   cdsDados.AppendRecord([46,'JOINVILLE','SC']);
   cdsDados.AppendRecord([47,'MACAE','RJ']);
   cdsDados.AppendRecord([48,'MACAPA','AP']);
   cdsDados.AppendRecord([49,'MANAUS','AM']);
   cdsDados.AppendRecord([50,'MATINHOS','PR']);
   cdsDados.AppendRecord([51,'MAUA','SP']);
   cdsDados.AppendRecord([52,'MOGI DAS CRUZES','SP']);
   cdsDados.AppendRecord([53,'NATAL','RN']);
   cdsDados.AppendRecord([54,'NITEROI','RJ']);
   cdsDados.AppendRecord([55,'NOVA FRIBURGO','RJ']);
   cdsDados.AppendRecord([56,'NOVA LIMA','MG']);
   cdsDados.AppendRecord([57,'NOVO HAMBURGO','RS']);
   cdsDados.AppendRecord([58,'OSASCO','SP']);
   cdsDados.AppendRecord([59,'PASSO FUNDO','RS']);
   cdsDados.AppendRecord([60,'PELOTAS','RS']);
   cdsDados.AppendRecord([61,'PESARO','EX']);
   cdsDados.AppendRecord([62,'PETROPOLIS','RJ']);
   cdsDados.AppendRecord([63,'PICARRAS','SC']);
   cdsDados.AppendRecord([64,'PORTO ALEGRE','RS']);
   cdsDados.AppendRecord([66,'PRAIA GRANDE','SP']);
   cdsDados.AppendRecord([67,'RECIFE','PE']);
   cdsDados.AppendRecord([68,'RIBEIRAO PIRES','SP']);
   cdsDados.AppendRecord([69,'RIO DE JANEIRO','RJ']);
   cdsDados.AppendRecord([70,'RIO GRANDE','RS']);
   cdsDados.AppendRecord([71,'SALVADOR','BA']);
   cdsDados.AppendRecord([72,'SANANDUVA','RS']);
   cdsDados.AppendRecord([74,'SANTA MARIA','RS']);
   cdsDados.AppendRecord([75,'SANTANA DE PARNAIBA','SP']);
   cdsDados.AppendRecord([76,'SANTO ANDRE','SP']);
   cdsDados.AppendRecord([77,'SANTOS','SP']);
   cdsDados.AppendRecord([78,'SAO BERNARDO DO CAMPO','SP']);
   cdsDados.AppendRecord([79,'SAO CAETANO DO SUL','SP']);
   cdsDados.AppendRecord([80,'SAO GONCALO','RJ']);
   cdsDados.AppendRecord([81,'SAO GONCALO','RJ']);
   cdsDados.AppendRecord([82,'SAO JOAO DO SUL','SC']);
   cdsDados.AppendRecord([83,'SAO JOSE','SC']);
   cdsDados.AppendRecord([84,'SAO JOSE DOS PINHAIS','PR']);
   cdsDados.AppendRecord([85,'SAO LEOPOLDO','RS']);
   cdsDados.AppendRecord([86,'SAO LUIS','MA']);
   cdsDados.AppendRecord([87,'SAO MARCOS','RS']);
   cdsDados.AppendRecord([88,'SAO PAULO','SP']);
   cdsDados.AppendRecord([89,'SAPUCAIA DO SUL','RS']);
   cdsDados.AppendRecord([90,'SOROCABA','SP']);
   cdsDados.AppendRecord([91,'SUZANO','SP']);
   cdsDados.AppendRecord([92,'TAUBATE','SP']);
   cdsDados.AppendRecord([93,'TERESOPOLIS','RJ']);
   cdsDados.AppendRecord([94,'TOLEDO','PR']);
   cdsDados.AppendRecord([95,'TORRES','RS']);
   cdsDados.AppendRecord([96,'TUBARAO','SC']);
   cdsDados.AppendRecord([97,'UBATUBA','SP']);
   cdsDados.AppendRecord([98,'UBERABA','MG']);
   cdsDados.AppendRecord([99,'VASSOURAS','RJ']);
   cdsDados.AppendRecord([100,'VERANOPOLIS','RS']);
   cdsDados.AppendRecord([101,'VOLTA REDONDA','RJ']);
   cdsDados.AppendRecord([102,'XANGRI-LA','RS']);
   cdsDados.AppendRecord([104,'TAQUARA','RS']);
   cdsDados.AppendRecord([105,'ARAUCARIA','PR']);
   cdsDados.AppendRecord([106,'NOVA PETROPOLIS','RS']);
   cdsDados.AppendRecord([107,'BLUMENAU','SC']);
   cdsDados.AppendRecord([108,'GUARAPUAVA','PR']);
   cdsDados.AppendRecord([109,'PORTO NACIONAL','TO']);
   cdsDados.AppendRecord([110,'PARNAMIRIM','RN']);
   cdsDados.AppendRecord([111,'VALINHOS','SP']);
   cdsDados.AppendRecord([112,'JOAO PESSOA','PB']);
   cdsDados.AppendRecord([113,'TERESINA','PI']);
   cdsDados.AppendRecord([114,'PARNAIBA','PI']);
   cdsDados.AppendRecord([115,'INDAIATUBA','SP']);
   cdsDados.AppendRecord([116,'GUARUJA','SP']);
   cdsDados.AppendRecord([117,'PIEN','PR']);
   cdsDados.AppendRecord([118,'SAO SEBASTIAO DO CAI','RS']);
   cdsDados.AppendRecord([119,'CHAPECO','SC']);
   cdsDados.AppendRecord([120,'ITAJAI','SC']);
   cdsDados.AppendRecord([121,'PORTO VELHO','RO']);
   cdsDados.AppendRecord([122,'VILA VELHA','ES']);
   cdsDados.AppendRecord([123,'POUSO ALEGRE','MG']);
   cdsDados.AppendRecord([124,'ATIBAIA','SP']);
   cdsDados.AppendRecord([125,'NOVA CANDELARIA','RS']);
   cdsDados.AppendRecord([126,'EUSEBIO','CE']);
   cdsDados.AppendRecord([128,'GLORINHA','RS']);
   cdsDados.AppendRecord([129,'HERZEBROCK-CLARHOLZ','EX']);
   cdsDados.AppendRecord([130,'CASCAVEL','PR']);
   cdsDados.AppendRecord([131,'TABOAO DA SERRA','SP']);
   cdsDados.AppendRecord([132,'CARAPICUIBA','SP']);
   cdsDados.AppendRecord([133,'BARUERI','SP']);
   cdsDados.AppendRecord([134,'VITORIA DA CONQUISTA','BA']);
   cdsDados.AppendRecord([135,'NOVA MAMORE','RO']);
   cdsDados.AppendRecord([136,'LAURO DE FREITAS','BA']);
   cdsDados.AppendRecord([137,'BELO HORIZONTE','MG']);
   cdsDados.AppendRecord([138,'REDENCAO','CE']);
   cdsDados.AppendRecord([139,'ARIQUEMES','RO']);
   cdsDados.AppendRecord([140,'RIO DAS OSTRAS','RJ']);
   cdsDados.AppendRecord([141,'BARBACENA','MG']);
   cdsDados.AppendRecord([142,'RONDONOPOLIS','MT']);
   cdsDados.AppendRecord([143,'PARANAGUA','PR']);
   cdsDados.AppendRecord([144,'CARLOS BARBOSA','RS']);
   cdsDados.AppendRecord([145,'BIGUACU','SC']);
   cdsDados.AppendRecord([146,'ITABUNA','BA']);
   cdsDados.AppendRecord([147,'SANTA MARIA NUOVA','EX']);
   cdsDados.AppendRecord([148,'CABEDELO','PB']);
   cdsDados.AppendRecord([149,'JUNDIAI','SP']);
   cdsDados.AppendRecord([150,'DIADEMA','SP']);
   cdsDados.AppendRecord([151,'PIRATINI','RS']);
   cdsDados.AppendRecord([152,'JARU','RO']);
   cdsDados.AppendRecord([153,'ELDORADO DO SUL','RS']);
   cdsDados.AppendRecord([154,'CUJUBIM','RO']);
   cdsDados.AppendRecord([155,'GOIANIA','GO']);
   cdsDados.AppendRecord([156,'IPE','RS']);
   cdsDados.AppendRecord([157,'CIUDAD DEL ESTE','EX']);
   cdsDados.AppendRecord([158,'FELIZ','RS']);
   cdsDados.AppendRecord([159,'APARECIDA DE GOIANIA','GO']);
   cdsDados.AppendRecord([160,'CAUCAIA','CE']);
   cdsDados.AppendRecord([161,'FAXINAL DOS GUEDES','SC']);
   cdsDados.AppendRecord([162,'TAQUARI','RS']);
   cdsDados.AppendRecord([163,'AGUDOS','SP']);
   cdsDados.AppendRecord([164,'PIMENTA BUENO','RO']);
   cdsDados.AppendRecord([165,'PIRAQUARA','PR']);
   cdsDados.AppendRecord([166,'PONTA PORA','MS']);
   cdsDados.AppendRecord([167,'MAMANGUAPE','PB']);
   cdsDados.AppendRecord([168,'GUAJARA - MIRIM','RO']);
   cdsDados.AppendRecord([169,'SARANDI','RS']);
   cdsDados.AppendRecord([170,'ROLIM DE MOURA','RO']);
   cdsDados.AppendRecord([171,'CAJAMAR','SP']);
   cdsDados.AppendRecord([172,'JARAGUA DO SUL','SC']);
   cdsDados.AppendRecord([173,'ASCURRA','SC']);
   cdsDados.AppendRecord([174,'FRANCISCO BELTRAO','PR']);
   cdsDados.AppendRecord([175,'LONDRINA','PR']);
   cdsDados.AppendRecord([176,'ITAIPULANDIA','PR']);
   cdsDados.AppendRecord([177,'BRASILIA','DF']);
   cdsDados.AppendRecord([178,'CAMPINA GRANDE','PB']);
   cdsDados.AppendRecord([179,'VARGEM GRANDE PAULISTA','SP']);
   cdsDados.AppendRecord([180,'DOURADOS','MS']);
   cdsDados.AppendRecord([181,'AREIA','PB']);
   cdsDados.AppendRecord([182,'RIO CLARO','SP']);
   cdsDados.AppendRecord([183,'CAPIVARI DO SUL','RS']);
   cdsDados.AppendRecord([184,'MONTE BELO DO SUL','RS']);
   cdsDados.AppendRecord([185,'MINISTRO ANDREAZZA','RO']);
   cdsDados.AppendRecord([186,'JI-PARANA','RO']);
   cdsDados.AppendRecord([187,'MILAO','EX']);
   cdsDados.AppendRecord([188,'PINHAIS','PR']);
   cdsDados.AppendRecord([189,'MOGI GUACU','SP']);
   cdsDados.AppendRecord([190,'TATUI','SP']);
   cdsDados.AppendRecord([191,'SÃO JOSE DOS PINHAS','PR']);
   cdsDados.AppendRecord([192,'PALHOCA','SC']);
   cdsDados.AppendRecord([193,'IMBE','RS']);
   cdsDados.AppendRecord([194,'VILA FLORES','RS']);
   cdsDados.AppendRecord([195,'PACAJUS','CE']);
   cdsDados.AppendRecord([196,'SABAUDIA','PR']);
   cdsDados.AppendRecord([197,'BONITO','MS']);
   cdsDados.AppendRecord([198,'COREMAS','PB']);
   cdsDados.AppendRecord([199,'TUTOIA','MA']);
   cdsDados.AppendRecord([200,'UBERABA','PR']);
   cdsDados.AppendRecord([201,'CACHOEIRAS DE MACACU','RJ']);
   cdsDados.AppendRecord([202,'LUEBBECKE','EX']);
   cdsDados.AppendRecord([203,'SAO JOSE DOS CAMPOS','SP']);
   cdsDados.AppendRecord([205,'CAMPO BOM','RS']);
   cdsDados.AppendRecord([206,'QUIRINOPOLIS','GO']);
   cdsDados.AppendRecord([207,'PORTO SEGURO','BA']);
   cdsDados.AppendRecord([208,'PORTAO','RS']);
   cdsDados.AppendRecord([209,'PINHALZINHO','SC']);
   cdsDados.AppendRecord([210,'IGUABA  GRANDE','RJ']);
   cdsDados.AppendRecord([211,'GRAMADO','RS']);
   cdsDados.AppendRecord([212,'JUARA','MT']);
   cdsDados.AppendRecord([213,'TIJUCAS','SC']);
   cdsDados.AppendRecord([214,'VIAMAO','RS']);
   cdsDados.AppendRecord([217,'VIANA','ES']);
   cdsDados.AppendRecord([218,'CARUARU','PE']);
   cdsDados.AppendRecord([219,'PORTO REAL','RJ']);
   cdsDados.AppendRecord([220,'TRES LAGOAS','MS']);
   cdsDados.AppendRecord([221,'AQUIRAZ','CE']);
   cdsDados.AppendRecord([222,'OURO PRETO DO OESTE','RO']);
   cdsDados.AppendRecord([223,'AMERICANA','SP']);
   cdsDados.AppendRecord([224,'SAO BENTO DO SUL','SC']);
   cdsDados.AppendRecord([225,'GETULIO VARGAS','RS']);
   cdsDados.AppendRecord([226,'LAGOA VERMELHA','RS']);
   cdsDados.AppendRecord([228,'IVOTI','RS']);
   cdsDados.AppendRecord([229,'SIDEROPOLIS','SC']);
   cdsDados.AppendRecord([230,'SANTA BARBARA D OESTE','SP']);
   cdsDados.AppendRecord([231,'SOBRAL','CE']);
   cdsDados.AppendRecord([234,'BOA VISTA','RR']);
   cdsDados.AppendRecord([235,'RIO BRANCO','AC']);
   cdsDados.AppendRecord([236,'VILHENA','RO']);
   cdsDados.AppendRecord([237,'ITUPEVA','SP']);
   cdsDados.AppendRecord([238,'ITATIBA','SP']);
   cdsDados.AppendRecord([239,'LAJEADO','RS']);
   cdsDados.AppendRecord([240,'SAO JOSE DO HORTENCIO','RS']);
   cdsDados.AppendRecord([241,'SANTA LUZIA','PB']);
   cdsDados.AppendRecord([242,'RIBEIRAO PRETO','SP']);
   cdsDados.AppendRecord([243,'DUQUE DE CAXIAS','RJ']);
   cdsDados.AppendRecord([244,'KOWLOON','EX']);
   cdsDados.AppendRecord([245,'ACARAU','CE']);
   cdsDados.AppendRecord([246,'CONDE','PB']);
   cdsDados.AppendRecord([247,'COXIM','MS']);
   cdsDados.AppendRecord([248,'PAULISTA','PE']);
   cdsDados.AppendRecord([249,'SERAFINA CORREA','RS']);
   cdsDados.AppendRecord([250,'CORUMBA','MS']);
   cdsDados.AppendRecord([251,'GOVERNADOR JORGE TEIXEIRA','RO']);
   cdsDados.AppendRecord([252,'NOVA SANTA RITA','RS']);
   cdsDados.AppendRecord([253,'FATIMA DO SUL','MS']);
   cdsDados.AppendRecord([254,'TOCANTINNOPOLIS','TO']);
   cdsDados.AppendRecord([255,'UBERLANDIA','MG']);
   cdsDados.AppendRecord([256,'SEM CIDADE','RS']);
   cdsDados.AppendRecord([257,'CUPIRA','PE']);
   cdsDados.AppendRecord([258,'WITMARSUM','SC']);
   cdsDados.AppendRecord([259,'ITAPECERICA DA SERRA','SP']);
   cdsDados.AppendRecord([260,'BETIM','MG']);
   cdsDados.AppendRecord([261,'TANHACU','BA']);
   cdsDados.AppendRecord([262,'MINAS GERAIS','MG']);
   cdsDados.AppendRecord([264,'ANAPOLIS','GO']);
   cdsDados.AppendRecord([265,'RERIUTABA','CE']);
   cdsDados.AppendRecord([267,'MOSSORO','RN']);
   cdsDados.AppendRecord([268,'JAGUARUANA','CE']);
   cdsDados.AppendRecord([269,'BUENOS AIRES','EX']);
   cdsDados.AppendRecord([270,'URUGUAIANA','RS']);
   cdsDados.AppendRecord([271,'JABOATAO DOS GUARARAPES','PE']);
   cdsDados.AppendRecord([272,'POMERODE','SC']);
   cdsDados.AppendRecord([273,'PARECI NOVO','RS']);
   cdsDados.AppendRecord([274,'JUAZEIRO DO NORTE','CE']);
   cdsDados.AppendRecord([275,'VARZEA GRANDE','MT']);
   cdsDados.AppendRecord([276,'DOIS IRMAOS','RS']);
   cdsDados.AppendRecord([277,'CEILANDIA','DF']);
   cdsDados.AppendRecord([278,'GUARAMIRIM','SC']);
   cdsDados.AppendRecord([279,'PORTO UNIAO','SC']);
   cdsDados.AppendRecord([280,'FERRAZ DE VASCONCELOS','SP']);
   cdsDados.AppendRecord([281,'MOGI MIRIM','SP']);
   cdsDados.AppendRecord([282,'VERA CRUZ','RS']);
   cdsDados.AppendRecord([283,'POCOES','BA']);
   cdsDados.AppendRecord([284,'CAMPINA GRANDE DO SUL','PR']);
   cdsDados.AppendRecord([285,'RIO NEGRINHO','SC']);
   cdsDados.AppendRecord([287,'CACADOR','SC']);
   cdsDados.AppendRecord([288,'CHAVAL','CE']);
   cdsDados.AppendRecord([289,'BARRA VELHA','SC']);
   cdsDados.AppendRecord([290,'FAZENDA RIO GRANDE','PR']);
   cdsDados.AppendRecord([291,'MONTENEGRO','RS']);
   cdsDados.AppendRecord([292,'CAJUEIRO DA PRAIA','PI']);
   cdsDados.AppendRecord([293,'CAMBORIU','SC']);
   cdsDados.AppendRecord([294,'MARINGÁ','PR']);
   cdsDados.AppendRecord([295,'RESENDE','RJ']);

   cdsDados.First;

end;


procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
   AdicionarDados;
end;



procedure TDataModule2.DataModuleDestroy(Sender: TObject);
begin
   cdsDados.Close;
end;

procedure TDataModule2.SetRange_Cidade_UF(inUF, inCidadeIni, inCidadeFin: string);
begin
   cdsDados.CancelRange;
   cdsDados.IndexFieldNames := 'UF;NOME';
   cdsDados.SetRange( [inUF,inCidadeIni] , [inUF,inCidadeFin] );
   cdsDados.First;
end;

procedure TDataModule2.SetRange_Codigo(inCodigoInicial, inCodigoFinal: integer);
begin
   cdsDados.CancelRange;
   cdsDados.IndexFieldNames := 'CODIGO';
   cdsDados.SetRange([inCodigoInicial],[inCodigoFinal]);
   cdsDados.First;
end;


procedure TDataModule2.ApplyRange_Cidade_UF(inUF, inCidadeIni, inCidadeFin: string);
begin
   cdsDados.CancelRange;
   cdsDados.IndexFieldNames := 'UF;NOME';

   cdsDados.SetRangeStart;
   cdsDadosUF.Text   := inUF;
   cdsDadosNOME.Text := inCidadeIni;

   cdsDados.SetRangeEnd;
   cdsDadosUF.Text   := inUF;
   cdsDadosNOME.Text := inCidadeFin;

   cdsDados.ApplyRange;

   cdsDados.First;
end;


procedure TDataModule2.ApplyRange_Codigo(inCodigoInicial, inCodigoFinal: integer);
begin
   cdsDados.CancelRange;
   cdsDados.IndexFieldNames := 'CODIGO';

   cdsDados.SetRangeStart;
   cdsDadosCODIGO.AsInteger := inCodigoInicial;

   cdsDados.SetRangeEnd;
   cdsDadosCODIGO.AsInteger := inCodigoFinal;

   cdsDados.ApplyRange;

   cdsDados.First;
end;



procedure TDataModule2.CancelRange;
begin
   cdsDados.IndexFieldNames := '';
   cdsDados.CancelRange;
end;


end.
