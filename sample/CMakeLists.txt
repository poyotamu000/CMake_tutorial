cmake_minimum_required(VERSION 3.10.2)

project(test_cmake CXX)

set(CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE ON)

set(CMAKE_INSTALL_PREFIX $ENV{HOME}/.tmp_neuro)

add_library(tmp_neuro
    SHARED
    src/hello.cpp
    src/good_morning.cpp
    )

target_include_directories(tmp_neuro
    PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/include>)

file(GLOB_RECURSE TMP_NEURO_HEADERS ${CMAKE_CURRENT_LIST_DIR}/include *.hpp)
set_target_properties(tmp_neuro PROPERTIES
  PUBLIC_HEADER "${TMP_NEURO_HEADERS}"
)

# install destination
install(TARGETS tmp_neuro
  EXPORT tmp_neuro-export
  LIBRARY         DESTINATION lib
  INCLUDES        DESTINATION include
  PUBLIC_HEADER   DESTINATION include/tmp_neuro)

install(EXPORT tmp_neuro-export
  FILE TmpNeuroConfig.cmake
  DESTINATION cmake
  EXPORT_LINK_INTERFACE_LIBRARIES)

