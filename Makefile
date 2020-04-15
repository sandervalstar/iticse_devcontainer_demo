# MMD: automatically resolve included files
# g: include debugging symbols in the generated object file
# Wall: enable all warnings
# std: language standard to compile for
CXXFLAGS=-MMD -g -Wall -std=c++11

# Set which compiler to use
CC=c++

default: init main
main:
	$(CC) $(CXXFLAGS) -c src/main.cpp -o build/main.o
	$(CC) $(CXXFLAGS) -o build/main build/main.o
build_test: default
	$(CC) $(CXXFLAGS) -c test/test_greeter.cpp -o build/test_greeter.o
	$(CC) $(CXXFLAGS) -o build/test_greeter build/test_greeter.o
clean:
	rm -rf build
init:
	mkdir -p build
