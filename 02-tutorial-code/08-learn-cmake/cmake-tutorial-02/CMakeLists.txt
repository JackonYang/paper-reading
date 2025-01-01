cmake_minimum_required(VERSION 3.20.0)

project(CmakeTutorial-Jack)

# add_executable(${PROJECT_NAME} test.cpp)
add_executable(b.out test.cpp)

install(TARGETS b.out DESTINATION bin)
