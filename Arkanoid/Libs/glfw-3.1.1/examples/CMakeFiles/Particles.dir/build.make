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
include examples/CMakeFiles/Particles.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Particles.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Particles.dir/flags.make

examples/CMakeFiles/Particles.dir/particles.c.o: examples/CMakeFiles/Particles.dir/flags.make
examples/CMakeFiles/Particles.dir/particles.c.o: examples/particles.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/Particles.dir/particles.c.o"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Particles.dir/particles.c.o   -c /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/particles.c

examples/CMakeFiles/Particles.dir/particles.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Particles.dir/particles.c.i"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/particles.c > CMakeFiles/Particles.dir/particles.c.i

examples/CMakeFiles/Particles.dir/particles.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Particles.dir/particles.c.s"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/particles.c -o CMakeFiles/Particles.dir/particles.c.s

examples/CMakeFiles/Particles.dir/particles.c.o.requires:
.PHONY : examples/CMakeFiles/Particles.dir/particles.c.o.requires

examples/CMakeFiles/Particles.dir/particles.c.o.provides: examples/CMakeFiles/Particles.dir/particles.c.o.requires
	$(MAKE) -f examples/CMakeFiles/Particles.dir/build.make examples/CMakeFiles/Particles.dir/particles.c.o.provides.build
.PHONY : examples/CMakeFiles/Particles.dir/particles.c.o.provides

examples/CMakeFiles/Particles.dir/particles.c.o.provides.build: examples/CMakeFiles/Particles.dir/particles.c.o

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o: examples/CMakeFiles/Particles.dir/flags.make
examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o: deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Particles.dir/__/deps/tinycthread.c.o   -c /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/deps/tinycthread.c

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Particles.dir/__/deps/tinycthread.c.i"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/deps/tinycthread.c > CMakeFiles/Particles.dir/__/deps/tinycthread.c.i

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Particles.dir/__/deps/tinycthread.c.s"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/deps/tinycthread.c -o CMakeFiles/Particles.dir/__/deps/tinycthread.c.s

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.requires:
.PHONY : examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.requires

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.provides: examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f examples/CMakeFiles/Particles.dir/build.make examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.provides

examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.provides.build: examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o

# Object files for target Particles
Particles_OBJECTS = \
"CMakeFiles/Particles.dir/particles.c.o" \
"CMakeFiles/Particles.dir/__/deps/tinycthread.c.o"

# External object files for target Particles
Particles_EXTERNAL_OBJECTS =

examples/Particles.app/Contents/MacOS/Particles: examples/CMakeFiles/Particles.dir/particles.c.o
examples/Particles.app/Contents/MacOS/Particles: examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o
examples/Particles.app/Contents/MacOS/Particles: examples/CMakeFiles/Particles.dir/build.make
examples/Particles.app/Contents/MacOS/Particles: src/libglfw3.a
examples/Particles.app/Contents/MacOS/Particles: examples/CMakeFiles/Particles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable Particles.app/Contents/MacOS/Particles"
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Particles.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Particles.dir/build: examples/Particles.app/Contents/MacOS/Particles
.PHONY : examples/CMakeFiles/Particles.dir/build

examples/CMakeFiles/Particles.dir/requires: examples/CMakeFiles/Particles.dir/particles.c.o.requires
examples/CMakeFiles/Particles.dir/requires: examples/CMakeFiles/Particles.dir/__/deps/tinycthread.c.o.requires
.PHONY : examples/CMakeFiles/Particles.dir/requires

examples/CMakeFiles/Particles.dir/clean:
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/Particles.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Particles.dir/clean

examples/CMakeFiles/Particles.dir/depend:
	cd /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1 /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples /Volumes/42_MBARBARI/graphics/Arkanoid/Libs/glfw-3.1.1/examples/CMakeFiles/Particles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/Particles.dir/depend

