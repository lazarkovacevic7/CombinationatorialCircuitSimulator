#!/bin/bash

EXE=bin/main

if [ $1 = "-run" ]; then

	mkdir -vp test_results
	mkdir -vp test_results/test0
	mkdir -vp test_results/test1
	mkdir -vp test_results/test2
	mkdir -vp test_results/test3
	mkdir -vp test_results/test4
	mkdir -vp test_results/test5
	mkdir -vp test_results/test6
	mkdir -vp test_results/test7
	mkdir -vp test_results/test8
	mkdir -vp test_results/test9

	# run all tests
	echo Runing test 0
	$EXE tests/test0/test0.txt test_results/test0/

	echo Runing test 1
	$EXE tests/test1/test1.txt test_results/test1/

	echo Runing test 2
	$EXE tests/test2/test2.txt test_results/test2/

	echo Runing test 3
	$EXE tests/test3/test3.txt test_results/test3/

	echo Runing test 4
	$EXE tests/test4/test4.txt test_results/test4/

	echo Runing test 5
	$EXE tests/test5/test5.txt test_results/test5/

	echo Runing test 6
	$EXE tests/test6/test6.txt test_results/test6/

	echo Runing test 7
	$EXE tests/test7/test7.txt test_results/test7/

	echo Runing test 8
	$EXE tests/test8/test8.txt test_results/test8/

	echo Runing test 9
	$EXE tests/test9/test9.txt test_results/test9/

	# compare results
	./scripts/compare_results.sh

elif [ $1 = "-clean" ]; then
	rm -rfv ../test_results

else
	echo "Input argument are either -run or -clean	"
fi

