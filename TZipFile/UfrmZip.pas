unit UfrmZip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Zip, Vcl.StdCtrls ;

type
  TfrmZip = class(TForm)
    btnMultiplos: TButton;
    btnPasta: TButton;
    procedure btnMultiplosClick(Sender: TObject);
    procedure btnPastaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmZip: TfrmZip;

implementation

{$R *.dfm}

procedure TfrmZip.btnMultiplosClick(Sender: TObject);
var lZip : TZipFile;
var lInfo : TZipHeader;
var lsNome : string;
begin

   lZip := TZipFile.Create;
   try
      lZip.Open('c:\arq_compact.zip',zmWrite);

      lZip.Add('c:\data\arquivo1.docx');
      lZip.Add('c:\data\arquivo2.jpg');
      lZip.Add('c:\data\arquivo3.txt');
   finally
      FreeAndNil(lZip);
   end;


   lZip := TZipFile.Create;
   try
      lZip.Open('c:\arq_compact.zip',zmRead);
      lsNome := lZip.FileNames[1];
      lInfo  := lZip.FileInfos[1];
   finally
      FreeAndNil(lZip);
   end;


   ShowMessage(
      'Arquivo 1'
      + #13+#10+lsNome
      + #13+#10+ FloatToStr(lInfo.CompressedSize/1024) + ' KBytes '
   );

end;




procedure TfrmZip.btnPastaClick(Sender: TObject);
var lZip : TZipFile;
begin
   lZip := TZipFile.Create;
   try
      lZip.ZipDirectoryContents('c:\pasta_compact.zip','c:\data',zcDeflate);
   finally
      FreeAndNil(lZip);
   end;
end;


end.
