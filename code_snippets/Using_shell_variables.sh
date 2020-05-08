## -v option

s='cake'

awk -v word="$s" '$2==word' table.txt

## ENVIRON

awk 'BEGIN{print ENVIRON["HOME"]}'

awk 'BEGIN{print ENVIRON["SHELL"]}'

word='hello' awk 'BEGIN{print ENVIRON["word"]}'

s='hi\nbye'

awk -v ip="$s" 'BEGIN{print ip}'

ip="$s" awk 'BEGIN{print ENVIRON["ip"]}'

r='\Bpar\B'

awk -v rgx="$r" '$0 ~ rgx' word_anchors.txt

r='\\Bpar\\B'

awk -v rgx="$r" '$0 ~ rgx' word_anchors.txt

r='\Bpar\B'

rgx="$r" awk '$0 ~ ENVIRON["rgx"]' word_anchors.txt

