# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/zigal0/JetBrains/apps/CLion/ch-0/212.5284.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zigal0/JetBrains/apps/CLion/ch-0/212.5284.51/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Mandelbrot.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Mandelbrot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mandelbrot.dir/flags.make

CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o: ../src/parallel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o -c /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/src/parallel.cpp

CMakeFiles/Mandelbrot.dir/src/parallel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mandelbrot.dir/src/parallel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/src/parallel.cpp > CMakeFiles/Mandelbrot.dir/src/parallel.cpp.i

CMakeFiles/Mandelbrot.dir/src/parallel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mandelbrot.dir/src/parallel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/src/parallel.cpp -o CMakeFiles/Mandelbrot.dir/src/parallel.cpp.s

# Object files for target Mandelbrot
Mandelbrot_OBJECTS = \
"CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o"

# External object files for target Mandelbrot
Mandelbrot_EXTERNAL_OBJECTS =

Mandelbrot: CMakeFiles/Mandelbrot.dir/src/parallel.cpp.o
Mandelbrot: CMakeFiles/Mandelbrot.dir/build.make
Mandelbrot: CMakeFiles/Mandelbrot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Mandelbrot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mandelbrot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mandelbrot.dir/build: Mandelbrot
.PHONY : CMakeFiles/Mandelbrot.dir/build

CMakeFiles/Mandelbrot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mandelbrot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mandelbrot.dir/clean

CMakeFiles/Mandelbrot.dir/depend:
	cd /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug /home/zigal0/dev/Prog/ParProg/OpenMP/Mandelbrot/cmake-build-debug/CMakeFiles/Mandelbrot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mandelbrot.dir/depend

