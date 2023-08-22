# Exercises

>![info](../images/info.svg) For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/learn_gnuawk/blob/master/exercises/Exercise_solutions.md).

<br>

# awk introduction

**1)** For the input file `addr.txt`, display all lines containing `is`.

```bash
$ cat addr.txt
Hello World
How are you
This game is good
Today is sunny
12345
You are funny

$ awk ##### add your solution here
This game is good
Today is sunny
```

**2)** For the input file `addr.txt`, display the first field of lines *not* containing `y`. Consider space as the field separator for this file.

```bash
$ awk ##### add your solution here
Hello
This
12345
```

**3)** For the input file `addr.txt`, display all lines containing no more than 2 fields.

```bash
$ awk ##### add your solution here
Hello World
12345
```

**4)** For the input file `addr.txt`, display all lines containing `is` in the second field.

```bash
$ awk ##### add your solution here
Today is sunny
```

**5)** For each line of the input file `addr.txt`, replace the first occurrence of `o` with `0`.

```bash
$ awk ##### add your solution here
Hell0 World
H0w are you
This game is g0od
T0day is sunny
12345
Y0u are funny
```

**6)** For the input file `table.txt`, calculate and display the product of numbers in the last field of each line. Consider space as the field separator for this file.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14

$ awk ##### add your solution here
-923.16
```

**7)** Append `.` to all the input lines for the given stdin data.

```bash
$ printf 'last\nappend\nstop\ntail\n' | awk ##### add your solution here
last.
append.
stop.
tail.
```

**8)** Replace all occurrences of `0xA0` with `0x50` and `0xFF` with `0x7F` for the given input file.

```bash
$ cat hex.txt
start address: 0xA0, func1 address: 0xA0
end address: 0xFF, func2 address: 0xB0

$ awk ##### add your solution here
start address: 0x50, func1 address: 0x50
end address: 0x7F, func2 address: 0xB0
```

<br>

# Regular Expressions

**1)** For the input file `patterns.txt`, display all lines that start with `den` or end with `ly`.

```bash
$ awk ##### add your solution here
2 lonely
dent
lovely
```

**2)** For the input file `patterns.txt`, replace all occurrences of `42` with `[42]` unless it is at the edge of a word. Display only the modified lines.

```bash
$ awk ##### add your solution here
Hi[42]Bye nice1[42]3 bad42
eqn2 = pressure*3+42/5-1[42]56
cool_[42]a 42fake
_[42]_
```

**3)** For the input file `patterns.txt`, add `[]` around words starting with `s` and containing `e` and `t` in any order. Display only the modified lines.

```bash
$ awk ##### add your solution here
[sets] tests Sauerkraut
[site] cite kite bite [store_2]
[subtle] sequoia
a [set]
```

**4)** For the input file `patterns.txt`, replace the space character that occurs after a word ending with `a` or `r` with a newline character, only if the line also contains an uppercase letter. Display only the modified lines. For example, `A car park` should get converted to `A car` and `park` separated by a newline. But `car far tar` shouldn't be matched as there's no uppercase letter in this line.

```bash
$ awk ##### add your solution here
par
car
tar
far
Cart
Not a
pip DOWN
```

**5)** For the input file `patterns.txt`, replace all occurrences of `*[5]` with `2`. Display only the modified lines.

```bash
$ awk ##### add your solution here
(9-2)2
```

**6)** `awk '/\<[a-z](on|no)[a-z]\>/'` is same as `awk '/\<[a-z][on]{2}[a-z]\>/'`. True or False? Sample input shown below might help to understand the differences, if any.

```bash
$ printf 'known\nmood\nknow\npony\ninns\n'
known
mood
know
pony
inns
```

**7)** For the input file `patterns.txt`, display all lines starting with `hand` and ending immediately with `s` or `y` or `le` or no further characters. For example, `handed` shouldn't be matched even though it starts with `hand`.

```bash
$ awk ##### add your solution here
handle
handy
hands
hand
```

**8)** For the input file `patterns.txt`, replace `42//5` or `42/5` with `8`. Display only the modified lines.

```bash
$ awk ##### add your solution here
eqn3 = r*42-5/3+42///5-83+a
eqn1 = a+8-c
eqn2 = pressure*3+8-14256
```

**9)** For the given quantifiers, what would be the equivalent form using the `{m,n}` representation?

* `?` is same as
* `*` is same as
* `+` is same as

**10)** True or False? `(a*|b*)` is same as `(a|b)*` 

**11)** For the input file `patterns.txt`, construct two different regexps to get the outputs as shown below. Display only the modified lines.

```bash
# delete from '(' till the next ')'
$ awk ##### add your solution here
a/b + c%d
*[5]
def factorial
12- *4)
Hi there. Nice day

# delete from '(' till the next ')' but not if there is '(' in between
$ awk ##### add your solution here
a/b + c%d
*[5]
def factorial
12- (e+*4)
Hi there. Nice day(a
```

**12)** For the input file `anchors.txt`, convert markdown anchors to corresponding hyperlinks as shown below.

```bash
$ cat anchors.txt
# <a name="regular-expressions"></a>Regular Expressions
## <a name="subexpression-calls"></a>Subexpression calls
## <a name="the-dot-meta-character"></a>The dot meta character

$ awk ##### add your solution here
[Regular Expressions](#regular-expressions)
[Subexpression calls](#subexpression-calls)
[The dot meta character](#the-dot-meta-character)
```

**13)** Display lines from `sample.txt` that satisfy both of these conditions:

* `to` or `he` matched irrespective of case
* `World` or `No` matched case sensitively

```bash
$ awk ##### add your solution here
Hello World
No doubt you like it too
```

**14)** Given sample strings have fields separated by `,` and field values cannot be empty. Replace the third field with `42`.

```bash
$ echo 'lion,ant,road,neon' | awk ##### add your solution here
lion,ant,42,neon

$ echo '_;3%,.,=-=,:' | awk ##### add your solution here
_;3%,.,42,:
```

**15)** For the input file `patterns.txt`, filter lines containing three or more occurrences of `ar` and replace the last but second `ar` with `X`.

```bash
$ awk ##### add your solution here
par car tX far Cart
pXt cart mart
```

**16)** Surround all whole words with `()`. Additionally, if the whole word is `imp` or `ant`, delete them.

```bash
$ words='tiger imp goat eagle ant important'
$ echo "$words" | awk ##### add your solution here
(tiger) () (goat) (eagle) () (important)
```

**17)** For the input file `patterns.txt`, display lines containing `car` but not as a whole word. For example, `scared-cat` and `car care` should match but not `far car park`.

```bash
$ awk ##### add your solution here
scar
care
a huge discarded pile of books
scare
part cart mart
```

**18)** Will the pattern `^a\w+([0-9]+:fig)?` match the same characters for the input `apple42:banana314` and `apple42:fig100`? If not, why not?

**19)** For the input file `patterns.txt`, display lines starting with `4` or `-` or `u` or `sub` or `care`.

```bash
$ awk ##### add your solution here
care
4*5]
-handy
subtle sequoia
unhand
```

**20)** Replace sequences made up of words separated by `:` or `.` by the first word of the sequence. Such sequences will end when `:` or `.` is not followed by a word character.

```bash
$ ip='wow:Good:2_two.five: hi-2 bye kite.777:water.'
$ echo "$ip" | awk ##### add your solution here
wow hi-2 bye kite
```

**21)** Replace sequences made up of words separated by `:` or `.` by the last word of the sequence. Such sequences will end when `:` or `.` is not followed by a word character.

```bash
$ ip='wow:Good:2_two.five: hi-2 bye kite.777:water.'
$ echo "$ip" | awk ##### add your solution here
five hi-2 bye water
```

**22)** Replace all whole words with `X` unless it is preceded by a `(` character.

```bash
$ s='guava (apple) berry) apple (mango) (grape'
$ echo "$s" | awk ##### add your solution here
X (apple) X) X (mango) (grape
```

**23)** Surround whole words with `[]` only if they are followed by `:` or `,` or `-`.

```bash
$ ip='Poke,on=-=so_good:ink.to/is(vast)ever2-sit'
$ echo "$ip" | awk ##### add your solution here
[Poke],on=-=[so_good]:ink.to/is(vast)[ever2]-sit
```

**24)** The `fields.txt` file has fields separated by the `:` character. Delete `:` and the last field if there is a digit character anywhere before the last field.

```bash
$ cat fields.txt
42:cat
twelve:a2b
we:be:he:0:a:b:bother
apple:banana-42:cherry:
dragon:unicorn:centaur

$ awk ##### add your solution here
42
twelve:a2b
we:be:he:0:a:b
apple:banana-42:cherry
dragon:unicorn:centaur
```

**25)** Can you use a character other than `/` as the regexp delimiter? If not, are there ways to construct a regexp that do not require the `/` character to be escaped for literal matching?

**26)** For the input file `patterns.txt`, surround all hexadecimal sequences with a minimum of four characters with `[]`. Match `0x` as an optional prefix, but shouldn't be counted for determining the length. Match the characters case insensitively, and the sequences shouldn't be surrounded by other word characters. Display only the modified lines.

```bash
$ awk ##### add your solution here
"should not match [0XdeadBEEF]"
Hi42Bye nice1423 [bad42]
took 0xbad 22 [0x0ff1ce]
eqn2 = pressure*3+42/5-[14256]
```

<br>

# Field separators

**1)** For the input file `brackets.txt`, extract only the contents between `()` or `)(` from each input line. Assume that `()` characters will be present only once every line.

```bash
$ cat brackets.txt
foo blah blah(ice) 123 xyz$ 
(almond-pista) choco
yo )yoyo( yo

$ awk ##### add your solution here
ice
almond-pista
yoyo
```

**2)** For the input file `scores.csv`, extract `Name` and `Physics` fields in the format shown below.

```bash
$ cat scores.csv
Name,Maths,Physics,Chemistry
Blue,67,46,99
Lin,78,83,80
Er,56,79,92
Cy,97,98,95
Ort,68,72,66
Ith,100,100,100

$ awk ##### add your solution here
Name:Physics
Blue:46
Lin:83
Er:79
Cy:98
Ort:72
Ith:100
```

**3)** For the input file `scores.csv`, display names of those who've scored above `70` in Maths.

```bash
$ awk ##### add your solution here
Lin
Cy
Ith
```

**4)** Display the number of word characters for the given inputs. Word definition here is same as used in regular expressions. Can you construct a solution with `gsub` and one without substitution functions?

```bash
$ echo 'hi there' | awk ##### add your solution here
7

$ echo 'u-no;co%."(do_12:as' | awk ##### add your solution here
12
```

**5)** For the input file `quoted.txt`, extract the first and third sequence of characters surrounded by double quotes and display them in the format shown below. Solution shouldn't use substitution functions.

```bash
$ cat quoted.txt
1 "grape" and "mango" and "guava"
("a 1""b""c-2""d")

$ awk ##### add your solution here
"grape","guava"
"a 1","c-2"
```

**6)** For the input file `varying_fields.txt`, construct a solution to get the output shown below. Solution shouldn't use substitution functions.

```bash
$ cat varying_fields.txt
hi,bye,there,was,here,to
1,2,3,4,5

$ awk ##### add your solution here
hi,bye,to
1,2,5
```

**7)** Transform the given input file `fw.txt` to get the output as shown below. If a field is empty (i.e. contains only space characters), replace it with `NA`.

```bash
$ cat fw.txt
1.3  rs   90  0.134563
3.8           6
5.2  ye       8.2387
4.2  kt   32  45.1

$ awk ##### add your solution here
1.3,rs,0.134563
3.8,NA,6
5.2,ye,8.2387
4.2,kt,45.1
```

**8)** Display only the third and fifth characters from each input line as shown below.

```bash
$ printf 'restore\ncat one\ncricket' | awk ##### add your solution here
so
to
ik
```

**9)** The `fields.txt` file has fields separated by the `:` character. Delete `:` and the last field if there is a digit character anywhere before the last field. Solution shouldn't use substitution functions.

```bash
$ cat fields.txt
42:cat
twelve:a2b
we:be:he:0:a:b:bother
apple:banana-42:cherry:
dragon:unicorn:centaur

$ awk ##### add your solution here
42
twelve:a2b
we:be:he:0:a:b
apple:banana-42:cherry
dragon:unicorn:centaur
```

**10)** Retain only the first three fields for the given sample string that uses `^` as the input field separator. Use `,` as the output field separator.

```bash
$ echo 'sit^eat^very^eerie^near' | awk ##### add your solution here
sit,eat,very
```

**11)** The sample string shown below uses `cat` as the field separator (irrespective of case). Use space as the output field separator and add `42` as the last field.

```bash
$ s='applecatfigCaT12345cAtbanana'
$ echo "$s" | awk ##### add your solution here
apple fig 12345 banana 42
```

**12)** For the input file `sample.txt`, filter lines containing 6 or more lowercase vowels.

```bash
$ awk ##### add your solution here
No doubt you like it too
Much ado about nothing
```

**13)** The input file `concat.txt` has contents of various files preceded by a line starting with `###`. Replace such sequence of characters with an incrementing integer value (starting with `1`) in the format shown below.

```bash
$ awk ##### add your solution here
1) addr.txt
How are you
This game is good
Today is sunny
2) broken.txt
top
1234567890
bottom
3) sample.txt
Just do-it
Believe it
4) mixed_fs.txt
pink blue white yellow
car,mat,ball,basket
```

<br>

# Record separators

**1)** The input file `jumbled.txt` consists of words separated by various delimiters. Display all words that contain `an` or `at` or `in` or `it`, one per line.

```bash
$ cat jumbled.txt
overcoats;furrowing-typeface%pewter##hobby
wavering:concession/woof\retailer
joint[]seer{intuition}titanic

$ awk ##### add your solution here
overcoats
furrowing
wavering
joint
intuition
titanic
```

**2)** Emulate `paste -sd,` with `awk`.

```bash
# this command joins all input lines with the ',' character
$ paste -sd, addr.txt
Hello World,How are you,This game is good,Today is sunny,12345,You are funny
# make sure there's no ',' at end of the line
# and that there's a newline character at the end of the line
$ awk ##### add your solution here
Hello World,How are you,This game is good,Today is sunny,12345,You are funny

# if there's only one line in input, again make sure there's no trailing ','
$ printf 'fig' | paste -sd,
fig
$ printf 'fig' | awk ##### add your solution here
fig
```

**3)** For the input file `scores.csv`, add another column named **GP** which is calculated out of 100 by giving 50% weightage to Maths and 25% each for Physics and Chemistry.

```bash
$ awk ##### add your solution here
Name,Maths,Physics,Chemistry,GP
Blue,67,46,99,69.75
Lin,78,83,80,79.75
Er,56,79,92,70.75
Cy,97,98,95,96.75
Ort,68,72,66,68.5
Ith,100,100,100,100
```

**4)** For the input file `sample.txt`, extract paragraphs containing `do` and exactly two lines.

```bash
$ cat sample.txt
Hello World

Good day
How are you

Just do-it
Believe it

Today is sunny
Not a bit funny
No doubt you like it too

Much ado about nothing
He he he

# note that there's no extra empty line at the end of the output
$ awk ##### add your solution here
Just do-it
Believe it

Much ado about nothing
He he he
```

**5)** For the input file `sample.txt`, change each paragraph to a single line by joining lines using `.` and a space character as the separator. Also, add a final `.` to each paragraph.

```bash
# note that there's no extra empty line at the end of the output
$ awk ##### add your solution here
Hello World.

Good day. How are you.

Just do-it. Believe it.

Today is sunny. Not a bit funny. No doubt you like it too.

Much ado about nothing. He he he.
```

**6)** The various input/output separators can be changed dynamically and comes into effect during the next input/output operation. For the input file `mixed_fs.txt`, retain only the first two fields from each input line. The field separators should be space for the first two lines and `,` for the rest of the lines.

```bash
$ cat mixed_fs.txt
rose lily jasmine tulip
pink blue white yellow
car,mat,ball,basket
green,brown,black,purple
apple,banana,cherry

$ awk ##### add your solution here
rose lily
pink blue
car,mat
green,brown
apple,banana
```

**7)** For the input file `table.txt`, print other than the second line.

```bash
$ awk ##### add your solution here
brown bread mat hair 42
yellow banana window shoes 3.14
```

**8)** For the `table.txt` file, print only the line number for lines containing `air` or `win`.

```bash
$ awk ##### add your solution here
1
3
```

**9)** For the input file `table.txt`, calculate the sum of numbers in the last column, excluding the second line.

```bash
$ awk ##### add your solution here
45.14
```

**10)** Print the second and fourth line for every block of five lines.

```bash
$ seq 15 | awk ##### add your solution here
2
4
7
9
12
14
```

**11)** For the input file `odd.txt`, surround all whole words with `{}` that start and end with the same word character. This is a contrived exercise to make you use the `RT` variable (`sed -E 's/\b(\w)(\w*\1)?\b/{&}/g' odd.txt` would be a simpler solution).

```bash
$ cat odd.txt
-oreo-not:a _a2_ roar<=>took%22
RoaR to wow-

$ awk ##### add your solution here
-{oreo}-not:{a} {_a2_} {roar}<=>took%{22}
{RoaR} to {wow}-
```

**12)** Print only the second field of the third line, if any, from these input files: `addr.txt`, `sample.txt` and `copyright.txt`. Consider space as the field separator.

```bash
$ awk ##### add your solution here
game
day
bla
```

**13)** The input file `ip.txt` has varying amount of empty lines between the records, change them to be always two empty lines. Also, remove the empty lines at the start and end of the file.

```bash
$ awk ##### add your solution here
hello


world


apple
banana
cherry


tea coffee
chocolate
```

**14)** The sample string shown below uses `cat` as the record separator (irrespective of case). Display only the even numbered records separated by a single empty line.

```bash
$ s='applecatfigCaT12345cAtbananaCATguava:caT:mangocat3'
$ echo "$s" | awk ##### add your solution here
fig

banana

:mango
```

**15)** Input has the ASCII NUL character as the record separator. Change it to dot and newline characters as shown below.

```bash
$ printf 'apple\npie\0banana\ncherry\0' | awk ##### add your solution here
apple
pie.
banana
cherry.
```

<br>

# In-place file editing

**1)** For the input file `copyright.txt`, replace `copyright: 2018` with `copyright: 2020` and write back the changes to `copyright.txt` itself. The original contents should get saved to `copyright.txt.orig`

```bash
$ cat copyright.txt
bla bla 2015 bla
blah 2018 blah
bla bla bla
copyright: 2018
$ awk ##### add your solution here

$ cat copyright.txt
bla bla 2015 bla
blah 2018 blah
bla bla bla
copyright: 2020
$ cat copyright.txt.orig
bla bla 2015 bla
blah 2018 blah
bla bla bla
copyright: 2018
```

**2)** For the input files `nums1.txt` and `nums2.txt`, retain only the second and third lines and write back the changes to their respective files. No need to create backups.

```bash
$ cat nums1.txt
3.14
4201
777
0323012
$ cat nums2.txt
-45.4
-2
54316.12
0x231

$ awk ##### add your solution here
$ cat nums1.txt
4201
777
$ cat nums2.txt
-2
54316.12
```

<br>

# Using shell variables

**1)** Use contents of the `s` variable to display all matching lines from the input file `sample.txt`. Assume that the `s` variable doesn't have any regexp metacharacters and construct a solution such that only whole words are matched.

```bash
$ s='do'
##### add your solution here
Just do-it
```

**2)** Replace all occurrences of `o` for the input file `addr.txt` with the literal contents of the `s` variable. Assume that the `s` variable has regexp metacharacters.

```bash
$ s='\&/'
##### add your solution here
Hell\&/ W\&/rld
H\&/w are y\&/u
This game is g\&/\&/d
T\&/day is sunny
12345
Y\&/u are funny
```

<br>

# Control Structures

**1)** The input file `nums.txt` contains a single column of numbers. Change positive numbers to negative and vice versa. Solution should use the `sub` function and shouldn't explicitly use the `if-else` control structure or the ternary operator.

```bash
$ cat nums.txt
42
-2
10101
-3.14
-75

$ awk ##### add your solution here
-42
2
-10101
3.14
75
```

**2)** For the input file `table.txt`, change the field separator from space to the `,` character. Also, any field not containing digit characters should be surrounded by double quotes.

```bash
$ awk ##### add your solution here
"brown","bread","mat","hair",42
"blue","cake","mug","shirt",-7
"yellow","banana","window","shoes",3.14
```

**3)** For each input line of the file `secrets.txt`, remove all characters except the last character of each field. Assume space as the input field separator.

```bash
$ cat secrets.txt
stag area row tick
deaf chi rate tall glad
Bi tac toe - 42

$ awk ##### add your solution here
gawk
field
ice-2
```

**4)** For the input file `sample.txt`, emulate the `q` and `Q` commands of `sed` as shown below.

```bash
# sed '/are/q' sample.txt will print till the line containing 'are'
$ awk ##### add your solution here
Hello World

Good day
How are you

# sed '/are/Q' sample.txt is similar to the 'q' command,
# but the matching line won't be part of the output
$ awk ##### add your solution here
Hello World

Good day
```

**5)** For the input file `addr.txt`:

* if a line contains `e`
    * delete all occurrences of `e`
    * surround all consecutive repeated characters with `{}`
    * assume that the input will not have more than two consecutive repeats
* if a line doesn't contain `e` but contains `u`
    * surround all lowercase vowels in that line with `[]`

```bash
$ awk ##### add your solution here
H{ll}o World
How ar you
This gam is g{oo}d
T[o]d[a]y [i]s s[u]nny
12345
You ar fu{nn}y
```

**6)** The goal is to print `found you` if the input file contains `you` and `not found` otherwise. However, both the `print` statements are executed in the `awk` code shown below. Change it to work as expected.

```bash
$ awk '/you/{print "found you"; exit} END{print "not found"}' addr.txt
found you
not found
```

<br>

# Built-in functions

>![info](../images/info.svg) Exercises will also include functions and features not discussed in this chapter. Refer to [gawk manual: Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Functions) for details.

**1)** For the input file `scores.csv`, sort the rows in descending order based on the values in the Physics column. Header should be retained as the first line in the output.

```bash
$ awk ##### add your solution here
Name,Maths,Physics,Chemistry
Ith,100,100,100
Cy,97,98,95
Lin,78,83,80
Er,56,79,92
Ort,68,72,66
Blue,67,46,99
```

**2)** For the input file `nums3.txt`, calculate the square root of numbers and display the results in two different formats as shown below. First, with four digits after the fractional point and then in the scientific notation, again with four digits after the fractional point. Assume that the input has only a single column of positive numbers.

```bash
$ cat nums3.txt 
3.14
4201
777
0323012

$ awk ##### add your solution here
1.7720
64.8151
27.8747
568.3414

$ awk ##### add your solution here
1.7720e+00
6.4815e+01
2.7875e+01
5.6834e+02
```

**3)** For the input file `items.txt`, assume space as the field separator. From the second field, remove the second `:` character and the number that follows. Modify the last field by multiplying it by the number that was deleted from the second field.

```bash
$ cat items.txt
apple rxg:12:-425 og 6.2
fig zwt:3.64:12.89e2 ljg 5
banana ysl:42:3.14 vle 45

$ awk ##### add your solution here
apple rxg:12 og -2635
fig zwt:3.64 ljg 6445
banana ysl:42 vle 141.3
```

**4)** For the input file `sum.txt`, assume space as the field separator. Replace the second field with the sum of the two numbers embedded in it. The numbers can be positive/negative integers or floating-point numbers but not scientific notation.

```bash
$ cat sum.txt
f2:z3 kt//-42\\3.14//tw 5y6
t5:x7 qr;wq<=>+10{-8764.124}yb u9
apple:fig 100:32 9j4

$ awk ##### add your solution here
f2:z3 -38.86 5y6
t5:x7 -8754.12 u9
apple:fig 132 9j4
```

**5)** For the given input strings, extract portion of the line starting from the matching location specified by the shell variable `s` till the end of the line. If there is no match, do not print that line. The contents of `s` should be matched literally.

```bash
$ s='(a^b)'
$ echo '3*f + (a^b) - 45' | ##### add your solution here
(a^b) - 45

$ s='\&/'
# should be no output for this input
$ echo 'f\&z\&2.14' | ##### add your solution here
# but this one has a match
$ echo 'f\&z\&/2.14' | ##### add your solution here
\&/2.14
```

**6)** Extract all positive integers preceded by `-` and followed by `:` or `;`. Display the matching portions separated by a newline character.

```bash
$ s='42 apple-5; fig3; x-83, y-20:-34; f12'
$ echo "$s" | awk ##### add your solution here
5
20
34
```

**7)** For the input file `scores.csv`, calculate the average score for each row. Those with average greater than or equal to `80` should be saved in `pass.csv` and the rest in `fail.csv`. The output files should have the names followed by a tab character, and finally the average score (two decimal points).

```bash
$ awk ##### add your solution here

$ cat fail.csv
Blue    70.67
Er      75.67
Ort     68.67
$ cat pass.csv
Lin     80.33
Cy      96.67
Ith     100.00
```

**8)** For the input file `files.txt`, replace lines starting with a space with the output of that line executed as a shell command.

```bash
$ cat files.txt
 sed -n '2p' addr.txt
-----------
 wc -w sample.txt
===========
 awk '{print $1}' table.txt
-----------

$ awk ##### add your solution here
How are you
-----------
31 sample.txt
===========
brown
blue
yellow
-----------
```

**9)** For the input file `fw.txt`, format the last column in scientific notation with two digits after the decimal point.

```bash
$ awk ##### add your solution here
1.3  rs   90  1.35e-01
3.8           6.00e+00
5.2  ye       8.24e+00
4.2  kt   32  4.51e+01
```

**10)** For the input file `addr.txt`, display all lines containing `e` or `u` but not both.

>![info](../images/info.svg) Hint — [gawk manual: Bit-Manipulation Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Bitwise-Functions).

```bash
$ awk ##### add your solution here
Hello World
This game is good
Today is sunny
```

**11)** For the input file `patterns.txt`, filter lines containing `[5]` at the start of a line. The search term should be matched literally.

```bash
$ awk ##### add your solution here
[5]*3
```

**12)** For the input file `table.txt`, uppercase the third field.

```bash
$ awk ##### add your solution here
brown bread MAT hair 42
blue cake MUG shirt -7
yellow banana WINDOW shoes 3.14
```

**13)** For the input files `patterns.txt` and `sum.txt`, match lines containing the literal value stored in the `s` variable. Assume that the `s` variable has regexp metacharacters.

```bash
$ s='[5]'
##### add your solution here
(9-2)*[5]
[5]*3

$ s='\\'
##### add your solution here
f2:z3 kt//-42\\3.14//tw 5y6
```

<br>

# Multiple file input

**1)** Print the last field of the first two lines for the input files `table.txt`, `scores.csv` and `fw.txt`. The field separators for these files are space, comma and fixed width respectively. To make the output more informative, print filenames and a separator as shown in the output below. Assume that the input files will have at least two lines.

```bash
$ awk ##### add your solution here
>table.txt<
42
-7
----------
>scores.csv<
Chemistry
99
----------
>fw.txt<
0.134563
6
----------
```

**2)** For the input files `sample.txt`, `secrets.txt`, `addr.txt` and `table.txt`, display only the names of files that contain `at` or `fun` in the third field. Assume space as the field separator.

```bash
$ awk ##### add your solution here sample.txt secrets.txt addr.txt table.txt
secrets.txt
addr.txt
table.txt
```

<br>

# Processing multiple records

**1)** For the input file `sample.txt`, print lines containing `do` only if the previous line is empty and the line before that contains `you`.

```bash
$ awk ##### add your solution here
Just do-it
Much ado about nothing
```

**2)** For the input file `sample.txt`, match lines containing `do` or `not` case insensitively. Each of these terms occur multiple times in the file. The goal is to print only the second occurrences of these terms (independent of each other).

```bash
$ awk ##### add your solution here
No doubt you like it too
Much ado about nothing
```

**3)** For the input file `sample.txt`, print the matching lines containing `are` or `bit` as well as `n` lines around the matching lines. The value for `n` is passed to the `awk` command via the `-v` option.

```bash
$ awk -v n=1 ##### add your solution here
Good day
How are you

Today is sunny
Not a bit funny
No doubt you like it too

# note that the first and last line are empty for this case
$ awk -v n=2 ##### add your solution here

Good day
How are you

Just do-it

Today is sunny
Not a bit funny
No doubt you like it too

```

**4)** For the input file `broken.txt`, print all lines between the markers `top` and `bottom`. The first `awk` command shown below doesn't work because it is matching till the end of file as the second marker isn't found. Assume that the input file cannot have two `top` markers without a `bottom` marker appearing in between and vice-versa.

```bash
$ cat broken.txt
top
3.14
bottom
---
top
1234567890
bottom
top
Hi there
Have a nice day
Good bye

# wrong output
$ awk '/bottom/{f=0} f; /top/{f=1}' broken.txt
3.14
1234567890
Hi there
Have a nice day
Good bye

# expected output
##### add your solution here
3.14
1234567890
```

**5)** For the input file `concat.txt`, extract contents from a line starting with ``### `` until but not including the next such line. The block to be extracted is indicated by the variable `n` passed via the `-v` option.

```bash
$ cat concat.txt
### addr.txt
How are you
This game is good
Today is sunny
### broken.txt
top
1234567890
bottom
### sample.txt
Just do-it
Believe it
### mixed_fs.txt
pink blue white yellow
car,mat,ball,basket

$ awk -v n=2 ##### add your solution here
### broken.txt
top
1234567890
bottom

$ awk -v n=4 ##### add your solution here
### mixed_fs.txt
pink blue white yellow
car,mat,ball,basket
```

**6)** For the input file `ruby.md`, replace all occurrences of `ruby` (irrespective of case) with `Ruby`. But, do not replace any matches between ` ```ruby ` and ` ``` ` lines (`ruby` in these markers shouldn't be replaced either). Save the output in `out.md`.

```bash
$ awk ##### add your solution here ruby.md > out.md
$ diff -sq out.md expected.md 
Files out.md and expected.md are identical
```

**7)** For the input file `lines.txt`, delete the line that comes after a whole line containing `---`. Assume that such lines won't occur consecutively.

```bash
$ cat lines.txt
Go There
come on
go there
---
2 apples and 5 mangoes
come on!
---
2 Apples
COME ON

$ awk ##### add your solution here
Go There
come on
go there
---
come on!
---
COME ON
```

**8)** For the input file `result.csv`, use `---` to separate entries with the same name in the first column. Assume that the lines with the same first column value will always be next to each other.

```bash
$ awk ##### add your solution here
Amy,maths,89
Amy,physics,75
---
Joe,maths,79
---
John,chemistry,77
John,physics,91
---
Moe,maths,81
---
Ravi,physics,84
Ravi,chemistry,70
---
Yui,maths,92
```

<br>

# Two file processing

**1)** Use the contents of `match_words.txt` file to display matching lines from `jumbled.txt` and `sample.txt`. The matching criteria is that the second word of lines from these files should match the third word of lines from `match_words.txt`.

```bash
$ cat match_words.txt
%whole(Hello)--{doubt}==ado==
just,\joint*,concession<=nice

# 'concession' is one of the third words from 'match_words.txt'
# and second word from 'jumbled.txt'
$ awk ##### add your solution here
wavering:concession/woof\retailer
No doubt you like it too
```

**2)** Interleave the contents of `secrets.txt` with the contents of a file passed via the `-v` option as shown below.

```bash
$ awk -v f='table.txt' ##### add your solution here
stag area row tick
brown bread mat hair 42
---
deaf chi rate tall glad
blue cake mug shirt -7
---
Bi tac toe - 42
yellow banana window shoes 3.14
---
```

**3)** The file `search_terms.txt` contains one search string per line, and these terms have no regexp metacharacters. Construct an `awk` command that reads this file and displays the search terms (matched case insensitively) that were found in every file passed as the arguments after `search_terms.txt`. Note that these terms should be matched anywhere in the line (so, don't use word boundaries).

```bash
$ cat search_terms.txt
hello
row
you
is
at

$ awk ##### add your solution here
##file list## search_terms.txt jumbled.txt mixed_fs.txt secrets.txt table.txt
at
row

$ awk ##### add your solution here
##file list## search_terms.txt addr.txt sample.txt
is
you
hello
```

**4)** Display lines from `scores.csv` by matching the first field based on a list of names from the `names.txt` file. Also, change the output field separator to a space character.

```bash
$ cat names.txt
Lin
Cy
Ith

$ awk ##### add your solution here
Lin 78 83 80
Cy 97 98 95
Ith 100 100 100
```

**5)** What's the default value of the special variable `SUBSEP`? Where is it commonly used?

**6)** The `result.csv` file has three columns — name, subject and mark. The `criteria.txt` file has two columns — name and subject. Match lines from `result.csv` based on the two columns from `criteria.txt` provided the mark column is greater than 80.

```bash
$ cat result.csv
Amy,maths,89
Amy,physics,75
Joe,maths,79
John,chemistry,77
John,physics,91
Moe,maths,81
Ravi,physics,84
Ravi,chemistry,70
Yui,maths,92

$ cat criteria.txt
Amy maths
John chemistry
John physics
Ravi chemistry
Yui maths

$ awk ##### add your solution here
Amy,maths,89
John,physics,91
Yui,maths,92
```

<br>

# Dealing with duplicates

**1)** Retain only the first copy of a line for the input file `lines.txt`. Case should be ignored while comparing the lines. For example, `hi there` and `HI TheRE` should be considered as duplicates.

```bash
$ cat lines.txt
Go There
come on
go there
---
2 apples and 5 mangoes
come on!
---
2 Apples
COME ON

$ awk ##### add your solution here
Go There
come on
---
2 apples and 5 mangoes
come on!
2 Apples
```

**2)** Retain only the first copy of a line for the input file `twos.txt`. Assume space as the field separator with exactly two fields per line. Compare the lines irrespective of the order of the fields. For example, `hehe haha` and `haha hehe` should be considered as duplicates.

```bash
$ cat twos.txt
hehe haha
door floor
haha hehe
6;8 3-4
true blue
hehe bebe
floor door
3-4 6;8
tru eblue
haha hehe

$ awk ##### add your solution here
hehe haha
door floor
6;8 3-4
true blue
hehe bebe
tru eblue
```

**3)** For the input file `twos.txt`, create a file `uniq.txt` with all the unique lines and `dupl.txt` with all the duplicate lines. Assume space as the field separator with exactly two fields per line. Compare the lines irrespective of the order of the fields. For example, `hehe haha` and `haha hehe` should be considered as duplicates.

```bash
$ awk ##### add your solution here

$ cat uniq.txt 
true blue
hehe bebe
tru eblue

$ cat dupl.txt 
hehe haha
door floor
haha hehe
6;8 3-4
floor door
3-4 6;8
haha hehe
```

<br>

# awk scripts

**1)** Before explaining the problem statement, here's an example of markdown headers and their converted link version. Note the use of `-1` for the second occurrence of the `Summary` header. Also note that this sample doesn't illustrate every rule explained below.

```bash
# Field separators
## Summary
# Gotchas and Tips
## Summary

* [Field separators](#field-separators)
    * [Summary](#summary)
* [Gotchas and Tips](#gotchas-and-tips)
    * [Summary](#summary-1)
```

For the input file `gawk.md`, construct a Table of Content section as per the details described below:

* Identify all header lines
    * there are two types of header lines, one starting with ``# `` and the other starting with ``## ``
    * lines starting with `#` inside code blocks defined by ` ```bash ` and ` ``` ` markers should be ignored
* The headers lines should then be converted as per the following rules:
    * content is defined as the portion of the header ignoring the initial `#` or `##` characters and the space character
    * `##` should be replaced with four spaces and a `*` character
    * else, `#` should be replaced with `*` character
    * create a copy of the content, change it to all lowercase, replace all space characters with the `-` character and then enclose it within `(#` and `)`
        * if there are multiple headers with the same content, append `-1`, `-2`, etc respectively for the second header, third header, etc
    * surround the original content with `[]` and then append the string obtained from the previous step
* Note that the output should have only the converted headers, all other input lines should not be present

The script file should be named as `toc.awk` and save the output in `out.md`.

```bash
$ awk -f toc.awk gawk.md > out.md
$ diff -sq out.md toc_expected.md
Files out.md and toc_expected.md are identical
```

**2)** For the input file `odd.txt`, surround the first two whole words of each line with `{}` that start and end with the same word character. Assume that the input file will not require case insensitive comparison. This is a contrived exercise that needs around 10 instructions and makes you use various features presented in this book.

```bash
$ cat odd.txt
-oreo-not:a _a2_ roar<=>took%22
RoaR to wow-

$ awk -f same.awk odd.txt
-{oreo}-not:{a} _a2_ roar<=>took%22
{RoaR} to {wow}-
```

