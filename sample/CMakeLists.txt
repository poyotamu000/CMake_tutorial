cmake_minimum_required(VERSION 3.10.2)

project(test_cmake CXX)

set(CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE ON)

add_library(tmp_neuro
  SHARED
    hello.cpp
    good_morning.cpp
    )

set_target_properties(tmp_neuro PROPERTIES
  PUBLIC_HEADER "hello.hpp;good_morning.hpp"
  )

# install destination
install(TARGETS tmp_neuro
  EXPORT tmp_neuro-export
  LIBRARY         DESTINATION lib
  INCLUDES        DESTINATION include
  PUBLIC_HEADER   DESTINATION include/tmp_neuro)

install(EXPORT tmp_neuro-export
  FILE tmp_neuro-config.cmake
  DESTINATION share/cmake/tmp_neuro/
  EXPORT_LINK_INTERFACE_LIBRARIES)

