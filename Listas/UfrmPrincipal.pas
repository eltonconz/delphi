unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnList: TButton;
    btnObjList: TButton;
    btnDic: TButton;
    btnObjDic: TButton;
    mmo1: TMemo;
    btnTQueue: TButton;
    btnTObjectQueue: TButton;
    btnTStack: TButton;
    btnTObjectStack: TButton;
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnListClick(Sender: TObject);
    procedure btnObjListClick(Sender: TObject);
    procedure btnDicClick(Sender: TObject);
    procedure btnObjDicClick(Sender: TObject);
    procedure btnTQueueClick(Sender: TObject);
    procedure btnTStackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmTList, UfrmTObjectList, UfrmTDictionary, UfrmTObjectDictionary, UfrmTQueue, UfrmTStack;



procedure TfrmPrincipal.btnListClick(Sender: TObject);
var lfrmTList : TfrmTList;
begin
   lfrmTList:=TfrmTList.Create(Self);
   try
      lfrmTList.ShowModal;
   finally
      FreeAndNil(lfrmTList);
   end;
end;



procedure TfrmPrincipal.btnObjListClick(Sender: TObject);
var lfrmTObjectList : TfrmTObjectList;
begin
   lfrmTObjectList:=TfrmTObjectList.Create(Self);
   try
      lfrmTObjectList.ShowModal;
   finally
      FreeAndNil(lfrmTObjectList);
   end;
end;



procedure TfrmPrincipal.btnDicClick(Sender: TObject);
var lfrmTDictionary : TfrmTDictionary;
begin
   lfrmTDictionary:=TfrmTDictionary.Create(Self);
   try
      lfrmTDictionary.ShowModal;
   finally
      FreeAndNil(lfrmTDictionary);
   end;
end;


procedure TfrmPrincipal.btnObjDicClick(Sender: TObject);
var lfrmTObjectDictionary : TfrmTObjectDictionary;
begin
   lfrmTObjectDictionary:=TfrmTObjectDictionary.Create(Self);
   try
      lfrmTObjectDictionary.ShowModal;
   finally
      FreeAndNil(lfrmTObjectDictionary);
   end;
end;


procedure TfrmPrincipal.btnTQueueClick(Sender: TObject);
var lfrmTQueue : TfrmTQueue;
begin
   lfrmTQueue:=TfrmTQueue.Create(Self);
   try
      lfrmTQueue.ShowModal;
   finally
      FreeAndNil(lfrmTQueue);
   end;
end;



procedure TfrmPrincipal.btnTStackClick(Sender: TObject);
var lfrmTStack : TfrmTStack;
begin
   lfrmTStack:=TfrmTStack.Create(Self);
   try
      lfrmTStack.ShowModal;
   finally
      FreeAndNil(lfrmTStack);
   end;
end;


end.
