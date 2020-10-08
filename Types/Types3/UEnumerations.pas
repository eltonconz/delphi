unit UEnumerations;

interface

   // Mais sobre o assunto

   // http://www.delphibasics.co.uk/Article.asp?Name=Sets



   type TNaipesCartas = (ncCopa, ncEspada, ncOuro, ncPau);

   type TDiasSemana = (dsDomingo, dsSegunda, dsTerca, dsQuarta, dsQuinta, dsSexta, dsSabado);


   // Definido-se o indice de cada elemento
   type TMeses = ( mJaneiro=1,
                   mFevereito=2,
                   mMarco=3,
                   mAbril=4,
                   mMaio=5,
                   mJunho=6,
                   mJulho=7,
                   mAgosto=8,
                   mSetembro=9,
                   mOutubro=10,
                   mNovembro=11,
                   mDezembro=12 );




   // SubRanges

   type TDiasUteis = dsSegunda..dsSexta; {dsSegunda, dsTerca, dsQuarta, dsQuinta, dsSexta}

   type TNumerosDeUmDigito = 0..9;

   type TLetrasMaiusculas = 'A'..'Z';

   type TLetrasMinusculas = 'a'..'z';





   // Sets

   type TNaipesSet = set of TNaipesCartas;

   type TNumerosUmDigitoSet = set of 0..9;



implementation

end.
