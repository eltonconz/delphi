unit edit_interceptor;

 interface

 uses stdctrls, sysutils, DateUtils, Vcl.Graphics,Classes, Controls, Dialogs, System.UITypes, Forms;

 type
   TEdit = class(stdctrls.TEdit)
   private
      procedure ProcOnChange(Sender: TObject);
      function  GetAsInteger: Int64;
      procedure SetAsInteger(const Value: Int64);
   protected
      Lista_Historico : TStringList;
   public
      constructor Create(aOwer: TComponent); override;
      destructor Destroy; override;

      function  GetHistorico : TStrings;
      procedure LimparHistorico;
      procedure ProcOnEnter(Sender: TObject);
      procedure ProcOnExit(Sender: TObject);

      property  AsInteger : Int64 read GetAsInteger write SetAsInteger;

   end;

 implementation

{ TEdit }



constructor TEdit.Create(aOwer: TComponent);
begin

   inherited;

   Self.CharCase := System.UITypes.TEditCharCase.ecUpperCase;
   Self.OnEnter  := ProcOnEnter;
   Self.OnExit   := ProcOnExit;
   Self.OnChange := ProcOnChange;

   Self.Lista_Historico := TStringList.Create;

end;


destructor TEdit.Destroy;
begin
   FreeAndNil(Self.Lista_Historico);
   inherited;
end;



procedure TEdit.ProcOnChange(Sender: TObject);
begin
   if (Self.Owner is TCustomForm) then
   begin
      TCustomForm(Self.Owner).Caption := Self.Name + ' = ' + Self.Text;

      if Self.Text = 'SAIR' then
         TCustomForm(Self.Owner).Close;
   end;
end;


procedure TEdit.ProcOnEnter(Sender: TObject);
begin
   Self.Modified   := False;
   Self.Color      := $008EF9F3;
   Self.Font.Color := clBlack;
   Self.Font.Size  := 10;
   Self.Font.Style := [fsBold];
end;


procedure TEdit.ProcOnExit(Sender: TObject);
begin
   Self.Color      := clWhite;
   Self.Font.Color := clBlack;
   Self.Font.Size  := 8;
   Self.Font.Style := [];

   if (trim(Self.Text) <> '') then
      Self.Lista_Historico.Add(Self.Text);
end;


function TEdit.GetAsInteger: Int64;
var liValue: Int64;
begin
   if TryStrToInt64(Self.Text, liValue) then
      Result := liValue
   else
      Result := 0;
end;


procedure TEdit.SetAsInteger(const Value: Int64);
begin
   Self.Text := IntToStr(Value);
end;


function TEdit.GetHistorico: TStrings;
begin
   result := Self.Lista_Historico;
end;


procedure TEdit.LimparHistorico;
begin
   Self.Lista_Historico.Clear;
end;

end.
