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

set(ENABLE_TESTS 1)

if (${ENABLE_TESTS})
    enable_testing()

    ### create directories for tests
    add_custom_target(
    build-time-make-directory ALL
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test0/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test1/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test2/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test3/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test4/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test5/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test6/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test7/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test8/
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_SOURCE_DIR}/test_results/test9/)

    ### execute tests
    add_test(NAME Runs0 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test0/test0.txt ${CMAKE_SOURCE_DIR}/test_results/test0/)
    add_test(NAME Runs1 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test1/test1.txt ${CMAKE_SOURCE_DIR}/test_results/test1/)
    add_test(NAME Runs2 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test2/test2.txt ${CMAKE_SOURCE_DIR}/test_results/test2/)
    add_test(NAME Runs3 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test3/test3.txt ${CMAKE_SOURCE_DIR}/test_results/test3/)
    add_test(NAME Runs4 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test4/test4.txt ${CMAKE_SOURCE_DIR}/test_results/test4/)
    add_test(NAME Runs5 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test5/test5.txt ${CMAKE_SOURCE_DIR}/test_results/test5/)
    add_test(NAME Runs6 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test6/test6.txt ${CMAKE_SOURCE_DIR}/test_results/test6/)
    add_test(NAME Runs7 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test7/test7.txt ${CMAKE_SOURCE_DIR}/test_results/test7/)
    add_test(NAME Runs8 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test8/test8.txt ${CMAKE_SOURCE_DIR}/test_results/test8/)
    add_test(NAME Runs9 COMMAND main ${CMAKE_SOURCE_DIR}/tests/test9/test9.txt ${CMAKE_SOURCE_DIR}/test_results/test9/)

    ### compare output files

    # test 0
    ADD_TEST(Compare0_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol ${CMAKE_SOURCE_DIR}/tests/test0/sonda_4.log ${CMAKE_SOURCE_DIR}/test_results/test0/sonda_4.log)
    ADD_TEST(Compare0_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol ${CMAKE_SOURCE_DIR}/tests/test0/sonda_5.log ${CMAKE_SOURCE_DIR}/test_results/test0/sonda_5.log)

    # test 1
    ADD_TEST(Compare1_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test1/sonda_8.log ${CMAKE_SOURCE_DIR}/test_results/test1/sonda_8.log)

    # test 2
    ADD_TEST(Compare2_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test2/sonda_9.log ${CMAKE_SOURCE_DIR}/test_results/test2/sonda_9.log)
    ADD_TEST(Compare2_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test2/sonda_10.log ${CMAKE_SOURCE_DIR}/test_results/test2/sonda_10.log)
    ADD_TEST(Compare2_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test2/sonda_11.log ${CMAKE_SOURCE_DIR}/test_results/test2/sonda_11.log)
    ADD_TEST(Compare2_3 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test2/sonda_12.log ${CMAKE_SOURCE_DIR}/test_results/test2/sonda_12.log)

    # test 3
    ADD_TEST(Compare3_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test3/sonda_13.log ${CMAKE_SOURCE_DIR}/test_results/test3/sonda_13.log)

    # test 4
    ADD_TEST(Compare4_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test4/sonda_17.log ${CMAKE_SOURCE_DIR}/test_results/test4/sonda_17.log)
    ADD_TEST(Compare4_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test4/sonda_18.log ${CMAKE_SOURCE_DIR}/test_results/test4/sonda_18.log)
    ADD_TEST(Compare4_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test4/sonda_19.log ${CMAKE_SOURCE_DIR}/test_results/test4/sonda_19.log)
    ADD_TEST(Compare4_3 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test4/sonda_20.log ${CMAKE_SOURCE_DIR}/test_results/test4/sonda_20.log)

    # test 5
    ADD_TEST(Compare5_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test5/sonda_17.log ${CMAKE_SOURCE_DIR}/test_results/test5/sonda_17.log)
    ADD_TEST(Compare5_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test5/sonda_18.log ${CMAKE_SOURCE_DIR}/test_results/test5/sonda_18.log)
    ADD_TEST(Compare5_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test5/sonda_19.log ${CMAKE_SOURCE_DIR}/test_results/test5/sonda_19.log)
    ADD_TEST(Compare5_3 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test5/sonda_20.log ${CMAKE_SOURCE_DIR}/test_results/test5/sonda_20.log)

    # test 6
    ADD_TEST(Compare6_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test6/sonda_18.log ${CMAKE_SOURCE_DIR}/test_results/test6/sonda_18.log)

    # test 7
    ADD_TEST(Compare7_0 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test7/sonda_8.log ${CMAKE_SOURCE_DIR}/test_results/test7/sonda_8.log)

    # test 8
    ADD_TEST(Compare8_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test8/sonda_13.log ${CMAKE_SOURCE_DIR}/test_results/test8/sonda_13.log)
    ADD_TEST(Compare8_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test8/sonda_14.log ${CMAKE_SOURCE_DIR}/test_results/test8/sonda_14.log)

    # test 9
    ADD_TEST(Compare9_1 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test9/sonda_9.log ${CMAKE_SOURCE_DIR}/test_results/test9/sonda_9.log)
    ADD_TEST(Compare9_2 ${CMAKE_COMMAND} -E compare_files --ignore-eol  ${CMAKE_SOURCE_DIR}/tests/test9/sonda_10.log ${CMAKE_SOURCE_DIR}/test_results/test9/sonda_10.log)

endif()