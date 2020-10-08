unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JclFileUtils, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, Math, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    cdsDados: TClientDataSet;
    cdsDadosMARCA: TStringField;
    cdsDadosARQUIVO: TStringField;
    dsDados: TDataSource;
    grdDados: TDBGrid;
    cdsDadosDATA: TDateField;
    cdsDadosHORA: TTimeField;
    cdsDadosTAMANHO: TFloatField;
    PageControl1: TPageControl;
    sheetDados: TTabSheet;
    pan1: TPanel;
    Label1: TLabel;
    edtPasta: TEdit;
    Label2: TLabel;
    edtFiltro: TEdit;
    btn1: TButton;
    chkRecursivo: TCheckBox;
    ListBox1: TListBox;
    rgOrdem: TRadioGroup;
    procedure btn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function PesquisaArquivos(const inPasta, inFiltro : string; const inRecursivo : Boolean) : TStringList ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var liCont, liPos : integer;
var lInfoArq : TSearchRec;
begin
   //ListBox1.Items.Clear;
   //ListBox1.Items.AddStrings(PesquisaArquivos(edtPasta.Text,edtFiltro.Text,chkRecursivo.Checked));

   //ListBox1.Items.Clear;
   //BuildFileList(edtPasta.Text+edtFiltro.Text,faAnyFile,ListBox1.Items,True);


   ListBox1.Items.Clear;

   if chkRecursivo.Checked then
   begin
      AdvBuildFileList(edtPasta.Text+edtFiltro.Text,
                       faAnyFile,
                       ListBox1.Items,
                       amAny,
                       [flFullNames, flRecursive],
                       '',
                       nil);
   end else
   begin
      AdvBuildFileList(edtPasta.Text+edtFiltro.Text,
                       faAnyFile,
                       ListBox1.Items,
                       amAny,
                       [flFullNames],
                       '',
                       nil);
   end;



   cdsDados.Close;
   cdsDados.CreateDataSet;

   liCont := ListBox1.Items.Count;
   liPos  := 0;

   while liPos < liCont do
   begin
      lInfoArq := GetFileInformation(ListBox1.Items[liPos]);

      cdsDados.Append;
      cdsDadosMARCA.Text        := 'N';
      cdsDadosARQUIVO.Text      := ListBox1.Items[liPos] ; //lInfoArq.Name;
      cdsDadosDATA.AsDateTime   := lInfoArq.TimeStamp; // FileDateTime(cdsDadosARQUIVO.Text);
      cdsDadosHORA.Text         := FormatDateTime('hh:nn:ss',lInfoArq.TimeStamp);
      cdsDadosTAMANHO.AsFloat   := lInfoArq.Size;
      cdsDados.Post;

      Inc(liPos);
   end;

   grdDados.Height := grdDados.Height + 1;
   grdDados.Height := grdDados.Height - 1;



   if rgOrdem.ItemIndex = 0 then
      cdsDados.IndexFieldNames := 'ARQUIVO'
   else if rgOrdem.ItemIndex = 1 then
      cdsDados.IndexFieldNames := 'DATA;HORA'
   else if rgOrdem.ItemIndex = 2 then
      cdsDados.IndexFieldNames := 'TAMANHO';


   cdsDados.First;



end;





procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

function TForm1.PesquisaArquivos(const inPasta, inFiltro : string; const inRecursivo : Boolean) : TStringList ;
var status : dword;
var sr : TSearchRec;
var lsAux, lsPasta, lsFiltroArq : string;
var lstRecursivo : TStringList ;
begin
   result := TStringList.Create;

   status := FindFirst(inPasta+inFiltro , faAnyFile , sr);
   while status = 0 do
   begin

      if ((sr.Name <> '.') and (sr.Name<>'..')) then
      begin
         lsAux := inPasta + sr.Name;

         if (sr.attr and faDirectory) = faDirectory then
            lsAux := '[' + lsAux + ']';

         result.Add(lsAux);


         if (sr.attr and faDirectory) = faDirectory then
         begin
            if inRecursivo then
            begin
               lstRecursivo := TStringList.Create;
               lstRecursivo.Clear;
               lstRecursivo := PesquisaArquivos(inPasta+sr.Name+'\',inFiltro,inRecursivo);
               result.AddStrings(lstRecursivo);
               FreeAndNil(lstRecursivo);
            end;
         end;

      end;

      status := FindNext(sr);
   end;
   FindClose(sr);

end;



end.
