#! bin/bash


# Assignment 5 "Create and alter text in your directories"

#Script 2: Alter the text files contained in main_directory according to the following rules:

	#If the subdirectory ends in the number 1, the fourth line of text should read: "eat beets"
	#If the subdirectory ends in the number 4, the fourth line of text should read: "squash are great"
	#If the subdirectory ends in the number 5, the fourth line of text should read: "dogs are better than cats"
	#If the subdirectory ends in the number 7, the fourth line of text should read: "hello world"
	#If the subdirectory ends in the number 2, 3, 6, 8, or 9, the fourth line of text should be blank. 
	#If the subdirectory ends in the number 0, the fourth line of text should be a phrase of your choosing



for i in {1..500}; do 
	Dir="./main_folder/sub_folder_${i}"
	File="file.txt"
	mod=$((${i}%10))
	
	
	#Make temp file in subdirectory
	cd $Dir	
	touch tmp.txt	
	echo "Now in $(pwd)"


	# If statements to check for rules
	if [ $mod == 1 ]; then
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*/eat beets/' $File > tmp.txt 	
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
		 	
	elif [ $mod == 4 ]; then
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*/squash are great/' $File > tmp.txt	
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
	elif [ $mod == 5 ]; then
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*/dogs are better than cats/' $File > tmp.txt	
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
	elif [ $mod == 7 ]; then
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*/hello_world/' $File > tmp.txt
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
	elif [ $mod == 0 ]; then
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*/GO BEARS!!!/' $File > tmp.txt 	
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
	else 
		echo "Editing $File with sed and writing into temp file"
		sed '4s/.*//' $File > tmp.txt 	
		rm $File
		mv tmp.txt $File
		echo "Removed original and renamed temp file..."
		echo "Contents of $File is now:"
		cat $File
	fi

	
	cd ../../ #go back into original folder
	echo "Back in $(pwd) and ready for next loop! \n" 
done

