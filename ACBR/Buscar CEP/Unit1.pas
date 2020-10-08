unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrBase, ACBrSocket, ACBrCEP, ACBrIBGE, ACBrConsultaCPF, ACBrConsultaCNPJ;

type
  TForm1 = class(TForm)
    ACBrCEP: TACBrCEP;
    edtCEP: TEdit;
    edtLogradouro: TEdit;
    edtComplemento: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    edtBairro: TEdit;
    edtTipo: TEdit;
    edtBuscarCEP: TEdit;
    btnPesq: TButton;
    edtIBGE_Municipio: TEdit;
    edtIBGE_UF: TEdit;
    ACBRIMGE: TACBrIBGE;
    btn1: TButton;
    procedure ACBrCEPBuscaEfetuada(Sender: TObject);
    procedure btnPesqClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure ACBRIMGEBuscaEfetuada(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ACBrCEPBuscaEfetuada(Sender: TObject);
var
   i : integer;

begin
    for I := 0 to ACBrCEP.Enderecos.Count -1 do
    begin
         edtCEP.Text            := ACBrCEP.Enderecos[i].CEP;
         edtLogradouro.Text     := ACBrCEP.Enderecos[i].Logradouro;
         edtComplemento.Text    := ACBrCEP.Enderecos[i].Complemento;
         edtCidade.Text      	  := ACBrCEP.Enderecos[i].Municipio;
         edtUF.Text          	  := ACBrCEP.Enderecos[i].UF;
         edtBairro.Text      	  := ACBrCEP.Enderecos[i].Bairro;
         edtTipo.Text        	  := ACBrCEP.Enderecos[i].Tipo_Logradouro;
         edtIBGE_Municipio.Text := ACBrCEP.Enderecos[i].IBGE_Municipio;
         edtIBGE_UF.Text        := ACBrCEP.Enderecos[i].IBGE_UF;
    end;


end;


procedure TForm1.ACBRIMGEBuscaEfetuada(Sender: TObject);
var lsTexto : string;
begin

   lsTexto := 'Não encontrado';

   if ACBRIMGE.Cidades.Count > 0 then
   begin
      lsTexto := 'IBGE: ' +
         ACBRIMGE.Cidades[0].Municipio + '/' +
         ACBRIMGE.Cidades[0].UF + '  ' +
         FloatToStr(ACBRIMGE.Cidades[0].Area);
   end;

   ShowMessage(lsTexto);

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
   ACBRIMGE.BuscarPorCodigo(StrToInt(edtIBGE_Municipio.Text));
end;

procedure TForm1.btnPesqClick(Sender: TObject);
begin
   ACBrCEP.BuscarPorCEP(edtBuscarCEP.Text);
end;

end.
