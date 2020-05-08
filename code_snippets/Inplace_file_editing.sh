## Without backup

cat greet.txt

awk -i inplace '{print NR ". " $0}' greet.txt

cat greet.txt

cat f1.txt

cat f2.txt

awk -i inplace '{gsub(/\<3\>/, "three")} 1' f1.txt f2.txt

cat f1.txt

cat f2.txt

## With backup

cat f3.txt

awk -i inplace -v inplace::suffix='.bkp' -v OFS=, '{$1=$1} 1' f3.txt

cat f3.txt

cat f3.txt.bkp

