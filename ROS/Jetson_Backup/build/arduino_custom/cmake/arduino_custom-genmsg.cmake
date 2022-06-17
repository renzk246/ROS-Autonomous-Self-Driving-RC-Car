# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arduino_custom: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iarduino_custom:/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arduino_custom_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_custom_target(_arduino_custom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_custom" "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" ""
)

get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_custom_target(_arduino_custom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_custom" "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" ""
)

get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_custom_target(_arduino_custom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_custom" "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom
)
_generate_msg_cpp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom
)
_generate_msg_cpp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom
)

### Generating Services

### Generating Module File
_generate_module_cpp(arduino_custom
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arduino_custom_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arduino_custom_generate_messages arduino_custom_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_cpp _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_cpp _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_cpp _arduino_custom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_custom_gencpp)
add_dependencies(arduino_custom_gencpp arduino_custom_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_custom_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom
)
_generate_msg_eus(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom
)
_generate_msg_eus(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom
)

### Generating Services

### Generating Module File
_generate_module_eus(arduino_custom
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arduino_custom_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arduino_custom_generate_messages arduino_custom_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_eus _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_eus _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_eus _arduino_custom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_custom_geneus)
add_dependencies(arduino_custom_geneus arduino_custom_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_custom_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom
)
_generate_msg_lisp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom
)
_generate_msg_lisp(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom
)

### Generating Services

### Generating Module File
_generate_module_lisp(arduino_custom
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arduino_custom_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arduino_custom_generate_messages arduino_custom_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_lisp _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_lisp _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_lisp _arduino_custom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_custom_genlisp)
add_dependencies(arduino_custom_genlisp arduino_custom_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_custom_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom
)
_generate_msg_nodejs(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom
)
_generate_msg_nodejs(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom
)

### Generating Services

### Generating Module File
_generate_module_nodejs(arduino_custom
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arduino_custom_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arduino_custom_generate_messages arduino_custom_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_nodejs _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_nodejs _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_nodejs _arduino_custom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_custom_gennodejs)
add_dependencies(arduino_custom_gennodejs arduino_custom_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_custom_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom
)
_generate_msg_py(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom
)
_generate_msg_py(arduino_custom
  "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom
)

### Generating Services

### Generating Module File
_generate_module_py(arduino_custom
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arduino_custom_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arduino_custom_generate_messages arduino_custom_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_out.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_py _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Arduino_in.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_py _arduino_custom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/flakka/EXT/Github/ROS/Jetson_Backup/src/arduino_custom/msg/Extra.msg" NAME_WE)
add_dependencies(arduino_custom_generate_messages_py _arduino_custom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_custom_genpy)
add_dependencies(arduino_custom_genpy arduino_custom_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_custom_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_custom
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arduino_custom_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arduino_custom
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(arduino_custom_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_custom
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arduino_custom_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arduino_custom
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(arduino_custom_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_custom
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arduino_custom_generate_messages_py std_msgs_generate_messages_py)
endif()
