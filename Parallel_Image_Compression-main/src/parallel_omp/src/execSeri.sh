#!/bin/sh
rm info.txt
g++ serial.cpp -std=c++11 -fopenmp
a=0
while [ "$a" -lt 15 ]    # this is loop1
do
  ./a.out "$a"
  a=`expr $a + 1`
done
g++ compare.cpp -std=c++11
./a.out
