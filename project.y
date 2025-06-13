%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char *);
extern FILE *yyin;
extern FILE *yyout;
%}

%token IF ELSE PRINT
%token NUM ID

%%
S : program { fprintf(yyout,"Valid input string\n"); }
  | ;

program : statement 
        | program statement
        ;

statement : if_else_statement
          | print_statement
          ;

if_else_statement : IF '(' expression ')' '{' program '}' %prec LOWER_THAN_ELSE
                  | IF '(' expression ')' '{' program '}' ELSE '{' program '}'
                  ;

expression : NUM { $$ = $1; }
           | ID  { $$ = $1; }
           | PRINT '(' expression ')' ';' { $$ = $3; fprintf(yyout,"%d\n", $$); } // Handle printing of NUM expressions
           ;

print_statement : PRINT '(' expression ')' ';' { $$ = $3; fprintf(yyout,"%d\n", $$); } // Handle printing of NUM expressions
                ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyin= fopen("input.txt","r");
    yyout= fopen("output.txt","w");
    yyparse();
    fclose(yyin); // Close input file
    fclose(yyout); // Close output file
    return 0;
}