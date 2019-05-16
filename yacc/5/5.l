%{
#include "y.tab.h"
%}
%%
[0-9] {return digit;}
[\n] {return nl;}
.    {return yytext[0];}
%%
