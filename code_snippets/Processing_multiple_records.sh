## Processing consecutive records

awk 'p ~ /as/ && /not/{print p ORS $0} {p=$0}' programming_quotes.txt

awk 'p ~ /as/ && /not/{print p} {p=$0}' programming_quotes.txt

awk 'p ~ /as/ && /not/; {p=$0}' programming_quotes.txt

## Context matching

cat context.txt

awk '/blue/{n=2} n && n--' context.txt

awk '/toy|flower/{n=2} n && n--{print NR, $0}' context.txt

awk '!n && /toy|flower/{n=2} n && n--{print NR, $0}' context.txt

awk 'n && n--; /language/{n=1}' context.txt

awk '!n && /toy|flower/{n=2; next} n && n--' context.txt

awk -v n=2 'NR in a; /toy|flower/{a[NR+n]}' context.txt

awk 'n && !--n; /language/{n=3}' context.txt

awk -v n=2 '/toy|flower/{for(i=NR-n; i<NR; i++) if(i>0) print a[i]}
            {a[NR]=$0}' context.txt

awk 'NR>2 && /toy|flower/{print p2} {p2=p1; p1=$0}' context.txt

awk -v n=4 'NR>n && /age/{print a[NR-n]} {a[NR]=$0}' context.txt

## Records bounded by distinct markers

cat uniform.txt

awk '/start/{f=1} f; /end/{f=0}' uniform.txt

awk '/end/{f=0} f{print "*", $0} /start/{f=1}' uniform.txt

awk '/start/{f=1} /end/{f=0} f' uniform.txt

awk 'f; /start/{f=1} /end/{f=0}' uniform.txt

awk '/start/{f=1} !f{print $0 "."} /end/{f=0}' uniform.txt

awk '/end/{f=0} !f; /start/{f=1}' uniform.txt

awk '!f; /start/{f=1} /end/{f=0}' uniform.txt

awk '/start/{f=1} /end/{f=0} !f' uniform.txt

## Specific blocks

awk '/start/{f=1} f; /end/{exit}' uniform.txt

awk '/end/{exit} f; /start/{f=1}' uniform.txt

tac uniform.txt | awk '/end/{f=1} f; /start/{exit}' | tac

awk '/start/{f=1; b=$0; next} f{b=b ORS $0} /end/{f=0}
     END{print b}' uniform.txt

seq 30 | awk -v n=2 '/4/{c++} c==n; /6/ && c==n{exit}'

seq 30 | awk -v n=1 '/4/{f=1; c++} f && c>n; /6/{f=0}'

seq 30 | awk -v n=2 '/4/{f=1; c++} f && c!=n; /6/{f=0}'

seq 30 | awk '/4/{f=1; buf=$0; m=0; next}
              f{buf=buf ORS $0}
              /6/{f=0; if(m) print buf}
              $0=="15"{m=1}'

## Broken blocks

cat broken.txt

awk '/error/{f=1; buf=$0; next}
     f{buf=buf ORS $0}
     /state/{if(f) print buf; f=0}' broken.txt

