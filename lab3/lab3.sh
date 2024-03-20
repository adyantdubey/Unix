#!/bin/bash


echo "Searching for various patterns using grep command:"
grep "pattern1" sample.txt
grep "pattern2" sample.txt
grep -v "pattern2" sample.txt



echo "pr:"
pr sample.txt
pr -t -w 100 sample.txt
pr -a sample.txt
pr -T sample.txt
pr -m sample.txt file1.txt


echo "Displaying the first few lines of the file using head:"
head -n 5 sample.txt


echo " tail:"
tail -n 5 sample.txt


echo "Extracting specific columns using cut :"
cut -d ',' -f 1,3 sample.txt

echo "Combining lines from different files using paste:"
paste file1.txt file2.txt
paste -d file1.txt file2.txt
paste -s file1.txt file2.txt

echo "Sorting lines of text file using sort:"
sort sample.txt
sort -r sample.txt 
sort -R sample.txt
sort -u file1.txt sample.txt


echo "Removing duplicate lines using uniq:"
uniq sample.txt
uniq -c sample.txt file1.txt

echo "Translating characters using tr:"
cat sample.txt | tr 'a-z' 'A-Z'
cat sample.txt | tr -s 'a-z' 'A-Z'
