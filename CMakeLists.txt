cmake_minimum_required(VERSION 3.7)

project(world)

set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

file(GLOB_RECURSE SOURCES "source/common/*.cpp" "source/LUA/*.c" "source/WorldServer/*.cpp")

add_executable(world ${SOURCES})

option(BUILD_TESTING "" OFF)

execute_process(COMMAND mysql_config --cflags
    OUTPUT_VARIABLE MYSQL_CFLAGS OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND mysql_config --libs
    OUTPUT_VARIABLE MYSQL_LIBS OUTPUT_STRIP_TRAILING_WHITESPACE)

target_compile_definitions(world PRIVATE WORLD)
target_compile_options(world PUBLIC ${MYSQL_CFLAGS})
target_include_directories(world PUBLIC source/depends/mariadb-10.1.19/include)
target_link_libraries(world ${CPR_LIBRARIES} ${MYSQL_LIBS})