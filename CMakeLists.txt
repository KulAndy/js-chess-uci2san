cmake_minimum_required(VERSION 3.0)

project(uci2san)

add_executable(uci2san main.cpp)

install(TARGETS uci2san RUNTIME DESTINATION bin)
