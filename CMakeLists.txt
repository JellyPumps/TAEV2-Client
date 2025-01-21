cmake_minimum_required(VERSION 3.20)
project(TAEV2_Client)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include(FetchContent)

if(APPLE AND CMAKE_OSX_ARCHITECTURES MATCHES "arm64")
    message(STATUS "Building for Apple Silicon")

    FetchContent_Declare(SFML
            URL "https://artifacts.sfml-dev.org/by-branch/master/macos-clang-arm64.tar.gz"
    )
    option(SFML_BUILD_NETWORK "Build network" OFF)
    FetchContent_MakeAvailable(SFML)
else ()
    FetchContent_Declare(SFML
            GIT_REPOSITORY "https://github.com/SFML/SFML"
            GIT_TAG "2.6.1"
            GIT_SHALLOW ON
    )
    option(SFML_BUILD_NETWORK "Build network" OFF)
    FetchContent_MakeAvailable(SFML)
endif ()

find_package(OpenGL REQUIRED)

include_directories(include)

if(APPLE)
    add_definitions(-DPLATFORM_APPLE)
elseif(WIN32)
    add_definitions(-DPLATFORM_WINDOWS)
    # For DirectX 11
    add_definitions(-DDX11)
elseif(UNIX)
    add_definitions(-DPLATFORM_LINUX)
endif()

add_executable(client
        include/imgui.h
        include/imgui_internal.h
        include/imstb_rectpack.h
        include/imstb_textedit.h
        include/imstb_truetype.h
        include/imconfig-SFML.h
        include/imgui-SFML_export.h
        include/imgui-SFML.h
        include/imgui_impl_opengl3.h
        include/imgui_impl_opengl3_loader.h
        include/imgui_impl_dx11.h
        include/imgui_impl_osx.h
        include/imgui_impl_win32.h
        src/imgui.cpp
        src/imgui_draw.cpp
        src/imgui_tables.cpp
        src/imgui_widgets.cpp
        src/imgui_impl_opengl3.cpp
        src/imgui-SFML.cpp
        src/main.cpp
        src/music.cpp
        include/music.hpp
        include/scene.hpp
        include/scene_manager.hpp
        src/scene_manager.cpp
        include/infinite_scrolling.hpp
        src/infinite_scrolling.cpp
)

if(PLATFORM_APPLE)
    # For macOS, include osx.mm file
    target_sources(client PRIVATE src/imgui_impl_osx.mm)
elseif(PLATFORM_WINDOWS)
    # For Windows and DX11, include DirectX 11 specific files
    target_sources(client PRIVATE
            src/imgui_impl_dx11.cpp
            src/imgui_impl_win32.cpp
    )
elseif(PLATFORM_LINUX)
    # No platform-specific files for Linux
    message(STATUS "Building for Linux, no platform-specific code")
endif()

target_link_libraries(client PRIVATE
        sfml-system
        sfml-window
        sfml-graphics
        sfml-audio
        OpenGL::GL
)

add_custom_command(TARGET client POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${PROJECT_SOURCE_DIR}/assets $<TARGET_FILE_DIR:client>/assets
)