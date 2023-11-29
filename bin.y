%{ 
#include<stdio.h> 
#include<stdlib.h> 
%} 
%token zero
%token one 


%% 
S: A {printf(" Result is \n %d", $$);} 
A: A X {$$=$1*2+$2;} 
| X {$$=$1;} 
X:zero {$$=$1;} 
|one {$$=$1;}; 
%% 

int main() 
{ 
	printf("Enter the binary number : \n ");
	yyparse(); 
	return 0;
} 

yyerror(char *s) 
{ 
	printf("Invalid");
	exit(0);
} 


