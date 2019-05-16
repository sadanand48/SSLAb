%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER nl
%left '+' '-'
%left '*' '/'
%%
stat:exp nl {printf("Result is %d",$$);exit(0);}
	;
exp:exp '+' exp {$$=$1+$3;}
   |
    exp '-' exp {$$=$1-$3;}
   |
    exp '*' exp {$$=$1*$3;}
   |
    exp '/' exp {if($3==0)yyerror("Division by zero");
		else ($$=$1/$3);}
   |
    '('exp')' {$$=$2;}
   |NUMBER   {$$=$1;}
   ;
%%
int yywrap(char * msg){
	printf(msg);
	return 0;
	}
int main(){
yyparse();
return 0;
}

