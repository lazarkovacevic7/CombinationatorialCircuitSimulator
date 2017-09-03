#!/bin/bash

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

	echo Runing test 0
	./Main.run tests/test0/test0.txt test_results/test0/	

	echo Runing test 1
	./Main.run tests/test1/test1.txt test_results/test1/

	echo Runing test 2
	./Main.run tests/test2/test2.txt test_results/test2/

	echo Runing test 3
	./Main.run tests/test3/test3.txt test_results/test3/

	echo Runing test 4
	./Main.run tests/test4/test4.txt test_results/test4/

	echo Runing test 5
	./Main.run tests/test5/test5.txt test_results/test5/

	echo Runing test 6
	./Main.run tests/test6/test6.txt test_results/test6/

	echo Runing test 7
	./Main.run tests/test7/test7.txt test_results/test7/

	echo Runing test 8
	./Main.run tests/test8/test8.txt test_results/test8/

	echo Runing test 9
	./Main.run tests/test9/test9.txt test_results/test9/

elif [ $1 = "-clean" ]; then
	rm -rfv test_results

else
	echo "Input argument are either -run or -clean	"
fi

