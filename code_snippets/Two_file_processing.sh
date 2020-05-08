## Comparing records

cat color_list1.txt

cat color_list2.txt

awk 'NR==FNR{a[$0]; next} $0 in a' color_list1.txt color_list2.txt

awk 'NR==FNR{a[$0]; next} !($0 in a)' color_list1.txt color_list2.txt

awk 'NR==FNR{a[$0]; next} !($0 in a)' color_list2.txt color_list1.txt

## Comparing fields

cat marks.txt

cat dept.txt

awk 'NR==FNR{a[$1]; next} $1 in a' dept.txt marks.txt

awk 'NR==FNR{a[$1]; next} FNR==1 || $1 in a' dept.txt marks.txt

cat dept_name.txt

awk 'NR==FNR{a[$1,$2]; next} ($1,$2) in a' dept_name.txt marks.txt

cat dept_mark.txt

awk 'NR==FNR{d[$1]=$2; next}
     $1 in d && $3 >= d[$1]' dept_mark.txt marks.txt

cat role.txt

awk -v OFS='\t' 'NR==FNR{r[$1]=$2; next}
       {$(NF+1) = FNR==1 ? "Role" : r[$2]} 1' role.txt marks.txt

## getline

awk -v m=3 -v n=2 'BEGIN{while(n-- > 0) getline s < "greeting.txt"}
                   FNR==m{$0=s} 1' table.txt

awk -v file='table.txt' '(getline line < file)==1{n=split(line, a);
                         if(a[n]>0) print}' greeting.txt

awk '{print $2}' xyz.txt

awk '{getline line < "xyz.txt"; print $NF, line}' table.txt

awk -v file='xyz.txt' '{ e=(getline line < file);
                         if(e<0){print file ": " ERRNO; exit}
                         print $NF, line }' table.txt

