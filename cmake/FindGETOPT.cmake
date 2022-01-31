include(FindPackageHandleStandardArgs)

find_path(GETOPT_INCLUDE_DIR getopt.h)
find_library(GETOPT_LIBRARY NAMES getopt)
find_program(GETOPT_RUNTIME_LIBRARY NAMES getopt.dll)

if(WIN32)
    find_package_handle_standard_args(GETOPT DEFAULT_MSG
        GETOPT_INCLUDE_DIR
        GETOPT_LIBRARY
        GETOPT_RUNTIME_LIBRARY
    )
else()
    find_package_handle_standard_args(GETOPT DEFAULT_MSG
        GETOPT_INCLUDE_DIR
        GETOPT_LIBRARY
    )
endif()

set(GETOPT_INCLUDE_DIRS ${GETOPT_INCLUDE_DIR})
set(GETOPT_LIBRARIES ${GETOPT_LIBRARY})
set(GETOPT_LINK_LIBRARIES ${GETOPT_LIBRARY})
set(GETOPT_RUNTIME_LIBRARIES ${GETOPT_RUNTIME_LIBRARY})
