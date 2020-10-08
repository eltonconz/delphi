program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  ComObj,
  ActiveX,
  StdVcl,
  Variants,
  Vcl.Dialogs;

const
  wbemFlagForwardOnly = $00000020;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;

begin
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');

   // Irá terminar todos os processos que iniciem por skype
  FWbemObjectSet:= FWMIService.ExecQuery('SELECT * FROM Win32_Process Where Name like "skype%"','WQL',wbemFlagForwardOnly);

  oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
  while oEnum.Next(1, FWbemObject, iValue) = 0 do
  begin
    FWbemObject.Terminate();
    FWbemObject:=Unassigned;
  end;
end.
