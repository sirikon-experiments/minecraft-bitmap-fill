#!/usr/bin/env bash

set -e

sleep 3

# input="test.txt"
# while IFS= read -r line
# do
#     xdotool type --delay 50 "$line"
#     sleep 0.1
#     xdotool key Return
#     sleep 0.1
#     xdotool key t
#     sleep 0.1
# done < "$input"

xdotool type --delay 50 "/clear"
sleep 1
xdotool key Return
sleep 1
xdotool type --delay 50 "/give Sirikon minecraft:red_wool"
sleep 1
xdotool key Return
sleep 1
xdotool type --delay 50 "/give Sirikon minecraft:yellow_wool"
sleep 1
xdotool key Return
sleep 1

xdotool type --delay 50 "/setblock 1930 150 10010 minecraft:white_wool"
sleep 1
xdotool key Return
sleep 1
xdotool type --delay 50 "/setblock 1930 150 10011 minecraft:white_wool"
sleep 1
xdotool key Return
sleep 1
xdotool type --delay 50 "/setblock 1930 150 10012 minecraft:white_wool"
sleep 1
xdotool key Return
sleep 1

xdotool type --delay 50 "/tp Sirikon 1930 151 10010 0 -90"
sleep 1
xdotool key Return
sleep 1

for i in {1..5}
do
    xdotool key 1
    xdotool keydown space
    sleep 0.35
    xdotool click 3
    xdotool keyup space
done

xdotool type --delay 50 "/tp Sirikon 1930 151 10011 0 -90"
sleep 1
xdotool key Return
sleep 1

for i in {1..5}
do
    xdotool key 2
    xdotool keydown space
    sleep 0.35
    xdotool click 3
    xdotool keyup space
done

xdotool type --delay 50 "/tp Sirikon 1930 151 10012 0 -90"
sleep 1
xdotool key Return
sleep 1

for i in {1..5}
do
    xdotool key 1
    xdotool keydown space
    sleep 0.35
    xdotool click 3
    xdotool keyup space
done

# function paint {
#     xdotool type --delay 50 "/fill ${1} ${2} ${3} ${1} ${2} ${3} minecraft:${4}"
#     sleep 0.1
#     xdotool key Return
#     sleep 0.1
#     xdotool key t
#     sleep 0.1
# }

# for i in {75..80}
# do
#     paint 1930 $i 10010 ${color}_wool
# done
