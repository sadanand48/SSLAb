%{
#include<stdio.h>
#include<stdlib.h>
%}
%token digit nl
%%
stmt: D nl {printf("valid"); exit(0);}
    ;
D:D digit
 |digit digit digit ;
%%
int yyerror(char *msg){
printf("invalid");
return 0;
}
int main(){
yyparse();
return 0;
}

