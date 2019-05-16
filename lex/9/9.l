%{
#include<stdio.h>
int rp=0,rn=0,fp=0,fn=0;
%}
%%
[0-9]+ {rp++;}
[-][0-9]+ {rn++;}
[0-9]*\.[0-9]+ {fp++;}
[-][0-9]*\.[0-9]+ {fn++;}
%%
void main()
{
 yyin=fopen("ip.txt","r");
 yylex();
 printf("Positive no are:%d\n",rp);
 printf("Negative no are:%d\n",rn);
 printf("Fractinal Positive no are:%d\n",fp);
 printf("Fractional Negative no are:%d\n",fn);
}
