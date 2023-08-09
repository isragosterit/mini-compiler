# mini-compiler
The grammar in the sample.ly and sample.y files describes a simple programming language that can be used to create expressions, print the multiplication table for a given integer, and create if statements, loops, and else statements.
<h1>1. Syntax </h1>
<h3>1.1 Multiplication Table Syntax</h3>
This represents the Multiplication Table Syntax.

`MULT[NUM]`   
<h3>1.2 Comparison Syntax</h3>
Table represents the Comparison Syntax.

| Meaning  | Syntax  |
|:---------:|:---------:|
| Less Equal  | INT<=INT |
| Greater Equal  | INT>=INT  |
| Greater Than |INT>INT |
| Less Than | INT<INT  |
| Not Equal |INT!=INT |
| Equal |INT==INT   |

<h3>1.3 If Syntax</h3>

| Meaning          | Syntax            |
|:----------------:|:-----------------:|
| Variable If      | if=CHAR           |
| Comparative If   | if= INT/CHAR<INT  |
| Comparative If   | if= INT/CHAR<=INT |
| Comparative If   | if= INT/CHAR>INT  |
| Comparative If   | if= INT/CHAR>=INT |
| Comparative If   | if=INT/CHAR       |

<h3>1.4 Loop Syntax</h3>

| Meaning          | Syntax            |
|:----------------:|:-----------------:|
| For Loop  | tekrar[ VAR++ , VAR < INT, TYPE a  = INT ] |        |
|Infinite For Loop  | repeat=inf |
| While Loop  | until=CHAR<INT |
| Infinite While Loop  | until=inf   |

<h3>1.5 Else Syntax</h3>

| Meaning          | Syntax            |
|:----------------:|:-----------------:|
| Comparative Else    | else=INT/CHAR<=INT  |
| Comparative Else   | else=INT/CHAR=>INT  |
| Comparative Else   | else=INT/CHAR<INT  |
| Comparative Else   |else=INT/CHAR>INT  |
| Comparative Else   | else=INT/CHAR==INT  |

<h3>1.6 Definition Variable Syntax</h3>

| Meaning          | Syntax            |
|:----------------:|:-----------------:|
| Integer Definition  | int=5 |
| String Definition   | str= CHAR  |

<h3>Examples</h3>
To generate a multiplication table for a specific integer, enter MULT followed by an integer. For instance, to generate a multiplication table for 6, input MULT6:
<br>

![image](https://github.com/isragosterit/mini-compiler/assets/82115269/02e911eb-a93a-4e4b-8b93-edc7b6f47d74)

<br>
This represents the comparison process:
<br>

![image](https://github.com/isragosterit/mini-compiler/assets/82115269/72b7e279-c2ea-41a4-b574-56e7d3800266)

<br>
This represents the definition variable process:
<br>

![image](https://github.com/isragosterit/mini-compiler/assets/82115269/27d7df0e-04a1-4d6c-80db-334865d59405)

<br>
