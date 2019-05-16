# SSLab
System Software Programs
Executing Lex : lex filename.l
                gcc lex.yy.c -ll
                ./a.out
Executing YACC:lex filename.l
                yacc filename.y -d
                gcc lex.yy.c y.tab.c -ll -ly
                ./a.out
