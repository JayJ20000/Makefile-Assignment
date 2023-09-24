# Jalen Jones
# Makefile
# 9/23/2023

CC = g++
CFLAGS = -g -Wall -Wextra

# efault entry using for "make clean"

default: officer

# All the object files needed to create the executable file.  For this assignment:
# Employee.o, Officer.o, Supervisor.o, main.o

employee:    Employee.o Officer.o Supervisor.o main.o 
    $(CC) $(CFlags) -o employee Employee.o Officer.o Supervisor.o main.o

# The rule to create Employee.o

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

# The rule to create Officer.o

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

# The rule to create Supervisor.o

Supervisor.o:	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

# The rule to create main.o

main.o:	main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp

# Now the logic to clean using "make clean"

clean:
	$(RM) officer *.o *~