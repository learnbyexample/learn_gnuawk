# Exercises

>![info](../images/info.svg) Exercise related files are available from [exercises folder of learn_gnuawk repo](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises). For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/learn_gnuawk/blob/master/exercises/Exercise_solutions.md).

<br>

# awk introduction

**a)** For the input file `addr.txt`, display all lines containing `is`.

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

**b)** For the input file `addr.txt`, display first field of lines *not* containing `y`. Consider space as the field separator for this file.

```bash
$ awk ##### add your solution here
Hello
This
12345
```

**c)** For the input file `addr.txt`, display all lines containing no more than 2 fields.

```bash
$ awk ##### add your solution here
Hello World
12345
```

**d)** For the input file `addr.txt`, display all lines containing `is` in the second field.

```bash
$ awk ##### add your solution here
Today is sunny
```

**e)** For each line of the input file `addr.txt`, replace first occurrence of `o` with `0`.

```bash
$ awk ##### add your solution here
Hell0 World
H0w are you
This game is g0od
T0day is sunny
12345
Y0u are funny
```

**f)** For the input file `table.txt`, calculate and display the product of numbers in the last field of each line. Consider space as the field separator for this file.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14

$ awk ##### add your solution here
-923.16
```

**g)** Append `.` to all the input lines for the given `stdin` data.

```bash
$ printf 'last\nappend\nstop\ntail\n' | awk ##### add your solution here
last.
append.
stop.
tail.
```

<br>

# Regular Expressions

**a)** For the given input, print all lines that start with `den` or end with `ly`.

```bash
$ lines='lovely\n1 dentist\n2 lonely\neden\nfly away\ndent\n'
$ printf '%b' "$lines" | awk ##### add your solution here
lovely
2 lonely
dent
```

**b)** Replace all occurrences of `42` with `[42]` unless it is at the edge of a word. Note that **word** in these exercises have same meaning as defined in regular expressions.

```bash
$ echo 'hi42bye nice421423 bad42 cool_42a 42c' | awk ##### add your solution here
hi[42]bye nice[42]1[42]3 bad42 cool_[42]a 42c
```

**c)** Add `[]` around words starting with `s` and containing `e` and `t` in any order.

```bash
$ words='sequoia subtle exhibit asset sets tests site'
$ echo "$words" | awk ##### add your solution here
sequoia [subtle] exhibit asset [sets] tests [site]
```

**d)** Replace the space character that occurs after a word ending with `a` or `r` with a newline character.

```bash
$ echo 'area not a _a2_ roar took 22' | awk ##### add your solution here
area
not a
_a2_ roar
took 22
```

**e)** Replace all occurrences of `[4]|*` with `2` for the given input.

```bash
$ echo '2.3/[4]|*6 foo 5.3-[4]|*9' | awk ##### add your solution here
2.3/26 foo 5.3-29
```

**f)** `awk '/\<[a-z](on|no)[a-z]\>/'` is same as `awk '/\<[a-z][on]{2}[a-z]\>/'`. True or False? Sample input shown below might help to understand the differences, if any.

```bash
$ printf 'known\nmood\nknow\npony\ninns\n'
known
mood
know
pony
inns
```

**g)** Print all lines that start with `hand` and ends with `s` or `y` or `le` or no further character. For example, `handed` shouldn't be printed even though it starts with `hand`.

```bash
$ lines='handed\nhand\nhandy\nunhand\nhands\nhandle\n'
$ printf '%b' "$lines" | awk ##### add your solution here
hand
handy
hands
handle
```

**h)** Replace `42//5` or `42/5` with `8` for the given input.

```bash
$ echo 'a+42//5-c pressure*3+42/5-14256' | awk ##### add your solution here
a+8-c pressure*3+8-14256
```

**i)** For the given quantifiers, what would be the equivalent form using `{m,n}` representation?

* `?` is same as
* `*` is same as
* `+` is same as

**j)** True or False? `(a*|b*)` is same as `(a|b)*` 

**k)** For the given input, construct two different regexps to get the outputs as shown below.

```bash
$ # delete from '(' till next ')'
$ echo 'a/b(division) + c%d() - (a#(b)2(' | awk ##### add your solution here
a/b + c%d - 2(

$ # delete from '(' till next ')' but not if there is '(' in between
$ echo 'a/b(division) + c%d() - (a#(b)2(' | awk ##### add your solution here
a/b + c%d - (a#2(
```

**l)** For the input file `anchors.txt`, convert **markdown** anchors to corresponding **hyperlinks**.

```bash
$ cat anchors.txt
# <a name="regular-expressions"></a>Regular Expressions
## <a name="subexpression-calls"></a>Subexpression calls

$ awk ##### add your solution here
[Regular Expressions](#regular-expressions)
[Subexpression calls](#subexpression-calls)
```

**m)** Display all lines that satisfies **both** of these conditions:

* `professor` matched irrespective of case
* `quip` or `this` matched case sensitively

Input is a file downloaded from internet as shown below.

```bash
$ wget https://www.gutenberg.org/files/345/345.txt -O dracula.txt

$ awk ##### add your solution here
equipment of a professor of the healing craft. When we were shown in,
should be. I could see that the Professor had carried out in this room,
"Not up to this moment, Professor," she said impulsively, "but up to
and sprang at us. But by this time the Professor had gained his feet,
this time the Professor had to ask her questions, and to ask them pretty
```

**n)** Given sample strings have fields separated by `,` and field values cannot be empty. Replace the third field with `42`.

```bash
$ echo 'lion,ant,road,neon' | awk ##### add your solution here
lion,ant,42,neon

$ echo '_;3%,.,=-=,:' | awk ##### add your solution here
_;3%,.,42,:
```

**o)** For the given strings, replace last but third `so` with `X`. Only print the lines which are changed by the substitution.

```bash
$ printf 'so and so also sow and soup' | awk ##### add your solution here
so and X also sow and soup

$ printf 'sososososososo\nso and so\n' | awk ##### add your solution here
sososoXsososo
```

**p)** Surround all whole words with `()`. Additionally, if the whole word is `imp` or `ant`, delete them. Can you do it with single substitution?

```bash
$ words='tiger imp goat eagle ant important'
$ echo "$words" | awk ##### add your solution here
(tiger) () (goat) (eagle) () (important)
```

<br>

# Field separators

**a)** Extract only the contents between `()` or `)(` from each input line. Assume that `()` characters will be present only once every line.

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

**b)** For the input file `scores.csv`, extract `Name` and `Physics` fields in the format shown below.

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

**c)** For the input file `scores.csv`, display names of those who've scored above `70` in Maths.

```bash
$ awk ##### add your solution here
Lin
Cy
Ith
```

**d)** Display the number of word characters for the given inputs. Word definition here is same as used in regular expressions. Can you construct a solution with `gsub` and one without substitution functions?

```bash
$ echo 'hi there' | awk ##### add your solution here
7

$ echo 'u-no;co%."(do_12:as' | awk ##### add your solution here
12
```

**e)** Construct a solution that works for both the given sample inputs and the corresponding output shown. Solution shouldn't use substitution functions or string concatenation.

```bash
$ echo '1 "grape" and "mango" and "guava"' | awk ##### add your solution here
"grape","guava"

$ echo '("a 1""b""c-2""d")' | awk ##### add your solution here
"a 1","c-2"
```

**f)** Construct a solution that works for both the given sample inputs and the corresponding output shown. Solution shouldn't use substitution functions. Can you do it without explicitly using `print` function as well?

```bash
$ echo 'hi,bye,there,was,here,to' | awk ##### add your solution here
hi,bye,to

$ echo '1,2,3,4,5' | awk ##### add your solution here
1,2,5
```

**g)** Transform the given input file `fw.txt` to get the output as shown below. If a field is empty (i.e. contains only space characters), replace it with `NA`.

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

**h)** Display only the third and fifth characters from each line input line as shown below.

```bash
$ printf 'restore\ncat one\ncricket' | awk ##### add your solution here
so
to
ik
```

<br>

# Record separators

**a)** The input file `jumbled.txt` consists of words separated by various delimiters. Display all words that contain `an` or `at` or `in` or `it`, one per line.

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

**b)** Emulate `paste -sd,` with `awk`.

```bash
$ # this command joins all input lines with ',' character
$ paste -sd, addr.txt
Hello World,How are you,This game is good,Today is sunny,12345,You are funny
$ # make sure there's no ',' at end of the line
$ # and that there's a newline character at the end of the line
$ awk ##### add your solution here
Hello World,How are you,This game is good,Today is sunny,12345,You are funny

$ # if there's only one line in input, again make sure there's no trailing ','
$ printf 'foo' | paste -sd,
foo
$ printf 'foo' | awk ##### add your solution here
foo
```

**c)** For the input file `scores.csv`, add another column named `GP` which is calculated out of `100` by giving `50%` weightage to `Maths` and `25%` each for `Physics` and `Chemistry`.

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

**d)** For the input file `sample.txt`, extract all paragraphs containing `do` and exactly two lines.

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

$ # note that there's no extra empty line at the end of the output
$ awk ##### add your solution here
Just do-it
Believe it

Much ado about nothing
He he he
```

**e)** For the input file `sample.txt`, change all paragraphs into single line by joining lines using `.` and a space character as the separator. And add a final `.` to each paragraph.

```bash
$ # note that there's no extra empty line at the end of the output
$ awk ##### add your solution here
Hello World.

Good day. How are you.

Just do-it. Believe it.

Today is sunny. Not a bit funny. No doubt you like it too.

Much ado about nothing. He he he.
```

**f)** The various input/output separators can be changed dynamically and comes into effect during the next input/output operation. For the input file `mixed_fs.txt`, retain only first two fields from each input line. The field separators should be space for first two lines and `,` for the rest of the lines.

```bash
$ cat mixed_fs.txt
rose lily jasmine tulip
pink blue white yellow
car,mat,ball,basket
green,brown,black,purple

$ awk ##### add your solution here
rose lily
pink blue
car,mat
green,brown
```

**g)** For the input file `table.txt`, get the outputs shown below. All of them feature line number as part of the solution.

```bash
$ # print other than second line
$ awk ##### add your solution here
brown bread mat hair 42
yellow banana window shoes 3.14

$ # print line number of lines containing 'air' or 'win'
$ awk ##### add your solution here
1
3

$ # calculate the sum of numbers in last column, except second line
$ awk ##### add your solution here
45.14
```

**h)** Print second and fourth line for every block of five lines.

```bash
$ seq 15 | awk ##### add your solution here
2
4
7
9
12
14
```

**i)** For the input file `odd.txt`, surround all whole words with `{}` that start and end with the same word character. This is a contrived exercise to make you use `RT`. In real world, you can use `sed -E 's/\b(\w|(\w)\w*\2)\b/{&}/g' odd.txt` to solve this.

```bash
$ cat odd.txt
-oreo-not:a _a2_ roar<=>took%22
RoaR to wow-

$ awk ##### add your solution here
-{oreo}-not:{a} {_a2_} {roar}<=>took%{22}
{RoaR} to {wow}-
```

<br>

# In-place file editing

**a)** For the input file `copyright.txt`, replace `copyright: 2018` with `copyright: 2020` and write back the changes to `copyright.txt` itself. The original contents should get saved to `copyright.txt.orig`

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

**b)** For the input files `nums1.txt` and `nums2.txt`, retain only second and third lines and write back the changes to their respective files. No need to create backups.

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

**a)** Use contents of `s` variable to display all matching lines from the input file `sample.txt`. Assume that the `s` variable doesn't have any regexp metacharacters and construct a solution such that only whole words are matched.

```bash
$ s='do'
$ ##### add your solution here
Just do-it
```

**b)** Replace all occurrences of `o` for the input file `addr.txt` with literal contents of `s` variable. Assume that the `s` variable has regexp metacharacters.

```bash
$ s='\&/'
$ ##### add your solution here
Hell\&/ W\&/rld
H\&/w are y\&/u
This game is g\&/\&/d
T\&/day is sunny
12345
Y\&/u are funny
```

<br>

# Control Structures

**a)** The input file `nums.txt` contains single column of numbers. Change positive numbers to negative and vice versa. Can you do it with using only `sub` function and without explicit use of `if-else` or ternary operator?

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

**b)** For the input file `table.txt`, change the field separator from space to `,` character. Also, any field not containing digit characters should be surrounded by double quotes.

```bash
$ awk ##### add your solution here
"brown","bread","mat","hair",42
"blue","cake","mug","shirt",-7
"yellow","banana","window","shoes",3.14
```

**c)** For each input line of the file `secrets.txt`, remove all characters except the last character of each field. Assume space as the input field separator.

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

**d)** Emulate `q` and `Q` commands of `sed` as shown below.

```bash
$ # sed '/are/q' sample.txt will print until (and including) line contains 'are'
$ awk ##### add your solution here
Hello World

Good day
How are you

$ # sed '/are/Q' sample.txt will print until (but excluding) line contains 'are'
$ awk ##### add your solution here
Hello World

Good day
```

**e)** For the input file `addr.txt`:

* if line contains `e`
    * delete all occurrences of `e`
    * surround all consecutive repeated characters with `{}`
    * assume that input will not have more than two consecutive repeats
* if line doesn't contain `e` but contains `u`
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

<br>

# Built-in functions

>![info](../images/info.svg) Exercises will also include functions and features not discussed in this chapter. Refer to [gawk manual: Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Functions) for details.

**a)** For the input file `scores.csv`, sort the rows based on **Physics** values in descending order. Header should be retained as the first line in output.

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

**b)** For the input file `nums3.txt`, calculate the square root of numbers and display in two different formats. First with four digits after fractional point and next in scientific notation, again with four digits after fractional point. Assume input has only single column positive numbers.

```bash
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

**c)** Transform the given input strings to the corresponding output shown. Assume space as the field separators. From the second field, remove the second `:` and the number that follows. Modify the last field by multiplying it by the number that was deleted from the second field. The numbers can be positive/negative integers or floating-point numbers (including scientific notation).

```bash
$ echo 'go x:12:-425 og 6.2' | awk ##### add your solution here
go x:12 og -2635

$ echo 'rx zwt:3.64:12.89e2 ljg 5' | awk ##### add your solution here
rx zwt:3.64 ljg 6445
```

**d)** Transform the given input strings to the corresponding output shown. Assume space as the field separators. Replace the second field with sum of the two numbers embedded in it. The numbers can be positive/negative integers or floating-point numbers (but not scientific notation).

```bash
$ echo 'f2:z3 kt//-42\\3.14//tw 5y6' | awk ##### add your solution here
f2:z3 -38.86 5y6

$ echo 't5:x7 qr;wq<=>+10{-8764.124}yb u9' | awk ##### add your solution here
t5:x7 -8754.12 u9
```

**e)** For the given input strings, extract portion of the line starting from the matching location specified by shell variable `s` till the end of the line. If there is no match, do not print that line. The contents of `s` should be matched literally.

```bash
$ s='(a^b)'
$ echo '3*f + (a^b) - 45' | ##### add your solution here
(a^b) - 45

$ s='\&/'
$ # should be no output for this input
$ echo 'f\&z\&2.14' | ##### add your solution here
$ # but this one has a match
$ echo 'f\&z\&/2.14' | ##### add your solution here
\&/2.14
```

**f)** Extract all positive integers preceded by `-` and followed by `:` or `;` and display all such matches separated by a newline character.

```bash
$ s='42 foo-5; baz3; x-83, y-20:-34; f12'
$ echo "$s" | awk ##### add your solution here
5
20
34
```

**g)** For the input file `scores.csv`, calculate the average of three marks for each `Name`. Those with average greater than or equal to `80` should be saved in `pass.csv` and the rest in `fail.csv`. The format is `Name` and average score (up to two decimal points) separated by a tab character.

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

**h)** For the input file `files.txt`, replace lines starting with a space with the output of that line executed as a shell command.

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

**i)** For the input file `fw.txt`, format the last column of numbers in scientific notation with two digits after the decimal point.

```bash
$ awk ##### add your solution here
1.3  rs   90  1.35e-01
3.8           6.00e+00
5.2  ye       8.24e+00
4.2  kt   32  4.51e+01
```

**j)** For the input file `addr.txt`, display all lines containing `e` or `u` but not both.

>![info](../images/info.svg) Hint — [gawk manual: Bit-Manipulation Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Bitwise-Functions).

```bash
$ awk ##### add your solution here
Hello World
This game is good
Today is sunny
```

<br>

# Multiple file input

**a)** Print the last field of first two lines for the input files `table.txt`, `scores.csv` and `fw.txt`. The field separators for these files are space, comma and fixed width respectively. To make the output more informative, print filenames and a separator as shown in the output below. Assume input files will have at least two lines.

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

**b)** For the given list of input files, display all filenames that contain `at` or `fun` in the third field. Assume space as the field separator.

```bash
$ awk ##### add your solution here sample.txt secrets.txt addr.txt table.txt
secrets.txt
addr.txt
table.txt
```

<br>

# Processing multiple records

**a)** For the input file `sample.txt`, print a matching line containing `do` only if the previous line is empty and the line before that contains `you`.

```bash
$ awk ##### add your solution here
Just do-it
Much ado about nothing
```

**b)** Print only the second matching line respectively for the search terms `do` and `not` for the input file `sample.txt`. Match these terms case insensitively.

```bash
$ awk ##### add your solution here
No doubt you like it too
Much ado about nothing
```

**c)** For the input file `sample.txt`, print the matching lines containing `are` or `bit` as well as `n` lines around the matching lines. The value for `n` is passed to the `awk` command via the `-v` option.

```bash
$ awk -v n=1 ##### add your solution here
Good day
How are you

Today is sunny
Not a bit funny
No doubt you like it too

$ # note that first and last line are empty for this case
$ awk -v n=2 ##### add your solution here

Good day
How are you

Just do-it

Today is sunny
Not a bit funny
No doubt you like it too

```

**d)** For the input file `broken.txt`, print all lines between the markers `top` and `bottom`. The first `awk` command shown below doesn't work because it is matching till end of file if second marker isn't found. Assume that the input file cannot have two `top` markers without a `bottom` marker appearing in between and vice-versa.

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

$ # wrong output
$ awk '/bottom/{f=0} f; /top/{f=1}' broken.txt
3.14
1234567890
Hi there
Have a nice day
Good bye

$ # expected output
$ ##### add your solution here
3.14
1234567890
```

**e)** For the input file `concat.txt`, extract contents from a line starting with ``### `` until but not including the next such line. The block to be extracted is indicated by variable `n` passed via the `-v` option.

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

**f)** For the input file `ruby.md`, replace all occurrences of `ruby` (irrespective of case) with `Ruby`. But, do not replace any matches between ` ```ruby ` and ` ``` ` lines (`ruby` in these markers shouldn't be replaced either).

```bash
$ awk ##### add your solution here ruby.md > out.md
$ diff -sq out.md expected.md 
Files out.md and expected.md are identical
```

<br>

# Two file processing

**a)** Use contents of `match_words.txt` file to display matching lines from `jumbled.txt` and `sample.txt`. The matching criteria is that the second word of lines from these files should match the third word of lines from `match_words.txt`.

```bash
$ cat match_words.txt
%whole(Hello)--{doubt}==ado==
just,\joint*,concession<=nice

$ # 'concession' is one of the third words from 'match_words.txt'
$ # and second word from 'jumbled.txt'
$ awk ##### add your solution here
wavering:concession/woof\retailer
No doubt you like it too
```

**b)** Interleave contents of `secrets.txt` with the contents of a file passed via `-v` option as shown below.

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

**c)** The file `search_terms.txt` contains one search string per line (these have no regexp metacharacters). Construct an `awk` command that reads this file and displays search terms (matched case insensitively) that were found in all of the other file arguments. Note that these terms should be matched with any part of the line, not just whole words.

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

<br>

# Dealing with duplicates

**a)** Retain only first copy of a line for the input file `lines.txt`. Case should be ignored while comparing lines. For example `hi there` and `HI TheRE` will be considered as duplicates.

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

**b)** Retain only first copy of a line for the input file `lines.txt`. Assume space as field separator with two fields on each line. Compare the lines irrespective of order of the fields. For example, `hehe haha` and `haha hehe` will be considered as duplicates.

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

**c)** For the input file `twos.txt`, create a file `uniq.txt` with all the unique lines and `dupl.txt` with all the duplicate lines. Assume space as field separator with two fields on each line. Compare the lines irrespective of order of the fields. For example, `hehe haha` and `haha hehe` will be considered as duplicates.

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

**a)** Before explaining the problem statement, here's an example of markdown headers and their converted link version. Note the use of `-1` for the second occurrence of `Summary` header. Also note that this sample doesn't simulate all the rules.

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

For the input file `gawk.md`, construct table of content links as per the details described below.

* Identify all header lines
    * there are two types of header lines, one starting with ``# `` and the other starting with ``## ``
    * lines starting with `#` inside code blocks defined by ` ```bash ` and ` ``` ` markers should be ignored
* The headers lines should then be converted as per the following rules:
    * content is defined as portion of the header ignoring the initial `#` or `##` characters and a space character
    * initial `##` should be replaced with four spaces and a `*`
    * else, initial `#` should be replaced with `*`
    * create a copy of the content, change it to all lowercase, replace all space characters with `-` character and then place it within `(#` and `)`
        * if there are multiple headers with same content, append `-1`, `-2`, etc respectively for the second header, third header, etc
    * surround the original content with `[]` and then append the string obtained from previous step
* Note that the output should have only the converted headers, all other input lines should not be present

As the input file `gawk.md` is too long, only the commands to verify your solution is shown.

```bash
$ awk -f toc.awk gawk.md > out.md
$ diff -sq out.md toc_expected.md
Files out.md and toc_expected.md are identical
```

**b)** For the input file `odd.txt`, surround first two whole words of each line with `{}` that start and end with the same word character. Assume that input file will not require case insensitive comparison. This is a contrived exercise that needs around 10 instructions and makes you recall various features presented in this book.

```bash
$ cat odd.txt
-oreo-not:a _a2_ roar<=>took%22
RoaR to wow-

$ awk -f same.awk odd.txt
-{oreo}-not:{a} _a2_ roar<=>took%22
{RoaR} to {wow}-
```

