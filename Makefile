output.o: main.o MyThread.o Thread.o
	g++ main.o MyThread.o Thread.o -lpthread -o output

main.o: main.cpp Thread.h MyThread.h
	g++ -c main.cpp

Thread.o: Thread.cpp Thread.h
	g++ -c Thread.cpp

MyThread.o: MyThread.cpp MyThread.h Thread.h
	g++ -c MyThread.cpp
