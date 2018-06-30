#!/bin/bash

#TODO: launch from any folder

path=$1
showName=$2
season=$3
beginEpisode=$4
currentEpisode=$beginEpisode

echo path=$path
echo showName=$showName
echo season=$season
echo beginEpisode=$beginEpisode

currentSeason=$beginSeason

if [ "$season" -lt 10 ]
then
	season="0$season"
fi

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for f in $(ls "$path"); do
	extension=$(echo "$f"|awk -F. '{print $NF}')

	tempEpisode=$currentEpisode
	if [ "$tempEpisode" -lt 10 ]
	then
		tempEpisode="0$tempEpisode"
	fi

	newName="$showName S""$season""E$tempEpisode.$extension"
	mv $f $newName && echo "[$f] was renamed to [$newName]"

	currentEpisode=$[currentEpisode+1]
done
IFS=$SAVEIFS
