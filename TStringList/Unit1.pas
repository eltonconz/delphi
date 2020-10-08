unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    procedure TesteBot(Sender: TObject);
    Function TipoVariavel(var inVariaval : Variant) : string;        
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var sl : TStrings;
var sl2 : TStringList;
var vlTemp : integer;
begin
  sl := TStringList.Create;
  sl2 := TStringList.Create;
  
  Memo1.Clear;

  // Carregando os Dados
  sl.Add('ELTON');
  sl.Add('IRANI');
  sl.Add('MARCELO');
  sl.Add('LISI');


  sl2.Add('MORESCO');
  sl2.Add('EZE');
  sl2.Add('EDSON');
  sl2.Add('SUELEN');


   // Mostra os dados da lista no memo
  Memo1.Lines.Add(sl.GetText);
  Memo1.Lines.Add('A lista contém '+IntToStr(sl.Count)+' itens');

  
  // Remove 1 item da lista
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  sl.Delete(3);
  Memo1.Lines.add(sl.GetText);
  Memo1.Lines.Add('Apaguei o item pos=3 e agora a lista contém '+IntToStr(sl.Count)+' itens');


  // Muda dois elementos de posição
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  sl.Exchange(0,2);
  Memo1.Lines.add(sl.GetText);
  Memo1.Lines.Add('Mudei 2 itens de posição.');


  // Adicionando mais um item
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  vlTemp := sl.Add('LISI');
  Memo1.Lines.add(sl.GetText);
  Memo1.Lines.Add('Adicionei mais um item. Assumiu a posição '+IntToStr(vlTemp));
  Memo1.Lines.Add('A lista contém '+IntToStr(sl.Count)+' itens');


  // Adicionei os valores da Lista 2 na Lista 1
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  sl.AddStrings(sl2);
  Memo1.Lines.add(sl.GetText);
  Memo1.Lines.Add('Adicionei os itens da lista 2 na lista 1');
  Memo1.Lines.Add('A lista contém '+IntToStr(sl.Count)+' itens');


  // Retorna o índice de um elemento
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('O índice de ELTON é : '+IntToStr(sl.IndexOf('ELTON')));


  // Limpando a lista
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  sl.Clear;
  Memo1.Lines.add(sl.GetText);
  Memo1.Lines.Add('Limpei a liste, que agora contém '+IntToStr(sl.Count)+' itens');


  sl.Free;
  sl2.Free;
end;


procedure TForm1.Button2Click(Sender: TObject);
var sl : TStrings;
begin
  sl := TStringList.Create;
  Memo1.Clear;


  // Carregando os Dados
  sl.Values['BRA'] := 'Brasil';
  sl.Values['ARG'] := 'Argentina';
  sl.Values['PAR'] := 'Paraguai';
  sl.Values['URU'] := 'Uruguai';

  Memo1.Lines := sl;

  // Mostrando a descrição de uma posição
  ShowMessage(sl.Values['URU']);

  sl.Free;
end;


procedure TForm1.Button3Click(Sender: TObject);
var sl : TStrings;
begin
  sl := TStringList.Create;
  Memo1.Clear;

  // Carregando os Dados
  sl.Add( 'RS=Rio Grande do Sul' );
  sl.Add( 'SC=Santa Catarina' );
  sl.Add( 'PR=Paraná' );
  sl.Add( 'SP=São Paulo' );
  sl.Add( 'RJ=Rio de Janeiro' );

  // Memo1.Lines := sl; OU
  Memo1.Text := sl.GetText;


  // Mostrando a descrição de uma posição
  ShowMessage(sl.Values['RS']);

  sl.Free;
end;



procedure TForm1.Button4Click(Sender: TObject);
var sl : TStrings;
begin

   sl := TStringList.Create;

   Memo1.Clear;
   ExtractStrings(['#','@'],           // Separadores
                  [' '],               // Texto a Ignorar
                  pchar(Edit1.Text),   // Texto de entrada
                  Memo1.Lines);        // Retorno 


   ExtractStrings([DateSeparator],
                  [' '],
                  PChar(DateToStr(Now)),
                  Memo1.Lines);



   ExtractStrings(['#','@'],
                  [' '],
                  pchar(Edit1.Text),
                  sl);


   Memo1.Lines.Add('');
   Memo1.Lines.Add('1ª palavra do texto = '+sl.Strings[0]);
   Memo1.Lines.Add('2ª palavra do texto = '+sl.Strings[1]);

   sl.Free;
end;



procedure TForm1.Button5Click(Sender: TObject);
var sl : TStrings;
begin
   Memo1.Clear;

   sl := TStringList.Create;

   sl.CommaText := 'RS=Rio Grande do Sul, SC=Santa Catarina, PR=Paraná';
   Memo1.Lines.Add(sl.Values['RS']);
   Memo1.Lines.Add(sl.Values['SC']);
   Memo1.Lines.Add(sl.Values['PR']);


   Memo1.Lines.Add('');
   Memo1.Lines.Add('');


   sl.Clear;
   sl.CommaText := 'ELTON=DELPHI,MIMOSO=C#,IRANI=DELPHI';
   Memo1.Lines.Add(sl.Values['ELTON']);
   Memo1.Lines.Add(sl.Values['MIMOSO']);
   Memo1.Lines.Add(sl.Values['ANDRE']);
   Memo1.Lines.Add(sl.Values['IRANI']);


   sl.Free;
end;


procedure TForm1.Button6Click(Sender: TObject);
var sl : TStringList;
var i : Integer;
var vlProp : TDuplicates;
var vlTemp : TRect;
begin

  Memo1.Clear;
  sl := TStringList.Create;

  sl.Delimiter := '#';
  sl.QuoteChar := '#';
  sl.DelimitedText := '#Fusca Tes#Parati#Komb#';

  for i := 0 to sl.Count-1 do
      Memo1.Lines.Add(sl[i]);


  // Ordenação
  sl.Sorted := true;

   // Faz o contrário
   sl.Clear;
   sl.Add('ELTON');
   sl.Add('MARCELO');
   sl.Add('ANDRE');
   Memo1.Lines.Add(sl.DelimitedText);


   // Não permite duplicações - gera escessão  - precisa estar com Sorted=true p/ funcionar
   sl.Duplicates := dupError;

//   try
      sl.Add('ELTON');
//   except
//      ShowMessage('Erro : Tentativa de duplicação');
//   end;


  for i := 0 to sl.Count-1 do
      Memo1.Lines.Add(sl[i]);

//  Memo1.Lines.Add(Memo1.ClassName+' '+Memo1.Name);

  sl.Free;
end;





procedure TForm1.Button7Click(Sender: TObject);
var vlLista : TList;
var i : integer;
var vlOb : TObject;
begin

   vlLista := TList.Create;

   Memo1.Clear;


   i:=0;
   while (i < (Form1.ComponentCount)) do
   begin
      if Form1.Components[i].ClassName='TButton' then
      begin
         vlLista.Add(Form1.Components[i]);
         Memo1.Lines.Add(TButton(Form1.Components[i]).Caption);
      end;

      inc(i);
   end;


   Memo1.Lines.Add(IntToStr(vlLista.IndexOf(Button4)));
   Memo1.Lines.Add(vlLista.ClassName);

   i:=0;
   while (i < (vlLista.Count)) do
   begin
      vlOb := TObject(vlLista[i]);

      if vlOb.ClassType.ClassName='TButton' then
      begin
         TButton(vlOb).Left := TButton(vlOb).Left + 2;
         Application.ProcessMessages;

         Memo1.Lines.Add(TButton(vlOb).Name);
      end;

      inc(i);
   end;
              

   vlLista.Free;
end;




procedure TForm1.TesteBot(Sender: TObject);
begin
   Memo1.Lines.Add(TButton(Sender).Name);
end;

procedure TForm1.Button8Click(Sender: TObject);
var vlBotao : TButton;
begin
   vlBotao := TButton.Create(self);
   vlBotao.Left := StrToInt(Edit2.Text);
   vlBotao.Top := StrToInt(Edit3.Text);
   vlBotao.Name := 'bot_'+Edit2.Text;
   vlBotao.Width := 100;
   vlBotao.Height := 25;
   vlBotao.Caption := 'TESTE';
   vlBotao.Visible := true;
   vlBotao.Parent := Form1;
   vlBotao.OnClick := TesteBot;
   Application.ProcessMessages;
end;


Function TForm1.TipoVariavel(var inVariaval : Variant) : string;
var vlTipo : integer;
begin
   vlTipo := VarType(inVariaval) and VarTypeMask;
   result := '';

  case vlTipo of
    varEmpty     : result := 'Empty';
    varNull      : result := 'Nulo';
    varSmallInt  : result := 'SmallInt';
    varInteger   : result := 'Integer';
    varSingle    : result := 'Single';
    varDouble    : result := 'Double';
    varCurrency  : result := 'Currency';
    varDate      : result := 'Date';
    varOleStr    : result := 'OleStr';
    varDispatch  : result := 'Dispatch';
    varError     : result := 'Error';
    varBoolean   : result := 'Boolean';
    varVariant   : result := 'Variant';
    varUnknown   : result := 'Unknown';
    varByte      : result := 'Byte';
    varWord      : result := 'Word';
    varLongWord  : result := 'LongWord';
    varInt64     : result := 'Int64';
    varStrArg    : result := 'StrArg';
    varString    : result := 'String';
    varAny       : result := 'Any';
    varTypeMask  : result := 'TypeMask';
  end;

end;

procedure TForm1.Button9Click(Sender: TObject);
var vlVariavel : Variant;
begin
   Memo1.Clear;

   vlVariavel := '123';
   Memo1.Lines.Add(TipoVariavel(vlVariavel));

   vlVariavel := vlVariavel + 2;
   Memo1.Lines.Add(TipoVariavel(vlVariavel));

   vlVariavel := 'O resultado é : '+IntToStr(vlVariavel);
   Memo1.Lines.Add(TipoVariavel(vlVariavel));

   vlVariavel := 'TESTE - '+vlVariavel;
   Memo1.Lines.Add(TipoVariavel(vlVariavel));

   Memo1.Lines.Add(vlVariavel);
end;




end.
