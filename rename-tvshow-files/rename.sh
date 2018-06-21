#!/bin/bash

#Variable="path"
#Variable="name"
#Variable="beginSeason"
#Variable="endSeason"
#Variable="beginEpisode"
#Variable="endEpisode"
#Variable="seasons"
#Variable="episodes"

path=$1
name=$2
beginSeason=$3
endSeason=$4
beginEpisode=$5
endEpisode=$6
seasons={$beginSeason..$endSeason}
episodes={$beginEpisode..$endEpisode}
files=$(ls)

echo path=$path
echo name=$name
echo beginSeason=$beginSeason
echo endSeason=$endSeason
echo beginEpisode=$beginEpisode
echo endEpisode=$endEpisode
echo seasons=$seasons
echo episodes=$episodes
echo files=$files
echo {$beginEpisode..$endEpisode}

#TODO: add extensions
#TODO: perform tests

currentSeason=$beginSeason
currentEpisode=$currentEpisode
for f in $(ls); do
	echo "$f $name S""$currentSeason""E$currentEpisode"
	currentEpisode=$[currentEpisode+1]
done
