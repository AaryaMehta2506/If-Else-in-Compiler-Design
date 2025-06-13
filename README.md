# 🧠 If-Else Statement Parser using Lex & Yacc

This project implements a **simple language parser** that handles basic control flow and print statements using **Lex** for lexical analysis and **Yacc (Bison)** for parsing.

It demonstrates compiler design principles by supporting conditional logic and integer output using an input file written in a mini-language.

## 📘 About
The parser processes a custom input language with the following features:
- `if`-`else` conditional branching
- Integer-based `print()` statements
- Basic expression handling
- Syntax validation with meaningful output

## ⚙️ Technologies Used
- **Lex (Flex)** – Tokenization / lexical analysis
- **Yacc (Bison)** – Grammar / syntax parsing
- **C** – For integration and execution

## 🗂️ Project Structure
Compiler-Design-IfElse-Parser/
├── project.y # Yacc grammar file
├── project.l # Lex scanner file
├── project.tab.c # Bison-generated parser
├── project.tab.h # Bison-generated header
├── lex.yy.c # Flex-generated scanner
├── input.txt # Sample input code
├── output.txt # Output result from execution
├── a.exe # Compiled executable (Windows)
└── readme.txt # Original notes


## 📥 Input Example (input.txt)
```
if(condition){
  print(5);
}
else{
  print(4);
}
print(42);
```

## 📤 Output Example (output.txt)
```
5
4
42
Valid input string
```

## 🧪 How to Compile & Run
Ensure you have bison, flex, and gcc installed.
```
bison -d project.y         # Generates project.tab.c and project.tab.h
flex project.l             # Generates lex.yy.c
gcc project.tab.c lex.yy.c -o parser
./parser input.txt > output.txt
```

## 📚 Learning Outcomes
Understanding of parsing rules and shift-reduce parsing

Implementation of conditional control flow using grammar rules

Integrating lexer and parser with semantic actions in C

## 📄 License
This project is licensed under the [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

## 👩‍💻 Author

**Aarya Mehta**  
🔗 [GitHub Profile](https://github.com/AaryaMehta2506)
