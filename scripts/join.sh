mod_copper=$1
mod_mask=$2
output=$3
(awk '/EndMODULE/ {n=1} /DP/ {$8=15} !n {print $0}' "$mod_copper" &&
	awk '/DP/ {y=1} /DP/ {$8=23} y {print $0}' "$mod_mask") > "$output"
