#! bin/bash


# Assignment 5 "Create and alter text in your directories"

# Script 1: write a shell script that will successfully create a directory with 500 subdirectories, each containing a text file with 5 lines of text.



echo "Creating Main directory... \n"
mkdir "main_folder"

for i in {1..500}; do 
	Dir="./main_folder/sub_folder_${i}"
	File="$Dir/file.txt"
	
	echo "Creating sub directory ${i}..."
	mkdir $Dir
	echo "Writing file to subdirectory...\n" 
	echo "Line 1 \nLine 2 \nLine 3 \nLine 4 \nLine 5" >> $File
done

