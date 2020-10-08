unit UClas_Pessoa;

interface

//uses sysUtils,Classes,StdCtrls;

Type
   TPessoa = Class
   private
   protected
      FNome : string;
      FIdade : integer;

   public
      property Nome  : String  read FNome write FNome;
      property Idade : integer read FIdade write FIdade;

      constructor CriaPessoa(inNome : string; inIdade : integer);
   end;

implementation


{ TPessoa }

constructor TPessoa.CriaPessoa(inNome: string; inIdade: integer);
begin
   Self.FNome  := inNome;
   Self.FIdade := inIdade;
end;


end.
