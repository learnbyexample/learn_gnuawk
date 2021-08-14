## Prefixing $ for variables

awk -v word="cake" '$2==$word' table.txt

awk -v word="cake" '$2==word' table.txt

awk -v field=2 '{print $field}' table.txt

## Dos style line endings

printf 'mat dog\n123 789\n' | awk '{print $2, $1}'

printf 'mat dog\r\n123 789\r\n' | awk '{print $2, $1}'

printf 'mat dog\r\n123 789\r\n' | awk '{sub(/$/, ".")} 1'

printf 'mat dog\r\n123 789\r\n' | awk -v RS='\r\n' '{print $2, $1}'

printf 'mat dog\r\n123 789\r\n' | awk -v RS='\r\n' '{sub(/$/, ".")} 1'

## Behavior of ^ and $ when string contains newline

printf 'apple\n,mustard,grape,\nmango' | awk -v RS=, '/e$/'

printf 'apple\n,mustard,grape,\nmango' | awk -v RS=, '/^m/'

## Word boundary differences

echo 'I have 12, he has 2!' | awk '{gsub(/\y..\y/, "[&]")} 1'

echo 'I have 12, he has 2!' | awk '{gsub(/\<..\>/, "[&]")} 1'

echo 'hi log_42 12b' | awk '{gsub(/\y/, ":")} 1'

echo 'hi log_42 12b' | awk '{gsub(/\</, ":")} 1'

echo 'hi log_42 12b' | awk '{gsub(/\>/, ":")} 1'

## Relying on default initial value

awk '{sum += $NF} END{print sum}' table.txt

awk '{sum += $NF} ENDFILE{print FILENAME ":" sum}' table.txt

awk '{sum += $NF} ENDFILE{print FILENAME ":" sum}' table.txt marks.txt

awk '{sum += $NF} ENDFILE{print FILENAME ":" sum; sum=0}' table.txt marks.txt

## Code in replacement section

awk '{sub(/^(br|ye)/, ++c ") &")} 1' table.txt

awk '/^(br|ye)/{sub(/^/, ++c ") ")} 1' table.txt

awk '{gsub(/\<b/, ++c ") &")} 1' table.txt

## Forcing numeric context

awk '{sum += $NF} END{print sum}' table.txt

awk '{sum += $1} END{print sum}' table.txt

awk '{sum += $1} END{print sum}' /dev/null

awk '{sum += $1} END{print +sum}' /dev/null

echo '3.14' | awk '{$0++} 1'

echo '3,14' | awk '{$0++} 1'

echo '3,14' | LC_NUMERIC=de_DE awk -N '{$0++} 1'

## Forcing string context

echo '5 5.0' | awk '{print ($1==$2 ? "same" : "different"), "number"}'

echo '5 5.0' | awk '{print ($1""==$2 ? "same" : "different"), "string"}'

## Negative NF

cat varying.txt

awk '{NF -= 2} 1' varying.txt

awk 'NF>2{NF -= 2} 1' varying.txt

awk '{print $(NF-2)}' varying.txt

awk 'NF>2{print $(NF-2)}' varying.txt

## Faster execution

time awk '/^([a-d][r-z]){3}$/' /usr/share/dict/words > f1

time LC_ALL=C awk '/^([a-d][r-z]){3}$/' /usr/share/dict/words > f2

time mawk '/^[a-d][r-z][a-d][r-z][a-d][r-z]$/' /usr/share/dict/words > f3

diff -s f1 f2

diff -s f2 f3

rm f[123]

time awk -F'a' 'NF==4{cnt++} END{print +cnt}' /usr/share/dict/words

time LC_ALL=C awk -F'a' 'NF==4{cnt++} END{print +cnt}' /usr/share/dict/words

time mawk -F'a' 'NF==4{cnt++} END{print +cnt}' /usr/share/dict/words

