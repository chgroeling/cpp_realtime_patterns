# -----------------------------------------------
# Available patterns
# -----------------------------------------------
PATTERNS =
PATTERNS += state_pattern/state_pattern_enum 
PATTERNS += state_pattern/state_pattern_shared_ptr 

PATTERNS += state_machine/state_machine_simple 
PATTERNS += state_machine/state_machine_ptr2member

PATTERNS += data_access_object/dao_vector
PATTERNS += data_access_object/dao_static_array

# -----------------------------------------------
# Options
# -----------------------------------------------
GENERATE_BIN = n

CC_FLAGS = -O0 -g -std=c++17 -fno-exceptions

TOOL_CHAIN_DIR =
TOOL_CHAIN_DIR = C:/Tools/gcc-arm-none-eabi-9-2019-q4-major/bin/
#TOOL_CHAIN_DIR = C:/Tools/atk-20.08/MinGW/bin/

TOOL_CHAIN_POSTFIX = 
TOOL_CHAIN_POSTFIX = arm-none-eabi-

# Compiler
CC = $(TOOL_CHAIN_DIR)$(TOOL_CHAIN_POSTFIX)g++

# Assembly from obj
OBJDUMP = $(TOOL_CHAIN_DIR)$(TOOL_CHAIN_POSTFIX)objdump

RM = rm
MKDIR_P = mkdir -p
BIN_DIR = ./bin
OBJ_DIR = ./obj
ASM_DIR = ./asm

define GENERATE_OBJ_TARGET
$(1) : ${OBJ_DIR}/$(1).o 
endef

define GENERATE_ASM_TARGET
$(1) : ${ASM_DIR}/$(1).s
endef

define GENERATE_BIN_TARGET
$(1) : ${BIN_DIR}/$(1).exe 
endef

PATTERNS_DIRS = $(dir $(PATTERNS))
.PHONY: all clean directories $(PATTERNS)

all: directories $(PATTERNS)
	
# Generate targets for each pattern
$(foreach i,$(PATTERNS),$(eval $(call GENERATE_OBJ_TARGET,$(i)))) 
$(foreach i,$(PATTERNS),$(eval $(call GENERATE_ASM_TARGET,$(i)))) 

# Only build executable if requested
ifeq ($(GENERATE_BIN),y)
$(foreach i,$(PATTERNS),$(eval $(call GENERATE_BIN_TARGET,$(i)))) 
endif

${BIN_DIR}/%.exe: ${OBJ_DIR}/%.o
	$(CC) $< -o $@

${ASM_DIR}/%.s: ${OBJ_DIR}/%.o
	$(OBJDUMP)  -C -S $< > $@

${OBJ_DIR}/%.o: %.cpp
	$(CC) $(CC_FLAGS) -c $< -o $@

# -----------------------------------------------
# Clean rule
# -----------------------------------------------
clean:
	$(RM) -f -r ${BIN_DIR}
	$(RM) -f -r ${OBJ_DIR}
	$(RM) -f -r ${ASM_DIR}

# -----------------------------------------------
# CREATE DIRECTORIES if needed.
# -----------------------------------------------
directories: ${BIN_DIR} ${OBJ_DIR} ${ASM_DIR} 

${BIN_DIR}:
	${MKDIR_P} ${BIN_DIR}
	${MKDIR_P} $(sort $(addprefix ${BIN_DIR}/,$(dir $(PATTERNS))))

${OBJ_DIR}:
	${MKDIR_P} ${OBJ_DIR}
	${MKDIR_P} $(sort $(addprefix ${OBJ_DIR}/,$(dir $(PATTERNS))))

${ASM_DIR}:
	${MKDIR_P} ${ASM_DIR}
	${MKDIR_P} $(sort $(addprefix ${ASM_DIR}/,$(dir $(PATTERNS))))



