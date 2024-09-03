# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "phasespace: 6 messages, 0 services")

set(MSG_I_FLAGS "-Iphasespace:/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(phasespace_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" ""
)

get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" "phasespace/Camera"
)

get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" ""
)

get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" "phasespace/Marker"
)

get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" ""
)

get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_custom_target(_phasespace_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phasespace" "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" "phasespace/Rigid"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)
_generate_msg_cpp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
)

### Generating Services

### Generating Module File
_generate_module_cpp(phasespace
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(phasespace_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(phasespace_generate_messages phasespace_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_cpp _phasespace_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phasespace_gencpp)
add_dependencies(phasespace_gencpp phasespace_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phasespace_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)
_generate_msg_eus(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
)

### Generating Services

### Generating Module File
_generate_module_eus(phasespace
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(phasespace_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(phasespace_generate_messages phasespace_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_eus _phasespace_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phasespace_geneus)
add_dependencies(phasespace_geneus phasespace_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phasespace_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)
_generate_msg_lisp(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
)

### Generating Services

### Generating Module File
_generate_module_lisp(phasespace
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(phasespace_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(phasespace_generate_messages phasespace_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_lisp _phasespace_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phasespace_genlisp)
add_dependencies(phasespace_genlisp phasespace_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phasespace_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)
_generate_msg_nodejs(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
)

### Generating Services

### Generating Module File
_generate_module_nodejs(phasespace
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(phasespace_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(phasespace_generate_messages phasespace_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_nodejs _phasespace_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phasespace_gennodejs)
add_dependencies(phasespace_gennodejs phasespace_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phasespace_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)
_generate_msg_py(phasespace
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
)

### Generating Services

### Generating Module File
_generate_module_py(phasespace
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(phasespace_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(phasespace_generate_messages phasespace_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Camera.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Cameras.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Marker.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Markers.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigid.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/go1_nav_ws/src/phasespace_ros_node/msg/Rigids.msg" NAME_WE)
add_dependencies(phasespace_generate_messages_py _phasespace_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phasespace_genpy)
add_dependencies(phasespace_genpy phasespace_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phasespace_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phasespace
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(phasespace_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phasespace
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(phasespace_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phasespace
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(phasespace_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phasespace
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(phasespace_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phasespace
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(phasespace_generate_messages_py std_msgs_generate_messages_py)
endif()
