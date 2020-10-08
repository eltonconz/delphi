unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JclDateTime, StdCtrls, Mask;

type
  TForm3 = class(TForm)
    edtData: TMaskEdit;
    btn1: TButton;
    mmoDados: TMemo;
    edtHora: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
var ldtData : TDate;
var ltHora : TTime;
var lsAux : string;
begin
   mmoDados.Clear;

   ldtData := StrToDate(edtData.Text);
   ltHora  := StrToTime(edtHora.Text);

   with mmoDados.Lines do
   begin
      lsAux := IntToStr(CenturyOfDate(ldtData));
      Add('Século: '+lsAux);

      lsAux := IntToStr(DayOfDate(ldtData));
      Add('Dia: '+lsAux);

      lsAux := IntToStr(MonthOfDate(ldtData));
      Add('Mês: '+lsAux);

      lsAux := IntToStr(YearOfDate(ldtData));
      Add('Ano: '+lsAux);

      lsAux := 'Não';
      if ISLeapYear(ldtData) then
         lsAux := 'Sim';
      Add('Bissexto: '+lsAux);

      lsAux := IntToStr(GetISOYearNumberOfWeeks(YearOfDate(ldtData)));
      Add('Nro Semanas do ano: '+lsAux);

      lsAux := IntToStr(DaysInMonth(ldtData));
      Add('Dias no mês: '+lsAux);

      lsAux := DateToStr(EasterSunday(YearOfDate(ldtData)));
      Add('Páscoa: '+lsAux);

      lsAux := IntToStr(HourOfTime(ltHora));
      Add('Hora: '+lsAux);

      lsAux := IntToStr(MinuteOfTime(ltHora));
      Add('Minutos: '+lsAux);

      lsAux := IntToStr(SecondOfTime(ltHora));
      Add('Segundos: '+lsAux);

      lsAux := IntToStr(HoursToMSecs(HourOfTime(ltHora)));
      Add('Hora MS: '+lsAux);

      lsAux := IntToStr(MinutesToMSecs(MinuteOfTime(ltHora)));
      Add('Minutos MS: '+lsAux);

      lsAux := IntToStr(SecondsToMSecs(SecondOfTime(ltHora)));
      Add('Segundos MS: '+lsAux);

   end;


end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   edtData.Text := DateToStr(Date);
   edtHora.Text := TimeToStr(now);
end;

end.
