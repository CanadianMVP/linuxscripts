#!/bin/bash

#This script is gonna be LIT


declare -A animals
colours=(red green blue yellow)

animals=(["red"]="cardinal" ["green"]="frog" ["blue"]="lobster" ["yellow"]="canary")

echo "The colours are: ${colours[0]} ${colours[1]} ${colours[2]} ${colours[3]}."
#echo "The colours are: ${colours[@]}."

echo "The animals are ${animals[red]} ${animals[green]} ${animals[blue]} ${animals[yellow]}."
#echo "The animals are ${animals[@]} coloured ${!animals[@]}."

read -p "Give me a number from 0 to 3: " num
colour=${colours[$num]}
animal=${animals[$colour]}
echo "Index $num produces a $colour $animal."
