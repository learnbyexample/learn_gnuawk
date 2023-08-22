## Syntax and variable assignment

printf 'spared no one\ngrasped\nspar\n' | awk '/ed/'

printf 'spared no one\ngrasped\nspar\n' | awk 'BEGIN{r = @/ed/} $0 ~ r'

## String Anchors

cat anchors.txt

awk '/^sp/' anchors.txt

awk '/ar$/' anchors.txt

printf 'spared no one\npar\nspar\n' | awk '{sub(/^spar$/, "123")} 1'

printf 'spared no one\ngrasped\nspar\n' | awk '{gsub(/^/, "* ")} 1'

printf 'spared no one\ngrasped\nspar\n' | awk '!/ /{gsub(/$/, ".")} 1'

## Word Anchors

cat anchors.txt

awk '/\<par/' anchors.txt

awk '/par\>/' anchors.txt

awk 'gsub(/\<par\>/, "***")' anchors.txt

## Opposite Word Anchor

awk '/\Bpar\B/' anchors.txt

awk '/\Bpar/' anchors.txt

awk '/par\B/' anchors.txt

echo 'copper' | awk '{gsub(/\y/, ":")} 1'

echo 'copper' | awk '{gsub(/\B/, ":")} 1'

## Combining conditions

awk '/^b/ && !/at/' table.txt

awk '$1 ~ /low/ || $NF<0' table.txt

## Alternation

awk '/\<par\>|s$/' anchors.txt

echo 'cats dog bee parrot foxed' | awk '{gsub(/cat|dog|fox/, "--")} 1'

## Alternation precedence

echo 'cats dog bee parrot foxed' | awk '{sub(/bee|parrot|at/, "--")} 1'

echo 'cats dog bee parrot foxed' | awk '{sub(/parrot|at|bee/, "--")} 1'

echo 'spared party parent' | awk '{sub(/spa|spared/, "**")} 1'

echo 'spared party parent' | awk '{sub(/spared|spa/, "**")} 1'

echo 'spared party parent' | perl -pe 's/spa|spared/**/'

## Grouping

printf 'red\nreform\nread\narrest\n' | awk '/reform|rest/'

printf 'red\nreform\nread\narrest\n' | awk '/re(form|st)/'

awk '/\<par\>|\<part\>/' anchors.txt

awk '/\<(par|part)\>/' anchors.txt

awk '/\<par(|t)\>/' anchors.txt

## Matching the metacharacters

printf 'a^2 + b^2 - C*3\nd = c^2' | awk '/b\^2/'

echo '(a*b) + c' | awk '{gsub(/\(|)/, "")} 1'

echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'

## Using string literal as a regexp

p='/home/learnbyexample/reports'

echo "$p" | awk '{sub(/\/home\/learnbyexample\//, "~/")} 1'

echo "$p" | awk '{sub("/home/learnbyexample/", "~/")} 1'

printf '/home/joe/1\n/home/john/1\n' | awk '/\/home\/joe\//'

printf '/home/joe/1\n/home/john/1\n' | awk '$0 ~ "/home/joe/"'

awk 'gsub("\<par\>", "X")' anchors.txt

awk 'gsub("\\<par\\>", "X")' anchors.txt

awk 'gsub(/\<par\>/, "X")' anchors.txt

echo '\learn\by\example' | awk '{gsub("\\\\", "/")} 1'

echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'

## The dot meta character

echo 'tac tin cot abc:tyz excited' | awk '{gsub(/c.t/, "-")} 1'

printf '42\t3500\n' | awk '{gsub(/.3./, ":")} 1'

awk 'BEGIN{s="abc\nxyz"; sub(/c.x/, " ", s); print s}'

## Quantifiers

echo 'fed fold fe:d feeder' | awk '{gsub(/\<fe.?d\>/, "X")} 1'

awk '/\<part?\>/' anchors.txt

echo 'par part parrot parent' | awk '{gsub(/par(ro)?t/, "X")} 1'

echo 'par part parrot parent' | awk '{gsub(/par(en|ro)?t/, "X")} 1'

echo 'apple \< fig ice < apple cream <' | awk '{gsub(/\\?</, "\\<")} 1'

echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe*d/, "X")} 1'

echo '3111111111125111142' | awk '{gsub(/1*2/, "-")} 1'

echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe+d/, "X")} 1'

echo '3111111111125111142' | awk '{gsub(/1+4?2/, "-")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{1,4}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3,}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{,2}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3}c/, "X")} 1'

echo 'a{5} = 10' | awk '{sub(/a\{5}/, "x")} 1'

echo 'report_{a,b}.txt' | awk '{sub(/_{a,b}/, "_c")} 1'

## Conditional AND

echo 'Error: not a valid input' | awk '/Error.*valid/'

echo 'two cats and a dog' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'

echo 'two dogs and a cat' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'

## Longest match wins

echo 'foot' | awk '{sub(/f.?o/, "X")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/.*/, "X")} 1'

echo 'fig123312apple' | awk '{sub(/g(1|2|3)+(12apple)?/, "X")} 1'

echo 'fig123312apple' | perl -pe 's/g(1|2|3)+(12apple)?/X/'

echo 'car bat cod map scat dot abacus' | awk '{sub(/.*b/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*t/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*at/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/a.*m*/, "-")} 1'

## Character classes

printf 'cute\ncat\ncot\ncoat\ncost\nscuttle\n' | awk '/c[ou]t/'

printf 'meeting\ncute\nboat\nat\nfoot\n' | awk '/.[aeo]t/'

echo 'no so in to do on' | awk '{gsub(/\<[sot][on]\>/, "X")} 1'

awk '/^[on]{2,}$/' words.txt

## Character class metacharacters

echo 'Sample123string42with777numbers' | awk '{gsub(/[0-9]+/, "-")} 1'

echo 'coat Bin food tar12 best' | awk '{gsub(/\<[a-z0-9]+\>/, "X")} 1'

echo 'road i post grip read eat pit' | awk '{gsub(/\<[p-z][a-z]*\>/, "X")} 1'

echo '23 154 12 26 34' | awk '{gsub(/\<[12][0-9]\>/, "X")} 1'

echo '0501 035 154 12 26 98234' | awk '{gsub(/\<0*[1-9][0-9]{2,}\>/, "X")} 1'

echo 'Sample123string42with777numbers' | awk '{gsub(/[^0-9]+/, "-")} 1'

echo 'apple:123:banana:cherry' | awk '{sub(/(:[^:]+){2}$/, "")} 1'

echo 'I like "mango" and "guava"' | awk '{gsub(/"[^"]+"/, "X")} 1'

printf 'tryst\nfun\nglyph\npity\nwhy\n' | awk '!/[aeiou]/'

echo 'load;err_msg--\/ant,r2..not' | awk '{gsub(/\W+/, "|")} 1'

printf 'hi  \v\f  there.\thave   \ra nice\t\tday\n' | awk '{gsub(/\s+/, " ")} 1'

echo 'w=y\x+9*3' | awk '{gsub(/[\w=]/, "")} 1'

echo '42\d123' | awk '{gsub(/\d+/, "-")} 1'

echo '42\d123' | perl -pe 's/\d+/-/g'

## Named character sets

s='err_msg xerox ant m_2 P2 load1 eel'

echo "$s" | awk '{gsub(/\<[[:lower:]]+\>/, "X")} 1'

echo "$s" | awk '{gsub(/\<[[:lower:]_]+\>/, "X")} 1'

echo "$s" | awk '{gsub(/\<[[:alnum:]]+\>/, "X")} 1'

echo ',pie tie#ink-eat_42' | awk '{gsub(/[^[:punct:]]+/, "")} 1'

## Matching character class metacharacters literally

echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z-]{2,}/, "X")} 1'

echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z\-0-9]{2,}/, "X")} 1'

printf 'int a[5]\nfig\n1+1=2\n' | awk '/[=]]/'

printf 'int a[5]\nfig\n1+1=2\n' | awk '/[]=]/'

echo 'int a[5].y' | awk '{gsub(/[x[y.]/, "")} 1'

printf 'int a[5]\nfig\n1+1=2\nwho]' | awk '/[][]/'

echo 'f*(a^b) - 3*(a+b)/(a-b)' | awk '{gsub(/a[+^]b/, "c")} 1'

echo 'int a[5]' | awk '/[x[.y]/'

echo 'int a[5]' | awk '/[x[y.]/'

## Escape sequences

printf 'apple\tbanana\tcherry\n' | awk '{gsub(/\t/, " ")} 1'

printf 'a\t\r\fb\vc\n' | awk '{gsub(/[\t\v\f\r]+/, ":")} 1'

echo "universe: '42'" | awk '{gsub(/\x27/, "")} 1'

printf 'acorn\ncot\ncat\ncoat\n' | awk '/\x5eco/'

echo 'hello world' | awk '{sub(/.*/, "[&]")} 1'

echo 'hello world' | awk '{sub(/.*/, "[\x26]")} 1'

echo 'read' | awk '{sub(/\d/, "l")} 1'

## Replace specific occurrence

s='apple:banana:cherry:fig:mango'

echo "$s" | awk '{print gensub(/:/, "-", 2)}'

echo "$s" | awk '{print gensub(/[^:]+/, "123", 3)}'

echo '1 good 2 apples' | awk '{$4 = gensub(/[aeiou]/, "X", "g", $4)} 1'

## Backreferences

s='\[\] and \\w and \[a-zA-Z0-9\_\]'

echo "$s" | awk '{print gensub(/(\\?)\\/, "\\1", "g")}'

echo 'one,2,3.14,42' | awk '{print gensub(/^([^,]+).*/, "&,\\1", 1)}'

echo 'hello world' | awk '{sub(/.*/, "Hi. &. Have a nice day")} 1'

s='car,art,pot,tap,urn,ray,ear'

echo "$s" | awk '{print gensub(/(.*),((.*,){2})/, "\\1[]\\2", 1)}'

s='effort flee facade oddball rat tool'

echo "$s" | awk '{gsub(/\w*(\w)\1\w*/, "X")} 1'

echo "$s" | sed -E 's/\w*(\w)\1\w*/X/g'

s='one,2,3.14,42'

echo "$s" | awk '{$0=gensub(/^(([^,]+,){2})([^,]+)/, "[\\1](\\3)", 1)} 1'

s='tryst,fun,glyph,pity,why,group'

echo "$s" | awk '{print gensub(/\<\w+\>|(\<[gp]\w*y\w*\>)/, "\\1", "g")}'

echo "$s" | awk '{print gensub(/(\<[gp]\w*y\w*\>)|\<\w+\>/, "\\1", "g")}'

echo 'apple and fig' | awk '{sub(/and/, "[&]")} 1'

echo 'apple and fig' | awk '{sub(/and/, "[\\&]")} 1'

echo 'apple and fig' | awk '{sub(/and/, "\\")} 1'

## Case insensitive matching

printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk -v IGNORECASE=1 '/cat/'

printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk '{gsub(/[cC][aA][tT]/, "(&)")} 1'

printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk 'tolower($0) ~ /cat/'

## Dynamic regexp

r='cat.*dog|dog.*cat'

echo 'two cats and a dog' | awk -v ip="$r" '{gsub(ip, "pets")} 1'

awk -v s='ow' '$0 ~ s' table.txt

r='\\<[12][0-9]\\>'

echo '23 154 12 26 34' | awk -v ip="$r" '{gsub(ip, "X")} 1'

awk -v s='(a.b)^{c}|d' 'BEGIN{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); print s}'

echo 'f*(a^b) - 3*(a^b)' |
   awk -v s='(a^b)' '{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); gsub(s, "c")} 1'

echo 'f*(a^b) - 3*(a^b)' |
   awk -v s='(a^b)' '{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); gsub(s "$", "c")} 1'

