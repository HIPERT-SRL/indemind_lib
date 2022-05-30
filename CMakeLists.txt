project(indemind_lib)
cmake_minimum_required(VERSION 3.16)

# test find
# find_package(Indemind)
# message("Include: ${Indemind_INCLUDE_DIRS}")
# message("libs: ${Indemind_LIBRARIES}")

message("Architecture: ${CMAKE_SYSTEM_PROCESSOR}")
set(LIB ${CMAKE_CURRENT_SOURCE_DIR}/driver/lib/${CMAKE_SYSTEM_PROCESSOR}/libusbdriver.so)
set(HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/driver/DriverInterface.h)
set(SHARE ${CMAKE_CURRENT_SOURCE_DIR}/cmake/IndemindConfig.cmake)
set(RULES ${CMAKE_CURRENT_SOURCE_DIR}/udev/50-indemind.rules)

# message("Lib: ${LIB}")
# message("Headers: ${HEADERS}")
# message("Share: ${SHARE}")
# message("Rules: ${RULES}")

set(UDEV_RULES_PATH
    "/etc/udev/rules.d"
    CACHE STRING
    "Target directory for udev rule installation. Ensure you have permissions to write to this directory."
)

install(FILES ${LIB} DESTINATION lib/)
install(FILES ${HEADERS} DESTINATION include/indemind/)
install(FILES ${SHARE} DESTINATION share/indemind/cmake/)
if (UNIX AND INSTALL_UDEV_SYSTEM)
    install(FILES ${RULES} DESTINATION ${UDEV_RULES_PATH})
endif()
