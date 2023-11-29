%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%token num
%%
S:E	{printf("Result is in %d",$$);}
;
E:E'+'T	{$$ = $1 + $3;}
|E'-'T	{$$ = $1 - $3;}
|T	{$$ = $1;}
;
T:T'*'F	{$$ = $1 * $3;}
|T'/'F	{$$ = $1 / $3;}
|F	{$$ = $1;}
;
F: num	{$$ = $1;}
;
%%
int main(){
	printf("Enter the expression \n");
	yyparse();
	printf("Valid expression");
	return 0;
}

yyerror(char *s){
	printf("Invalid Expression");
	exit(0);
}
