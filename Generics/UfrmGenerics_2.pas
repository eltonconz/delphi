unit UfrmGenerics_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections, TypInfo;

// Array genérico
type
   TGenericArray<T> = class
      anArray : array [1..5] of T;
      function GetDataName: string;
end;


type
  TfrmGenerics_2 = class(TForm)
    mmo1: TMemo;
    btnTestar: TButton;
    procedure btnTestarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmGenerics_2.btnTestarClick(Sender: TObject);
var lArrayInt    : TGenericArray<Integer>;
var lArrayDouble : TGenericArray<double>;
var lArrayString : TGenericArray<string>;
begin

   mmo1.Lines.Clear;

   lArrayInt := TGenericArray<Integer>.Create;
   try
      mmo1.Lines.Add(lArrayInt.GetDataName);
      lArrayInt.anArray[1] := 10;
      lArrayInt.anArray[2] := 20;
      lArrayInt.anArray[3] := 30;
      lArrayInt.anArray[4] := 40;
      lArrayInt.anArray[5] := 50;
   finally
      FreeAndNil(lArrayInt);
   end;


   lArrayDouble := TGenericArray<double>.Create;
   try
      mmo1.Lines.Add(lArrayDouble.GetDataName);
      lArrayDouble.anArray[1] := 1.1;
      lArrayDouble.anArray[2] := 1.2;
      lArrayDouble.anArray[3] := 1.3;
      lArrayDouble.anArray[4] := 1.4;
      lArrayDouble.anArray[5] := 1.5;
   finally
      FreeAndNil(lArrayDouble);
   end;


   lArrayString := TGenericArray<string>.Create;
   try
      mmo1.Lines.Add(lArrayString.GetDataName);
      lArrayString.anArray[1] := 'A';
      lArrayString.anArray[2] := 'B';
      lArrayString.anArray[3] := 'C';
      lArrayString.anArray[4] := 'D';
      lArrayString.anArray[5] := 'E';
   finally
      //lArrayString.Free;
   end;


end;



{ TGenericArray<T> }

function TGenericArray<T>.GetDataName: string;
begin
   result := GetTypeName(TypeInfo(T));
end;



end.
