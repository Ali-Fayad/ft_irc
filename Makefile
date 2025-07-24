# Compiler and flags
NAME = ircserv
CXX = c++
CXXFLAGS = -Wall -Wextra -Werror -std=c++98 -Iinclude

# Directories
SRCDIR = srcs
INCDIR = include
OBJDIR = Obj

# Source and Object Files
SRC = main.cpp Server.cpp Client.cpp Channel.cpp Utils.cpp handleCommand.cpp handling.cpp remove.cpp
SRC := $(addprefix $(SRCDIR)/, $(SRC))
OBJ = $(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

# Default target
all: $(NAME)
	@echo "✅ Build complete: $(NAME)"

# Linking
$(NAME): $(OBJ)
	@echo "🛠️  Compiling ..."
	@echo "🔧 Linking..."
	@$(CXX) $(CXXFLAGS) -o $(NAME) $(OBJ)

# Compilation
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(OBJDIR)
	@$(CXX) $(CXXFLAGS) -c $< -o $@

# Cleaning
clean:
	@echo "🧹 Cleaning object files..."
	@rm -rf $(OBJDIR)

fclean: clean
	@echo "🧹 Cleaning binary..."
	@rm -f $(NAME)

# Rebuild
re: fclean all

