%{
#include<stdio.h>
#include<stdlib.h>

int yyerror(const char *s) {
  fprintf(stderr, "error: %s\n", s);
  return 0;
}

int yylex();
%}

%token FOR WHILE OpenBr CloseBr Increment Decrement SEMIC Assign STRING INTEGER
%token KEYWORDIF KEYWORDELSE COMMA INFINITE 
%token CHAR LT GT EQ LE GE NE MULT INT
%start S
%%
S:
  ST
  {
    printf("\nSyntax is correct.\n");
    exit(0);
  }
  ;

ST:
  expression
  { printf("%s\n", $1 ? "true" : "false"); }
  | mult INT  { 
      printf("Multiplication table for %d:\n", $1);
      int i;
      for (i = 1; i <= 10; i++) {
          printf("%d x %d = %d\n", $1, i, $1 * i);
      }
  }
 
  | IF_STATEMENT
  | LOOP_STATEMENT
  | ELSE_STATEMENT
  | VAR_DEFINITION
  ;

 
mult: MULT INT  { 
  printf("Multiplication table for %d:\n", $2);
  int i;
  for (i = 1; i <= 10; i++) {
      printf("%d x %d = %d\n", $2, i, $2 * i);
  }
}

expression:
    expression LT expression { $$ = $1 < $3; }
    | expression GT expression { $$ = $1 > $3; }
    | expression LE expression { $$ = $1 <= $3; }
    | expression GE expression { $$ = $1 >= $3; }
    | expression EQ expression { $$ = $1 == $3; }
    | expression NE expression { $$ = $1 != $3; }
    | INT
    ;

IF_STATEMENT: 
 KEYWORDIF Assign INT ConditionState INT   // if=2<5
|KEYWORDIF Assign CHAR ConditionState INT   // if=a<5
|KEYWORDIF Assign INT   // if=5
|KEYWORDIF Assign CHAR  // if=a
;

LOOP_STATEMENT:
 FOR LT Variable COMMA Condition COMMA VariableState GT // repeat<int a=0,a<10,a++>
|WHILE Assign CHAR ConditionState INT  // until=a<6
;

ELSE_STATEMENT: 
 KEYWORDELSE Assign INT ConditionState INT   // else=2<5
|KEYWORDELSE Assign CHAR ConditionState INT  // else=a<5
;

VAR_DEFINITION:
      INTEGER Assign INT   // int=5 
    | STRING Assign LT CHAR GT // str=<abc>
;

Variable : CHAR CHAR Assign INT 
         | CHAR CHAR Assign CHAR
 

Condition : CHAR ConditionState INT 
          | CHAR ConditionState CHAR
          

VariableState : CHAR Increment 
              | CHAR Decrement

ConditionState : LT
| GT
| EQ
| LE
| GE
| NE

%%

#include "lex.yy.c"

int main() {
  char expr[100];
  printf("\nIsra Gosterit | 18 07 04 035\n");
  printf("\n------------------------------\n");
  printf("\nMultiplication table: MULT(INT)\n");
  printf("\nFor example: MULT4\n");
  printf("\nFor comparing two numbers just write: 5<6\n");
  printf("\n-----------------------------\n");
  scanf("%s", expr);
  yy_scan_string(expr);
  yyparse();
  return 0;
}