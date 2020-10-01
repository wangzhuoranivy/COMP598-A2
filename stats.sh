#!/bin/bash

#The number of lines in the file
<$1 wc -l

#The first line of the file
head -n 1 $1

#The number of lines in the last 10,000 rows of the file that contain the string “potus” (case-insensitive)
tail -n 10000 $1 | grep -i "potus" | wc -l


#Of rows 100 – 200 (inclusive), how many of them that contain the word “fake”
sed -n 100,200p $1 | grep "fake" | wc -l         
