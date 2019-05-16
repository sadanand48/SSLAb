# SSLab
Executing Lex : <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lex filename.l <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;gcc lex.yy.c -ll<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;./a.out<br />
Executing YACC:<br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lex filename.l<br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yacc filename.y -d<br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gcc lex.yy.c y.tab.c -ll -ly<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;./a.out<br />
