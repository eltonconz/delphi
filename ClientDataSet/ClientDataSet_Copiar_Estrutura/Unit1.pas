unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    grdDados: TDBGrid;
    cdsDadosID: TIntegerField;
    cdsDadosNOME: TStringField;
    cdsDadosDATA: TDateField;
    cdsDadosVALOR: TFloatField;
    cdsCopia: TClientDataSet;
    dsCopia: TDataSource;
    grdCopia: TDBGrid;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    f_iId_Aux : integer;
    procedure CopiarRegistroSelecionado(inOrigem, inDestino : TClientDataSet);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
begin
   CopiarRegistroSelecionado(cdsDados,cdsCopia);
end;


procedure TForm1.CopiarRegistroSelecionado(inOrigem, inDestino: TClientDataSet);
var lField: TField;
begin

   inDestino.Append;

   for lField in inOrigem.Fields do
   begin
      inDestino.Fields[lField.Index].Value := lField.Value;

      // Campos com tratamento especial
      if lField.FieldName='ID' then
      begin
         //inDestino.Fields[lField.Index].Value := lField.Value * -1;
      end;
   end;

   lField := inDestino.FindField('ID_COPIA');
   if lField <> nil then
   begin
      lField.AsInteger := f_iId_Aux;
      inc(f_iId_Aux)
   end;

   inDestino.Post;

end;




procedure TForm1.FormCreate(Sender: TObject);
begin

   f_iId_Aux := 1;


   cdsDados.CreateDataSet;
   cdsDados.AppendRecord([1,'ITEM 1',Date + 05 , 100.25]);
   cdsDados.AppendRecord([2,'ITEM 2',Date + 10 , 150.5 ]);
   cdsDados.AppendRecord([3,'ITEM 3',Date + 15 , 175.5 ]);
   cdsDados.AppendRecord([4,'ITEM 4',Date + 20 , 200.75]);
   cdsDados.First;



   // Copia Estrutura de Campos de cdsDados
   cdsCopia.FieldDefs := cdsDados.FieldDefs;

   // Adiciona Campo controle
   cdsCopia.FieldDefs.Add('ID_COPIA',ftInteger,0,False);

   cdsCopia.CreateDataSet;

end;



end.
