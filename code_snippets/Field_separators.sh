## Default field separation

cat table.txt

awk '$1 ~ /^b/{print $4}' table.txt

awk -v f=3 '{print $f}' table.txt

awk '{print $NF}' table.txt

awk '{print $(NF-1)}' table.txt

awk '{print $NF-1}' table.txt

echo '   a   b   c   ' | awk '{print NF}'

echo '   a   b   c   ' | awk '{print $1}'

echo '   a   b   c   ' | awk '{print $NF "."}'

printf '     one \t two\t\t\tthree  ' | awk '{print NF}'

printf '     one \t two\t\t\tthree  ' | awk '{print $2 "."}'

awk 'BEGIN{printf "%.16f\n", 2.999999999999999}'

awk 'BEGIN{printf "%.16f\n", 2.9999999999999999}'

awk '{print $2.999999999999999}' table.txt

awk '{print $2.9999999999999999}' table.txt

## Input field separator

echo 'goal:amazing:whistle:kwality' | awk -F: '{print $1}'

echo 'goal:amazing:whistle:kwality' | awk -F: '{print $NF}'

echo 'one;two;three;four' | awk -F';' '{print $3}'

echo '=a=b=c=' | awk -F= '{print $1 "[" $NF "]"}'

printf '\nhello\napple,banana\n' | awk -F, '{print NF}'

echo 'goal:amazing:whistle:kwality' | awk -v FS=: '{print $2}'

echo '1e4SPT2k6SPT3a5SPT4z0' | awk 'BEGIN{FS="SPT"} {print $3}'

echo 'apple' | awk -F '' '{print $1}'

echo 'apple' | awk -v FS= '{print $NF}'

echo 'αλεπού' | awk -v FS= '{print $3}'

echo 'Sample123string42with777numbers' | awk -F'[0-9]+' '{print $2}'

echo 'Sample123string42with777numbers' | awk -F'[a-zA-Z]+' '{print $2}'

echo 'load;err_msg--\ant,r2..not' | awk -F'\\W+' '{print $3}'

echo 'hi.bye.hello' | awk -F. '{print $2}'

printf 'cool\nnice car\n' | awk -F'[aeiou]' '{print NF-1}'

echo '   a   b   c   ' | awk -F' ' '{print NF}'

echo '   a   b   c   ' | awk -F'[ ]' '{print NF}'

echo 'RECONSTRUCTED' | awk -F'[aeiou]+' -v IGNORECASE=1 '{print $1}'

echo 'RECONSTRUCTED' | awk -F'e' -v IGNORECASE=1 '{print $1}'

echo 'RECONSTRUCTED' | awk -F'[e]' -v IGNORECASE=1 '{print $1}'

## Output field separator

awk '{print $1, $3}' table.txt

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{print $2, $NF}'

echo 'goal:amazing:whistle:kwality' | awk 'BEGIN{FS=OFS=":"} {print $2, $NF}'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=- '{print $2, $NF}'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$2 = 42} 1'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=, '{$2 = 42} 1'

echo '   a   b   c   ' | awk '{$NF = "last"} 1'

echo 'Sample123string42with777numbers' | awk -F'[0-9]+' -v OFS=, '1'

echo 'Sample123string42with777numbers' | awk -F'[0-9]+' -v OFS=, '{$1=$1} 1'

## Manipulating NF

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=, '{NF=2} 1'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$(NF+1)="sea"} 1'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$8="go"} 1'

echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{NF=-1} 1'

## FPAT

s='Sample123string42with777numbers'

echo "$s" | awk -v FPAT='[0-9]+' '{print $2}'

echo "$s" | awk -v FPAT='[a-zA-Z]+' -v OFS=, '{$1=$1} 1'

s='eagle,"fox,42",bee,frog'

echo "$s" | awk -F, '{print $2}'

echo "$s" | awk -v FPAT='"[^"]*"|[^,]*' '{print $2}'

echo 'Read Eat Sleep' | awk -v FPAT='e' '{print NF}'

echo 'Read Eat Sleep' | awk -v IGNORECASE=1 -v FPAT='e' '{print NF}'

echo 'Read Eat Sleep' | awk -v IGNORECASE=1 -v FPAT='[e]' '{print NF}'

## FIELDWIDTHS

cat items.txt

awk -v FIELDWIDTHS='8 4 6' '{print $2}' items.txt

awk -v FIELDWIDTHS='8 4 6' '{print "[" $2 "]"}' items.txt

awk -v FIELDWIDTHS='5 3:3 1:6' '{print "[" $1 "]"}' items.txt

awk -v FIELDWIDTHS='5 3:3 1:6' '{print "[" $2 "]"}' items.txt

awk -v FIELDWIDTHS='5 *' '{print "[" $1 "]"}' items.txt

awk -v FIELDWIDTHS='5 *' '{print "[" $2 "]"}' items.txt

