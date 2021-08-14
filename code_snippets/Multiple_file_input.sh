## BEGINFILE, ENDFILE and FILENAME

awk 'BEGINFILE{print "--- " FILENAME " ---"} 1' greeting.txt table.txt

awk 'ENDFILE{print $0}' greeting.txt table.txt

## nextfile

awk '/I/{print FILENAME; nextfile}' f[1-3].txt greeting.txt

awk 'BEGINFILE{m1=m2=0} /o/{m1=1} /at/{m2=1}
     m1 && m2{print FILENAME; nextfile}' f[1-3].txt greeting.txt

awk 'BEGINFILE{m1=m2=0} /o/{m1=1; nextfile} /at/{m2=1}
     ENDFILE{if(!m1 && m2) print FILENAME}' f[1-3].txt greeting.txt

## ARGC and ARGV

awk 'BEGIN{for(i=0; i<ARGC; i++) print ARGV[i]}' f[1-3].txt greeting.txt

awk 'BEGIN{for(i=0; i<ARGC; i++) print ARGV[i]}' table.txt n=5 greeting.txt

cat table.txt

cat books.csv

awk -v OFS=, 'NF=2' table.txt FS=, books.csv

