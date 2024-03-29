# Source, Executable, Includes, Library
INCL			= 		calc.h
ILOCATION		=		-I src1 -I src2
SRC				=		calc.c
EXE 			=		calc
LIBRARY1 		=		src1
LIBRARY2		=		src2
OBJS 			=		src2/mul.o src2/sub.o src1/add.o src1/div.o
LIBRARIES		= 		$(LIBRARY1) $(LIBRARY2)
OBJ 			=		$(SRC:.c=.o)

# Compiler, Linker
CC 				=		/usr/bin/gcc
RM 				=		/bin/rm -f
CFLAGS 			=		-c -ansi -Wall $(ILOCATION)
EXEFLAGS		=		-o $(EXE) $(OBJS)
CFDEBUG			=		-ansi -Wall -g -DDEBUG $(ILOCATION) $(EXEFLAGS)

# Make all
.PHONY: all
all: $(LIBRARIES) $(OBJ)
	$(CC) $(EXEFLAGS) $(OBJ)

# Execute the makefile of the libraries
.PHONY: $(LIBRARIES)
$(LIBRARIES):
	@$(MAKE) -C $@

# Compile and Assemble C Source Files into Object Files
%.o: %.c
	$(CC) $(CFLAGS) $<

# Objects depend on these Libraries
$(OBJ): $(INCL)

# Create a gdb Capable Executable with DEBUG flags turned on
debug: debuglib debugobj
	$(CC) $(CFDEBUG) $(SRC)

# creating debug capable objects in subdirectories
debuglib:
	@$(MAKE) debugobj -C $(LIBRARY1)
	@$(MAKE) debugonj -C $(LIBRARY2)

# creating debug capable objects in current directory
debugobj: %.c
	$(CC) $(CFDEBUG) $<

# Clean Up Objects, Exectuables, Dumps out of source directory
.PHONY: clean
clean:
	$(RM) $(OBJ) $(EXE) core

# Cleaning all directories and subdirectories
.PHONY: cleanall
cleanall: clean
	@$(MAKE) clean -C $(LIBRARY1)
	@$(MAKE) clean -C $(LIBRARY2)

# Taking up a backup of the entire hierarchy
.PHONY: backup
backup:
	echo "Backing up directories"
	tar cvf ../Backup.tar *
