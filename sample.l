%{
#include "y.tab.h"
extern int yylval;
%}

%option noyywrap
 
%{
int line_number = 1;
%}

%%

"repeat" {return FOR;}
"until" {return WHILE;}

"if" {return KEYWORDIF;}
"else" {return KEYWORDELSE;}

"=" {return Assign;}
Increment {return Increment;}
Decrement {return Decrement;}

"==" { return EQ; }
"!=" { return NE; }
">"  { return GT; }
">=" { return GE; }
"<" { return LT; }
"<=" { return LE; }

MULT {return MULT;}

OpenBr {return OpenBr;}
CloseBr {return CloseBr;}
SEMIC {return SEMIC;}
COMMA {return COMMA;}

"inf" {return INFINITE;}
"int" {return INTEGER;}
"str" { return STRING; }

[0-9]+ { yylval = atoi(yytext); return INT; }
[a-zA-Z] { yylval = yytext[0]; return CHAR; }
 
%%


 