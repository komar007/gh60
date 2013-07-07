#!/bin/bash

in=$1
out=$2
dpi=${3:-180}
inkscape $in -C -d $dpi -b '#ffffff' -e $out
