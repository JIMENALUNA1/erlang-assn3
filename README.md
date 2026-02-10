# erlang-assn3
# Assignment 3: Basic Erlang Programming

## Team Members
- Jimena Rivera
-  Grace Odondi
- Destiny okonwo

## Files
- p1.erl : Reads one input and performs the required computation once.
- p2.erl : Repeats the input/computation cycle until the user enters 0 (uses tail recursion).

## How to Compile and Run

Open a terminal in this directory and start Erlang:

erl

Compile the modules:

c(p1).
c(p2).

Run:

p1:main().
p2:main().

## Notes
- Input must be entered as a valid Erlang term (e.g., 7.  -3.  0.)
- If the input is not an integer, the program prints: not an integer
- If input is negative, the program prints |N|^7
- If input is positive and divisible by 7, the program prints the 5th root
- If input is positive and not divisible by 7, the program prints the factorial
