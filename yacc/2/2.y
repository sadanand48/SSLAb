%{
#include<stdio.h>
#include<stdlib.h>
%}
%token var nl
%%
  stat:var nl {printf("Valid");exit(0);}
	;
%%
int yyerror(char * msg){
printf("Invalid");
}
int main(){
yyparse();
return 0;
}

