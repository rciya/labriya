%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
%}
%token num
%left '+''-'
%left '*''/''%'
%right	'^'
%%
S:E	{printf("Result is : %d", $$);}
;
E:E'+'E	{$$ = $1 + $3;}
|E'-'E	{$$ = $1 - $3;}
|E'/'E	{$$ = $1 / $3;}
|E'*'E	{$$ = $1 * $3;}
|E'%'E	{$$ = $1 % $3;}
|E'^'E	{$$ = pow($1,$3);}
|'('E')'	{$$ = $2;}
|num	{$$ = $1;}
;
%%
int main(){
	printf("Enter the expression \n");
	yyparse();
	return 0;
}

yyerror(){
	printf("Invalid Expression");
	exit(0);
}
