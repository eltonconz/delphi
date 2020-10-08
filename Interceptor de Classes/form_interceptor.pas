unit form_interceptor;

 interface

 uses Vcl.Forms, stdctrls, sysutils, DateUtils, Winapi.Messages, System.Classes, Winapi.Windows, Vcl.Graphics;

 type
   TForm = class(Vcl.Forms.TForm)
   private
      f_bConfirmar_Saida_Form : boolean;
   protected
      procedure Proc_FormKeyPress(Sender: TObject; var Key: Char);
      procedure Proc_FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure Proc_FormClose(Sender: TObject; var Action: TCloseAction);
   public
      constructor Create(aOwer: TComponent); override;
      property Confirmar_Saida_Form : boolean read f_bConfirmar_Saida_Form write f_bConfirmar_Saida_Form;
   end;

 implementation



{ TForm }



constructor TForm.Create(aOwer: TComponent);
begin
   inherited;

   Self.Font.Name   := 'MS Sans Serif';
   Self.Font.Size   := 8;
   Self.Color       := clBtnFace;
   Self.BorderStyle := bsDialog;
   Self.Position    := poScreenCenter;
   Self.KeyPreview  := True;
   Self.Caption     := 'Formulário: ' + Self.Name
                         + ' / Altura=' + IntToStr(Self.Height)
                         + ' / Largura=' + IntToStr(Self.Width);

   Self.Confirmar_Saida_Form := True;

   Self.OnKeyPress := Proc_FormKeyPress;
   Self.OnKeyDown  := Proc_FormKeyDown;
   Self.OnClose    := Proc_FormClose;

end;



procedure TForm.Proc_FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;



procedure TForm.Proc_FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      close;
end;


procedure TForm.Proc_FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if f_bConfirmar_Saida_Form then
   begin
      if (MessageBox(0, pWideChar('Deseja fechar o formulário '+Self.Name+'?'), 'Confirmação', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idNo) then
      begin
         Action := caNone;
      end;
   end;
end;




end.
