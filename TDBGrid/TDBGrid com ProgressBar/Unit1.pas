unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, Math, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    cdsDados: TClientDataSet;
    cdsDadosDESC: TStringField;
    cdsDadosPERC: TFloatField;
    dsDados: TDataSource;
    grdDados: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure DesenhaProgressoDBGrid(inCanvas: TCanvas; inRect: TRect; inPercent: Double);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DesenhaProgressoDBGrid(inCanvas: TCanvas; inRect: TRect; inPercent: Double);
var lBrushStyle : TBrushStyle;
var lBrushColor : TColor;
var lPenSTyle   : TPenSTyle;
var lPenColor   : TColor;
var lRect       : TRect;
var liPercent   : Integer;
var lsPercent   : String;
var liPercentProgresso : integer;
var lCorDesenhos : TColor;
begin

   liPercent    := Ceil(inPercent);
   lsPercent    := FloatToStr(inPercent) + '%';
   lRect        := inRect;
   lCorDesenhos := clSkyBlue;

      // clSkyBlue = Padrão Aticom
      // $00ABE899 = Verde
      // $00F2C586 = Azul

   with inCanvas do
   begin
      // Guarda informações originais
      lBrushStyle := Brush.Style;
      lBrushColor := Brush.Color;
      lPenSTyle   := Pen.Style;
      lPenColor   := Pen.Color;

      // Desenha o contorno
      Brush.Style := bsClear;
      Pen.Color   := lCorDesenhos;
      Rectangle(lRect);

      // Desenha a barra percentual
      liPercentProgresso := (lRect.Right - lRect.Left) * liPercent div 100;
      InflateRect(lRect, -Pen.Width, -Pen.Width);
      lRect.Right := lRect.Left + liPercentProgresso;
      Brush.Style := bsSolid;
      Brush.Color := lCorDesenhos;
      Pen.Color   := lCorDesenhos;
      Rectangle(lRect);

      // Escreve o texto
      lRect := inRect;
      InflateRect(lRect, -Pen.Width, -Pen.Width);
      Pen.Color   := clWhite;
      Brush.Style := bsClear;
      Winapi.Windows.DrawText(Handle, PChar(lsPercent), Length(lsPercent), lRect, DT_CENTER or DT_VCENTER);

      // Volta ao original
      Brush.Style := lBrushStyle;
      Brush.Color := lBrushColor;
      Pen.Style   := lPenSTyle;
      Pen.Color   := lPenColor;
   end;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cdsDados.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   cdsDados.CreateDataSet;
   cdsDados.AppendRecord(['TESTE 1',0]);
   cdsDados.AppendRecord(['TESTE 2',12.25]);
   cdsDados.AppendRecord(['TESTE 3',25]);
   cdsDados.AppendRecord(['TESTE 4',50]);
   cdsDados.AppendRecord(['TESTE 5',54.78]);
   cdsDados.AppendRecord(['TESTE 6',75]);
   cdsDados.AppendRecord(['TESTE 7',89.01]);
   cdsDados.AppendRecord(['TESTE 8',100]);
   cdsDados.First;
end;



procedure TForm1.grdDadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Title.Caption = 'Prog' then
      DesenhaProgressoDBGrid(grdDados.Canvas, Rect, cdsDadosPERC.AsFloat);
end;


end.
