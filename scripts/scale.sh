infile=$1
outfile=$2
name=$3
scale=$4
awk '/Dl|T0|T1/{$2=int($2/'$scale'); $3=int($3/'$scale')} //{print $0}' "$infile" | sed -e 's/LOGO/'$name'/g' > "$outfile"
