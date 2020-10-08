unit UfrmTelaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, UdmDadosTeste, ExtCtrls;

type
  TfrmTelaEntrada = class(TForm)
    Label3: TLabel;
    edtCodigo: TDBEdit;
    Label4: TLabel;
    edtDescricao: TDBEdit;
    Label2: TLabel;
    edtData: TDBEdit;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    dsDados: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    f_dmDadosTeste : TdmDadosTeste;
  public
    { Public declarations }
    procedure AbrirTela(inDataModulo : TdmDadosTeste);
  end;

implementation


{$R *.dfm}

{ TfrmTelaEntrada }

procedure TfrmTelaEntrada.AbrirTela(inDataModulo: TdmDadosTeste);
begin
   f_dmDadosTeste  := inDataModulo;
   dsDados.DataSet := f_dmDadosTeste.cdsDados;
   Self.ShowModal;
end;

procedure TfrmTelaEntrada.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;

end.
