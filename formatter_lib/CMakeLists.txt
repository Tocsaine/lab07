cmake_minimum_required(VERSION 3.22 FATAL_ERROR)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(formatter)

add_library(formatter_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/d/formatter.cpp)
