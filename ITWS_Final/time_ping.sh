#!/bin/bash

read n
total=$(($n+5))
colour=1
ping www.google.com -c $n | for(( i=1; i<=$total; i++, colour++ ))
do
	read packet
	if [[ $i -eq $(($n+5)) ]]
	then
		tput setaf $((colour%8)); echo `echo $packet | cut -d '/' -f 7`
	else
		tput setaf $((colour%8)); echo "$(date) -- $packet"
	fi
done

#while read p; do echo "$(date): $p"; done
