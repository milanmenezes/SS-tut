%{
 #include<stdio.h>
 #include<stdlib.h>
%}

%token A

%%
exp:S '\n' {return 0;}
S:A ;
%%

int main(){
printf("Enter the expression\n");
yyparse();
printf("Valid variable\n");
return 0;
}

yyerror(){
printf("Invalid variable\n");
exit(1);
}
