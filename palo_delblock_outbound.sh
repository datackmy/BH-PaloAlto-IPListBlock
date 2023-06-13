#Specify folder 
path=./
filename=palo_outbound.txt

#check file exists 
if [[ ! -e $path/$filename ]]; then 
	touch $path/$filename
	echo "File Created : $path/$filename"
fi

#Deleting IP IP
if grep -wq "$1" $path/$filename; then
	echo "IP $1 Exist, deleting IP"
	sed -e "\|$1|d" -i $path/$filename
else 
	echo "IP not exist in $path/$filename"
fi 

