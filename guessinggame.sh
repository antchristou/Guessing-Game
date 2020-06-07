function guess {
echo "Enter how many files you think are in your current directory: "
file_count=$(ls | wc -l)
correct=1
while [[ correct -ne 0 ]]
do
	read guess
	if [[ $guess -eq $file_count ]]
	then
		echo "Correct! Wowsers!"
		let correct=0
		
	elif [[ $guess -lt $file_count ]]
	then
		echo "Try again! Too low!"
	elif [[ $guess -gt $file_count ]]
	then
		echo "Try again! Too high!"
	else
		echo "Nope try again!"
	fi
done

}
guess
