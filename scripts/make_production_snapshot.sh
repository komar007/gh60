#!/bin/bash

dir=$1

rm -rf $dir
mkdir -p $dir/pcb $dir/assembly
cp\
	gerber/keyboard.drl\
	gerber/keyboard-Back.gbl\
	gerber/keyboard-Front.gtl\
	gerber/keyboard-Mask_Back.gbs\
	gerber/keyboard-Mask_Front.gts\
	gerber/keyboard-PCB_Edges.gbr\
	gerber/keyboard-SilkS_Back.gbo\
	$dir/pcb
cp\
	gerber/keyboard-SoldP_Back.gbp\
	gerber/keyboard-all.pos\
	bom.xls\
	$dir/assembly
