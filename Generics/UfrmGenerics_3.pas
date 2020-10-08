unit UfrmGenerics_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;



type
  TSampleClass <T: class> = class
  private
    data: T;
  public
   function  ReadT: T;
   procedure SetT (t: T);
end;


type
  TCompoClass <T: TComponent> = class
  private
    data: T;
  public
   function  GetName : string;
   procedure SetT (t: T);
end;



type
  TPessoa = class
  public
    Nome      : string;
    SobreNome : string;
end;


type
  TfrmGenerics_3 = class(TForm)
    btnTestar: TButton;
    procedure btnTestarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

{ TSampleClass<T> }

function TSampleClass<T>.ReadT: T;
begin
   result := data;
end;

procedure TSampleClass<T>.SetT(t: T);
begin
   Self.data := t;
end;



{ TCompoClass<T> }

function TCompoClass<T>.GetName: string;
begin
   result := TComponent(T).Name;
end;

procedure TCompoClass<T>.SetT(t: T);
begin
   Self.data := t;
end;



procedure TfrmGenerics_3.btnTestarClick(Sender: TObject);
var lObj_Form   : TSampleClass<TForm>;
var lObj_Button : TSampleClass<TButton>;
var lObj_Pessoa : TSampleClass<TPessoa>;
{
   Não permite pois o tipo deve ser objeto   TSampleClass <T: class>
   var lObj_Int    : TSampleClass<Integer>;
   var lObj_string : TSampleClass<string>;
}


var lCompo_Form   : TCompoClass<TForm>;
var lCompo_Butto  : TCompoClass<TButton>;
{
   Não permite pois o tipo deve ser componente   TCompoClass <T: TComponent>
   var lCompo_Pessoa : TCompoClass<TPessoa>;
   var lCompo_Int    : TCompoClass<Integer>;
}

begin


end;


end.
