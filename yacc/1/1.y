%{
#include<stdio.h>
#include<stdlib.h>
%}
%token Num id nl
%left '+' '-'
%left '*' '/'
%%
stat:exp nl {printf("Valid\n");exit(0);}
     ;
     exp:exp '+' exp|
	 exp '-' exp|
  	 exp '*' exp|
	 exp '/' exp|
	 '(' exp ')'|
	 id|
	 Num
	;
%%
int yyerror(char * msg){
	printf("Invalid");
	return 0;
}
int main(){
yyparse();
return 0;
}
	
	 


