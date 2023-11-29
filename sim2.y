%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
%}
%token num
%%
E:'('E')'
|E'+'E
|E'-'E
|E'/'E
|E'*'E
|T
;
T:num
;
%%

int main(){
	printf("Enter the expression \n");
	yyparse();
	printf("Valid \n");
	return 0;
}

yyerror(){
	printf("invalid");
	exit(0);
}
