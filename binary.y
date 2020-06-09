%{ 
  /* Definition section */
  #include<stdio.h> 
  #include<stdlib.h> 
  int yylex(void);
  int yyerror(char *); 
%} 
%token ZERODIGIT ONEDIGIT 
  
/* Rule Section */
%% 
N: L {printf("%d\n", $$);} 
L: L B {$$=$1*2+$2;} 
| B {$$=$1;} 
B:ZERODIGIT {$$=$1;} 
|ONEDIGIT {$$=$1;}; 
%% 
  

int main() 
{
printf("Conversion of Binary to Decimal:\n");
while(1){

yyparse();} 
return 0;
} 
  
int yyerror(char *s) 
{ 
  printf("%s\n",s); 
} 
