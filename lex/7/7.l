%{
#include<stdio.h>
#include<stdlib.h>
int top=0,opt=0,opd=0,valid=1;
%}
%%
"(" {top++;}
")" {top--;if(top<0)valid=0;}
[a-zA-Z0-9] {opd++;}
[+|-|*|/] {opt++;}
%%
void main(int argc,char * argv[]){
yyin=fopen(argv[1],"r");
yylex();
if((top==0) && (valid==1) && (opd-opt==1)){
	printf("Valid\n");
	printf("No.of Operands:%d\nNo.of operators:%d\n",opd,opt);
	}
else
	printf("invalid");

}

