%{
 //c variable
 #include<stdio.h>
 int count=0;
%}
%%
^count$ {printf("%d",count);}
^[_A-Za-z][A-Za-z0-9_]* {printf("C variable");
count++}
.* {printf("Not a C variable");}
%%
int main(){
 yylex();
 return 0;
}

