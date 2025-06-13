This project implements a simple language parser using Yacc and Lex.

Project Description
The parser can handle basic constructs like:

Conditional statements (if-else)
Printing of integer values
The parser takes an input file and performs syntax checking. If the input is valid, it writes a message to the output file. The parser can also evaluate and print the result of simple expressions during parsing for the PRINT statement.

Technologies Used
Yacc: Yet Another Compiler Compiler - for defining the grammar
Lex: - for lexical analysis (tokenization)

How to Use the Project
Compile the lex and yacc files

You will need a Yacc and Lex compiler installed on your system. The provided files are project.y (your Yacc file) and project.l (your Lex file). Compile them using the commands specific to your Yacc/Lex implementation.

For example, with bison (a Yacc compiler) and flex (a Lex compiler), you would use:

Bash
bison -d project.y
flex project.l


This will generate project.tab.h and lex.yy.c (from scan.l).


Run the program

Compile your C program along with the lex and yacc objects. The program expects two arguments:

Input file path (containing the program written in the supported language)
Output file path (where the parser will write its message)
For example:

Bash
gcc main.c lex.yy.c calc.tab.c -o calc
./calc input.txt output.txt
Use code with caution.
content_copy
Replace input.txt and output.txt with your actual file paths.

Example Input File (input.txt)
if (5 > 3) {
  print(10);
} else {
  print(5);
}
