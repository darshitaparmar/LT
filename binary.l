%{ 
  /* Definition section */
  #include<stdio.h> 
  #include<stdlib.h> 
  #include"y.tab.h" 
  int yyerror(char *);
  extern int yylval; 
%} 
  
/* Rule Section */
%% 
[0] {yylval=0;return ZERODIGIT;} 
[1] {yylval=1;return ONEDIGIT;}    
[ \t] {;} 
\n return 0; 
. yyerror("Invalid Character"); 
%% 
  
    
int yywrap(void)   
 {   
  return 1;   
 }   

