#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

copper=$1
mask=$2
output=$3
name=$4
scale=$5

tmp_copper=/tmp/$RANDOM
tmp_mask=/tmp/$RANDOM

$DIR/scale.sh "$copper" $tmp_copper $name $scale
$DIR/scale.sh "$mask" $tmp_mask $name $scale
$DIR/join.sh $tmp_copper $tmp_mask $output
