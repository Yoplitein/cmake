if(NOT Win32)
  set(CMAKE_D_VERBOSE_FLAG "-L-v")
else()
  set(CMAKE_D_VERBOSE_FLAG "")
endif()

set(CMAKE_D_COMPILE_OPTIONS_PIC "-fPIC")
set(CMAKE_SHARED_LIBRARY_D_FLAGS "-fPIC")
set(CMAKE_SHARED_LIBRARY_CREATE_D_FLAGS "-shared")

set(CMAKE_D_FLAGS_INIT "")
set(CMAKE_D_FLAGS_DEBUG_INIT "-g -debug")
set(CMAKE_D_FLAGS_MINSIZEREL_INIT "-release -O")
set(CMAKE_D_FLAGS_RELEASE_INIT "-release -O -inline")
set(CMAKE_D_FLAGS_RELWITHDEBINFO_INIT "-release -O -inline -g")

#set(CMAKE_D_CREATE_PREPROCESSED_SOURCE "<CMAKE_D_COMPILER> <FLAGS> -E <SOURCE> > <PREPROCESSED_SOURCE>")
set(CMAKE_D_CREATE_ASSEMBLY_SOURCE "<CMAKE_D_COMPILER> <FLAGS> -S <SOURCE> -of<ASSEMBLY_SOURCE>")
#set(CMAKE_INCLUDE_SYSTEM_FLAG_D "-isystem ")
set(CMAKE_DEPFILE_FLAGS_D "-deps=<DEPFILE>")
set(CMAKE_NINJA_DEPTYPE_D "dmd")

set(CMAKE_INCLUDE_FLAG_D "-I")
set(CMAKE_D_DVERBOSE_FLAG "-v")
set(CMAKE_D_OUTPUT_FLAG "-of")
set(CMAKE_D_LINK_FLAG "-L-l")
set(CMAKE_D_LINK_FILE_FLAG "-L-l:")
set(CMAKE_D_VERSION_FLAG "-version=")
set(CMAKE_D_DEBUG_FLAG "-debug=")
set(CMAKE_D_TEXT_INCLUDE_FLAG "-J")
set(CMAKE_D_UNITTEST_FLAG "-unittest")
# Features introduced to DMD in 2.063
if(CMAKE_D_COMPILER_VERSION VERSION_GREATER "2.62")
  set(CMAKE_D_COVERAGE_FLAG "-cov=")
  set(CMAKE_D_ADD_MAIN_FLAG "-main")
endif()
set(CMAKE_D_DDOC_FILE_FLAG "-Df")
set(CMAKE_D_DDOC_MACRO_FLAG "")
set(CMAKE_D_DEPS_FILE_FLAG "-deps=")
set(CMAKE_D_NO_OUTPUT_FLAG -c -o-)
set(CMAKE_D_JSON_FILE_FLAG "-Xf")

set(CMAKE_D_COMPILE_OBJECT
  "<CMAKE_D_COMPILER> <DEFINES> <FLAGS> -of=<OBJECT> -c <SOURCE>")
set(CMAKE_D_CREATE_SHARED_LIBRARY
  "<CMAKE_D_COMPILER> <CMAKE_SHARED_LIBRARY_D_FLAGS> <LANGUAGE_COMPILE_FLAGS> <LINK_FLAGS> <CMAKE_SHARED_LIBRARY_CREATE_D_FLAGS> <SONAME_FLAG><TARGET_SONAME> -of=<TARGET> <OBJECTS> <LINK_LIBRARIES>")
set(CMAKE_D_LINK_EXECUTABLE
  "<CMAKE_D_COMPILER> <FLAGS> <CMAKE_D_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -of=<TARGET> <LINK_LIBRARIES>")
