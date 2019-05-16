%{
#include "y.tab.h"
%}
%%
[a-zA-Z]+[a-zA-Z0-9]* {return var;}
[\n] {return nl;}
. {return yytext[0];}
%%

