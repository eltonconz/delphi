unit UfrmExemplosTypes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplosTypes = class(TForm)
    btnExemplo001: TButton;
    btnExemplo002: TButton;
    btnExemplo003: TButton;
    btnExemplo004: TButton;
    btnExemplo005: TButton;
    btnExemplo006: TButton;
    mmoDados: TMemo;
    procedure btnExemplo001Click(Sender: TObject);
    procedure btnExemplo002Click(Sender: TObject);
    procedure btnExemplo003Click(Sender: TObject);
    procedure btnExemplo004Click(Sender: TObject);
    procedure btnExemplo005Click(Sender: TObject);
    procedure btnExemplo006Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplosTypes: TfrmExemplosTypes;

implementation

{$R *.dfm}

uses UPessoa, UVeiculo, UFormaGeometrica, UDiversosTiposPersonalziados;



procedure TfrmExemplosTypes.btnExemplo001Click(Sender: TObject);
var lPessoa, lPessoa2, lPessoa3 : TPessoa;
begin

   mmoDados.Lines.Clear;

   lPessoa.Nome           := 'João da Silva';
   lPessoa.DataNascimento := StrToDate('15/09/1917');
   lPessoa.Altura         := 1.75;
   lPessoa.Peso           := 98.5;

   lPessoa2.Nome           := 'Jorge Pereira';
   lPessoa2.DataNascimento := StrToDate('15/11/1929');
   lPessoa2.Altura         := 1.89;
   lPessoa2.Peso           := 87;


   if lPessoa.Peso > lPessoa2.Peso then
      mmoDados.Lines.Add(lPessoa.Nome + ' é mais pesado que  ' + lPessoa2.Nome)
   else
      mmoDados.Lines.Add(lPessoa2.Nome + ' é mais pesado que  ' + lPessoa.Nome);


   if lPessoa.Altura > lPessoa2.Altura then
      mmoDados.Lines.Add(lPessoa.Nome + ' é mais alto que  ' + lPessoa2.Nome)
   else
      mmoDados.Lines.Add(lPessoa2.Nome + ' é mais alto que  ' + lPessoa.Nome);


   lPessoa3 := lPessoa;

   mmoDados.Lines.Add(PessoaToString(lPessoa3));

end;





procedure TfrmExemplosTypes.btnExemplo002Click(Sender: TObject);
var lArPessoas : array[1..5] of TPessoa;
var lPessoa, lPessoaMaisVelha : TPessoa;
begin

   mmoDados.Lines.Clear;

   lArPessoas[1].Nome           := 'Jorge Pereira';
   lArPessoas[1].DataNascimento := StrToDate('15/11/1929');
   lArPessoas[1].Altura         := 1.89;
   lArPessoas[1].Peso           := 87;

   lArPessoas[2].Nome           := 'Jorge Pereira';
   lArPessoas[2].DataNascimento := StrToDate('15/11/1929');
   lArPessoas[2].Altura         := 1.89;
   lArPessoas[2].Peso           := 87;

   lArPessoas[3].Nome           := 'Marieta Gonçalves';
   lArPessoas[3].DataNascimento := StrToDate('23/04/1911');
   lArPessoas[3].Altura         := 1.69;
   lArPessoas[3].Peso           := 60;

   lArPessoas[4].Nome           := 'Carmina Lodeira';
   lArPessoas[4].DataNascimento := StrToDate('05/07/1951');
   lArPessoas[4].Altura         := 1.72;
   lArPessoas[4].Peso           := 64;

   lArPessoas[5].Nome           := 'Mariana Johansen';
   lArPessoas[5].DataNascimento := StrToDate('27/09/1948');
   lArPessoas[5].Altura         := 1.59;
   lArPessoas[5].Peso           := 50;


   lPessoaMaisVelha := lArPessoas[1];

   for lPessoa in lArPessoas do
   begin
      if lPessoa.DataNascimento < lPessoaMaisVelha.DataNascimento then
         lPessoaMaisVelha := lPessoa;
   end;

   mmoDados.Lines.Add('A pessoa mais velha é ' + lPessoaMaisVelha.Nome);

end;



procedure TfrmExemplosTypes.btnExemplo003Click(Sender: TObject);
var lCarro : TVeiculo;
begin

   mmoDados.Lines.Clear;

   lCarro.Nome  := 'Fusca';
   lCarro.Marca := 'VW';
   lCarro.Ano   := 1963;

   mmoDados.Lines.Add(lCarro.ToString);

end;





procedure TfrmExemplosTypes.btnExemplo004Click(Sender: TObject);
var lFormaGeo : TFormaGeometrica;
var lfArea : double;
begin

   mmoDados.Lines.Clear;

   lFormaGeo.Altura  := 1070;
   lFormaGeo.Largura := 270;

   lfArea := lFormaGeo.CalculaAreaRetangulo;
   mmoDados.Lines.Add('A área do retângulo é : ' + FormatFloat('##0,000',lfArea));

   lfArea := lFormaGeo.CalculaAreaTriangulo;
   mmoDados.Lines.Add('A área do triângulo é : ' + FormatFloat('##0,000',lfArea));

end;





procedure TfrmExemplosTypes.btnExemplo005Click(Sender: TObject);
var lArPessoas : TArrayPessoas;
begin

   mmoDados.Lines.Clear;

   lArPessoas[1].Nome           := 'Jorge Pereira';
   lArPessoas[1].DataNascimento := StrToDate('15/11/1929');
   lArPessoas[1].Altura         := 1.89;
   lArPessoas[1].Peso           := 87;

   lArPessoas[2].Nome           := 'Jorge Pereira';
   lArPessoas[2].DataNascimento := StrToDate('15/11/1929');
   lArPessoas[2].Altura         := 1.89;
   lArPessoas[2].Peso           := 87;

   lArPessoas[3].Nome           := 'Marieta Gonçalves';
   lArPessoas[3].DataNascimento := StrToDate('23/04/1911');
   lArPessoas[3].Altura         := 1.69;
   lArPessoas[3].Peso           := 60;

   lArPessoas[4].Nome           := 'Carmina Lodeira';
   lArPessoas[4].DataNascimento := StrToDate('05/07/1951');
   lArPessoas[4].Altura         := 1.72;
   lArPessoas[4].Peso           := 64;

   lArPessoas[5].Nome           := 'Mariana Johansen';
   lArPessoas[5].DataNascimento := StrToDate('27/09/1948');
   lArPessoas[5].Altura         := 1.59;
   lArPessoas[5].Peso           := 50;

   mmoDados.Lines.Add( PessoaToString(lArPessoas[1]) );
   mmoDados.Lines.Add( PessoaToString(lArPessoas[2]) );
   mmoDados.Lines.Add( PessoaToString(lArPessoas[3]) );
   mmoDados.Lines.Add( PessoaToString(lArPessoas[4]) );
   mmoDados.Lines.Add( PessoaToString(lArPessoas[5]) );

end;

procedure TfrmExemplosTypes.btnExemplo006Click(Sender: TObject);
var lPes : TPessoa;
var lArPessoas : TArrayPessoasDinamico;
begin

   mmoDados.Lines.Clear;

   lPes.Nome           := 'Jorge Pereira';
   lPes.DataNascimento := StrToDate('15/11/1929');
   lPes.Altura         := 1.89;
   lPes.Peso           := 87;
   lArPessoas.AdicionarPessoa(lPes);

   lPes.Nome           := 'Jorge Pereira';
   lPes.DataNascimento := StrToDate('15/11/1929');
   lPes.Altura         := 1.89;
   lPes.Peso           := 87;
   lArPessoas.AdicionarPessoa(lPes);


   lPes.Nome           := 'Carmina Lodeira';
   lPes.DataNascimento := StrToDate('05/07/1951');
   lPes.Altura         := 1.72;
   lPes.Peso           := 64;
   lArPessoas.AdicionarPessoa(lPes);

   lArPessoas.GetPessoas(mmoDados.Lines);

   if lArPessoas.GetPessoaMaisVelha(lPes) then
   begin
      mmoDados.Lines.Add('');
      mmoDados.Lines.Add('A pessoa mais velha é');
      mmoDados.Lines.Add(lPes.Nome);
   end;

end;



end.
