%{
#include<stdio.h>
#include<stdlib.h>
int idf=0,cmt=0,op=0;
%}
%%
[a-zA-Z][a-zA-Z0-9_]* {idf++;}
"/*".+"*/"|"\\".+"\n"  {cmt++;}
"+"|"-"|"*"|"/"|"%"|"^" {op++;}
%%
void main(int argc,char * argv[]){
yyin=fopen(argv[1],"r");
yylex();
printf("no of comment lines:%d\n no of operators:%d\n no of identifiers:%d\n",cmt,op,idf);
}
