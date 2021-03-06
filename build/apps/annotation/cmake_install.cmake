# Install script for directory: /Users/elliotstaudt/opencv/apps/annotation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/elliotstaudt/opencv/build/bin/Debug/opencv_annotation")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_cudev.3.0.dylib" "lib/libopencv_cudev.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Debug/libopencv_videoio.3.0.dylib" "lib/libopencv_videoio.3.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/cuda/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/cuda/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      endif()
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/elliotstaudt/opencv/build/bin/Release/opencv_annotation")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_core.3.0.dylib" "lib/libopencv_core.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_cudev.3.0.dylib" "lib/libopencv_cudev.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_highgui.3.0.dylib" "lib/libopencv_highgui.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_imgcodecs.3.0.dylib" "lib/libopencv_imgcodecs.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_imgproc.3.0.dylib" "lib/libopencv_imgproc.3.0.dylib"
        -change "/Users/elliotstaudt/opencv/build/lib/Release/libopencv_videoio.3.0.dylib" "lib/libopencv_videoio.3.0.dylib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/usr/local/cuda/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/cuda/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/opencv_annotation")
      endif()
    endif()
  endif()
endif()

