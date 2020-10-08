unit UfrmGenerics_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Generics.Collections, Vcl.StdCtrls;


// Classe Genérica
type
  TKeyValue<T> = class
  private
    FKey   : string;
    FValue : T;
    procedure SetKey(const Value: string);
    procedure SetValue(const Value: T);
  public
    property Key: string read FKey write SetKey;
    property Value: T read FValue write SetValue;
end;


type
  TAnimal = class
  private
    FName: string;
    procedure SetName(const Value: string);
  public
    property Name: string read FName write SetName;
  public
    class function Get (const aName: string): TAnimal;
    class function GetAs<T: class> (const aName: string): T;
    function ToString: string; override;
end;


TDog = class (TAnimal)

end;

TCat = class (TAnimal)

end;


type
  TfrmGenerics_1 = class(TForm)
    btnTestar: TButton;
    mmo1: TMemo;
    btnExmeplo2: TButton;
    procedure btnTestarClick(Sender: TObject);
    procedure btnExmeplo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

{ TKeyValue<T> }

procedure TKeyValue<T>.SetKey(const Value: string);
begin
   Self.FKey := Value;
end;

procedure TKeyValue<T>.SetValue(const Value: T);
begin
   Self.FValue := Value;
end;





procedure TfrmGenerics_1.btnTestarClick(Sender: TObject);
var lExemplo  : TKeyValue<TButton>;
var lExemplo2 : TKeyValue<TMemo>;
var lExemplo3 : TKeyValue<TForm>;
var lExemplo4 : TKeyValue<Integer>;
begin

   mmo1.Lines.Clear;

   lExemplo := TKeyValue<TButton>.Create;
   try
      lExemplo.Key   := 'Botão 1';
      lExemplo.Value := btnTestar;
      mmo1.Lines.Add(lExemplo.Key + ' = ' + lExemplo.Value.Name);
   finally
      FreeAndNil(lExemplo);
   end;

   lExemplo2 := TKeyValue<TMemo>.Create;
   try
      lExemplo2.Key   := 'Memo 1';
      lExemplo2.Value := mmo1;
      mmo1.Lines.Add(lExemplo2.Key + ' = ' + lExemplo2.Value.Name);
   finally
      FreeAndNil(lExemplo2);
   end;

   lExemplo3 := TKeyValue<TForm>.Create;
   try
      lExemplo3.Key   := 'Form 1';
      lExemplo3.Value := Self;
      mmo1.Lines.Add(lExemplo3.Key + ' = ' + lExemplo3.Value.Name);
   finally
      FreeAndNil(lExemplo3);
   end;

   lExemplo4 := TKeyValue<Integer>.Create;
   try
      lExemplo4.Key   := 'Inteiro';
      lExemplo4.Value := 4816;
      mmo1.Lines.Add(lExemplo4.Key + ' = ' + IntToStr(lExemplo4.Value));
   finally
      FreeAndNil(lExemplo4);
   end;

end;




{ TAnimal }

class function TAnimal.Get(const aName: string): TAnimal;
begin
   result := Create;
   result.fName := aName;
end;

// Retorno genérico
class function TAnimal.GetAs<T>(const aName: string): T;
var res: TAnimal;
begin
   res := Self.Get(aName);
   if res.inheritsFrom (T) then
      Result := T(res)
   else
      Result := nil;
end;


procedure TAnimal.SetName(const Value: string);
begin
   self.Name := Value;
end;

function TAnimal.ToString: string;
begin
   result := 'This ' + Copy (ClassName, 2, maxint) + ' is called ' + FName;
end;


procedure TfrmGenerics_1.btnExmeplo2Click(Sender: TObject);
var aCat : TCat;
var anotherCat : TCat;
var aDog : TDog;
begin
   mmo1.Lines.Clear;

   aCat := TCat.Get('Matisse') as TCat;
   mmo1.Lines.Add (aCat.ToString);
   aCat.Free;

   anotherCat := TCat.GetAs<TCat>('Fefe');
   mmo1.Lines.Add (anotherCat.ToString);
   anotherCat.Free;

   aDog := TDog.Get('Rex') as TDog;
   mmo1.Lines.Add (aDog.ToString);
   aDog.Free;


end;


end.
