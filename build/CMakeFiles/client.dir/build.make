# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sarthak/Documents/TAEV2-Client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sarthak/Documents/TAEV2-Client/build

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/codegen:
.PHONY : CMakeFiles/client.dir/codegen

CMakeFiles/client.dir/src/imgui.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui.cpp
CMakeFiles/client.dir/src/imgui.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/src/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui.cpp.o -MF CMakeFiles/client.dir/src/imgui.cpp.o.d -o CMakeFiles/client.dir/src/imgui.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui.cpp

CMakeFiles/client.dir/src/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui.cpp > CMakeFiles/client.dir/src/imgui.cpp.i

CMakeFiles/client.dir/src/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui.cpp -o CMakeFiles/client.dir/src/imgui.cpp.s

CMakeFiles/client.dir/src/imgui_draw.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui_draw.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui_draw.cpp
CMakeFiles/client.dir/src/imgui_draw.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/src/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui_draw.cpp.o -MF CMakeFiles/client.dir/src/imgui_draw.cpp.o.d -o CMakeFiles/client.dir/src/imgui_draw.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui_draw.cpp

CMakeFiles/client.dir/src/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui_draw.cpp > CMakeFiles/client.dir/src/imgui_draw.cpp.i

CMakeFiles/client.dir/src/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui_draw.cpp -o CMakeFiles/client.dir/src/imgui_draw.cpp.s

CMakeFiles/client.dir/src/imgui_tables.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui_tables.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui_tables.cpp
CMakeFiles/client.dir/src/imgui_tables.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client.dir/src/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui_tables.cpp.o -MF CMakeFiles/client.dir/src/imgui_tables.cpp.o.d -o CMakeFiles/client.dir/src/imgui_tables.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui_tables.cpp

CMakeFiles/client.dir/src/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui_tables.cpp > CMakeFiles/client.dir/src/imgui_tables.cpp.i

CMakeFiles/client.dir/src/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui_tables.cpp -o CMakeFiles/client.dir/src/imgui_tables.cpp.s

CMakeFiles/client.dir/src/imgui_widgets.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui_widgets.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui_widgets.cpp
CMakeFiles/client.dir/src/imgui_widgets.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/client.dir/src/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui_widgets.cpp.o -MF CMakeFiles/client.dir/src/imgui_widgets.cpp.o.d -o CMakeFiles/client.dir/src/imgui_widgets.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui_widgets.cpp

CMakeFiles/client.dir/src/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui_widgets.cpp > CMakeFiles/client.dir/src/imgui_widgets.cpp.i

CMakeFiles/client.dir/src/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui_widgets.cpp -o CMakeFiles/client.dir/src/imgui_widgets.cpp.s

CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui_impl_opengl3.cpp
CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o -MF CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui_impl_opengl3.cpp

CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui_impl_opengl3.cpp > CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.i

CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui_impl_opengl3.cpp -o CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.s

CMakeFiles/client.dir/src/imgui-SFML.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/imgui-SFML.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/imgui-SFML.cpp
CMakeFiles/client.dir/src/imgui-SFML.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/client.dir/src/imgui-SFML.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/imgui-SFML.cpp.o -MF CMakeFiles/client.dir/src/imgui-SFML.cpp.o.d -o CMakeFiles/client.dir/src/imgui-SFML.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/imgui-SFML.cpp

CMakeFiles/client.dir/src/imgui-SFML.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/imgui-SFML.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/imgui-SFML.cpp > CMakeFiles/client.dir/src/imgui-SFML.cpp.i

CMakeFiles/client.dir/src/imgui-SFML.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/imgui-SFML.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/imgui-SFML.cpp -o CMakeFiles/client.dir/src/imgui-SFML.cpp.s

CMakeFiles/client.dir/src/gui.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/gui.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/gui.cpp
CMakeFiles/client.dir/src/gui.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/client.dir/src/gui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/gui.cpp.o -MF CMakeFiles/client.dir/src/gui.cpp.o.d -o CMakeFiles/client.dir/src/gui.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/gui.cpp

CMakeFiles/client.dir/src/gui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/gui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/gui.cpp > CMakeFiles/client.dir/src/gui.cpp.i

CMakeFiles/client.dir/src/gui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/gui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/gui.cpp -o CMakeFiles/client.dir/src/gui.cpp.s

CMakeFiles/client.dir/src/state.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/state.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/state.cpp
CMakeFiles/client.dir/src/state.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/client.dir/src/state.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/state.cpp.o -MF CMakeFiles/client.dir/src/state.cpp.o.d -o CMakeFiles/client.dir/src/state.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/state.cpp

CMakeFiles/client.dir/src/state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/state.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/state.cpp > CMakeFiles/client.dir/src/state.cpp.i

CMakeFiles/client.dir/src/state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/state.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/state.cpp -o CMakeFiles/client.dir/src/state.cpp.s

CMakeFiles/client.dir/src/state_manager.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/state_manager.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/state_manager.cpp
CMakeFiles/client.dir/src/state_manager.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/client.dir/src/state_manager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/state_manager.cpp.o -MF CMakeFiles/client.dir/src/state_manager.cpp.o.d -o CMakeFiles/client.dir/src/state_manager.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/state_manager.cpp

CMakeFiles/client.dir/src/state_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/state_manager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/state_manager.cpp > CMakeFiles/client.dir/src/state_manager.cpp.i

CMakeFiles/client.dir/src/state_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/state_manager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/state_manager.cpp -o CMakeFiles/client.dir/src/state_manager.cpp.s

CMakeFiles/client.dir/src/menu_state.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/menu_state.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/menu_state.cpp
CMakeFiles/client.dir/src/menu_state.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/client.dir/src/menu_state.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/menu_state.cpp.o -MF CMakeFiles/client.dir/src/menu_state.cpp.o.d -o CMakeFiles/client.dir/src/menu_state.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/menu_state.cpp

CMakeFiles/client.dir/src/menu_state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/menu_state.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/menu_state.cpp > CMakeFiles/client.dir/src/menu_state.cpp.i

CMakeFiles/client.dir/src/menu_state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/menu_state.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/menu_state.cpp -o CMakeFiles/client.dir/src/menu_state.cpp.s

CMakeFiles/client.dir/src/parallax_layer.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/parallax_layer.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/parallax_layer.cpp
CMakeFiles/client.dir/src/parallax_layer.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/client.dir/src/parallax_layer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/parallax_layer.cpp.o -MF CMakeFiles/client.dir/src/parallax_layer.cpp.o.d -o CMakeFiles/client.dir/src/parallax_layer.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/parallax_layer.cpp

CMakeFiles/client.dir/src/parallax_layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/parallax_layer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/parallax_layer.cpp > CMakeFiles/client.dir/src/parallax_layer.cpp.i

CMakeFiles/client.dir/src/parallax_layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/parallax_layer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/parallax_layer.cpp -o CMakeFiles/client.dir/src/parallax_layer.cpp.s

CMakeFiles/client.dir/src/menu_background.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/menu_background.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/menu_background.cpp
CMakeFiles/client.dir/src/menu_background.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/client.dir/src/menu_background.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/menu_background.cpp.o -MF CMakeFiles/client.dir/src/menu_background.cpp.o.d -o CMakeFiles/client.dir/src/menu_background.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/menu_background.cpp

CMakeFiles/client.dir/src/menu_background.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/menu_background.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/menu_background.cpp > CMakeFiles/client.dir/src/menu_background.cpp.i

CMakeFiles/client.dir/src/menu_background.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/menu_background.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/menu_background.cpp -o CMakeFiles/client.dir/src/menu_background.cpp.s

CMakeFiles/client.dir/src/network_state.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/network_state.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/network_state.cpp
CMakeFiles/client.dir/src/network_state.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/client.dir/src/network_state.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/network_state.cpp.o -MF CMakeFiles/client.dir/src/network_state.cpp.o.d -o CMakeFiles/client.dir/src/network_state.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/network_state.cpp

CMakeFiles/client.dir/src/network_state.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/network_state.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/network_state.cpp > CMakeFiles/client.dir/src/network_state.cpp.i

CMakeFiles/client.dir/src/network_state.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/network_state.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/network_state.cpp -o CMakeFiles/client.dir/src/network_state.cpp.s

CMakeFiles/client.dir/src/music.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/music.cpp.o: /home/sarthak/Documents/TAEV2-Client/src/music.cpp
CMakeFiles/client.dir/src/music.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/client.dir/src/music.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/music.cpp.o -MF CMakeFiles/client.dir/src/music.cpp.o.d -o CMakeFiles/client.dir/src/music.cpp.o -c /home/sarthak/Documents/TAEV2-Client/src/music.cpp

CMakeFiles/client.dir/src/music.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/src/music.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sarthak/Documents/TAEV2-Client/src/music.cpp > CMakeFiles/client.dir/src/music.cpp.i

CMakeFiles/client.dir/src/music.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/music.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sarthak/Documents/TAEV2-Client/src/music.cpp -o CMakeFiles/client.dir/src/music.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/imgui.cpp.o" \
"CMakeFiles/client.dir/src/imgui_draw.cpp.o" \
"CMakeFiles/client.dir/src/imgui_tables.cpp.o" \
"CMakeFiles/client.dir/src/imgui_widgets.cpp.o" \
"CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/client.dir/src/imgui-SFML.cpp.o" \
"CMakeFiles/client.dir/src/gui.cpp.o" \
"CMakeFiles/client.dir/src/state.cpp.o" \
"CMakeFiles/client.dir/src/state_manager.cpp.o" \
"CMakeFiles/client.dir/src/menu_state.cpp.o" \
"CMakeFiles/client.dir/src/parallax_layer.cpp.o" \
"CMakeFiles/client.dir/src/menu_background.cpp.o" \
"CMakeFiles/client.dir/src/network_state.cpp.o" \
"CMakeFiles/client.dir/src/music.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client: CMakeFiles/client.dir/src/imgui.cpp.o
client: CMakeFiles/client.dir/src/imgui_draw.cpp.o
client: CMakeFiles/client.dir/src/imgui_tables.cpp.o
client: CMakeFiles/client.dir/src/imgui_widgets.cpp.o
client: CMakeFiles/client.dir/src/imgui_impl_opengl3.cpp.o
client: CMakeFiles/client.dir/src/imgui-SFML.cpp.o
client: CMakeFiles/client.dir/src/gui.cpp.o
client: CMakeFiles/client.dir/src/state.cpp.o
client: CMakeFiles/client.dir/src/state_manager.cpp.o
client: CMakeFiles/client.dir/src/menu_state.cpp.o
client: CMakeFiles/client.dir/src/parallax_layer.cpp.o
client: CMakeFiles/client.dir/src/menu_background.cpp.o
client: CMakeFiles/client.dir/src/network_state.cpp.o
client: CMakeFiles/client.dir/src/music.cpp.o
client: CMakeFiles/client.dir/build.make
client: CMakeFiles/client.dir/compiler_depend.ts
client: _deps/sfml-build/lib/libsfml-graphics.so.2.6.1
client: _deps/sfml-build/lib/libsfml-audio.so.2.6.1
client: _deps/sfml-build/lib/libsfml-window.so.2.6.1
client: _deps/sfml-build/lib/libsfml-system.so.2.6.1
client: /usr/lib/libGLX.so
client: /usr/lib/libOpenGL.so
client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sarthak/Documents/TAEV2-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy_directory /home/sarthak/Documents/TAEV2-Client/assets /home/sarthak/Documents/TAEV2-Client/build/assets

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client
.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /home/sarthak/Documents/TAEV2-Client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sarthak/Documents/TAEV2-Client /home/sarthak/Documents/TAEV2-Client /home/sarthak/Documents/TAEV2-Client/build /home/sarthak/Documents/TAEV2-Client/build /home/sarthak/Documents/TAEV2-Client/build/CMakeFiles/client.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/client.dir/depend
