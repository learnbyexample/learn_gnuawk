## if-else

awk '/^b/{print; if($NF>0) print "------"}' table.txt

awk '/^b/{print; if($NF>0) print "------"; else print "======"}' table.txt

seq 6 | awk '{ORS = NR%3 ? "-" : RS} 1'

awk '/^b/{print; print($NF>0 ? "------" : "======")}' table.txt

## loops

awk 'BEGIN{for(i=2; i<7; i+=2) print i}'

awk -v OFS=, '{for(i=1; i<=NF; i++) if($i ~ /^[bm]/) $i="["$i"]"} 1' table.txt

cat marks.txt

awk 'NR>1{d[$1]+=$3; c[$1]++} END{for(k in d) print k, d[k]/c[k]}' marks.txt

awk -v OFS=, '{for(i=1; i<=NF; i++) if($i ~ /b/){NF=i; break}} 1' table.txt

awk 'BEGIN{i=6; while(i>0){print i; i-=2}}'

echo 'titillate' | awk '{while(gsub(/til/, "")) print}'

echo 'titillate' | awk '{do{print} while(gsub(/til/, ""))}'

## next

awk '/\<par/{print "%% " $0; next} {print /s/ ? "X" : "Y"}' word_anchors.txt

## exit

seq 3542 4623452 | awk 'NR==2452{print; exit}'

echo $?

awk '/^br/{print "Invalid input"; exit 1}' table.txt

echo $?

awk 'FNR==2{print; exit}' table.txt greeting.txt

awk 'BEGIN{print "hi"; exit; print "hello"}
     /^b/;
     END{print "bye"}' table.txt

