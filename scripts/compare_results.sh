#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'

# test0
if [[ $(diff --strip-trailing-cr tests/test0/sonda_4.log test_results/test0/sonda_4.log) && \
		$(diff --strip-trailing-cr tests/test0/sonda_5.log test_results/test0/sonda_5.log) ]]; then
    echo -e "${RED}TEST 0 FAILED"
else
    echo -e "${GREEN}TEST 0 PASSED"
fi

# test1
if [[ $(diff --strip-trailing-cr tests/test1/sonda_8.log test_results/test1/sonda_8.log) ]]; then
    echo -e "${RED}TEST 1 FAILED"
else
    echo -e "${GREEN}TEST 1 PASSED"
fi

# test2
if [[ $(diff --strip-trailing-cr tests/test2/sonda_9.log test_results/test2/sonda_9.log) && \
		$(diff --strip-trailing-cr tests/test2/sonda_10.log test_results/test2/sonda_10.log) && \
		$(diff --strip-trailing-cr tests/test2/sonda_11.log test_results/test2/sonda_11.log) && \
		$(diff --strip-trailing-cr tests/test2/sonda_12.log test_results/test2/sonda_12.log) ]]; then
    echo -e "${RED}TEST 2 FAILED"
else
    echo -e "${GREEN}TEST 2 PASSED"
fi

# test3
if [[ $(diff --strip-trailing-cr tests/test3/sonda_13.log test_results/test3/sonda_13.log) ]]; then
    echo -e "${RED}TEST 3 FAILED"
else
    echo -e "${GREEN}TEST 3 PASSED"
fi

# test4
if [[ $(diff --strip-trailing-cr tests/test4/sonda_17.log test_results/test4/sonda_17.log) && \
		$(diff --strip-trailing-cr tests/test4/sonda_18.log test_results/test4/sonda_18.log) && \
		$(diff --strip-trailing-cr tests/test4/sonda_19.log test_results/test4/sonda_19.log) && \
		$(diff --strip-trailing-cr tests/test4/sonda_20.log test_results/test4/sonda_20.log) ]]; then
    echo -e "${RED}TEST 4 FAILED"
else
    echo -e "${GREEN}TEST 4 PASSED"
fi

# test5
if [[ $(diff --strip-trailing-cr tests/test5/sonda_17.log test_results/test5/sonda_17.log) && \
		$(diff --strip-trailing-cr tests/test5/sonda_18.log test_results/test5/sonda_18.log) && \
		$(diff --strip-trailing-cr tests/test5/sonda_19.log test_results/test5/sonda_19.log) && \
		$(diff --strip-trailing-cr tests/test5/sonda_20.log test_results/test5/sonda_20.log) ]]; then
    echo -e "${RED}TEST 5 FAILED"
else
    echo -e "${GREEN}TEST 5 PASSED"
fi

# test6
if [[ $(diff --strip-trailing-cr tests/test6/sonda_18.log test_results/test6/sonda_18.log) ]]; then
    echo -e "${RED}TEST 6 FAILED"
else
    echo -e "${GREEN}TEST 6 PASSED"
fi

# test7
if [[ $(diff --strip-trailing-cr tests/test7/sonda_8.log test_results/test7/sonda_8.log) ]]; then
    echo -e "${RED}TEST 7 FAILED"
else
    echo -e "${GREEN}TEST 7 PASSED"
fi

# test8
if [[ $(diff --strip-trailing-cr tests/test8/sonda_13.log test_results/test8/sonda_13.log) && \
		$(diff --strip-trailing-cr tests/test8/sonda_14.log test_results/test8/sonda_14.log) ]]; then
    echo -e "${RED}TEST 8 FAILED"
else
    echo -e "${GREEN}TEST 8 PASSED"
fi

# test9
if [[ $(diff --strip-trailing-cr tests/test9/sonda_9.log test_results/test9/sonda_9.log) && \
		$(diff --strip-trailing-cr tests/test9/sonda_10.log test_results/test9/sonda_10.log) ]]; then
    echo -e "${RED}TEST 9 FAILED"
else
    echo -e "${GREEN}TEST 9 PASSED"
fi
