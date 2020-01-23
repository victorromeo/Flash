cmake_minimum_required(VERSION 3.0)
# add all the *.c files as sources
FILE(GLOB SRC_FILES ../../main.c ../rs232.c)
# make this output a shared library (with .so output)
add_executable (flash ../../main.c ../rs232.c)
# be sure to include the current source directory for header files
target_include_directories (flash PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../.. )
# add the following required libraries:
# Threads, Math, Crypt, and RealTime
# target_link_libraries(flash)
