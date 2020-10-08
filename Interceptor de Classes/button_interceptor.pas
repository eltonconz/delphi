unit button_interceptor;

 interface

 uses stdctrls, sysutils, DateUtils;

 type
   TButton = class(stdctrls.TButton)
   private
     f_dtUltimoClique : TDateTime;
     f_sNossoTexto    : string;
   public
     procedure Click; override;
     class constructor Create; overload;
   public
     property UltimoClique : TDateTime read f_dtUltimoClique write f_dtUltimoClique;
     property NossoTexto   : String    read f_sNossoTexto    write f_sNossoTexto;
   end;


implementation


procedure TButton.Click;
var liPeriodo_Segundos : integer;
var ldtDataHoraClique : TDateTime;
begin
   liPeriodo_Segundos := 2;
   ldtDataHoraClique  := Now;

   if SecondsBetween(ldtDataHoraClique, f_dtUltimoClique) >= liPeriodo_Segundos then
      inherited
   else
     Beep;

   f_dtUltimoClique := ldtDataHoraClique;
end;


class constructor TButton.Create;
begin
   inherited;
end;


end.
