set(CMAKE_D_VERBOSE_FLAG "-L=-v")
set(CMAKE_D_COMPILE_OPTIONS_PIC "-relocation-model=pic")
set(CMAKE_SHARED_LIBRARY_D_FLAGS "-relocation-model=pic")
set(CMAKE_SHARED_LIBRARY_CREATE_D_FLAGS "-shared")

set(CMAKE_D_FLAGS_INIT "")
set(CMAKE_D_FLAGS_DEBUG_INIT "-g -d-debug")
set(CMAKE_D_FLAGS_MINSIZEREL_INIT "-release -Oz")
set(CMAKE_D_FLAGS_RELEASE_INIT "-release -O3 -enable-inlining")
set(CMAKE_D_FLAGS_RELWITHDEBINFO_INIT "-release -O3 -enable-inlining -g")

set(CMAKE_D_INCLUDE_FLAG "-I=")
set(CMAKE_D_DVERBOSE_FLAG "-v")
set(CMAKE_D_OUTPUT_FLAG "-of=")
set(CMAKE_D_LINK_FLAG "-L=-l")
set(CMAKE_D_LINK_FILE_FLAG "-L=-l:")
set(CMAKE_D_VERSION_FLAG "-d-version=")
set(CMAKE_D_DEBUG_FLAG "-d-debug=")
set(CMAKE_D_TEXT_INCLUDE_FLAG "-J=")
set(CMAKE_D_UNITTEST_FLAG "-unittest")
# LDC doesn't seem to support -cov=nn
# LDC doesn't seem to support -main
set(CMAKE_D_DDOC_FILE_FLAG "-Df=")
set(CMAKE_D_DDOC_MACRO_FLAG "")
set(CMAKE_D_DEPS_FILE_FLAG "-deps=")
set(CMAKE_D_NO_OUTPUT_FLAG "-c -o-")
set(CMAKE_D_JSON_FILE_FLAG "-Xf=")
