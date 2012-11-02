mod_copper=$1
mod_mask=$2
name=$3
scale=$4
(
	awk '/EndMODULE/ {n=1} /DP/ {$8=15} !n {print $0}' $mod_copper &&
		awk '/DP/ {y=1} /DP/ {$8=23} y {print $0}' $mod_mask
) | awk '/Dl/{$2=int($2/'$scale'); $3=int($3/'$scale')} //{print $0}' | sed -e 's/LOGO/'$name'/g'
