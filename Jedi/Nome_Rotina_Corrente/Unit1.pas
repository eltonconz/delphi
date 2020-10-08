unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JclDebug, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    btn1: TButton;
    mmo1: TMemo;
    btn2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure MostraInfo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var lsTeste : String;
var lInfo :TJclLocationInfo ;
begin
   MostraInfo;
   Exit;

   mmo1.Lines.Clear;


   mmo1.Lines.Add('0 - ' + GetLocationInfoStr(Caller(0)));
   mmo1.Lines.Add('1 - ' + GetLocationInfoStr(Caller(1)));
   mmo1.Lines.Add('2 - ' + GetLocationInfoStr(Caller(2)));
   mmo1.Lines.Add('3 - ' + GetLocationInfoStr(Caller(3)));
   mmo1.Lines.Add('4 - ' + GetLocationInfoStr(Caller(4)));
   mmo1.Lines.Add('5 - ' + GetLocationInfoStr(Caller(5)));
   mmo1.Lines.Add('6 - ' + GetLocationInfoStr(Caller(6)));
   mmo1.Lines.Add('7 - ' + GetLocationInfoStr(Caller(7)));
   mmo1.Lines.Add('8 - ' + GetLocationInfoStr(Caller(8)));
   mmo1.Lines.Add('9 - ' + GetLocationInfoStr(Caller(9)));
   mmo1.Lines.Add('10 - ' + GetLocationInfoStr(Caller(10)));

end;




procedure TForm1.btn2Click(Sender: TObject);
begin
   btn1Click(self);
end;

procedure TForm1.Button1Click(Sender: TObject);
var lsTeste : String;
var lInfo :TJclLocationInfo ;
begin
   {
      function FileByLevel(const Level: Integer = 0): string;
      function ModuleByLevel(const Level: Integer = 0): string;
      function ProcByLevel(const Level: Integer = 0): string;
      function LineByLevel(const Level: Integer = 0): Integer;
   }



   lsTeste := 'FileByLevel: '+ FileByLevel(0);
   lsTeste := lsTeste + #13+#10 + 'ModuleByLevel: '+ ModuleByLevel(0);
   lsTeste := lsTeste + #13+#10 + 'ProcByLevel: '+ ProcByLevel(0);
   lsTeste := lsTeste + #13+#10 + 'LineByLevel: '+ IntToStr(LineByLevel(0));
   ShowMessage(lsTeste);




   lsTeste := GetLocationInfoStr(Caller(0));
   ShowMessage(lsTeste);


   GetLocationInfo(Caller(0),lInfo);
   lsTeste := 'UnitName: ' + lInfo.UnitName ;
   lsTeste := lsTeste + #13+#10 + 'ProcedureName: ' + lInfo.ProcedureName;
   lsTeste := lsTeste + #13+#10 + 'ExtractMethodName(ProcedureName): ' + ExtractMethodName(lInfo.ProcedureName);
   lsTeste := lsTeste + #13+#10 + 'ExtractClassName(ProcedureName): ' + ExtractClassName(lInfo.ProcedureName);

   lsTeste := lsTeste + #13+#10 + 'SourceName: ' + lInfo.SourceName;
   lsTeste := lsTeste + #13+#10 + 'BinaryFileName: ' + lInfo.BinaryFileName;
   lsTeste := lsTeste + #13+#10 + 'LineNumber: ' + IntToStr(lInfo.LineNumber);
   lsTeste := lsTeste + #13+#10 + 'OffsetFromLineNumber: ' + IntToStr(lInfo.OffsetFromLineNumber);
   lsTeste := lsTeste + #13+#10 + 'DebugInfo.UnitName: ' + lInfo.DebugInfo.UnitName;
   lsTeste := lsTeste + #13+#10 + 'DebugInfo.UnitScope: ' + lInfo.DebugInfo.UnitScope;
   lsTeste := lsTeste + #13+#10 + 'DebugInfo.FileName: ' + lInfo.DebugInfo.FileName;

   ShowMessage(lsTeste);


end;


procedure TForm1.Button2Click(Sender: TObject);
begin
   TraceMsg('MENSAGEM NO DEBUG 1');

   TraceLoc('MENSAGEM NO DEBUG 2');
end;


procedure TForm1.MostraInfo;
var lInfo : TJclLocationInfo;
var liLevel, liLinha : integer;
var lsArquivo, lsModulo, lsProcedimento : string;
var liCont : integer;
begin
   mmo1.Lines.Clear;
   mmo1.Lines.Add('Localização');
       {
   liCont := 0;
   while liCont < 10 do
   begin
      mmo1.Lines.Add('['+ FormatFloat('00',liCont)+'] ' + FileByLevel(liCont) + ' ('+ModuleByLevel(liCont) + ')');
      mmo1.Lines.Add('Procedimento: ' +ProcByLevel(liCont));
      mmo1.Lines.Add('Linha: '+ IntToStr(LineByLevel(liCont)));
      mmo1.Lines.Add('');
      Inc(liCont);
   end;

   Exit;
        }
   mmo1.Lines.Add('0');
   mmo1.Lines.Add('FileByLevel - ' + FileByLevel(0));
   mmo1.Lines.Add('ModuleByLevel - ' + ModuleByLevel(0));
   mmo1.Lines.Add('ProcByLevel - ' + ProcByLevel(0));
   mmo1.Lines.Add('LineByLevel - ' + IntToStr(LineByLevel(0)));


   mmo1.Lines.Add('1');
   mmo1.Lines.Add('FileByLevel - ' + FileByLevel(1));
   mmo1.Lines.Add('ModuleByLevel - ' + ModuleByLevel(1));
   mmo1.Lines.Add('ProcByLevel - ' + ProcByLevel(1));
   mmo1.Lines.Add('LineByLevel - ' + IntToStr(LineByLevel(1)));

   mmo1.Lines.Add('2');
   mmo1.Lines.Add('FileByLevel - ' + FileByLevel(2));
   mmo1.Lines.Add('ModuleByLevel - ' + ModuleByLevel(2));
   mmo1.Lines.Add('ProcByLevel - ' + ProcByLevel(2));
   mmo1.Lines.Add('LineByLevel - ' + IntToStr(LineByLevel(2)));


   liLevel        := 1;
   lsArquivo      := FileByLevel(liLevel);
   lsModulo       := ModuleByLevel(liLevel);
   lsProcedimento := ProcByLevel(liLevel);
   liLinha        := LineByLevel(liLevel);
   mmo1.Lines.Add('');
   mmo1.Lines.Add('lsArquivo ' + lsArquivo);
   mmo1.Lines.Add('lsModulo ' + lsModulo);
   mmo1.Lines.Add('lsProcedimento ' + lsProcedimento);
   mmo1.Lines.Add('ExtractClassName ' + ExtractClassName(lsProcedimento));
   mmo1.Lines.Add('ExtractMethodName ' + ExtractMethodName(lsProcedimento));

   MapByLevel(liLevel,lsArquivo,lsModulo,lsProcedimento,liLinha);
   mmo1.Lines.Add('');
   mmo1.Lines.Add('lsArquivo ' + lsArquivo);
   mmo1.Lines.Add('lsModulo ' + lsModulo);
   mmo1.Lines.Add('lsProcedimento ' + lsProcedimento);



//   lInfo := GetLocationInfoStr(Caller(0));


end;

end.
