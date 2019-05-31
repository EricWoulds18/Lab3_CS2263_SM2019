
COMPILER = gcc
C_FLAGS = -Wall -Wextra


# TODO: add targets to compile LinkedList.c
LinkedList: LinkedList.o
	$(COMPILER) $(C_FLAGS) -o LinkedList LinkedList.o

LinkedList.o: LinkedList.c
	$(COMPILER) $(C_FLAGS) -c LinkedList.c


# TODO: add a target that can run all the tests below.
test: test1 test2 test3


# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data

# If we are using the same bash script as other assignments/labs:

test1: LinkedList
	./LinkedList < Data/test1.input > test1.result
	./TestPassed.sh test1.result Data/test1.expected

test2: LinkedList
	./LinkedList < Data/test2.input > test2.result
	./TestPassed.sh test2.result Data/test2.expected

test3: LinkedList
	./LinkedList < Data/test3.input > test3.result
	./TestPassed.sh test3.result Data/test3.expected
