cmake_minimum_required(VERSION 3.0.2)

project(tmp_neuro-client CXX)
find_package(tmp_neuro REQUIRED)
add_executable(tmp_neuro-client main.cpp)
target_link_libraries(tmp_neuro-client tmp_neuro)
