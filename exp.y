%{
 #include<stdio.h>
 #include<stdlib.h>
%}

%token A B

%%
exp:S '\n' {return 0;}
S:A S B
 |
 ;
%%

int main(){
printf("Enter the expression\n");
yyparse();
printf("Valid expression\n");
return 0;
}

yyerror(){
printf("Invalid statement\n");
exit(1);
}
