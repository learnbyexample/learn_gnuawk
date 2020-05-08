## Filtering

printf 'gate\napple\nwhat\nkite\n'

printf 'gate\napple\nwhat\nkite\n' | awk '/at/'

printf 'gate\napple\nwhat\nkite\n' | awk '!/e/'

printf 'gate\napple\nwhat\nkite\n' | awk '$0 ~ /at/{print $0}'

printf 'gate\napple\nwhat\nkite\n' | awk '$0 !~ /e/{print $0}'

printf 'gate\napple\nwhat\nkite\n' | awk '1'

## Substitution

printf '1:2:3:4\na:b:c:d\n' | awk '{sub(/:/, "-")} 1'

printf '1:2:3:4\na:b:c:d\n' | awk '{gsub(/:/, "-")} 1'

## Field processing

cat table.txt

awk '{print $2}' table.txt

awk '$NF<0' table.txt

awk '{gsub(/b/, "B", $1)} 1' table.txt

## awk one-liner structure

awk '{
       if($NF < 0){
          print $0
       }
     }' table.txt

awk '$NF<0' table.txt

seq 2 | awk 'BEGIN{print "---"} 1; END{print "%%%"}'

## Strings and Numbers

awk 'BEGIN{print "hi"}'

awk 'BEGIN{print 42}'

awk 'BEGIN{print 3.14}'

awk 'BEGIN{print 34.23e4}'

awk 'BEGIN{a=5; b=2.5; print a+b}'

awk 'BEGIN{s1="con"; s2="cat"; print s1 s2}'

awk '{sum += $NF} END{print sum}' table.txt

awk 'BEGIN{n1="5.0"; n2=5; if(n1==n2) print "equal"}'

awk 'BEGIN{n1="5.0"; n2=5; if(+n1==n2) print "equal"}'

awk 'BEGIN{n1="5.0"; n2=5; if(n1==n2".0") print "equal"}'

awk 'BEGIN{print 5 + "abc 2 xyz"}'

awk 'BEGIN{print 5 + " \t 2 xyz"}'

## Arrays

awk 'BEGIN{student["id"] = 101; student["name"] = "Joe";
     print student["name"]}'

awk 'BEGIN{student["id"] = 101; student["name"] = "Joe";
     if("id" in student) print "Key found"}'

