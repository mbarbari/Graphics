# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Volumes/Data/nfs/zfs-student-2/users/2014/mbarbari/.brew/Cellar/cmake/3.2.1/bin/cmake

# The command to remove a file.
RM = /Volumes/Data/nfs/zfs-student-2/users/2014/mbarbari/.brew/Cellar/cmake/3.2.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1

# Include any dependencies generated for this target.
include examples/CMakeFiles/Gears.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Gears.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Gears.dir/flags.make

examples/CMakeFiles/Gears.dir/gears.c.o: examples/CMakeFiles/Gears.dir/flags.make
examples/CMakeFiles/Gears.dir/gears.c.o: examples/gears.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/Gears.dir/gears.c.o"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Gears.dir/gears.c.o   -c /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/gears.c

examples/CMakeFiles/Gears.dir/gears.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Gears.dir/gears.c.i"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/gears.c > CMakeFiles/Gears.dir/gears.c.i

examples/CMakeFiles/Gears.dir/gears.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Gears.dir/gears.c.s"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/gears.c -o CMakeFiles/Gears.dir/gears.c.s

examples/CMakeFiles/Gears.dir/gears.c.o.requires:
.PHONY : examples/CMakeFiles/Gears.dir/gears.c.o.requires

examples/CMakeFiles/Gears.dir/gears.c.o.provides: examples/CMakeFiles/Gears.dir/gears.c.o.requires
	$(MAKE) -f examples/CMakeFiles/Gears.dir/build.make examples/CMakeFiles/Gears.dir/gears.c.o.provides.build
.PHONY : examples/CMakeFiles/Gears.dir/gears.c.o.provides

examples/CMakeFiles/Gears.dir/gears.c.o.provides.build: examples/CMakeFiles/Gears.dir/gears.c.o

# Object files for target Gears
Gears_OBJECTS = \
"CMakeFiles/Gears.dir/gears.c.o"

# External object files for target Gears
Gears_EXTERNAL_OBJECTS =

examples/Gears.app/Contents/MacOS/Gears: examples/CMakeFiles/Gears.dir/gears.c.o
examples/Gears.app/Contents/MacOS/Gears: examples/CMakeFiles/Gears.dir/build.make
examples/Gears.app/Contents/MacOS/Gears: src/libglfw3.a
examples/Gears.app/Contents/MacOS/Gears: examples/CMakeFiles/Gears.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable Gears.app/Contents/MacOS/Gears"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Gears.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Gears.dir/build: examples/Gears.app/Contents/MacOS/Gears
.PHONY : examples/CMakeFiles/Gears.dir/build

examples/CMakeFiles/Gears.dir/requires: examples/CMakeFiles/Gears.dir/gears.c.o.requires
.PHONY : examples/CMakeFiles/Gears.dir/requires

examples/CMakeFiles/Gears.dir/clean:
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/Gears.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Gears.dir/clean

examples/CMakeFiles/Gears.dir/depend:
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/CMakeFiles/Gears.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/Gears.dir/depend

