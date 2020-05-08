## length

awk 'BEGIN{print length("road"); print length(123456)}'

printf 'fox\ntiger\n' | awk '{print length()}'

awk 'length($1) < 6' table.txt

echo 'αλεπού' | awk '{print length()}'

echo 'αλεπού' | awk -b '{print length()}'

echo 'αλεπού' | LC_ALL=C awk '{print length()}'

## Array sorting

awk 'BEGIN{a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'

awk 'BEGIN{PROCINFO["sorted_in"] = "@ind_str_asc";
     a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'

awk 'BEGIN{PROCINFO["sorted_in"] = "@val_num_asc";
     a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'

awk 'BEGIN{PROCINFO["sorted_in"] = "@ind_str_asc"}
     {a[$2]=$0} END{for(k in a) print a[k]}' table.txt

## split

printf '     one \t two\t\t\tthree  ' | awk '{split($0, a); print a[2]}'

s='Joe,1996-10-25,64,78'

echo "$s" | awk -F, '{split($2, d, "-"); print $1 " was born in " d[1]}'

s='air,water,12:42:3'

echo "$s" | awk -F, '{n=split($NF, a, ":");
                     for(i=1; i<=n; i++) print $1, $2, a[i]}'

s='Sample123string42with777numbers'

echo "$s" | awk '{split($0, s, /[0-9]+/); print s[2], s[4]}'

s='Sample123string42with777numbers'

echo "$s" | awk '{n=split($0, s, /[0-9]+/, seps);
                 for(i=1; i<n; i++) print seps[i]}'

cat marks.txt

awk 'BEGIN{OFS="\t"; split("DCBAS", g, //)}
     {$(NF+1) = NR==1 ? "Grade" : g[int($NF/10)-4]} 1' marks.txt

## patsplit

s='eagle,"fox,42",bee,frog'

echo "$s" | awk '{patsplit($0, a, /"[^"]*"|[^,]*/); print a[2]}'

## substr

echo 'abcdefghij' | awk '{print substr($0, 1, 5)}'

echo 'abcdefghij' | awk '{print substr($0, 4, 3)}'

echo 'abcdefghij' | awk '{print substr($0, 6)}'

echo 'abcdefghij' | awk -v OFS=: '{print substr($0, 2, 3), substr($0, 6, 3)}'

echo 'abcdefghij' | awk -v FS= '{print $3}'

echo 'abcdefghij' | awk -v FS= '{print $3, $5}'

## match

s='051 035 154 12 26 98234'

echo "$s" | awk 'match($0, /[0-9]{4,}/){print substr($0, RSTART, RLENGTH)}'

echo "$s" | awk 'match($0, /0*[1-9][0-9]{2,}/, m){print m[0]}'

echo 'foo=42, baz=314' | awk 'match($0, /baz=([0-9]+)/, m){print m[0]}'

echo 'foo=42, baz=314' | awk 'match($0, /baz=([0-9]+)/, m){print m[1]}'

s='42 foo-5, baz3; x-83, y-20: f12'

echo "$s" | awk '{ while( match($0, /([0-9]+),/, m) ){print m[1];
                 $0=substr($0, RSTART+RLENGTH)} }'

## index

cat eqns.txt

awk '/i*(t+9-g)/' eqns.txt

awk 'index($0, "i*(t+9-g)")' eqns.txt

awk -F, 'index($NF, "a+b")' eqns.txt

awk -F, '$1=="a+b"' eqns.txt

awk 'index($0, "a+b")==1' eqns.txt

awk -v s="a+b" 'index($0, s)==length()-length(s)+1' eqns.txt

echo 'a\b\c\d' | awk -v s='a\b' 'index($0, s)'

echo 'a\b\c\d' | awk -v s='a\\b' 'index($0, s)'

echo 'a\b\c\d' | s='a\b' awk 'index($0, ENVIRON["s"])'

## system

awk 'BEGIN{system("echo Hello World")}'

wc table.txt

awk 'BEGIN{system("wc table.txt")}'

awk 'BEGIN{system("seq 10 | paste -sd, > out.txt")}'

cat out.txt

cat t2.txt

echo 'f1,t2,f3' | awk -F, '{system("cat " $2 ".txt")}'

ls xyz.txt

echo $?

awk 'BEGIN{s=system("ls xyz.txt"); print "Exit status: " s}'

## printf and sprintf

awk 'BEGIN{print OFMT}'

awk 'BEGIN{sum = 3.1428 + 100; print sum}'

awk 'BEGIN{OFMT="%.5f"; sum = 3.1428 + 100; print sum}'

awk 'BEGIN{sum = 3.1428 + 10; printf "%f\n", sum}'

awk 'BEGIN{sum = 3.1428 + 10; printf "%.3f\n", sum}'

awk 'BEGIN{pi = 3.14159; printf "[%10.3f]\n", pi}'

awk 'BEGIN{pi = 3.14159; printf "[%-10.3f]\n", pi}'

awk 'BEGIN{pi = 3.14159; printf "%010.3f\n", pi}'

awk 'BEGIN{pi = 3.14159; printf "%e\n", pi}'

awk 'BEGIN{printf "%d\n", 1.99}'

awk 'BEGIN{printf "%+d\n", 100}'

awk 'BEGIN{printf "%+d\n", -100}'

awk 'BEGIN{printf "|%10s|\n", "mango"}'

awk 'BEGIN{printf "|%-10s|\n", "mango"}'

awk '{printf "%.4s\n", $0}' table.txt

awk 'BEGIN{printf "%1$d + %2$d * %1$d = %3$d\n", 3, 4, 15}'

awk 'BEGIN{printf "hex=%1$#x\noct=%1$#o\ndec=%1$d\n", 15}'

awk 'BEGIN{d=10; p=3; pi = 3.14159; printf "%0*.*f\n", d, p, pi}'

awk 'BEGIN{s="solve: 5 % x = 1"; printf s}'

awk 'BEGIN{s="solve: 5 % x = 1"; printf "%s\n", s}'

awk 'BEGIN{printf "n%%d gives the remainder\n"}'

awk 'BEGIN{pi = 3.14159; s = sprintf("%010.3f", pi); print s}'

## Redirecting print output

seq 6 | awk 'NR%2{print > "odd.txt"; next} {print > "even.txt"}'

cat odd.txt

cat even.txt

awk -v OFS='\t' 'NR>1{print $2, $3 > $1".txt"}' marks.txt

cat ECE.txt

awk '{print $2 | "paste -sd,"}' table.txt

awk '{print $2 | "sort | paste -sd,"}' table.txt

awk -v OFS='\t' 'NR>1{print $2, $3 | "sort > "$1".txt"}' marks.txt

cat ECE.txt

