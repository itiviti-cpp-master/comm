cmake_minimum_required(VERSION 3.13)

set(PROJECT_NAME comm_test)
project(${PROJECT_NAME})

# Data files
file(GLOB INPUT_FILES_1 ${PROJECT_SOURCE_DIR}/etc/*.txt)
list(JOIN INPUT_FILES_1 " " TEST_DATA_1)

file(GLOB INPUT_FILES_2 ${PROJECT_SOURCE_DIR}/etc/*.txt_2)
list(JOIN INPUT_FILES_2 " " TEST_DATA_2)

# Tests
enable_testing()
add_test(
    NAME comm
    COMMAND sh -c "${PROJECT_SOURCE_DIR}/test.sh $<TARGET_FILE:comm> ${TEST_DATA_1} ${TEST_DATA_2}"
    )
