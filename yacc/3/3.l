%{
#include "y.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext);return NUMBER;}
[\n] {return nl;}
. {return yytext[0];}
%%

