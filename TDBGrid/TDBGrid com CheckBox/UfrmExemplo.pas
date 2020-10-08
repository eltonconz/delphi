unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList;

type
  TfrmExemplo = class(TForm)
    cdsDados: TClientDataSet;
    cdsDadosATIVO: TStringField;
    cdsDadosCODIGO: TIntegerField;
    cdsDadosDESCRICAO: TStringField;
    dsDados: TDataSource;
    grdDados: TDBGrid;
    ImgList: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdDadosCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
   cdsDados.CreateDataSet;
   cdsDados.AppendRecord(['N',1,'CELULAR']);
   cdsDados.AppendRecord(['S',2,'COMPUTADOR']);
   cdsDados.AppendRecord(['S',3,'MONITOR']);
   cdsDados.AppendRecord(['S',4,'MOUSE']);
   cdsDados.AppendRecord(['N',5,'TECLADO']);
   cdsDados.AppendRecord(['S',6,'PROCESSADOR']);

   cdsDados.First;
end;



procedure TfrmExemplo.grdDadosCellClick(Column: TColumn);
begin
   if Column.Title.Caption = 'Ativo' then
   begin
      if not(cdsDados.Active) then
         Exit;

      if cdsDados.IsEmpty then
         Exit;

      cdsDados.Edit;
      if cdsDadosATIVO.Text = 'N' then
         cdsDadosATIVO.Text := 'S'
      else
         cdsDadosATIVO.Text := 'N';
      cdsDados.Post;
   end;

end;



procedure TfrmExemplo.grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Title.Caption='Ativo' then
   begin
      grdDados.Canvas.FillRect(Rect);

      imgList.Draw(grdDados.Canvas,Rect.Left+10,Rect.Top+1,0);

      if cdsDadosATIVO.Text='S' then
         imgList.Draw(grdDados.Canvas,Rect.Left+10,Rect.Top+1,1);
   end;
end;



end.
