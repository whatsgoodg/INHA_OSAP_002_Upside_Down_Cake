# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oss/google_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oss/google_test/build

# Include any dependencies generated for this target.
include CMakeFiles/unitTestRunner.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/unitTestRunner.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/unitTestRunner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/unitTestRunner.dir/flags.make

CMakeFiles/unitTestRunner.dir/test_runner.cc.o: CMakeFiles/unitTestRunner.dir/flags.make
CMakeFiles/unitTestRunner.dir/test_runner.cc.o: /home/oss/google_test/test_runner.cc
CMakeFiles/unitTestRunner.dir/test_runner.cc.o: CMakeFiles/unitTestRunner.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/oss/google_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/unitTestRunner.dir/test_runner.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/unitTestRunner.dir/test_runner.cc.o -MF CMakeFiles/unitTestRunner.dir/test_runner.cc.o.d -o CMakeFiles/unitTestRunner.dir/test_runner.cc.o -c /home/oss/google_test/test_runner.cc

CMakeFiles/unitTestRunner.dir/test_runner.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/unitTestRunner.dir/test_runner.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oss/google_test/test_runner.cc > CMakeFiles/unitTestRunner.dir/test_runner.cc.i

CMakeFiles/unitTestRunner.dir/test_runner.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/unitTestRunner.dir/test_runner.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oss/google_test/test_runner.cc -o CMakeFiles/unitTestRunner.dir/test_runner.cc.s

# Object files for target unitTestRunner
unitTestRunner_OBJECTS = \
"CMakeFiles/unitTestRunner.dir/test_runner.cc.o"

# External object files for target unitTestRunner
unitTestRunner_EXTERNAL_OBJECTS =

unitTestRunner: CMakeFiles/unitTestRunner.dir/test_runner.cc.o
unitTestRunner: CMakeFiles/unitTestRunner.dir/build.make
unitTestRunner: libcommon_library.a
unitTestRunner: /usr/local/lib/libgtest.a
unitTestRunner: CMakeFiles/unitTestRunner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/oss/google_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable unitTestRunner"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unitTestRunner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/unitTestRunner.dir/build: unitTestRunner
.PHONY : CMakeFiles/unitTestRunner.dir/build

CMakeFiles/unitTestRunner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unitTestRunner.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unitTestRunner.dir/clean

CMakeFiles/unitTestRunner.dir/depend:
	cd /home/oss/google_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oss/google_test /home/oss/google_test /home/oss/google_test/build /home/oss/google_test/build /home/oss/google_test/build/CMakeFiles/unitTestRunner.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/unitTestRunner.dir/depend

