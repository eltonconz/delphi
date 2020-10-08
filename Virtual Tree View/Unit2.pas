unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, StdCtrls, jpeg, ImgList;


type
PDado = ^TDado;
TDado = record
   ID        : Integer;
   Codigo    : Integer;
   Descricao : string;
   Valor     : Double;
end;


type
  TForm2 = class(TForm)
    VirtualStringTree1: TVirtualStringTree;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    Label1: TLabel;
    btn1: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    procedure btn2Click(Sender: TObject);
    procedure VirtualStringTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType; var CellText: string);
    procedure VirtualStringTree1FreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    function BuscarNodo(inID: Integer): PVirtualNode;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
    function Adicionar(AVST: TCustomVirtualStringTree; ANode: PVirtualNode; ARecord: TDado): PVirtualNode;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ctID : Integer;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
   VirtualStringTree1.FullExpand;

end;

procedure TForm2.btn2Click(Sender: TObject);
var vlReg : TDado;
var i : Integer;
begin

   VirtualStringTree1.NodeDataSize := SizeOf(vlReg);
   VirtualStringTree1.BeginUpdate;

   for i := 0 to 10 do
   begin
      vlReg.Codigo    := i;
      vlReg.Descricao := 'desc - '+IntToStr(i);
      vlReg.Valor     := i * 0.023;

      Adicionar(VirtualStringTree1,nil,vlReg);
   end;

   VirtualStringTree1.EndUpdate;

end;


procedure TForm2.btn3Click(Sender: TObject);
var vlReg : TDado;
var Node: PVirtualNode;
begin
   VirtualStringTree1.NodeDataSize := SizeOf(vlReg);
   VirtualStringTree1.BeginUpdate;

   vlReg.Codigo    := 99;
   vlReg.Descricao := 'TESTE';
   vlReg.Valor     := 12.023;


   Node:=VirtualStringTree1.FocusedNode;
   if not Assigned(Node) then
      Adicionar(VirtualStringTree1,nil,vlReg)
   else
      Adicionar(VirtualStringTree1,Node,vlReg);

   VirtualStringTree1.EndUpdate;

end;

procedure TForm2.btn4Click(Sender: TObject);
var vlReg : TDado;
var Node: PVirtualNode;
begin
   VirtualStringTree1.NodeDataSize := SizeOf(vlReg);
   VirtualStringTree1.BeginUpdate;

   vlReg.Codigo    := 98;
   vlReg.Descricao := 'TESTE 12';
   vlReg.Valor     := 23.23;

   Node:= BuscarNodo(StrToInt(edt1.Text));
   if Assigned(Node) then
      Adicionar(VirtualStringTree1,Node,vlReg);

   VirtualStringTree1.EndUpdate;

end;


procedure TForm2.btn5Click(Sender: TObject);
begin
   VirtualStringTree1.FullCollapse;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
   VirtualStringTree1.BeginUpdate;
   VirtualStringTree1.Clear;
   VirtualStringTree1.EndUpdate;
end;

procedure TForm2.btn7Click(Sender: TObject);
var Node: PVirtualNode;
begin

   Node:=VirtualStringTree1.FocusedNode;
   if Assigned(Node) then
   begin
      VirtualStringTree1.BeginUpdate;
      //VirtualStringTree1.DeleteSelectedNodes;
      VirtualStringTree1.DeleteNode(Node,true);
      VirtualStringTree1.EndUpdate;
   end;


end;


procedure TForm2.btn8Click(Sender: TObject);
begin
   ShowMessage(IntToStr(VirtualStringTree1.RootNodeCount)+' nodos raiz');
end;

procedure TForm2.VirtualStringTree1FreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var Data: PDado;
begin
  Data:=Sender.GetNodeData(Node);

  Finalize(Data^);

  // ou

  {if Assigned(Data) then
  begin
    Data^.Codigo:=0;
    Data^.Descricao:='';
    Data^.Valor := 0;
    Data^.ID := 0;
  end;}
end;

procedure TForm2.VirtualStringTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: string);
var
  Data: PDado;
begin

  Data:=VirtualStringTree1.GetNodeData(Node);
  case Column of
    0: CellText := IntToStr(Data.Codigo);
    1: CellText := Data.Descricao;
    2: CellText := FormatFloat('###,###,###,##0.000',Data.Valor);
    3: CellText := IntToStr(Data.ID);
  end;

end;



function TForm2.Adicionar(AVST: TCustomVirtualStringTree; ANode: PVirtualNode; ARecord: TDado): PVirtualNode;
var Data: PDado;
begin
  Result:=AVST.AddChild(ANode);
  Data:=AVST.GetNodeData(Result);
  Avst.ValidateNode(Result, False); // para evitar vazamento de memória
  Data^.Codigo:=ARecord.Codigo;
  Data^.Descricao:=ARecord.Descricao;
  Data^.Valor:=ARecord.Valor;
  Data^.ID := ctID;

  ctID := ctID + 1;
end;



function TForm2.BuscarNodo(inID: Integer): PVirtualNode;
var
   Nodo : PVirtualNode;
   Data : PDado;
begin
   Result := nil;

   Nodo := VirtualStringTree1.GetFirst;

   while ((Nodo <> nil) and (Result = nil)) do
   begin
      Data := VirtualStringTree1.GetNodeData(Nodo);
      if (Data.ID = inID) then
      begin
         Result := Nodo;
         Break;
      end;

      Nodo := VirtualStringTree1.GetNext(Nodo);
   end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   ctID := 1;
end;

end.
