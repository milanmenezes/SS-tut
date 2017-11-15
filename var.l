%{
 #include<stdio.h>
 #include "y.tab.h"
 
%}
%%
^[a-zA-Z][a-zA-Z0-9]* {return A;}
\t ;
\n {return yytext[0];}
. {return yytext[0];}
%%

yywrap(){
 }

