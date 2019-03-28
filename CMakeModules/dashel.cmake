if(EXISTS ${PROJECT_SOURCE_DIR}/dashel/CMakeLists.txt)
	add_subdirectory(${PROJECT_SOURCE_DIR}/dashel EXCLUDE_FROM_ALL)
	message("Using dashel from ${PROJECT_SOURCE_DIR}/dashel")
else()
	find_package(dashel REQUIRED)
	add_library(dashel INTERFACE)
	target_include_directories(dashel INTERFACE ${dashel_INCLUDE_DIRS})
	target_link_libraries(dashel INTERFACE ${dashel_LIBRARIES})
endif()
