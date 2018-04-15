# * BLENDER_PYTHON_INCLUDE_DIR

set(CMAKE_PREFIX_PATH
    "/opt/rh/rh-python35/root/usr"
    "/usr/local/include"
)

set(BLENDER_PYTHON_VERSION 35)
find_path(BLENDER_PYTHON_INCLUDE_DIR NAMES Python.h PATH_SUFFIXES python3.5m)
mark_as_advanced(BLENDER_PYTHON_INCLUDE_DIR)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args("Blender"
    DEFAULT_MSG
    BLENDER_PYTHON_INCLUDE_DIR
)
