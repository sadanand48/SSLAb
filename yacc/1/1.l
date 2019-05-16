%{
#include "y.tab.h"
%}
%%
[0-9]+(\.[0-9]*)? {return Num;}
[_a-zA-Z][_a-zA-Z0-9]* { return id;}
[\n] {return nl;}
. {return yytext[0];}
%%
