unit UfrmExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo = class(TForm)
    btnPegarHora: TButton;
    edtResultado: TEdit;
    btnAbrirClone: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnPegarHoraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAbrirCloneClick(Sender: TObject);
  private
    { Private declarations }
    f_dtDataAbriuForm       : TDateTime;
    f_iContadorCliquesBotao : Integer;
  public
    { Public declarations }
    f_bFormularioPrincipal : Boolean;
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

{ TfrmExemplo }


procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
   // Chamado quando o formulário é criado ( Form.Create() )

   f_iContadorCliquesBotao := 0;
   f_bFormularioPrincipal  := True;
end;


procedure TfrmExemplo.FormShow(Sender: TObject);
begin
   // Chamado quando o formulário é exibido ( Form.ShowModal )

   Self.f_dtDataAbriuForm := Now;

   if Self.f_bFormularioPrincipal then
      Self.Caption := Self.Caption + ' (PRINCIPAL)';

end;



procedure TfrmExemplo.btnPegarHoraClick(Sender: TObject);
begin
   f_iContadorCliquesBotao := f_iContadorCliquesBotao + 1;

   edtResultado.Text       := DateTimeToStr(Self.f_dtDataAbriuForm)
                              + ' ( Consulta nro ' + IntToStr(f_iContadorCliquesBotao) + ')';
end;




procedure TfrmExemplo.btnAbrirCloneClick(Sender: TObject);
var lfrmExemplo : TfrmExemplo;
begin
   // Abre outro formulário igual a este
   //    porém mudando o field f_bFormularioPrincipal para False
   //    isso só é possível porque este field é público

   lfrmExemplo:=TfrmExemplo.Create(Self);
   try
      lfrmExemplo.f_bFormularioPrincipal := False;
      lfrmExemplo.ShowModal;
   finally
      FreeAndNil(lfrmExemplo);
   end;

end;


end.
