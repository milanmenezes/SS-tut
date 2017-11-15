%{
 #include<stdio.h>
%}
%%
. {printf("Hello world!");}
%%
int main(){
 yylex();
 return 0;
}

