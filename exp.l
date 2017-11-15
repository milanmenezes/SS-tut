%{
 #include<stdio.h>
 #include "y.tab.h"
 
%}
%%
A {return A;}
B {return B;}
\t ;
\n {return yytext[0];}
. {return yytext[0];}
%%

yywrap(){
 }

