#!/bin/bash

f=$1
sed -i -e 's/stroke:#FFFF00; stroke-width:39.0157/stroke:#FF0000; stroke-width:200/g' -e 's/stroke-width:19.685/stroke-width:100/' $f
