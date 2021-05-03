## Input record separator

printf 'this,is\na,sample' | awk -v RS=, '{print NR ")", $0}'

s='   a\t\tb:1000\n\n\n\n123 7777:x  y \n \n z  '

printf '%b' "$s" | awk -v RS=: -v OFS=, '{$1=$1} 1'

cat report.log

awk -v RS='Error:' '/something/' report.log

awk -v IGNORECASE=1 -v RS='error:' 'NR==1' report.log

awk -v IGNORECASE=1 -v RS='e' 'NR==1' report.log

awk -v IGNORECASE=1 -v RS='[e]' 'NR==1' report.log

## Output record separator

printf 'foo\0bar\0' | awk -v RS='\0' -v ORS='.\n' '1'

cat msg.txt

awk -v RS='-\n' -v ORS= '1' msg.txt

seq 6 | awk '{ORS = NR%3 ? "-" : "\n"} 1'

printf '1\n2' | awk '1; END{print 3}'

## Regexp RS and RT

printf 'Sample123string42with777numbers' | awk -v RS='[0-9]+' '/i/ && /t/'

printf 'load;err_msg--ant,r2..not' | awk -v RS='\\W+' '/an/'

echo '123string42with777' | awk -v RS='[0-9]+' '{print NR ") [" $0 "]"}'

printf '123string42with777' | awk -v FS='[0-9]+' '{print NF}'

printf '123string42with777' | awk -v RS='[0-9]+' 'END{print NR}'

echo 'Sample123string42with777numbers' | awk -v RS='[0-9]+' '{print NR, RT}'

## Paragraph mode

cat programming_quotes.txt

awk -v RS= -v ORS='\n\n' '/you/' programming_quotes.txt

awk -v RS= '/you/{print s $0; s="\n"}' programming_quotes.txt

s='\n\n\na\nb\n\n12\n34\n\nhi\nhello\n'

printf '%b' "$s" | awk -v RS= -v ORS='\n---\n' 'NR<=2'

printf '%b' "$s" | awk -v RS='\n\n+' -v ORS='\n---\n' 'NR<=2'

s='\n\n\na\nb\n\n12\n34\n\nhi\nhello\n'

printf '%b' "$s" | awk -v RS= -v ORS='\n---\n' 'END{print}'

printf '%b' "$s" | awk -v RS='\n\n+' -v ORS='\n---\n' 'END{print}'

s='a:b\nc:d\n\n1\n2\n3'

printf '%b' "$s" | awk -F: -v RS= -v ORS='\n---\n' '{$1=$1} 1'

printf '%b' "$s" | awk -F':+' -v RS= -v ORS='\n---\n' '{$1=$1} 1'

printf '%b' "$s" | awk -F: -v RS='\n\n+' -v ORS='\n---\n' '{$1=$1} 1'

## NR vs FNR

seq 5 | awk 'NR<=2'

awk 'END{print}' table.txt

awk 'NR==2{$1="green"} 1' table.txt

awk -v OFS='\t' 'BEGIN{print "NR", "FNR", "Content"}
                 {print NR, FNR, $0}' report.log table.txt

awk 'FNR==1' report.log table.txt

seq 3542 4623452 | awk 'NR==2452{print; exit}'

seq 3542 4623452 | awk 'NR==250; NR==2452{print; exit}'

time seq 3542 4623452 | awk 'NR==2452{print; exit}' > f1

time seq 3542 4623452 | awk 'NR==2452' > f2

