CFLAGS = -g
EXECUTABLE = spintest 
spintest: spintest.o spinlock.o
	gcc -o ${EXECUTABLE} ${CFLAGS} -pthread spinlock.o spintest.o

spintest.o: spintest.c spinlock.h
	gcc -c ${CFLAGS} spintest.c
	
spinlock.o: spinlock.c spinlock.h
	gcc -c ${CFLAGS} spinlock.c 

clean:
	rm -f *.o spintest
	rm -f core*