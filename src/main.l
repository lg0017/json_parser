/* Data de submissao: 06/04/2020
 * Nome: Luiz Guilherme Silva Moreira
 * RA: 202391
 */
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%


(["]{1}([a-zA-Z0-9]+[ ]*)+["]{1}[\n]*) {
    return STRING;
}

([0-9]+[.]{1}[0-9]+) {
	return FLOAT;
}

([0-9]+) {
	return INTEIRO;
}
[:] {
          return DOIS_PONTOS;
}
[,][\n]* {
          return VIRGULA;
}
[{]   {
          return ABRIU_CHAVES;
}
[}]   {
          return FECHOU_CHAVES;
}
[[]  {
          return ABRIU_COLCHETE;
}
[]]   {
          return FECHOU_COLCHETE;
}

[ \t]+ ; 

[[:space:]]+ ;

. ;


%%

int yywrap() {
  return 1;
}
