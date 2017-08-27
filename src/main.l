%{
#include <stdio.h>
%}

ALPNUM	[A-Za-z0-9]
SYMBOL	[\-_\.]

%%

{ALPNUM}+({ALPNUM}|{SYMBOL})*{ALPNUM}+@{ALPNUM}+([.]{ALPNUM}+)* {printf("%s\n", yytext);}
{SYMBOL}*{ALPNUM}+({ALPNUM}|{SYMBOL})*{ALPNUM}+@{ALPNUM}+[_\-] ;
[\n ] ;
. ;

%%

int main() {
  yylex();
  return 0;
}
