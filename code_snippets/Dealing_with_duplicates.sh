## Whole line duplicates

cat purchases.txt

awk '{print +a[$0] "\t" $0; a[$0]++}' purchases.txt

awk '!a[$0]++' purchases.txt

## Column wise duplicates

cat duplicates.txt

awk -F, '!seen[$NF]++' duplicates.txt

awk -F, '!seen[$1,$3]++' duplicates.txt

## Duplicate count

awk -F, '++seen[$2]==2' duplicates.txt

awk -F, '++seen[$NF]==3' duplicates.txt

tac duplicates.txt | awk -F, '!seen[$NF]++' | tac

awk -F, 'NR==FNR{a[$NF]++; next} a[$NF]>1' duplicates.txt duplicates.txt

awk -F, 'NR==FNR{a[$NF]++; next} a[$NF]>2' duplicates.txt duplicates.txt

awk -F, 'NR==FNR{a[$3]++; next} a[$3]==1' duplicates.txt duplicates.txt

