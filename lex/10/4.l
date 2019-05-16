%{
#include<stdio.h>
#include<stdlib.h>
int vc=0,cc=0,nc=0,sc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
[0-9]+  {nc++;}
.      {sc++;}
%%
void main(int argc,char * argv[]){
yyin=fopen(argv[1],"r");
yylex();
printf("Vowel:%d\n Consonant:%d\n Number:%d\n Spec:%d\n",vc,cc,nc,sc);
}
