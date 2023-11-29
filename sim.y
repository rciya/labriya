%{
	#include<stdio.h>
%}
%token num

%%
E:E'+'T
|E'-'T
|T
|'('E')'
;
T:T'*'F
|T'/'F
|F
;
F:num
;
%%
int main(){
	printf("Enter the expression \n");
	yyparse();
	printf("Valid Expression \n");
	return 0;
}
yyerror(char *s){
	printf("Invalid function \n");
	exit(0);
}
