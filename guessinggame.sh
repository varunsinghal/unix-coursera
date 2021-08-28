function guess {

	echo "enter the no. of files"

	read guess_count

	count=$(ls . | wc -l)

	if [[ $guess_count -eq $count ]] 

	then
		echo "Congratulations"

	else
		[[ $guess_count -lt $count ]] && echo "Too low" || echo "Too high"
		guess

	fi

}
