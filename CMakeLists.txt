cmake_minimum_required(VERSION 3.17)

project( CombinatorialCircuitSimulator )

#add_library(main src/main.cpp)

add_executable(main src/main.cpp)

add_subdirectory(src/dbg)
add_subdirectory(src/gatePrototypes)
add_subdirectory(src/gates)
add_subdirectory(src/model)
add_subdirectory(src/probes)
add_subdirectory(src/scheduler)
add_subdirectory(src/sources)
add_subdirectory(src/visitor)