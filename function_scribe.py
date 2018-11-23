import sys
import os

def main():
    lines = [line.strip() for line in sys.stdin]
    even_line_numbers = [num for num in range(len(lines)) if num % 2 == 0]
    functions = [(lines[i], lines[i+1]) for i in even_line_numbers]
    for func, impl in functions:
        declaration = "function {}\n\t{}\nend".format(func, impl)
        save = "funcsave {}".format(func)
        print(declaration)
        print(save)


if __name__ == '__main__':
    main()
