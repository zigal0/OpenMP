cmake_minimum_required(VERSION 3.20)
project(Mandelbrot)

# added -fopenmp
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++2a -fopenmp")

add_executable(Mandelbrot
        src/parallel.cpp
#        src/consistent.cpp
#        src/test.cpp
        )
