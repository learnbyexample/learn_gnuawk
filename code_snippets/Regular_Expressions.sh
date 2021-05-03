## Syntax and variable assignment

printf 'spared no one\ngrasped\nspar\n' | awk '/ed/'

printf 'spared no one\ngrasped\nspar\n' | awk 'BEGIN{r = @/ed/} $0 ~ r'

## String Anchors

printf 'spared no one\ngrasped\nspar\n' | awk '/^sp/'

printf 'spared no one\ngrasped\nspar\n' | awk '/ar$/'

printf 'spared no one\ngrasped\nspar\n' | awk '{sub(/^spar$/, "123")} 1'

printf 'spared no one\ngrasped\nspar\n' | awk '{gsub(/^/, "* ")} 1'

printf 'spared no one\ngrasped\nspar\n' | awk '!/ /{gsub(/$/, ".")} 1'

## Word Anchors

cat word_anchors.txt

awk '/\<par/' word_anchors.txt

awk '/par\>/' word_anchors.txt

awk 'gsub(/\<par\>/, "***")' word_anchors.txt

awk '/\Bpar\B/' word_anchors.txt

awk '/\Bpar/' word_anchors.txt

awk '/par\B/' word_anchors.txt

echo 'copper' | awk '{gsub(/\y/, ":")} 1'

echo 'copper' | awk '{gsub(/\B/, ":")} 1'

## Combining conditions

awk '/^b/ && !/at/' table.txt

awk '$1 ~ /low/ || $NF<0' table.txt

## Alternation

awk '/\<par\>|s$/' word_anchors.txt

echo 'cats dog bee parrot foxed' | awk '{gsub(/cat|dog|fox/, "--")} 1'

echo 'cats dog bee parrot foxed' | awk '{sub(/bee|parrot|at/, "--")} 1'

echo 'cats dog bee parrot foxed' | awk '{sub(/parrot|at|bee/, "--")} 1'

echo 'spared party parent' | awk '{sub(/spa|spared/, "**")} 1'

echo 'spared party parent' | awk '{sub(/spared|spa/, "**")} 1'

echo 'spared party parent' | perl -pe 's/spa|spared/**/'

## Grouping

printf 'red\nreform\nread\narrest\n' | awk '/reform|rest/'

printf 'red\nreform\nread\narrest\n' | awk '/re(form|st)/'

printf 'sub par\nspare\npart time\n' | awk '/\<par\>|\<part\>/'

printf 'sub par\nspare\npart time\n' | awk '/\<(par|part)\>/'

printf 'sub par\nspare\npart time\n' | awk '/\<par(|t)\>/'

## Matching the metacharacters

echo 'a^2 + b^2 - C*3' | awk '/b\^2/'

echo '(a*b) + c' | awk '{gsub(/\(|)/, "")} 1'

echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'

## Using string literal as regexp

p='/home/learnbyexample/reports'

echo "$p" | awk '{sub(/\/home\/learnbyexample\//, "~/")} 1'

echo "$p" | awk '{sub("/home/learnbyexample/", "~/")} 1'

printf '/foo/bar/1\n/foo/baz/1\n' | awk '/\/foo\/bar\//'

printf '/foo/bar/1\n/foo/baz/1\n' | awk '$0 ~ "/foo/bar/"'

awk 'gsub("\<par\>", "X")' word_anchors.txt

awk 'gsub("\\<par\\>", "X")' word_anchors.txt

awk 'gsub(/\<par\>/, "X")' word_anchors.txt

echo '\learn\by\example' | awk '{gsub("\\\\", "/")} 1'

echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'

## The dot meta character

echo 'tac tin cot abc:tyz excited' | awk '{gsub(/c.t/, "-")} 1'

printf '4\t35x\n' | awk '{gsub(/.3./, "")} 1'

awk 'BEGIN{s="abc\nxyz"; sub(/c.x/, " ", s); print s}'

## Quantifiers

echo 'fed fold fe:d feeder' | awk '{gsub(/\<fe.?d\>/, "X")} 1'

printf 'sub par\nspare\npart time\n' | awk '/\<part?\>/'

echo 'par part parrot parent' | awk '{gsub(/par(ro)?t/, "X")} 1'

echo 'par part parrot parent' | awk '{gsub(/par(en|ro)?t/, "X")} 1'

echo 'blah \< foo bar < blah baz <' | awk '{gsub(/\\?</, "\\<")} 1'

echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe*d/, "X")} 1'

echo '3111111111125111142' | awk '{gsub(/1*2/, "-")} 1'

echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe+d/, "X")} 1'

echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/f(e|o|:)+d/, "X")} 1'

echo '3111111111125111142' | awk '{gsub(/1+4?2/, "-")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{1,4}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3,}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{,2}c/, "X")} 1'

echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3}c/, "X")} 1'

echo 'Error: not a valid input' | awk '/Error.*valid/'

echo 'two cats and a dog' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'

echo 'two dogs and a cat' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'

## Longest match wins

echo 'foot' | awk '{sub(/f.?o/, "X")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/.*/, "X")} 1'

echo 'foo123312baz' | awk '{sub(/o(1|2|3)+(12baz)?/, "X")} 1'

echo 'foo123312baz' | perl -pe 's/o(1|2|3)+(12baz)?/X/'

echo 'car bat cod map scat dot abacus' | awk '{sub(/.*m/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*t/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*at/, "-")} 1'

echo 'car bat cod map scat dot abacus' | awk '{sub(/a.*m*/, "-")} 1'

## Character classes

printf 'cute\ncat\ncot\ncoat\ncost\nscuttle\n' | awk '/c[ou]t/'

printf 'meeting\ncute\nboat\nat\nfoot\n' | awk '/.[aeo]+t/'

echo 'no so in to do on' | awk '{gsub(/\<[sot][on]\>/, "X")} 1'

awk '/^[on]{2,}$/' /usr/share/dict/words

echo 'Sample123string42with777numbers' | awk '{gsub(/[0-9]+/, "-")} 1'

echo 'coat Bin food tar12 best' | awk '{gsub(/\<[a-z0-9]+\>/, "X")} 1'

echo 'road i post grip read eat pit' | awk '{gsub(/\<[p-z][a-z]*\>/, "X")} 1'

echo '23 154 12 26 34' | awk '{gsub(/\<[12][0-9]\>/, "X")} 1'

echo '0501 035 154 12 26 98234' | awk '{gsub(/\<0*[1-9][0-9]{2,}\>/, "X")} 1'

echo 'Sample123string42with777numbers' | awk '{gsub(/[^0-9]+/, "-")} 1'

echo 'foo:123:bar:baz' | awk '{sub(/(:[^:]+){2}$/, "")} 1'

echo 'I like "mango" and "guava"' | awk '{gsub(/"[^"]+"/, "X")} 1'

printf 'tryst\nfun\nglyph\npity\nwhy\n' | awk '!/[aeiou]/'

echo 'load;err_msg--\/ant,r2..not' | awk '{gsub(/\W+/, "-")} 1'

printf 'hi  \v\f  there.\thave   \ra nice\t\tday\n' | awk '{gsub(/\s+/, " ")} 1'

echo 'w=y\x+9*3' | awk '{gsub(/[\w=]/, "")} 1'

s='err_msg xerox ant m_2 P2 load1 eel'

echo "$s" | awk '{gsub(/\<[[:lower:]]+\>/, "X")} 1'

echo "$s" | awk '{gsub(/\<[[:lower:]_]+\>/, "X")} 1'

echo "$s" | awk '{gsub(/\<[[:alnum:]]+\>/, "X")} 1'

echo ',pie tie#ink-eat_42' | awk '{gsub(/[^[:punct:]]+/, "")} 1'

echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z-]{2,}/, "X")} 1'

echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z\-0-9]{2,}/, "X")} 1'

printf 'int a[5]\nfoo\n1+1=2\n' | awk '/[=]]/'

printf 'int a[5]\nfoo\n1+1=2\n' | awk '/[]=]/'

printf 'int a[5]\nfoo\n1+1=2\n' | awk '/[][]/'

echo 'f*(a^b) - 3*(a+b)/(a-b)' | awk '{gsub(/a[+^]b/, "c")} 1'

echo 'int a[5]' | awk '/[x[.y]/'

echo 'int a[5]' | awk '/[x[y.]/'

## Escape sequences

printf 'foo\tbar\tbaz\n' | awk '{gsub(/\t/, " ")} 1'

printf 'a\t\r\fb\vc\n' | awk '{gsub(/[\t\v\f\r]+/, ":")} 1'

echo "universe: '42'" | awk '{gsub(/\x27/, "")} 1'

printf 'cute\ncot\ncat\ncoat\n' | awk '/\x5eco/'

echo 'hello world' | awk '{sub(/.*/, "[&]")} 1'

echo 'hello world' | awk '{sub(/.*/, "[\x26]")} 1'

echo 'read' | awk '{sub(/a/, "\.")} 1'

## Replace specific occurrence

echo 'foo:123:bar:baz' | awk '{print gensub(/:/, "-", 2)}'

echo 'foo:123:bar:baz' | awk '{print gensub(/[^:]+/, "X", 3)}'

echo '1 good 2 apples' | awk '{$4 = gensub(/[aeiou]/, "X", "g", $4)} 1'

## Backreferences

s='\[\] and \\w and \[a-zA-Z0-9\_\]'

echo "$s" | awk '{print gensub(/(\\?)\\/, "\\1", "g")}'

echo 'one,2,3.14,42' | awk '{print gensub(/^([^,]+).*/, "&,\\1", 1)}'

echo 'hello world' | awk '{sub(/.*/, "Hi. &. Have a nice day")} 1'

s='456:foo:123:bar:789:baz'

echo "$s" | awk '{print gensub(/(.*):((.*:){2})/, "\\1[]\\2", 1)}'

s='one,2,3.14,42'

echo "$s" | awk '{$0=gensub(/^(([^,]+,){2})([^,]+)/, "[\\1](\\3)", 1)} 1'

s='tryst,fun,glyph,pity,why,group'

echo "$s" | awk '{print gensub(/\<\w+\>|(\<[gp]\w*y\w*\>)/, "\\1", "g")}'

echo "$s" | awk '{print gensub(/(\<[gp]\w*y\w*\>)|\<\w+\>/, "\\1", "g")}'

echo 'foo and bar' | awk '{sub(/and/, "[&]")} 1'

echo 'foo and bar' | awk '{sub(/and/, "[\\&]")} 1'

echo 'foo and bar' | awk '{sub(/and/, "\\")} 1'

## Case insensitive matching

printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk -v IGNORECASE=1 '/cat/'

printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk '{gsub(/[cC][aA][tT]/, "dog")} 1'

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

