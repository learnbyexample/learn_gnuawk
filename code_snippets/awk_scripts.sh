cat buf.awk

awk -f buf.awk broken.txt

echo 'cue us on this example' | awk -v q="'" '{gsub(/\w+/, q "&" q)} 1'

cat quotes.awk

echo 'cue us on this example' | awk -f quotes.awk

awk -o -v OFS='\t' 'NR==FNR{r[$1]=$2; next}

cat awkprof.out

awk -v OFS='\t' -f awkprof.out role.txt marks.txt

