# Source, Executable, Includes, Library 
INCL 			=		src1.h											
ILOCATION		= 		-I ../src2
SRC 			=		add.c div.c
OBJ 			=		$(SRC:.c=.o)

# Compiler, Linker 
CC 				=		/usr/bin/gcc
RM 				=		/bin/rm -f
CFLAGS 			=		-c -ansi -Wall $(ILOCATION)

# Make all
all: $(OBJ)

# Compile and Assemble C Source Files into Object Files
%.o: %.c
	$(CC) $(CFLAGS) $<
	
# Objects depend on these Libraries
$(OBJ): $(INCL)

# Clean Up Objects, Exectuables, Dumps out of source directory
.PHONY: clean
clean:
	$(RM) $(OBJ) $(EXE) core
