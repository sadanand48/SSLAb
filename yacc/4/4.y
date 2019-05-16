%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B nl
%%
//Rules
stmt:C D nl {printf("Valid");exit(0);}
    ;
C : A C
  |A
  | ;

D : B D
  |B
  | ;
      
%%
int yyerror(char * msg){
printf("invalid");
return 0;
}
int main(){
yyparse();
return 0;
}
