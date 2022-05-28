#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tmp_neuro" for configuration ""
set_property(TARGET tmp_neuro APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(tmp_neuro PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libtmp_neuro.so"
  IMPORTED_SONAME_NOCONFIG "libtmp_neuro.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS tmp_neuro )
list(APPEND _IMPORT_CHECK_FILES_FOR_tmp_neuro "${_IMPORT_PREFIX}/lib/libtmp_neuro.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
