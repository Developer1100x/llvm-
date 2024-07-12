cmake_minimum_required(VERSION 3.12)
project(CyclomaticComplexity)

# Locate LLVM package
find_package(LLVM REQUIRED CONFIG)

# Set include directories
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Find Clang libraries
find_package(Clang REQUIRED CONFIG)

# Set include directories for Clang
include_directories(${CLANG_INCLUDE_DIRS})

# Specify the sources
set(SOURCES
    CyclomaticComplexity.cpp
)

# Add the executable
add_executable(CyclomaticComplexity ${SOURCES})

# Link against LLVM and Clang libraries
llvm_map_components_to_libnames(llvm_libs support core irreader)
target_link_libraries(CyclomaticComplexity
    ${llvm_libs}
    clangTooling
    clangBasic
    clangASTMatchers
)
