
#set(Indemind_INSTALL_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../)
get_filename_component(Indemind_INSTALL_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../ ABSOLUTE)


# message("DIR: ${CMAKE_CURRENT_LIST_DIR}/../../../")
if(EXISTS ${Indemind_INSTALL_DIR}/include/)

    message("-- Found Indemind lib ${Indemind_INSTALL_DIR}")
    set(Indemind_INCLUDE_DIRS ${Indemind_INSTALL_DIR}/include/indemind/)
    file(GLOB Indemind_LIBRARIES ${Indemind_INSTALL_DIR}/lib/libusbdriver.so)
    set(Indemind_LIBRARY ${Indemind_LIBRARIES})
    set(Indemind_LIBS ${Indemind_LIBRARIES})
    set(Indemind_FOUND true)

else()
    
    set(Indemind_FOUND false)

endif()

