# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(integration_demo LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

find_package(Boost REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(SQLITE3 REQUIRED sqlite3)

add_executable(integration_demo src/main.cpp)

target_link_libraries(integration_demo
  Boost::boost
  ${SQLITE3_LIBRARIES}
  lzma
)

target_include_directories(integration_demo PRIVATE
  ${SQLITE3_INCLUDE_DIRS}
)

install(TARGETS integration_demo DESTINATION bin)
