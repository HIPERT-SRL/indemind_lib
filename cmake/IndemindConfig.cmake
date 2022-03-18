
find_path(Indemind_INSTALL_DIR include ${CMAKE_CURRENT_LIST_DIR}/../../../)

if(NOT Indemind_INSTALL_DIR STREQUAL "Indemind_INSTALL_DIR-NOTFOUND")

    message("-- Found Indemind lib ${Indemind_INSTALL_DIR}")
    set(Indemind_INCLUDE_DIRS ${Indemind_INSTALL_DIR}/include/indemind/)
    file(GLOB Indemind_LIBRARIES ${Indemind_INSTALL_DIR}/lib/indemind/*.so)
    set(Indemind_LIBRARY ${Indemind_LIBRARIES})
    set(Indemind_LIBS ${Indemind_LIBRARIES})
    set(Indemind_FOUND true)

else()
    
    set(Indemind_FOUND false)

endif()

