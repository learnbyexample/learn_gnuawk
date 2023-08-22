# Preface

When it comes to command line text processing, the three major pillars are `grep` for filtering, `sed` for substitution and `awk` for field processing. These tools have overlapping features too, for example, all three of them have extensive filtering capabilities.

Unlike `grep` and `sed`, `awk` is a programming language. However, this book intends to showcase `awk` one-liners that can be composed from the command line instead of focusing on larger scripts.

This book heavily leans on examples to present features one by one. Regular expressions will also be discussed in detail.

It is recommended that you manually type each example. Make an effort to understand the sample input as well as the solution presented and check if the output changes (or not!) when you alter some part of the input and the command. As an analogy, consider learning to drive a car — no matter how much you read about them or listen to explanations, you'd need practical experience to become proficient.

## Prerequisites

You should be familiar with command line usage in a Unix-like environment. You should also be comfortable with concepts like file redirection and command pipelines. Knowing the basics of the `grep` and `sed` commands will be handy in understanding the filtering and substitution features of `awk`.

As `awk` is a programming language, you are also expected to be familiar with concepts like variables, printing, functions, control structures, arrays and so on.

If you are new to the world of the command line, check out my [Computing from the Command Line](https://github.com/learnbyexample/cli-computing) ebook and curated resources on [Linux CLI and Shell scripting](https://learnbyexample.github.io/curated_resources/linux_cli_scripting.html) before starting this book.

## Conventions

* The examples presented here have been tested with **GNU awk** version **5.2.2** and includes features not available in earlier versions.
* Code snippets are copy pasted from the `GNU bash` shell and modified for presentation purposes. Some commands are preceded by comments to provide context and explanations. Blank lines to improve readability, only `real` time shown for speed comparisons, output skipped for commands like `wget` and so on.
* Unless otherwise noted, all examples and explanations are meant for **ASCII** input.
* `awk` would mean `GNU awk`, `sed` would mean `GNU sed`, `grep` would mean `GNU grep` and so on unless otherwise specified.
* External links are provided throughout the book for you to explore certain topics in more depth.
* The [learn_gnuawk repo](https://github.com/learnbyexample/learn_gnuawk) has all the code snippets and files used in examples, exercises and other details related to the book. If you are not familiar with the `git` command, click the **Code** button on the webpage to get the files.

## Acknowledgements

* [GNU awk documentation](https://www.gnu.org/software/gawk/manual/) — manual and examples
* [stackoverflow](https://stackoverflow.com/) and [unix.stackexchange](https://unix.stackexchange.com/) — for getting answers to pertinent questions on `awk` and related commands
* [tex.stackexchange](https://tex.stackexchange.com/) — for help on [pandoc](https://github.com/jgm/pandoc/) and `tex` related questions
* [/r/commandline/](https://old.reddit.com/r/commandline), [/r/linux4noobs/](https://old.reddit.com/r/linux4noobs/), [/r/linuxquestions/](https://old.reddit.com/r/linuxquestions/) and [/r/linux/](https://old.reddit.com/r/linux/) — helpful forums
* [canva](https://www.canva.com/) — cover image
* [oxipng](https://github.com/shssoichiro/oxipng), [pngquant](https://pngquant.org/) and [svgcleaner](https://github.com/RazrFalcon/svgcleaner) — optimizing images
* [Warning](https://commons.wikimedia.org/wiki/File:Warning_icon.svg) and [Info](https://commons.wikimedia.org/wiki/File:Info_icon_002.svg) icons by [Amada44](https://commons.wikimedia.org/wiki/User:Amada44) under public domain
* [arifmahmudrana](https://github.com/arifmahmudrana) for spotting an ambiguous explanation
* [Pound-Hash](https://github.com/Pound-Hash) for critical feedback

Special thanks to all my friends and online acquaintances for their help, support and encouragement, especially during these difficult times.

## Feedback and Errata

I would highly appreciate it if you'd let me know how you felt about this book. It could be anything from a simple thank you, pointing out a typo, mistakes in code snippets, which aspects of the book worked for you (or didn't!) and so on. Reader feedback is essential and especially so for self-published authors.

You can reach me via:

* Issue Manager: [https://github.com/learnbyexample/learn_gnuawk/issues](https://github.com/learnbyexample/learn_gnuawk/issues)
* E-mail: learnbyexample.net@gmail.com
* Twitter: [https://twitter.com/learn_byexample](https://twitter.com/learn_byexample)

## Author info

Sundeep Agarwal is a lazy being who prefers to work just enough to support his modest lifestyle. He accumulated vast wealth working as a Design Engineer at Analog Devices and retired from the corporate world at the ripe age of twenty-eight. Unfortunately, he squandered his savings within a few years and had to scramble trying to earn a living. Against all odds, selling programming ebooks saved his lazy self from having to look for a job again. He can now afford all the fantasy ebooks he wants to read and spends unhealthy amount of time browsing the internet.

When the creative muse strikes, he can be found working on yet another programming ebook (which invariably ends up having at least one example with regular expressions). Researching materials for his ebooks and everyday social media usage drowned his bookmarks, so he maintains curated resource lists for sanity sake. He is thankful for free learning resources and open source tools. His own contributions can be found at [https://github.com/learnbyexample](https://github.com/learnbyexample).

**List of books:** https://learnbyexample.github.io/books/

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Code snippets are available under [MIT License](https://github.com/learnbyexample/learn_gnuawk/blob/master/LICENSE).

Resources mentioned in Acknowledgements section are available under original licenses.

## Book version

2.0

See [Version_changes.md](https://github.com/learnbyexample/learn_gnuawk/blob/master/Version_changes.md) to track changes across book versions.

# Installation and Documentation

The command name `awk` is derived from its developers — Alfred V. **A**ho, Peter J. **W**einberger, and Brian W. **K**ernighan. Over the years, it has been adapted and modified by various other developers. See [gawk manual: History](https://www.gnu.org/software/gawk/manual/gawk.html#History) for more details.

This chapter will show how to install or upgrade `awk` followed by details related to documentation.

## Installation

If you are on a Unix-like system, you will most likely have some version of `awk` already installed. This book is primarily about `GNU awk`. As there are syntax and feature differences between various implementations, make sure to use `GNU awk` to follow along the examples presented in this book.

`GNU awk` is part of the [text creation and manipulation](https://www.gnu.org/manual/manual.html) commands and usually comes by default on GNU/Linux distributions. To install a particular version, visit [gnu: gawk software](https://www.gnu.org/software/gawk/). See also [release notes](https://lists.gnu.org/archive/cgi-bin/namazu.cgi?query=gawk+released&submit=Search%21&idxname=info-gnu&max=20&result=normal&sort=date%3Alate) for an overview of changes between versions.

```bash
$ wget https://ftp.gnu.org/gnu/gawk/gawk-5.2.2.tar.xz
$ tar -Jxf gawk-5.2.2.tar.xz
$ cd gawk-5.2.2/
# see https://askubuntu.com/q/237576 if you get compiler not found error
$ ./configure
$ make
$ sudo make install

$ awk --version | head -n1
GNU Awk 5.2.2, API 3.2, PMA Avon 8-g1
```

If you are not using a Linux distribution, you may be able to access `GNU awk` using an option below:

* [Git for Windows](https://git-scm.com/downloads) — provides a Bash emulation used to run Git from the command line
* [Windows Subsystem for Linux](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux) — compatibility layer for running Linux binary executables natively on Windows
* [brew](https://brew.sh/) — Package Manager for macOS (or Linux)

>![info](images/info.svg) See also [gawk manual: Installation](https://www.gnu.org/software/gawk/manual/html_node/Installation.html) for advanced options and instructions to install `awk` on other platforms.

## Documentation

It is always good to know where to find documentation. From the command line, you can use `man awk` for a short manual and `info awk` for the full documentation. I prefer using the [online gnu awk manual](https://www.gnu.org/software/gawk/manual/), which feels much easier to use and navigate.

Here's a snippet from `man awk`:

```bash
$ man awk
GAWK(1)                        Utility Commands                        GAWK(1)  
  
NAME
       gawk - pattern scanning and processing language

SYNOPSIS
       gawk [ POSIX or GNU style options ] -f program-file [ -- ] file ...
       gawk [ POSIX or GNU style options ] [ -- ] program-text file ...

DESCRIPTION
       Gawk  is  the  GNU Project's implementation of the AWK programming lan‐
       guage.  It conforms to the definition of  the  language  in  the  POSIX
       1003.1  Standard.   This version in turn is based on the description in
       The AWK Programming Language, by Aho, Kernighan, and Weinberger.   Gawk
       provides  the additional features found in the current version of Brian
       Kernighan's awk and numerous GNU-specific extensions.
```

## Options overview

For a quick overview of all the available options, use `awk --help` from the command line.

```bash
$ awk --help
Usage: awk [POSIX or GNU style options] -f progfile [--] file ...
Usage: awk [POSIX or GNU style options] [--] 'program' file ...
POSIX options:                  GNU long options: (standard)
    -f progfile                 --file=progfile
    -F fs                       --field-separator=fs
    -v var=val                  --assign=var=val
Short options:                  GNU long options: (extensions)
    -b                          --characters-as-bytes
    -c                          --traditional
    -C                          --copyright
    -d[file]                    --dump-variables[=file]
    -D[file]                    --debug[=file]
    -e 'program-text'           --source='program-text'
    -E file                     --exec=file
    -g                          --gen-pot
    -h                          --help
    -i includefile              --include=includefile
    -I                          --trace
    -l library                  --load=library
    -L[fatal|invalid|no-ext]    --lint[=fatal|invalid|no-ext]
    -M                          --bignum
    -N                          --use-lc-numeric
    -n                          --non-decimal-data
    -o[file]                    --pretty-print[=file]
    -O                          --optimize
    -p[file]                    --profile[=file]
    -P                          --posix
    -r                          --re-interval
    -s                          --no-optimize
    -S                          --sandbox
    -t                          --lint-old
    -V                          --version
```

# awk introduction

This chapter will give an overview of `awk` syntax and some examples to show what kind of problems you could solve using `awk`. These features will be covered in depth in later, but you shouldn't skip this chapter.

## Filtering

`awk` provides filtering capabilities like those supported by the `grep` and `sed` commands. As a programming language, there are additional nifty features as well. Similar to many command line utilities, `awk` can accept input from both stdin and files.

```bash
# sample stdin data
$ printf 'gate\napple\nwhat\nkite\n'
gate
apple
what
kite

# same as: grep 'at' and sed -n '/at/p'
# filter lines containing 'at'
$ printf 'gate\napple\nwhat\nkite\n' | awk '/at/'
gate
what

# same as: grep -v 'e' and sed -n '/e/!p'
# filter lines NOT containing 'e'
$ printf 'gate\napple\nwhat\nkite\n' | awk '!/e/'
what
```

By default, `awk` automatically loops over the input content line by line. You can then use programming instructions to process those lines. As `awk` is often used from the command line, many shortcuts are available to reduce the amount of typing needed.

In the above examples, a regular expression (defined by the pattern between a pair of forward slashes) has been used to filter the input. Regular expressions (regexp) will be covered in detail in the [next chapter](#regular-expressions). String values without any special regexp characters are used in this chapter. The full syntax is `string ~ /regexp/` to check if the given string matches the regexp and `string !~ /regexp/` to check if doesn't match. When the string isn't specified, the test is performed against a special variable `$0`, which has the contents of the input line. The correct term would be input **record**, but that's a discussion for a [later chapter](#record-separators).

Also, in the above examples, only the filtering condition was given. By default, when the condition evaluates to `true`, the contents of `$0` is printed. Thus:

* `awk '/regexp/'` is a shortcut for `awk '$0 ~ /regexp/{print $0}'`
* `awk '!/regexp/'` is a shortcut for `awk '$0 !~ /regexp/{print $0}'`

```bash
# same as: awk '/at/'
$ printf 'gate\napple\nwhat\nkite\n' | awk '$0 ~ /at/{print $0}'
gate
what

# same as: awk '!/e/'
$ printf 'gate\napple\nwhat\nkite\n' | awk '$0 !~ /e/{print $0}'
what
```

In the above examples, `{}` is used to specify a block of code to be executed when the condition that precedes the block evaluates to `true`. One or more statements can be given separated by the `;` character. You'll see such examples and learn more about `awk` syntax later.

## Idiomatic use of 1

In a conditional expression, non-zero numeric values and non-empty string values are evaluated as `true`. Idiomatically, `1` is used to denote a `true` condition in one-liners as a shortcut to print the contents of `$0`.

```bash
# same as: printf 'gate\napple\nwhat\nkite\n' | cat
# same as: awk '{print $0}'
$ printf 'gate\napple\nwhat\nkite\n' | awk '1'
gate
apple
what
kite
```

## Substitution

`awk` has three functions to cover search and replace requirements. Two of them are shown below. The `sub` function replaces only the first match, whereas the `gsub` function replaces all the matching occurrences. By default, these functions operate on `$0` when the input string isn't provided. Both `sub` and `gsub` modifies the input source on successful substitution.

```bash
# for each input line, change only the first ':' to '-'
# same as: sed 's/:/-/'
$ printf '1:2:3:4\na:b:c:d\n' | awk '{sub(/:/, "-")} 1'
1-2:3:4
a-b:c:d

# for each input line, change all ':' to '-'
# same as: sed 's/:/-/g'
$ printf '1:2:3:4\na:b:c:d\n' | awk '{gsub(/:/, "-")} 1'
1-2-3-4
a-b-c-d
```

The first argument to the `sub` and `gsub` functions is the regexp to be matched against the input content. The second argument is the replacement string. String literals are specified within double quotes. In the above examples, `sub` and `gsub` are used inside a block as they aren't intended to be used as a conditional expression. The `1` after the block is treated as a conditional expression as it is used outside a block. You can also use the variations presented below to get the same results:

* `awk '{sub(/:/, "-")} 1'` is same as `awk '{sub(/:/, "-"); print $0}'`
* You can also just use `print` instead of `print $0` as `$0` is the default string

>![info](images/info.svg) You might wonder why to use or learn `grep` and `sed` when you can achieve the same results with `awk`. It depends on the problem you are trying to solve. A simple line filtering will be faster with `grep` compared to `sed` or `awk` because `grep` is optimized for such cases. Similarly, `sed` will be faster than `awk` for substitution cases. Also, not all features easily translate among these tools. For example, `grep -o` requires lot more steps to code with `sed` or `awk`. Only `grep` offers recursive search. And so on. See also [unix.stackexchange: When to use grep, sed, awk, perl, etc](https://unix.stackexchange.com/q/303044/109046).

## Field processing

As mentioned before, `awk` is primarily used for field based processing. Consider the sample input file shown below with fields separated by a single space character.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14
```

Here are some examples that are based on a specific field rather than the entire line. By default, `awk` splits the input line based on spaces and the field contents can be accessed using `$N` where `N` is the field number required. A special variable `NF` is updated with the total number of fields for each input line. There are many more details and nuances to cover regarding the default field splitting, but for now this is enough to proceed.

```bash
# print the second field of each input line
$ awk '{print $2}' table.txt
bread
cake
banana

# print lines only if the last field is a negative number
# recall that the default action is to print the contents of $0
$ awk '$NF<0' table.txt
blue cake mug shirt -7

# change 'b' to 'B' only for the first field
$ awk '{gsub(/b/, "B", $1)} 1' table.txt
Brown bread mat hair 42
Blue cake mug shirt -7
yellow banana window shoes 3.14
```

## awk one-liner structure

The examples in the previous sections have used a few different ways to construct a typical `awk` one-liner. If you haven't yet grasped the syntax, this generic structure might help:

`awk 'cond1{action1} cond2{action2} ... condN{actionN}'`

When a condition isn't provided, the action is always executed. Within a block, you can provide multiple statements separated by the semicolon character. If an action isn't provided, then by default, contents of `$0` variable is printed if the condition evaluates to `true`. When action isn't present, you can use a semicolon to terminate a condition and start another `condX{actionX}` snippet.

Note that multiple blocks are just a syntactical sugar. It helps to avoid explicit use of `if` control structure for most one-liners. The below snippet shows the same code with and without `if` structure.

```bash
$ awk '{
         if($NF < 0){
            print $0
         }
       }' table.txt
blue cake mug shirt -7

$ awk '$NF<0' table.txt
blue cake mug shirt -7
```

You can use a `BEGIN{}` block when you need to execute something before the input is read and an `END{}` block to execute something after all of the input has been processed.

```bash
$ seq 2 | awk 'BEGIN{print "---"} 1; END{print "%%%"}'
---
1
2
%%%
```

There are some more types of blocks that can be used, you'll see them in coming chapters. See [gawk manual: Operators](https://www.gnu.org/software/gawk/manual/gawk.html#All-Operators) for details about operators and [gawk manual: Truth Values and Conditions](https://www.gnu.org/software/gawk/manual/gawk.html#Truth-Values-and-Conditions) for conditional expressions.

## Strings and Numbers

Some examples so far have already used string and numeric literals. As mentioned earlier, `awk` tries to provide a concise way to construct a solution from the command line. The data type of a value is determined based on the syntax used. String literals are represented inside double quotes. Numbers can be integers or floating-point. Scientific notation is allowed as well. See [gawk manual: Constant Expressions](https://www.gnu.org/software/gawk/manual/gawk.html#Constants) for more details.

```bash
# BEGIN{} is also useful to write an awk program without any external input
$ awk 'BEGIN{print "hi"}'
hi

$ awk 'BEGIN{print 42}'
42
$ awk 'BEGIN{print 3.14}'
3.14
$ awk 'BEGIN{print 34.23e4}'
342300
```

You can also save these literals in variables for later use. Some variables are predefined, `NF` for example.

```bash
$ awk 'BEGIN{a=5; b=2.5; print a+b}'
7.5

# strings placed next to each other are concatenated
$ awk 'BEGIN{s1="con"; s2="cat"; print s1 s2}'
concat
```

If an uninitialized variable is used, it will act as an empty string in string context and `0` in numeric context. You can force a string to behave as a number by simply using it in an expression with numeric values. You can also use unary `+` or `-` operators. If the string doesn't start with a valid number (ignoring any starting whitespaces), it will be treated as `0`. Similarly, concatenating a string to a number will automatically change the number to string. See [gawk manual: How awk Converts Between Strings and Numbers](https://www.gnu.org/software/gawk/manual/gawk.html#Strings-And-Numbers) for more details.

```bash
# same as: awk 'BEGIN{sum=0} {sum += $NF} END{print sum}'
$ awk '{sum += $NF} END{print sum}' table.txt
38.14

$ awk 'BEGIN{n1="5.0"; n2=5; if(n1==n2) print "equal"}'
$ awk 'BEGIN{n1="5.0"; n2=5; if(+n1==n2) print "equal"}'
equal
$ awk 'BEGIN{n1="5.0"; n2=5; if(n1==n2".0") print "equal"}'
equal

$ awk 'BEGIN{print 5 + "abc 2 xyz"}'
5
$ awk 'BEGIN{print 5 + " \t 2 xyz"}'
7
```

## Arrays

Arrays in `awk` are associative, meaning they are key-value pairs. The keys can be numbers or strings, but numbers get converted to strings internally. They can be multi-dimensional as well. There will be plenty of array examples in later chapters in relevant context. See [gawk manual: Arrays](https://www.gnu.org/software/gawk/manual/gawk.html#Arrays) for complete details and gotchas.

```bash
# assigning an array and accessing an element based on string keys
$ awk 'BEGIN{student["id"] = 101; student["name"] = "Joe";
       print student["name"]}'
Joe

# checking if a key exists
$ awk 'BEGIN{student["id"] = 101; student["name"] = "Joe";
       if("id" in student) print "Key found"}'
Key found
```

## Summary

In my early days of getting used to the Linux command line, I was intimidated by `sed` and `awk` examples and didn't even try to learn them. Hopefully, this gentler introduction works for you and the various syntactical magic has been explained adequately. Try to experiment with the given examples, for example change field numbers to something other than the number used. Be curious, like what happens if a field number is negative or a floating-point number. Read the manual. Practice a lot. And so on.

The next chapter is dedicated solely for regular expressions. The features introduced in this chapter would be used in the examples, so make sure you are comfortable with `awk` syntax before proceeding. Solving the exercises to follow will help test your understanding.

## Interactive exercises

I wrote a TUI app to help you solve some of the exercises from this book interactively. See [AwkExercises](https://github.com/learnbyexample/TUI-apps/tree/main/AwkExercises) repo for installation steps and [app_guide.md](https://github.com/learnbyexample/TUI-apps/blob/main/AwkExercises/app_guide.md) for instructions on using this app.

Here's a sample screenshot:

![AwkExercises example](images/awk_exercises.png)

## Exercises

>![info](images/info.svg) All the exercises are also collated together in one place at [Exercises.md](https://github.com/learnbyexample/learn_gnuawk/blob/master/exercises/Exercises.md). For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/learn_gnuawk/blob/master/exercises/Exercise_solutions.md).

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Regular Expressions

Regular Expressions is a versatile tool for text processing. It helps to precisely define a matching criteria. For learning and understanding purposes, one can view regular expressions as a mini-programming language in itself, specialized for text processing. Parts of a regular expression can be saved for future use, analogous to variables and functions. There are ways to perform AND, OR, NOT conditionals, features to concisely define repetition to avoid manual replication and so on.

Here are some common use cases:

* Sanitizing a string to ensure that it satisfies a known set of rules. For example, to check if a given string matches password rules.
* Filtering or extracting portions on an abstract level like alphabets, digits, punctuation and so on.
* Qualified string replacement. For example, at the start or the end of a string, only whole words, based on surrounding text, etc.

This chapter will cover regular expressions as implemented in `awk`. Most of `awk`'s regular expression syntax is similar to Extended Regular Expression (ERE) supported by `grep -E` and `sed -E`. Unless otherwise indicated, examples and descriptions will assume ASCII input.

>![info](images/info.svg) See also [POSIX specification](https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap09.html) for regular expressions and [unix.stackexchange: Why does my regular expression work in X but not in Y?](https://unix.stackexchange.com/q/119905/109046) See my [blog post](https://learnbyexample.github.io/gnu-bre-ere-cheatsheet/) for differences between regexp features supported by `grep`, `sed` and `awk`.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Syntax and variable assignment

As seen in the previous chapter, the syntax is `string ~ /regexp/` to check if the given string satisfies the rules specified by the regexp. And `string !~ /regexp/` to invert the condition. By default, `$0` is checked if the string isn't specified. You can also save a regexp literal in a variable by adding `@` as a prefix. This is needed because `/regexp/` by itself would mean `$0 ~ /regexp/`.

```bash
$ printf 'spared no one\ngrasped\nspar\n' | awk '/ed/'
spared no one
grasped

$ printf 'spared no one\ngrasped\nspar\n' | awk 'BEGIN{r = @/ed/} $0 ~ r'
spared no one
grasped
```

## String Anchors

In the examples seen so far, the regexp was a simple string value without any special characters. Also, the regexp pattern evaluated to `true` if it was found anywhere in the string. Instead of matching anywhere in the string, restrictions can be specified. These restrictions are made possible by assigning special meaning to certain characters and escape sequences. The characters with special meaning are known as **metacharacters** in regular expressions parlance. In case you need to match those characters literally, you need to escape them with a `\` character (discussed in the [Matching the metacharacters](#matching-the-metacharacters) section).

There are two string anchors:

* `^` metacharacter restricts the matching to the start of the string
* `$` metacharacter restricts the matching to the end of the string

By default, `awk` processes input line by line, using a newline character as the separator. This separator won't be part of the contents in `$0` but you get back the newline when printing because the default output record separator is also a newline character. Thus, these string anchors can be considered as *line* anchors when you are processing input content line by line.

```bash
$ cat anchors.txt
sub par
spar
apparent effort
two spare computers
cart part tart mart

# lines starting with 'sp'
$ awk '/^sp/' anchors.txt
spar

# lines ending with 'ar'
$ awk '/ar$/' anchors.txt
sub par
spar
```

By combining these two anchors, you can restrict the matching to only whole lines. Here's an example:

```bash
# change only whole line 'spar'
# can also use: awk '/^spar$/{$0 = 123} 1'
# can also use: awk '$0=="spar"{$0 = 123} 1'
$ printf 'spared no one\npar\nspar\n' | awk '{sub(/^spar$/, "123")} 1'
spared no one
par
123
```

The anchors can be used by themselves as a pattern too. Helps to insert text at the start/end of a string, emulating string concatenation operations. These might not feel like useful capability, but combined with other features they become quite a handy tool.

```bash
# add '* ' at the start of every input line
$ printf 'spared no one\ngrasped\nspar\n' | awk '{gsub(/^/, "* ")} 1'
* spared no one
* grasped
* spar

# append '.' only if a line doesn't contain space characters
$ printf 'spared no one\ngrasped\nspar\n' | awk '!/ /{gsub(/$/, ".")} 1'
spared no one
grasped.
spar.
```

>![info](images/info.svg) See also the [Behavior of ^ and $ when string contains newline](#behavior-of--and--when-string-contains-newline) section.

## Word Anchors

The second type of restriction is word anchors. A word character is any alphabet (irrespective of case), digit and the underscore character. You might wonder why there are digits and underscores as well, why not only alphabets? This comes from variable and function naming conventions — typically alphabets, digits and underscores are allowed. So, the definition is more programming oriented than natural language.

Use `\<` to indicate the start of word anchor and `\>` to indicate the end of word anchor. As an alternate, you can use `\y` to indicate both the start and end of word anchors.

```bash
$ cat anchors.txt
sub par
spar
apparent effort
two spare computers
cart part tart mart

# words starting with 'par'
$ awk '/\<par/' anchors.txt
sub par
cart part tart mart

# words ending with 'par'
$ awk '/par\>/' anchors.txt
sub par
spar

# replace only whole word 'par'
# note that only lines where the substitution succeeded will be printed
# as the return value of sub/gsub is number of substitutions made
$ awk 'gsub(/\<par\>/, "***")' anchors.txt
sub ***
```

>![info](images/info.svg) Typically `\b` is used to represent the word anchor (for example, in `grep`, `sed`, `perl`, etc), but in `awk` the escape sequence `\b` refers to the backspace character. See also the [Word boundary differences](#word-boundary-differences) section.

## Opposite Word Anchor

The `\y` escape sequence has an opposite anchor too. `\B` matches wherever `\y` doesn't match. This duality will be seen later with some other escape sequences too.

```bash
# match 'par' if it is surrounded by word characters
$ awk '/\Bpar\B/' anchors.txt
apparent effort
two spare computers

# match 'par' but not at the start of a word
$ awk '/\Bpar/' anchors.txt
spar
apparent effort
two spare computers

# match 'par' but not at the end of a word
$ awk '/par\B/' anchors.txt
apparent effort
two spare computers
cart part tart mart
```

Here are some examples for using word boundaries by themselves as a pattern:

```bash
$ echo 'copper' | awk '{gsub(/\y/, ":")} 1'
:copper:

$ echo 'copper' | awk '{gsub(/\B/, ":")} 1'
c:o:p:p:e:r
```

>![warning](images/warning.svg) Negative logic is handy in many text processing situations. But use it with care, you might end up matching things you didn't intend.

## Combining conditions

Before seeing the next regexp feature, it is good to note that sometimes using logical operators is easier to read and maintain compared to doing everything with regexp.

```bash
# lines starting with 'b' and not containing 'at'
$ awk '/^b/ && !/at/' table.txt
blue cake mug shirt -7

# first field contains 'low'
# or, the last field value is less than 0
$ awk '$1 ~ /low/ || $NF<0' table.txt
blue cake mug shirt -7
yellow banana window shoes 3.14
```

## Alternation

Many a times, you'd want to search for multiple terms. In a conditional expression, you can use the logical operators to combine multiple conditions (see the previous section for examples). With regular expressions, the `|` metacharacter is similar to logical OR. The regular expression will match if any of the patterns separated by `|` is satisfied.

Alternation is similar to using the `||` operator between two regexps. Having a single regexp helps to write terser code and `||` cannot be used when substitution is required.

```bash
# match whole word 'par' or string ending with 's'
# same as: awk '/\<par\>/ || /s$/'
$ awk '/\<par\>|s$/' anchors.txt
sub par
two spare computers

# replace 'cat' or 'dog' or 'fox' with '--'
# note the use of gsub for multiple replacements
$ echo 'cats dog bee parrot foxed' | awk '{gsub(/cat|dog|fox/, "--")} 1'
--s -- bee parrot --ed
```

## Alternation precedence

There are some tricky corner cases when using alternation. If it is used for filtering a line, there is no ambiguity. However, for use cases like substitution, it depends on a few factors. Say, you want to replace `are` or `spared` — which one should get precedence? The bigger word `spared` or the substring `are` inside it or based on something else?

The alternative which matches earliest in the input gets precedence.

```bash
# here, the output will be the same irrespective of alternation order
# note that 'sub' is used here, so only the first match gets replaced
$ echo 'cats dog bee parrot foxed' | awk '{sub(/bee|parrot|at/, "--")} 1'
c--s dog bee parrot foxed
$ echo 'cats dog bee parrot foxed' | awk '{sub(/parrot|at|bee/, "--")} 1'
c--s dog bee parrot foxed
```

In case of matches starting from the same location, for example `spar` and `spared`, the longest matching portion gets precedence. Unlike other regular expression implementations, left-to-right priority for alternation comes into play only if the length of the matches are the same. See [Longest match wins](#longest-match-wins) and [Backreferences](#backreferences) sections for more examples. See [regular-expressions: alternation](https://www.regular-expressions.info/alternation.html) for more information on this topic.

```bash
$ echo 'spared party parent' | awk '{sub(/spa|spared/, "**")} 1'
** party parent
$ echo 'spared party parent' | awk '{sub(/spared|spa/, "**")} 1'
** party parent

# other regexp flavors like Perl have left-to-right priority
$ echo 'spared party parent' | perl -pe 's/spa|spared/**/'
**red party parent
```

## Grouping

Often, there are some common things among the regular expression alternatives. It could be common characters or qualifiers like the anchors. In such cases, you can group them using a pair of parentheses metacharacters. Similar to `a(b+c)d = abd+acd` in maths, you get `a(b|c)d = abd|acd` in regular expressions.

```bash
# without grouping
$ printf 'red\nreform\nread\narrest\n' | awk '/reform|rest/'
reform
arrest
# with grouping
$ printf 'red\nreform\nread\narrest\n' | awk '/re(form|st)/'
reform
arrest

# without grouping
$ awk '/\<par\>|\<part\>/' anchors.txt
sub par
cart part tart mart
# taking out common anchors
$ awk '/\<(par|part)\>/' anchors.txt
sub par
cart part tart mart
# taking out common characters as well
# you'll later learn a better technique instead of using empty alternate
$ awk '/\<par(|t)\>/' anchors.txt
sub par
cart part tart mart
```

## Matching the metacharacters

You have already seen a few metacharacters and escape sequences that help compose a regular expression. To match the metacharacters literally, i.e. to remove their special meaning, prefix those characters with a `\` character. To indicate a literal `\` character, use `\\`.

Unlike `grep` and `sed`, the string anchors have to be always escaped to match them literally as there is no BRE mode in `awk`. They do not lose their special meaning even when not used in their customary positions.

```bash
# awk '/b^2/' will not work even though ^ isn't being used as anchor
# b^2 will work for both grep and sed if you use BRE syntax
$ printf 'a^2 + b^2 - C*3\nd = c^2' | awk '/b\^2/'
a^2 + b^2 - C*3

# note that ')' doesn't need to be escaped
$ echo '(a*b) + c' | awk '{gsub(/\(|)/, "")} 1'
a*b + c

$ echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'
/learn/by/example
```

>![info](images/info.svg) Handling the replacement section metacharacters will be discussed in the [Backreferences](#backreferences) section.

## Using string literal as a regexp

The first argument to the `sub` and `gsub` functions can be a string as well, which will then be converted to a regexp. This is handy in a few cases. For example, if you have many `/` characters in the search pattern, it might become easier to use a string literal instead of a regexp.

```bash
$ p='/home/learnbyexample/reports'
$ echo "$p" | awk '{sub(/\/home\/learnbyexample\//, "~/")} 1'
~/reports
$ echo "$p" | awk '{sub("/home/learnbyexample/", "~/")} 1'
~/reports

# filtering example
$ printf '/home/joe/1\n/home/john/1\n' | awk '/\/home\/joe\//'
/home/joe/1
$ printf '/home/joe/1\n/home/john/1\n' | awk '$0 ~ "/home/joe/"'
/home/joe/1
```

In the above examples, the string literal was supplied directly. But any other expression or variable can be used as well, examples for which will be shown later in this chapter. The reason why string isn't always used to represent regexp is that the special meaning for the `\` character will clash. For example:

```bash
$ awk 'gsub("\<par\>", "X")' anchors.txt
awk: cmd. line:1: warning: escape sequence `\<' treated as plain `<'
awk: cmd. line:1: warning: escape sequence `\>' treated as plain `>'

# you'll need \\ to represent a single \
$ awk 'gsub("\\<par\\>", "X")' anchors.txt
sub X
# regexp literal is better suited in these cases
$ awk 'gsub(/\<par\>/, "X")' anchors.txt
sub X

# another example
$ echo '\learn\by\example' | awk '{gsub("\\\\", "/")} 1'
/learn/by/example
$ echo '\learn\by\example' | awk '{gsub(/\\/, "/")} 1'
/learn/by/example
```

>![info](images/info.svg) See [gawk manual: Gory details](https://www.gnu.org/software/gawk/manual/gawk.html#Gory-Details) for more information than you'd want to know.

## The dot meta character

The dot metacharacter serves as a placeholder to match any character (including the newline character). Later you'll learn how to define your own custom placeholder for a limited set of characters.

```bash
# 3 character sequence starting with 'c' and ending with 't'
$ echo 'tac tin cot abc:tyz excited' | awk '{gsub(/c.t/, "-")} 1'
ta-in - ab-yz ex-ed

# any character followed by 3 and again any character
$ printf '42\t3500\n' | awk '{gsub(/.3./, ":")} 1'
42:00

# example to show that . matches \n as well
# 'c' followed by any character followed by 'x'
$ awk 'BEGIN{s="abc\nxyz"; sub(/c.x/, " ", s); print s}'
ab yz
```

## Quantifiers

Alternation helps you match one among multiple patterns. Combining the dot metacharacter with quantifiers (and alternation if needed) paves a way to perform logical AND between patterns. For example, to check if a string matches two patterns with any number of characters in between. Quantifiers can be applied to characters, groupings and some more constructs that'll be discussed later. Apart from the ability to specify exact quantity and bounded range, these can also match unbounded varying quantities.

First up, the `?` metacharacter which quantifies a character or group to match `0` or `1` times. This helps to define optional patterns and build terser patterns.

```bash
# same as: awk '{gsub(/\<(fe.d|fed)\>/, "X")} 1'
$ echo 'fed fold fe:d feeder' | awk '{gsub(/\<fe.?d\>/, "X")} 1'
X fold X feeder

# same as: awk '/\<par(|t)\>/'
$ awk '/\<part?\>/' anchors.txt
sub par
cart part tart mart

# same as: awk '{gsub(/part|parrot/, "X")} 1'
$ echo 'par part parrot parent' | awk '{gsub(/par(ro)?t/, "X")} 1'
par X X parent
# same as: awk '{gsub(/part|parrot|parent/, "X")} 1'
$ echo 'par part parrot parent' | awk '{gsub(/par(en|ro)?t/, "X")} 1'
par X X X

# matches '<' or '\<' and they are both replaced with '\<'
$ echo 'apple \< fig ice < apple cream <' | awk '{gsub(/\\?</, "\\<")} 1'
apple \< fig ice \< apple cream \<
```

The `*` metacharacter quantifies a character or group to match `0` or more times.

```bash
# 'f' followed by zero or more of 'e' followed by 'd'
$ echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe*d/, "X")} 1'
X X fod fe:d Xer

# zero or more of '1' followed by '2'
$ echo '3111111111125111142' | awk '{gsub(/1*2/, "-")} 1'
3-511114-
```

The `+` metacharacter quantifies a character or group to match `1` or more times.

```bash
# 'f' followed by one or more of 'e' followed by 'd'
$ echo 'fd fed fod fe:d feeeeder' | awk '{gsub(/fe+d/, "X")} 1'
fd X fod fe:d Xer

# one or more of '1' followed by optional '4' and then '2'
$ echo '3111111111125111142' | awk '{gsub(/1+4?2/, "-")} 1'
3-5-
```

You can specify a range of integer numbers, both bounded and unbounded, using `{}` metacharacters. There are four ways to use this quantifier as listed below:

| Quantifier | Description |
| ---------- | ----------- |
| `{m,n}`    | match `m` to `n` times |
| `{m,}`     | match at least `m` times |
| `{,n}`     | match up to `n` times (including `0` times) |
| `{n}`      | match exactly `n` times |

```bash
# note that stray characters like space are not allowed anywhere within {}
$ echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{1,4}c/, "X")} 1'
ac X X X abbbbbbbbc

$ echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3,}c/, "X")} 1'
ac abc abbc X X

$ echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{,2}c/, "X")} 1'
X X X abbbc abbbbbbbbc

$ echo 'ac abc abbc abbbc abbbbbbbbc' | awk '{gsub(/ab{3}c/, "X")} 1'
ac abc abbc X abbbbbbbbc
```

>![info](images/info.svg) The `{}` metacharacters have to be escaped to match them literally. Similar to the `()` metacharacters, escaping `{` alone is enough. If it doesn't conform strictly to any of the four forms listed above, escaping is not needed at all.
>
> ```bash
> $ echo 'a{5} = 10' | awk '{sub(/a\{5}/, "x")} 1'
> x = 10
> $ echo 'report_{a,b}.txt' | awk '{sub(/_{a,b}/, "_c")} 1'
> report_c.txt
> ```

## Conditional AND

Next up, how to construct conditional AND using dot metacharacter and quantifiers.

```bash
# match 'Error' followed by zero or more characters followed by 'valid'
$ echo 'Error: not a valid input' | awk '/Error.*valid/'
Error: not a valid input
```

To allow matching in any order, you'll have to bring in alternation as well.

```bash
# 'cat' followed by 'dog' or 'dog' followed by 'cat'
$ echo 'two cats and a dog' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'
two pets
$ echo 'two dogs and a cat' | awk '{gsub(/cat.*dog|dog.*cat/, "pets")} 1'
two pets
```

## Longest match wins

You've already seen an example where the longest matching portion was chosen if the alternatives started from the same location. For example `spar|spared` will result in `spared` being chosen over `spar`. The same applies whenever there are two or more matching possibilities from the same starting location. For example, `f.?o` will match `foo` instead of `fo` if the input string to match is `foot`.

```bash
# longest match among 'foo' and 'fo' wins here
$ echo 'foot' | awk '{sub(/f.?o/, "X")} 1'
Xt
# everything will match here
$ echo 'car bat cod map scat dot abacus' | awk '{sub(/.*/, "X")} 1'
X

# longest match happens when (1|2|3)+ matches up to '1233' only
# so that '12apple' can match as well
$ echo 'fig123312apple' | awk '{sub(/g(1|2|3)+(12apple)?/, "X")} 1'
fiX
# in other implementations like Perl, that is not the case
# precedence is left-to-right for greedy quantifiers
$ echo 'fig123312apple' | perl -pe 's/g(1|2|3)+(12apple)?/X/'
fiXapple
```

While determining the longest match, the overall regular expression matching is also considered. That's how the `Error.*valid` example worked. If `.*` had consumed everything after `Error`, there wouldn't be any more characters to try to match `valid`. So, among the varying quantity of characters to match for `.*`, the longest portion that satisfies the overall regular expression is chosen. Something like `a.*b` will match from the first `a` in the input string to the last `b`. In other implementations, like Perl, this is achieved through a process called **backtracking**. These approaches have their own advantages and disadvantages and have cases where the pattern can result in exponential time consumption.

```bash
# from the start of line to the last 'b' in the line
$ echo 'car bat cod map scat dot abacus' | awk '{sub(/.*b/, "-")} 1'
-acus

# from the first 'b' to the last 't' in the line
$ echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*t/, "-")} 1'
car - abacus

# from the first 'b' to the last 'at' in the line
$ echo 'car bat cod map scat dot abacus' | awk '{sub(/b.*at/, "-")} 1'
car - dot abacus

# here 'm*' will match 'm' zero times as that gives the longest match
$ echo 'car bat cod map scat dot abacus' | awk '{sub(/a.*m*/, "-")} 1'
c-
```

## Character classes

To create a custom placeholder for limited set of characters, enclose them inside `[]` metacharacters. It is similar to using single character alternations inside a grouping, but with added flexibility and features. Character classes have their own versions of metacharacters and provide special predefined sets for common use cases. Quantifiers are also applicable to character classes.

```bash
# same as: awk '/cot|cut/' and awk '/c(o|u)t/'
$ printf 'cute\ncat\ncot\ncoat\ncost\nscuttle\n' | awk '/c[ou]t/'
cute
cot
scuttle

# same as: awk '/.(a|e|o)t/'
$ printf 'meeting\ncute\nboat\nat\nfoot\n' | awk '/.[aeo]t/'
meeting
boat
foot

# same as: awk '{gsub(/\<(s|o|t)(o|n)\>/, "X")} 1'
$ echo 'no so in to do on' | awk '{gsub(/\<[sot][on]\>/, "X")} 1'
no X in X do X

# lines made up of letters 'o' and 'n', line length at least 2
# words.txt contains dictionary words, one word per line
$ awk '/^[on]{2,}$/' words.txt
no
non
noon
on
```

## Character class metacharacters

Character classes have their own metacharacters to help define the sets succinctly. Metacharacters outside of character classes like `^`, `$`, `()` etc either don't have special meaning or have a completely different one inside the character classes.

First up, the `-` metacharacter that helps to define a range of characters instead of having to specify them all individually.

```bash
# same as: awk '{gsub(/[0123456789]+/, "-")} 1'
$ echo 'Sample123string42with777numbers' | awk '{gsub(/[0-9]+/, "-")} 1'
Sample-string-with-numbers

# whole words made up of lowercase alphabets and digits only
$ echo 'coat Bin food tar12 best' | awk '{gsub(/\<[a-z0-9]+\>/, "X")} 1'
X Bin X X X

# whole words made up of lowercase alphabets, starting with 'p' to 'z'
$ echo 'road i post grip read eat pit' | awk '{gsub(/\<[p-z][a-z]*\>/, "X")} 1'
X i X grip X eat X
```

Character classes can also be used to construct numeric ranges. However, it is easy to miss corner cases and some ranges are complicated to design.

```bash
# numbers between 10 to 29
$ echo '23 154 12 26 34' | awk '{gsub(/\<[12][0-9]\>/, "X")} 1'
X 154 X X 34

# numbers >= 100 with optional leading zeros
$ echo '0501 035 154 12 26 98234' | awk '{gsub(/\<0*[1-9][0-9]{2,}\>/, "X")} 1'
X 035 X 12 26 X
```

Next metacharacter is `^` which has to be specified as the first character of the character class. It negates the set of characters, so all characters other than those specified will be matched. As highlighted earlier, handle negative logic with care, you might end up matching more than you wanted.

```bash
# replace all non-digit characters
$ echo 'Sample123string42with777numbers' | awk '{gsub(/[^0-9]+/, "-")} 1'
-123-42-777-

# delete last two columns
$ echo 'apple:123:banana:cherry' | awk '{sub(/(:[^:]+){2}$/, "")} 1'
apple:123

# sequence of characters surrounded by a unique character
$ echo 'I like "mango" and "guava"' | awk '{gsub(/"[^"]+"/, "X")} 1'
I like X and X

# sometimes it is simpler to positively define a set than negation
# same as: awk '/^[^aeiou]*$/'
$ printf 'tryst\nfun\nglyph\npity\nwhy\n' | awk '!/[aeiou]/'
tryst
glyph
why
```

Some commonly used character sets have predefined escape sequences:

* `\w` matches all **word** characters `[a-zA-Z0-9_]` (recall the description for word boundaries)
* `\W` matches all non-word characters (recall duality seen earlier, like `\y` and `\B`)
* `\s` matches all **whitespace** characters: tab, newline, vertical tab, form feed, carriage return and space
* `\S` matches all non-whitespace characters

These escape sequences *cannot* be used inside character classes. Also, as mentioned earlier, these definitions assume ASCII input.

```bash
# match all non-word characters
$ echo 'load;err_msg--\/ant,r2..not' | awk '{gsub(/\W+/, "|")} 1'
load|err_msg|ant|r2|not

# replace all sequences of whitespaces with a single space
$ printf 'hi  \v\f  there.\thave   \ra nice\t\tday\n' | awk '{gsub(/\s+/, " ")} 1'
hi there. have a nice day

# \w would simply match w inside character classes
$ echo 'w=y\x+9*3' | awk '{gsub(/[\w=]/, "")} 1'
y\x+9*3
```

>![warning](images/warning.svg) `awk` doesn't support `\d` and `\D`, commonly featured in other implementations as a shortcut for all the digits and non-digits.
>
> ```bash
> # \d will match just the 'd' character and produces a warning as well
> $ echo '42\d123' | awk '{gsub(/\d+/, "-")} 1'
> awk: cmd. line:1: warning: regexp escape sequence
>                   '\d' is not a known regexp operator
> 42\-123
>
> # \d here matches all digit characters
> $ echo '42\d123' | perl -pe 's/\d+/-/g'
> -\d-
> ```

## Named character sets

A named character set is defined by a name enclosed between `[:` and `:]` and has to be used within a character class `[]`, along with other characters as needed.

| Named set    | Description |
| ------------ | ----------- |
| `[:digit:]`  | `[0-9]` |
| `[:lower:]`  | `[a-z]` |
| `[:upper:]`  | `[A-Z]` |
| `[:alpha:]`  | `[a-zA-Z]` |
| `[:alnum:]`  | `[0-9a-zA-Z]` |
| `[:xdigit:]` | `[0-9a-fA-F]` |
| `[:cntrl:]`  | control characters — first 32 ASCII characters and 127th (DEL) |
| `[:punct:]`  | all the punctuation characters |
| `[:graph:]`  | `[:alnum:]` and `[:punct:]` |
| `[:print:]`  | `[:alnum:]`, `[:punct:]` and space |
| `[:blank:]`  | space and tab characters |
| `[:space:]`  | whitespace characters, same as `\s` |

Here are some examples:

```bash
$ s='err_msg xerox ant m_2 P2 load1 eel'
$ echo "$s" | awk '{gsub(/\<[[:lower:]]+\>/, "X")} 1'
err_msg X X m_2 P2 load1 X

$ echo "$s" | awk '{gsub(/\<[[:lower:]_]+\>/, "X")} 1'
X X X m_2 P2 load1 X

$ echo "$s" | awk '{gsub(/\<[[:alnum:]]+\>/, "X")} 1'
err_msg X X m_2 X X X

# retain only punctuation characters
$ echo ',pie tie#ink-eat_42' | awk '{gsub(/[^[:punct:]]+/, "")} 1'
,#-_
```

## Matching character class metacharacters literally

Specific placement is needed to match character class metacharacters literally. Or, they can be escaped by prefixing `\` to avoid having to remember the different rules. As `\` is special inside character class, use `\\` to represent it literally.

`-` should be the first or the last character.

```bash
$ echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z-]{2,}/, "X")} 1'
X X 12-423

# or escaped with \
$ echo 'ab-cd gh-c 12-423' | awk '{gsub(/[a-z\-0-9]{2,}/, "X")} 1'
X X X
```

`]` should be the first character.

```bash
# no match
$ printf 'int a[5]\nfig\n1+1=2\n' | awk '/[=]]/'

# correct usage
$ printf 'int a[5]\nfig\n1+1=2\n' | awk '/[]=]/'
int a[5]
1+1=2
```

`[` can be used anywhere in the character set. Using `[][]` will match both `[` and `]`.

```bash
$ echo 'int a[5].y' | awk '{gsub(/[x[y.]/, "")} 1'
int a5]

$ printf 'int a[5]\nfig\n1+1=2\nwho]' | awk '/[][]/'
int a[5]
who]
```

`^` should be other than the first character.

```bash
$ echo 'f*(a^b) - 3*(a+b)/(a-b)' | awk '{gsub(/a[+^]b/, "c")} 1'
f*(c) - 3*(c)/(a-b)
```

>![warning](images/warning.svg) Combinations like `[.` or `[:` cannot be used together to mean two individual characters, as they have special meaning within `[]`. See [gawk manual: Using Bracket Expressions](https://www.gnu.org/software/gawk/manual/gawk.html#Bracket-Expressions) for more details.
>
> ```bash
> $ echo 'int a[5]' | awk '/[x[.y]/'
> awk: cmd. line:1: error: Unmatched [, [^, [:, [., or [=: /[x[.y]/
> $ echo 'int a[5]' | awk '/[x[y.]/'
> int a[5]
> ```

## Escape sequences

Certain ASCII characters like tab `\t`, carriage return `\r`, newline `\n`, etc have escape sequences to represent them. Additionally, any character can be represented using their ASCII value in octal `\NNN` or hexadecimal `\xNN` formats. Unlike character set escape sequences like `\w`, these can be used inside character classes.

```bash
# \t represents the tab character
$ printf 'apple\tbanana\tcherry\n' | awk '{gsub(/\t/, " ")} 1'
apple banana cherry

# these escape sequences work inside character class too
$ printf 'a\t\r\fb\vc\n' | awk '{gsub(/[\t\v\f\r]+/, ":")} 1'
a:b:c

# representing single quotes
# use \047 for octal format
$ echo "universe: '42'" | awk '{gsub(/\x27/, "")} 1'
universe: 42
```

If a metacharacter is specified using the ASCII value format, it will still act as the metacharacter.

```bash
# \x5e is ^ character, acts as line anchor here
$ printf 'acorn\ncot\ncat\ncoat\n' | awk '/\x5eco/'
cot
coat

# & metacharacter in replacement will be discussed in a later section
# it represents the entire matched portion
$ echo 'hello world' | awk '{sub(/.*/, "[&]")} 1'
[hello world]
# \x26 in hexadecimal is the & character
$ echo 'hello world' | awk '{sub(/.*/, "[\x26]")} 1'
[hello world]
```

Undefined sequences will result in a warning and treated as the character it escapes.

```bash
$ echo 'read' | awk '{sub(/\d/, "l")} 1'
awk: cmd. line:1: warning: regexp escape sequence
                  '\d' is not a known regexp operator
real
```

>![info](images/info.svg) See [gawk manual: Escape Sequences](https://www.gnu.org/software/gawk/manual/gawk.html#Escape-Sequences) for full list and other details.

## Replace specific occurrence

The third substitution function is `gensub` which can be used instead of both the `sub` and `gsub` functions. Syntax wise, `gensub` needs minimum three arguments. The third argument is used to indicate whether you want to replace all occurrences with `"g"` or a specific occurrence by passing a number. Another difference is that `gensub` returns a string value (irrespective of the substitution operation succeeding) instead of modifying the input.

```bash
$ s='apple:banana:cherry:fig:mango'

# same as: sed 's/:/-/2'
# replace only the second occurrence of ':' with '-'
# note that the output of gensub is passed to print here
$ echo "$s" | awk '{print gensub(/:/, "-", 2)}'
apple:banana-cherry:fig:mango

# same as: sed -E 's/[^:]+/X/3'
# replace only the third field with '123'
$ echo "$s" | awk '{print gensub(/[^:]+/, "123", 3)}'
apple:banana:123:fig:mango
```

The fourth argument for the `gensub` function allows you to specify a string or a variable on which the substitution has to be performed. Default is `$0`, as seen in the previous examples.

```bash
# same as: awk '{gsub(/[aeiou]/, "X", $4)} 1'
$ echo '1 good 2 apples' | awk '{$4 = gensub(/[aeiou]/, "X", "g", $4)} 1'
1 good 2 XpplXs
```

## Backreferences

The grouping metacharacters `()` are also known as **capture groups**. Similar to variables in programming languages, the portion captured by `()` can be referred later using backreferences. The syntax is `\N` where `N` is the capture group you want. Leftmost `(` in the regular expression is `\1`, next one is `\2` and so on up to `\9`. The `&` metacharacter represents entire matched string. As `\` is already special inside double quotes, you'll have to use `"\\1"` to represent `\1`.

>![info](images/info.svg) Backreferences of the form `\N` can only be used with the `gensub` function. `&` can be used with `sub`, `gsub` and `gensub` functions. `\0` can also be used instead of `&` with the `gensub` function.

```bash
# reduce \\ to single \ and delete if it is a single \
$ s='\[\] and \\w and \[a-zA-Z0-9\_\]'
$ echo "$s" | awk '{print gensub(/(\\?)\\/, "\\1", "g")}'
[] and \w and [a-zA-Z0-9_]

# duplicate the first column value and add it as the final column
$ echo 'one,2,3.14,42' | awk '{print gensub(/^([^,]+).*/, "&,\\1", 1)}'
one,2,3.14,42,one

# add something at the start and end of string, gensub isn't needed here
$ echo 'hello world' | awk '{sub(/.*/, "Hi. &. Have a nice day")} 1'
Hi. hello world. Have a nice day

# here {N} refers to the last but Nth occurrence
$ s='car,art,pot,tap,urn,ray,ear'
$ echo "$s" | awk '{print gensub(/(.*),((.*,){2})/, "\\1[]\\2", 1)}'
car,art,pot,tap[]urn,ray,ear
```

>![warning](images/warning.svg) See [unix.stackexchange: Why doesn't this sed command replace the 3rd-to-last "and"?](https://unix.stackexchange.com/q/579889/109046) for a bug related to the use of word anchors in the `((pat){N})` generic case.

>![warning](images/warning.svg) Unlike other regular expression implementations, like `grep` or `sed` or `perl`, backreferences cannot be used in the search section in `awk`. See also [unix.stackexchange: backreference in awk](https://unix.stackexchange.com/q/361427/109046).
>
> ```bash
> $ s='effort flee facade oddball rat tool'
>
> # no change
> $ echo "$s" | awk '{gsub(/\w*(\w)\1\w*/, "X")} 1'
> effort flee facade oddball rat tool
> # whole words that have at least one consecutive repeated character
> $ echo "$s" | sed -E 's/\w*(\w)\1\w*/X/g'
> X X facade X rat X
> ```

If a quantifier is applied on a pattern grouped inside `()` metacharacters, you'll need an outer `()` group to capture the matching portion. Other flavors like Perl provide non-capturing groups to handle such cases. In `awk` you'll have to consider the extra capture groups.

```bash
# note the numbers used in the replacement section
$ s='one,2,3.14,42'
$ echo "$s" | awk '{$0=gensub(/^(([^,]+,){2})([^,]+)/, "[\\1](\\3)", 1)} 1'
[one,2,](3.14),42
```

Here's an example where alternation order matters when the matching portions have the same length. Aim is to delete all whole words unless it starts with `g` or `p` and contains `y`.

```bash
$ s='tryst,fun,glyph,pity,why,group'

# all words get deleted because \<\w+\> gets priority here
$ echo "$s" | awk '{print gensub(/\<\w+\>|(\<[gp]\w*y\w*\>)/, "\\1", "g")}'
,,,,,

# capture group gets priority here, so words in the capture group are retained
$ echo "$s" | awk '{print gensub(/(\<[gp]\w*y\w*\>)|\<\w+\>/, "\\1", "g")}'
,,glyph,pity,,
```

As `\` and `&` are special characters in the replacement section, you'll need to escape them for literal representation.

```bash
$ echo 'apple and fig' | awk '{sub(/and/, "[&]")} 1'
apple [and] fig
$ echo 'apple and fig' | awk '{sub(/and/, "[\\&]")} 1'
apple [&] fig

$ echo 'apple and fig' | awk '{sub(/and/, "\\")} 1'
apple \ fig
```

## Case insensitive matching

Unlike `sed` or `perl`, regular expressions in `awk` do not directly support the use of flags to change certain behaviors. For example, there is no flag to force the regexp to ignore case while matching.

The `IGNORECASE` special variable controls case sensitivity, which is `0` by default. By changing it to some other value (which would mean `true` in a conditional expression), you can match case insensitively. The `-v` command line option allows you to assign a variable before input is read. The `BEGIN` block is also often used to change such settings.

```bash
$ printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk -v IGNORECASE=1 '/cat/'
Cat
cOnCaT
scatter

# for small enough string, you can also use character class
$ printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk '{gsub(/[cC][aA][tT]/, "(&)")} 1'
(Cat)
cOn(CaT)
s(cat)ter
cot
```

Another way is to use built-in string function `tolower` to change the input to lowercase first.

```bash
$ printf 'Cat\ncOnCaT\nscatter\ncot\n' | awk 'tolower($0) ~ /cat/'
Cat
cOnCaT
scatter
```

## Dynamic regexp

As seen earlier, string literals can be used instead of a regexp to specify the pattern to be matched. Which implies that you can use any expression or a variable as well. This is helpful if you need to compute the regexp based on some conditions or if you are getting the pattern externally, such as user input passed via the `-v` option from a `bash` variable.

```bash
$ r='cat.*dog|dog.*cat'
$ echo 'two cats and a dog' | awk -v ip="$r" '{gsub(ip, "pets")} 1'
two pets

$ awk -v s='ow' '$0 ~ s' table.txt
brown bread mat hair 42
yellow banana window shoes 3.14

# you'll have to make sure to use \\ instead of \
$ r='\\<[12][0-9]\\>'
$ echo '23 154 12 26 34' | awk -v ip="$r" '{gsub(ip, "X")} 1'
X 154 X X 34
```

>![info](images/info.svg) See [Using shell variables](#using-shell-variables) chapter for a way to avoid having to escape backslashes.

Sometimes, user input has to be treated literally instead of as a regexp pattern. In such cases, you'll need to escape all the regexp metacharacters. Below example shows how to do it for the search section. For the replace section, you only have to escape the `\` and `&` characters.

```bash
$ awk -v s='(a.b)^{c}|d' 'BEGIN{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); print s}'
\(a\.b)\^\{c}\|d

$ echo 'f*(a^b) - 3*(a^b)' |
     awk -v s='(a^b)' '{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); gsub(s, "c")} 1'
f*c - 3*c

# match given input string literally, but only at the end of string
$ echo 'f*(a^b) - 3*(a^b)' |
     awk -v s='(a^b)' '{gsub(/[{[(^$*?+.|\\]/, "\\\\&", s); gsub(s "$", "c")} 1'
f*(a^b) - 3*c
```

>![info](images/info.svg) See [my blog post](https://learnbyexample.github.io/escaping-madness-awk-literal-field-separator/) for more details about escaping metacharacters.

>![info](images/info.svg) If you need to just match literally instead of substitution, you can use the `index` function. See the [index](#index) section for details.

## Summary

Regular expressions is a feature that you'll encounter in multiple command line programs and programming languages. It is a versatile tool for text processing. Although the features in `awk` are less compared to those found in programming languages, they are sufficient for most of the tasks you'll need for command line usage. It takes a lot of time to get used to syntax and features of regular expressions, so I'll encourage you to practice a lot and maintain notes. It'd also help to consider it as a mini-programming language in itself for its flexibility and complexity.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Field separators

Now that you are familiar with basic `awk` syntax and regular expressions, this chapter will dive deep into field processing. You'll learn how to set input and output field separators, how to use regexps for defining fields and how to work with fixed length fields. 

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Default field separation

As seen earlier, `awk` automatically splits input into fields which are accessible using `$N` where `N` is the field number you need. You can also pass an expression instead of a numeric literal to specify the field required.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14

# print the fourth field if the first field starts with 'b'
$ awk '$1 ~ /^b/{print $4}' table.txt
hair
shirt

# print the field as specified by the value stored in the 'f' variable
$ awk -v f=3 '{print $f}' table.txt
mat
mug
window
```

The `NF` special variable will give you the number of fields for each input line. This is useful when you don't know how many fields are present in the input and you need to process fields from the end.

```bash
# print the last field of each input line
$ awk '{print $NF}' table.txt
42
-7
3.14

# print the last but one field
$ awk '{print $(NF-1)}' table.txt
hair
shirt
shoes

# don't forget the parentheses!
# this will subtract 1 from the last field and print it
$ awk '{print $NF-1}' table.txt
41
-8
2.14
```

By default, `awk` does more than split the input on spaces. It splits based on one or more sequence of **space** or **tab** or **newline** characters. In addition, any of these three characters at the start or end of input gets trimmed and won't be part of the field contents. Input containing newline characters will be covered in the [Record separators](#record-separators) chapter.

```bash
$ echo '   a   b   c   ' | awk '{print NF}'
3
# note that the leading spaces aren't part of the field content
$ echo '   a   b   c   ' | awk '{print $1}'
a
# note that the trailing spaces aren't part of the field content
$ echo '   a   b   c   ' | awk '{print $NF "."}'
c.

# here's another example with tab characters thrown in
$ printf '     one \t two\t\t\tthree  ' | awk '{print NF}'
3
$ printf '     one \t two\t\t\tthree  ' | awk '{print $2 "."}'
two.
```

>![warning](images/warning.svg) When passing an expression for field number, floating-point result is acceptable too. The fractional portion is ignored. However, as precision is limited, it could result in rounding instead of truncation.
>
> ```bash
> $ awk 'BEGIN{printf "%.16f\n", 2.999999999999999}'
> 2.9999999999999991
> $ awk 'BEGIN{printf "%.16f\n", 2.9999999999999999}'
> 3.0000000000000000
>
> # same as: awk '{print $2}' table.txt
> $ awk '{print $2.999999999999999}' table.txt
> bread
> cake
> banana
>
> # same as: awk '{print $3}' table.txt
> $ awk '{print $2.9999999999999999}' table.txt
> mat
> mug
> window
> ```

## Input field separator

The most common way to change the default field separator is to use the `-F` command line option. The value passed to the option will be treated as a string literal and then converted to a regexp. For now, here are some examples without any special regexp characters.

```bash
# use ':' as the input field separator
$ echo 'goal:amazing:whistle:kwality' | awk -F: '{print $1}'
goal
$ echo 'goal:amazing:whistle:kwality' | awk -F: '{print $NF}'
kwality

# use quotes to avoid clashes with shell special characters
$ echo 'one;two;three;four' | awk -F';' '{print $3}'
three

# first and last fields will have empty string as their values
$ echo '=a=b=c=' | awk -F= '{print $1 "[" $NF "]"}'
[]

# difference between empty lines and lines without field separator
$ printf '\nhello\napple,banana\n' | awk -F, '{print NF}'
0
1
2
```

You can also directly set the special `FS` variable to change the input field separator. This can be done from the command line using `-v` option or within the code blocks.

```bash
$ echo 'goal:amazing:whistle:kwality' | awk -v FS=: '{print $2}'
amazing

# field separator can be multiple characters too
$ echo '1e4SPT2k6SPT3a5SPT4z0' | awk 'BEGIN{FS="SPT"} {print $3}'
3a5
```

If you wish to split the input as individual characters, use an empty string as the field separator.

```bash
# note that the space between -F and '' is necessary here
$ echo 'apple' | awk -F '' '{print $1}'
a
$ echo 'apple' | awk -v FS= '{print $NF}'
e

# depending upon the locale, you can work with multibyte characters too
$ echo 'αλεπού' | awk -v FS= '{print $3}'
ε
```

Here are some examples with regexp based field separators. The value passed to `-F` or `FS` is treated as a string and then converted to a regexp. So, you'll need `\\` instead of `\` to mean a backslash character. The good news is that for single characters that are also regexp metacharacters, they'll be treated literally and you do not need to escape them.

```bash
$ echo 'Sample123string42with777numbers' | awk -F'[0-9]+' '{print $2}'
string
$ echo 'Sample123string42with777numbers' | awk -F'[a-zA-Z]+' '{print $2}'
123

# note the use of \\W to indicate \W
$ echo 'load;err_msg--\ant,r2..not' | awk -F'\\W+' '{print $3}'
ant

# same as: awk -F'\\.' '{print $2}'
$ echo 'hi.bye.hello' | awk -F. '{print $2}'
bye

# count the number of vowels for each input line
# note that empty lines will give -1 in the output
$ printf 'cool\nnice car\n' | awk -F'[aeiou]' '{print NF-1}'
2
3
```

>![warning](images/warning.svg) The default value of `FS` is a single space character. So, if you set the input field separator to a single space, then it will be the same as if you are using the default split discussed in the previous section. If you want to override this behavior, you can use space inside a character class.
>
> ```bash
> # same as: awk '{print NF}'
> $ echo '   a   b   c   ' | awk -F' ' '{print NF}'
> 3
>
> # there are 12 space characters, thus 13 fields
> $ echo '   a   b   c   ' | awk -F'[ ]' '{print NF}'
> 13
> ```

If `IGNORECASE` is set, it will affect field separation as well. Except when the field separator is a single character, which can be worked around by using a character class.

```bash
$ echo 'RECONSTRUCTED' | awk -F'[aeiou]+' -v IGNORECASE=1 '{print $NF}'
D

# when FS is a single character
$ echo 'RECONSTRUCTED' | awk -F'e' -v IGNORECASE=1 '{print $1}'
RECONSTRUCTED
$ echo 'RECONSTRUCTED' | awk -F'[e]' -v IGNORECASE=1 '{print $1}'
R
```

## Output field separator

The `OFS` special variable controls the output field separator. `OFS` is used as the string between multiple arguments passed to the `print` function. It is also used whenever `$0` has to be reconstructed as a result of field contents being modified. The default value for `OFS` is a single space character, just like `FS`. There is no equivalent command line option though, you'll have to change `OFS` directly.

```bash
# print the first and third fields, OFS is used to join these values
# note the use of , to separate print arguments
$ awk '{print $1, $3}' table.txt
brown mat
blue mug
yellow window

# same FS and OFS
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{print $2, $NF}'
amazing:kwality
$ echo 'goal:amazing:whistle:kwality' | awk 'BEGIN{FS=OFS=":"} {print $2, $NF}'
amazing:kwality

# different values for FS and OFS
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=- '{print $2, $NF}'
amazing-kwality
```

Here are some examples for changing field contents and then printing `$0`.

```bash
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$2 = 42} 1'
goal:42:whistle:kwality
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=, '{$2 = 42} 1'
goal,42,whistle,kwality

# recall that spaces at the start/end gets trimmed for default FS
$ echo '   a   b   c   ' | awk '{$NF = "last"} 1'
a b last
```

Sometimes you want to print the contents of `$0` with the new `OFS` value but field contents aren't being changed. In such cases, you can assign a field value to itself to force the reconstruction of `$0`.

```bash
# no change because there was no trigger to rebuild $0
$ echo 'Sample123string42with777numbers' | awk -F'[0-9]+' -v OFS=, '1'
Sample123string42with777numbers

# assign a field to itself in such cases
$ echo 'Sample123string42with777numbers' | awk -F'[0-9]+' -v OFS=, '{$1=$1} 1'
Sample,string,with,numbers
```

>![info](images/info.svg) If you need to set the same input and output field separator, you can write a more concise one-liner using brace expansion. Here are some examples:
>
> ```bash
> $ echo -v{,O}FS=:
> -vFS=: -vOFS=:
> 
> $ echo 'goal:amazing:whistle:kwality' | awk -v{,O}FS=: '{$2 = 42} 1'
> goal:42:whistle:kwality
> 
> $ echo 'goal:amazing:whistle:kwality' | awk '{$2 = 42} 1' {,O}FS=:
> goal:42:whistle:kwality
> ```
>
> However, this is not commonly used and doesn't save too many characters to be preferred over explicit assignment.

## Manipulating NF

Changing the value of `NF` will rebuild `$0` as well. Here are some examples:

```bash
# reducing fields
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=, '{NF=2} 1'
goal,amazing

# increasing fields
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$(NF+1)="sea"} 1'
goal:amazing:whistle:kwality:sea

# empty fields will be created as needed
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{$8="go"} 1'
goal:amazing:whistle:kwality::::go
```

>![warning](images/warning.svg) Assigning `NF` to `0` will delete all the fields. However, a negative value will result in an error.

```bash
$ echo 'goal:amazing:whistle:kwality' | awk -F: -v OFS=: '{NF=-1} 1'
awk: cmd. line:1: (FILENAME=- FNR=1) fatal: NF set to negative value
```

## FPAT

The `FS` variable allows you to define the input field *separator*. In contrast, `FPAT` (field pattern) allows you to define what should the fields be made up of.

```bash
$ s='Sample123string42with777numbers'
# one or more consecutive digits
$ echo "$s" | awk -v FPAT='[0-9]+' '{print $2}'
42

$ s='coat Bin food tar12 best Apple fig_42'
# whole words made up of lowercase alphabets and digits only
$ echo "$s" | awk -v FPAT='\\<[a-z0-9]+\\>' -v OFS=, '{$1=$1} 1'
coat,food,tar12,best

$ s='items: "apple" and "mango"'
# get the first double quoted item
$ echo "$s" | awk -v FPAT='"[^"]+"' '{print $1}'
"apple"
```

`FPAT` is often used for CSV input where fields can contain embedded delimiter characters. For example, a field content `"fox,42"` when `,` is the delimiter.

```bash
$ s='eagle,"fox,42",bee,frog'

# simply using , as separator isn't sufficient
$ echo "$s" | awk -F, '{print $2}'
"fox
```

For such simpler CSV input, `FPAT` helps to define fields as starting and ending with double quotes or containing non-comma characters.

```bash
# * is used instead of + to allow empty fields
$ echo "$s" | awk -v FPAT='"[^"]*"|[^,]*' '{print $2}'
"fox,42"
```

>![warning](images/warning.svg) The above will not work for all kinds of CSV files, for example if fields contain escaped double quotes, newline characters, etc. See [stackoverflow: What's the most robust way to efficiently parse CSV using awk?](https://stackoverflow.com/q/45420535/4082052) and [csvquote](https://github.com/dbro/csvquote) for such cases. You could also use other programming languages such as Perl, Python, Ruby, etc which come with standard CSV parsing libraries or have easy access to third party solutions. There are also specialized command line tools such as [xsv](https://github.com/BurntSushi/xsv).

>![info](images/info.svg) A proper CSV support is planned for a future version. You can also check out [frawk](https://github.com/ezrosent/frawk), which is mostly similar to the `awk` command but also supports CSV parsing. [goawk](https://github.com/benhoyt/goawk) is another implementation with CSV support.

If `IGNORECASE` is set, it will affect field matching as well. Unlike `FS`, there is no different behavior for a single character pattern.

```bash
# count number of 'e' in the input string
$ echo 'Read Eat Sleep' | awk -v FPAT='e' '{print NF}'
3
$ echo 'Read Eat Sleep' | awk -v IGNORECASE=1 -v FPAT='e' '{print NF}'
4
$ echo 'Read Eat Sleep' | awk -v IGNORECASE=1 -v FPAT='[e]' '{print NF}'
4
```

## FIELDWIDTHS

`FIELDWIDTHS` is another feature where you get to define field contents. As indicated by the name, you have to specify the number of characters for each field. This method is useful to process fixed width data.

```bash
$ cat items.txt
apple   fig banana
50      10  200

# here field widths have been assigned such that
# extra spaces are placed at the end of each field
$ awk -v FIELDWIDTHS='8 4 6' '{print $2}' items.txt
fig 
10  
# note that the field contents will include the spaces as well
$ awk -v FIELDWIDTHS='8 4 6' '{print "[" $2 "]"}' items.txt
[fig ]
[10  ]
```

You can optionally prefix a field width with number of characters to be ignored.

```bash
# first field is 5 characters
# then 3 characters are ignored and 3 characters for the second field
# then 1 character is ignored and 6 characters for the third field
$ awk -v FIELDWIDTHS='5 3:3 1:6' '{print "[" $1 "]"}' items.txt
[apple]
[50   ]
$ awk -v FIELDWIDTHS='5 3:3 1:6' '{print "[" $2 "]"}' items.txt
[fig]
[10 ]
```

If an input line length exceeds the total width specified, the extra characters will simply be ignored. If you wish to access those characters, you can use `*` to represent the last field. See [gawk manual: FIELDWIDTHS](https://www.gnu.org/software/gawk/manual/gawk.html#Fields-with-fixed-data) for more such corner cases.

```bash
$ awk -v FIELDWIDTHS='5 *' '{print "[" $1 "]"}' items.txt
[apple]
[50   ]

$ awk -v FIELDWIDTHS='5 *' '{print "[" $2 "]"}' items.txt
[   fig banana]
[   10  200]
```

## Summary

Working with fields is the most popular feature of `awk`. This chapter discussed various ways in which you can split the input into fields and manipulate them. There are many more examples to be discussed related to fields in the coming chapters. I'd highly suggest to also read through [gawk manual: Fields](https://www.gnu.org/software/gawk/manual/gawk.html#Fields) for more details regarding field processing.

Next chapter will discuss various ways to use record separators and related special variables.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Record separators

So far, you've seen examples where `awk` automatically splits input line by line based on the newline character. Just like you can control how those lines are further split into fields using `FS` and other features, `awk` provides a way to control what constitutes a line in the first place. In `awk` parlance, the term **record** is used to describe the contents that gets placed in the `$0` variable. And similar to `OFS`, you can control the string that gets added at the end for the `print` function. This chapter will also discuss how you can use special variables that have information related to record (line) numbers.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Input record separator

The `RS` special variable is used to control how the input content is split into records. The default is the newline character, as evident from the examples used in the previous chapters. The special variable `NR` keeps track of the current record number.

```bash
# change the input record separator to a comma character
# note the content of the 2nd record where newline is just another character
$ printf 'this,is\na,sample,text' | awk -v RS=, '{print NR ")", $0}'
1) this
2) is
a
3) sample
4) text
```

Recall that default `FS` will split input record based on spaces, tabs and newlines. Now that you've seen how `RS` can be something other than `\n`, here's an example to show the full effect of the default record splitting.

```bash
$ s='   a\t\tb:1000\n\n\t \n\n123 7777:x  y \n \n z  :apple banana cherry'
$ printf '%b' "$s" | awk -v RS=: -v OFS=, '{$1=$1} 1'
a,b
1000,123,7777
x,y,z
apple,banana,cherry
```

Similar to `FS`, the `RS` value is treated as a string literal and then converted to a regexp. For now, consider an example with multiple characters for `RS` but without needing regexp metacharacters.

```bash
$ cat report.log
blah blah Error: second record starts
something went wrong
some more details Error: third record
details about what went wrong

# use 'Error:' as the input record separator
# print all the records that contains 'something'
$ awk -v RS='Error:' '/something/' report.log
 second record starts
something went wrong
some more details 
```

If `IGNORECASE` is set, it will affect record separation as well. Except when the record separator is a single character, which can be worked around by using a character class.

```bash
$ awk -v IGNORECASE=1 -v RS='error:' 'NR==1' report.log
blah blah 

# when RS is a single character
$ awk -v IGNORECASE=1 -v RS='e' 'NR==1' report.log
blah blah Error: s
$ awk -v IGNORECASE=1 -v RS='[e]' 'NR==1' report.log
blah blah 
```

>![warning](images/warning.svg) The default line ending for text files varies between different platforms. For example, a text file downloaded from the internet or a file originating from Windows OS would typically have lines ending with carriage return and line feed characters. So, you'll have to use `RS='\r\n'` for such files. See also [stackoverflow: Why does my tool output overwrite itself and how do I fix it?](https://stackoverflow.com/q/45772525/4082052) for a detailed discussion and mitigation methods.

## Output record separator

The `ORS` special variable is used to customize the output record separator. `ORS` is the string that gets added to the end of every call to the `print` function. The default value for `ORS` is a single newline character, just like `RS`.

```bash
# change NUL record separator to dot and newline
$ printf 'apple\0banana\0cherry\0' | awk -v RS='\0' -v ORS='.\n' '1'
apple.
banana.
cherry.

$ cat msg.txt
Hello there.
It will rain to-
day. Have a safe
and pleasant jou-
rney.
# here ORS is an empty string
$ awk -v RS='-\n' -v ORS= '1' msg.txt
Hello there.
It will rain today. Have a safe
and pleasant journey.
```

>![info](images/info.svg) Note that the `$0` variable is assigned after removing trailing characters matched by `RS`. Thus, you cannot directly manipulate those characters. With tools that don't automatically strip record separator, such as `perl`, the previous example can be solved as `perl -pe 's/-\n//' msg.txt`.

Many a times, you need to change `ORS` depending upon contents of input record or some other condition. The `cond ? expr1 : expr2` ternary operator is often used in such scenarios. The below example assumes that input is evenly divisible, you'll have to add more logic if that is not the case.

```bash
# can also use RS instead of "\n" here
$ seq 6 | awk '{ORS = NR%3 ? "-" : "\n"} 1'
1-2-3
4-5-6
```

>![info](images/info.svg) If the last line of input didn't end with the input record separator, it might get added in the output if `print` is used, as `ORS` gets appended.
>
> ```bash
> # here last line of the input doesn't end with a newline character
> # but gets added via ORS when 'print' is used
> $ printf '1\n2' | awk '1; END{print 3}'
> 1
> 2
> 3
> ```

## Regexp RS and RT

As mentioned before, the value passed to `RS` is treated as a string literal and then converted to a regexp. Here are some examples.

```bash
# set input record separator as one or more digit characters
# print records containing both 'i' and 't'
$ printf 'Sample123string42with777numbers' | awk -v RS='[0-9]+' '/i/ && /t/'
string
with

# similar to FS, the value passed to RS is treated as a string
# which is then converted to a regexp, so need \\ instead of \ here
$ printf 'load;err_msg--ant,r2..not' | awk -v RS='\\W+' '/an/'
ant
```

First record will be empty if `RS` matches from the start of input file. However, if `RS` matches until the very last character of the input file, there won't be an empty record as the last record. This is different from how `FS` behaves if it matches until the last character.

```bash
# first record is empty and the last record is a newline character
# change 'echo' command to 'printf' and see what changes
$ echo '123string42with777' | awk -v RS='[0-9]+' '{print NR ") [" $0 "]"}'
1) []
2) [string]
3) [with]
4) [
]

# difference between FS and RS when they match till the end of the input
$ printf '123string42with777' | awk -v FS='[0-9]+' '{print NF}'
4
$ printf '123string42with777' | awk -v RS='[0-9]+' 'END{print NR}'
3
```

The `RT` special variable contains the text that was matched by `RS`. This variable gets updated for every input record.

```bash
# print record number and the value of RT for that record
# last record has empty RT because it didn't end with digits
$ echo 'Sample123string42with777numbers' | awk -v RS='[0-9]+' '{print NR, RT}'
1 123
2 42
3 777
4 
```

## Paragraph mode

As a special case, when `RS` is set to an empty string, one or more consecutive empty lines is used as the input record separator. Consider the below sample file:

```bash
$ cat para.txt
Hello World

Hi there
How are you

Just do-it
Believe it

banana
papaya
mango

Much ado about nothing
He he he
Adios amigo
```

Here's an example of processing input paragraph wise:

```bash
# print all paragraphs containing 'do'
# note that there'll be an empty line after the last record
$ awk -v RS= -v ORS='\n\n' '/do/' para.txt
Just do-it
Believe it

Much ado about nothing
He he he
Adios amigo

```

The empty line at the end is a common problem when dealing with custom record separators. You could either process the output further to remove it or add logic to handle the issue in `awk` itself. Here's one possible workaround for the previous example:

```bash
# here ORS is left as the default newline character
# uninitialized variable 's' will be empty for the first match
# afterwards, 's' will provide the empty line separation
$ awk -v RS= '/do/{print s $0; s="\n"}' para.txt
Just do-it
Believe it

Much ado about nothing
He he he
Adios amigo
```

Paragraph mode is not the same as using `RS='\n\n+'` because `awk` does a few more operations when `RS` is empty. See [gawk manual: multiline records](https://www.gnu.org/software/gawk/manual/html_node/Multiple-Line.html#Multiple-Line) for details. Important points are quoted below and illustrated with examples.

>However, there is an important difference between `RS = ""` and `RS = "\n\n+"`. In the first case, leading newlines in the input data file are ignored

```bash
$ s='\n\n\na\nb\n\n12\n34\n\nhi\nhello\n'

# paragraph mode
$ printf '%b' "$s" | awk -v RS= -v ORS='\n---\n' 'NR<=2'
a
b
---
12
34
---

# RS is '\n\n+' instead of paragraph mode
$ printf '%b' "$s" | awk -v RS='\n\n+' -v ORS='\n---\n' 'NR<=2'

---
a
b
---
```

>and if a file ends without extra blank lines after the last record, the final newline is removed from the record. In the second case, this special processing is not done.

```bash
$ s='\n\n\na\nb\n\n12\n34\n\nhi\nhello\n'

# paragraph mode
$ printf '%b' "$s" | awk -v RS= -v ORS='\n---\n' 'END{print}'
hi
hello
---

# RS is '\n\n+' instead of paragraph mode
$ printf '%b' "$s" | awk -v RS='\n\n+' -v ORS='\n---\n' 'END{print}'
hi
hello

---
```

>When RS is set to the empty string and FS is set to a single character, the newline character always acts as a field separator. This is in addition to whatever field separations result from FS. When FS is the null string (`""`) or a regexp, this special feature of RS does not apply. It does apply to the default field separator of a single space: `FS = " "`

```bash
$ s='a:b\nc:d\n\n1\n2\n3'

# FS is a single character in paragraph mode
$ printf '%b' "$s" | awk -F: -v RS= -v ORS='\n---\n' '{$1=$1} 1'
a b c d
---
1 2 3
---

# FS is a regexp in paragraph mode
$ printf '%b' "$s" | awk -F'[:]' -v RS= -v ORS='\n---\n' '{$1=$1} 1'
a b
c d
---
1
2
3
---

# FS is a single character and RS is '\n\n+' instead of paragraph mode
$ printf '%b' "$s" | awk -F: -v RS='\n\n+' -v ORS='\n---\n' '{$1=$1} 1'
a b
c d
---
1
2
3
---
```

## NR vs FNR

There are two special variables related to record numbering. You've seen `NR` earlier in the chapter, but here are some more examples.

```bash
# same as: head -n2
$ seq 5 | awk 'NR<=2'
1
2

# same as: tail -n1
$ awk 'END{print}' table.txt
yellow banana window shoes 3.14

# change the first field content only for the second line
$ awk 'NR==2{$1="green"} 1' table.txt
brown bread mat hair 42
green cake mug shirt -7
yellow banana window shoes 3.14
```

All the examples with `NR` so far has been with a single file input. If there are multiple file inputs, then you can choose between `NR` and the second special variable `FNR`. The difference is that `NR` contains total records read so far whereas `FNR` contains record number of only the current file being processed. Here are some examples to show them in action. You'll see more examples in later chapters as well.

```bash
$ awk -v OFS='\t' 'BEGIN{print "NR", "FNR", "Content"}
                   {print NR, FNR, $0}' report.log table.txt
NR      FNR     Content
1       1       blah blah Error: second record starts
2       2       something went wrong
3       3       some more details Error: third record
4       4       details about what went wrong
5       1       brown bread mat hair 42
6       2       blue cake mug shirt -7
7       3       yellow banana window shoes 3.14

# same as: head -q -n1
$ awk 'FNR==1' report.log table.txt
blah blah Error: second record starts
brown bread mat hair 42
```

For large input files, use `exit` to avoid unnecessary record processing.

```bash
$ seq 3542 4623452 | awk 'NR==2452{print; exit}'
5993
$ seq 3542 4623452 | awk 'NR==250; NR==2452{print; exit}'
3791
5993

# here is a sample time comparison
$ time seq 3542 4623452 | awk 'NR==2452{print; exit}' > f1
real    0m0.004s
$ time seq 3542 4623452 | awk 'NR==2452' > f2
real    0m0.395s
```

## Summary

This chapter showed you how to change the way input content is split into records and how to set the string to be appended when `print` is used. The paragraph mode is useful for processing multiline records separated by empty lines. You also learned two special variables related to record numbers and when to use them.

So far, you've used `awk` to manipulate file content without modifying the source file. The next chapter will discuss how to write back the changes to the original input files.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# In-place file editing

In the examples presented so far, the output from `awk` was displayed on the terminal. This chapter will discuss how to write back the changes to the input files using the `-i` command line option. You can also choose to create backups of the original files.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Without backup

The `-i` option allows you to load libraries (see [gawk manual: -i option](https://www.gnu.org/software/gawk/manual/gawk.html#index-_002di-option) for details). The `inplace` library comes by default with the `awk` installation. Use `-i inplace` to indicate that you want to modify the original input itself. Use this option with caution, preferably after testing that the code is working as intended.

```bash
$ cat greet.txt
Hi there
Have a nice day
Good bye

# prefix line numbers
$ awk -i inplace '{print NR ". " $0}' greet.txt
$ cat greet.txt
1. Hi there
2. Have a nice day
3. Good bye
```

Multiple input files are treated separately and changes are written back to the respective files.

```bash
$ cat f1.txt
I ate 3 apples
$ cat f2.txt
I bought two balls and 3 bats

$ awk -i inplace '{gsub(/\<3\>/, "three")} 1' f1.txt f2.txt
$ cat f1.txt
I ate three apples
$ cat f2.txt
I bought two balls and three bats
```

## With backup

You can provide a backup extension by setting the `inplace::suffix` special variable. For example, if the input file is `ip.txt` and `inplace::suffix='.orig'` is used, the backup file will be named as `ip.txt.orig`.

```bash
$ cat f3.txt
  Name    Physics  Maths
 Moe  76  82
Raj  56  64

$ awk -i inplace -v inplace::suffix='.bkp' -v OFS=, '{$1=$1} 1' f3.txt
$ cat f3.txt
Name,Physics,Maths
Moe,76,82
Raj,56,64

# original file will be preserved in 'f3.txt.bkp'
$ cat f3.txt.bkp
  Name    Physics  Maths
 Moe  76  82
Raj  56  64
```

>![info](images/info.svg) In earlier versions of `awk`, the `INPLACE_SUFFIX` variable was used instead of `inplace::suffix`. Also, you can use `inplace::enable` variable to dynamically control whether files should be in-placed or not. See [gawk manual: Enabling In-Place File Editing](https://www.gnu.org/software/gawk/manual/gawk.html#Extension-Sample-Inplace) for more details.

## Security implications

By default, when you use the `-i inplace` option, the `awk` command will look for a file named `inplace` or `inplace.awk` in the current working directory. If such files aren't found, then `awk` will look for them in the installation directories, which is what you'd usually want.

For secure applications, you shouldn't rely on the `-i inplace` option. Instead, you could either use the absolute path of the `inplace` file from the installation directory, or manipulate `AWKPATH` (environment variable that controls the behavior of searching for files to be loaded) to be restricted to secure paths only. See [this unix.stackexchange thread](https://unix.stackexchange.com/q/749645/109046) for more details about this issue and workarounds.

## Summary

This chapter discussed about the `-i inplace` option which is useful when you need to edit a file in-place. This is particularly useful in automation scripts. But, do ensure that you have tested the `awk` command before applying changes to the actual files if you need to use this option without creating backups.

The next chapter will discuss the use of shell variables in more detail.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Using shell variables

When it comes to automation and scripting, you'd often need to construct commands that can accept input from the user, incorporate data from a file or the output of a tool and so on.

In this chapter, you'll see how to pass information saved in shell variables to `awk` commands. As mentioned before, this book assumes `bash` as the shell being used.

>![info](images/info.svg) As an example, see my repo [ch: command help](https://github.com/learnbyexample/command_help/blob/master/ch) for a practical shell script where commands are constructed dynamically.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## -v option

The most common method is to use the `-v` command line option.

```bash
# assume that the 's' variable is part of some bash script
# or perhaps a variable that stores the output of a shell command
$ s='cake'
$ awk -v word="$s" '$2==word' table.txt
blue cake mug shirt -7
```

## ENVIRON

To access environment variables of the shell, you can call the special array variable `ENVIRON` with the name of the environment variable as a string key.

```bash
# existing environment variable
# output shown here is for my machine, would differ for you
$ awk 'BEGIN{print ENVIRON["HOME"]}'
/home/learnbyexample
$ awk 'BEGIN{print ENVIRON["SHELL"]}'
/bin/bash

# defined along with the awk command
# note that the variable is placed as a prefix to the command
$ word='hello' awk 'BEGIN{print ENVIRON["word"]}'
hello
```

`ENVIRON` is a good way to get around `awk`'s interpretation of escape sequences. This is especially helpful for fixed string matching (see the [index](#index) section for examples).

```bash
$ s='hi\nbye'

# when passed via -v option
$ awk -v ip="$s" 'BEGIN{print ip}'
hi
bye

# when passed as an environment variable
$ ip="$s" awk 'BEGIN{print ENVIRON["ip"]}'
hi\nbye
```

Here's another example when a regexp is passed to an `awk` command.

```bash
# when passed via -v option
$ r='\Bpar\B'
$ awk -v rgx="$r" '$0 ~ rgx' anchors.txt
awk: warning: escape sequence '\B' treated as plain 'B'
$ r='\\Bpar\\B'
$ awk -v rgx="$r" '$0 ~ rgx' anchors.txt
apparent effort
two spare computers

# when passed as an environment variable
$ r='\Bpar\B'
$ rgx="$r" awk '$0 ~ ENVIRON["rgx"]' anchors.txt
apparent effort
two spare computers
```

## Summary

This short chapter revisited the `-v` command line option and introduced the `ENVIRON` special array. These are particularly useful when the `awk` command is part of a shell script. Arrays will be discussed in more detail in the later chapters.

The next chapter will cover control structures.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Control Structures

You've already seen various examples requiring conditional expressions. This chapter will revisit the `if-else` control structure and the ternary operator. Then you will see some examples with explicit loops (recall that `awk` is already looping over input records). Followed by keywords that control loop flow. Most of the syntax is very similar to the `C` language.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## if-else

Mostly, when you need to use `if` control structure, you can get away with using the `condX{actionX}` blocks instead. But sometimes, you need additional condition checking within such action blocks. Or, you might need it inside loops. The syntax is `if(cond){action}` where the braces are optional if you need only one statement. `if` can be optionally followed by multiple `else if` conditions and a final `else` condition. These can also be nested as needed.

```bash
# print all lines starting with 'b'
# additionally, if the last column is > 0, then print some more text
$ awk '/^b/{print; if($NF>0) print "------"}' table.txt
brown bread mat hair 42
------
blue cake mug shirt -7

# same as above, but uses the 'else' condition as well
$ awk '/^b/{print; if($NF>0) print "------"; else print "======"}' table.txt
brown bread mat hair 42
------
blue cake mug shirt -7
======
```

The ternary operator often reduces the need for single statement `if-else` control structures.

```bash
# same as: awk '{if(NR%3) ORS="-" ; else ORS=RS} 1'
$ seq 6 | awk '{ORS = NR%3 ? "-" : RS} 1'
1-2-3
4-5-6

# note that parentheses is necessary for print in this case
$ awk '/^b/{print; print($NF>0 ? "------" : "======")}' table.txt
brown bread mat hair 42
------
blue cake mug shirt -7
======
```

>![info](images/info.svg) See also [stackoverflow: finding min and max value of a column](https://stackoverflow.com/a/29784278) and [gawk manual: switch](https://www.gnu.org/software/gawk/manual/gawk.html#Switch-Statement).

## loops

`for` loops are handy when you are working with arrays. Also for processing input fields, since `$N` syntax allows passing an expression instead of just fixed values.

```bash
$ awk 'BEGIN{for(i=2; i<7; i+=2) print i}'
2
4
6

# looping each field
$ awk -v OFS=, '{for(i=1; i<=NF; i++) if($i ~ /^[bm]/) $i="["$i"]"} 1' table.txt
[brown],[bread],[mat],hair,42
[blue],cake,[mug],shirt,-7
yellow,[banana],window,shoes,3.14
```

Here's an example of looping over a dynamically constructed array.

```bash
$ cat marks.txt
Dept    Name    Marks
ECE     Raj     53
ECE     Joel    72
EEE     Moi     68
CSE     Surya   81
EEE     Tia     59
ECE     Om      92
CSE     Amy     67

# average marks for each department
$ awk 'NR>1{d[$1]+=$3; c[$1]++} END{for(k in d) print k, d[k]/c[k]}' marks.txt
ECE 72.3333
EEE 63.5
CSE 74
```

You can use `break` and `continue` to alter the normal flow of loops. `break` will cause the current loop to quit immediately without processing the remaining statements and iterations. `continue` will skip the remaining statements in the loop and start the next iteration.

```bash
$ awk -v OFS=, '{for(i=1; i<=NF; i++) if($i ~ /b/){NF=i; break}} 1' table.txt
brown
blue
yellow,banana
```

>![info](images/info.svg) See also [stackoverflow: find missing numbers from sequential list](https://stackoverflow.com/q/38491676/4082052).

`awk` supports the `while` and `do-while` loop mechanisms as well.

```bash
$ awk 'BEGIN{i=6; while(i>0){print i; i-=2}}'
6
4
2

# recursive substitution
$ echo 'titillate' | awk '{while(gsub(/til/, "")) print}'
tilate
ate
$ echo 'titillate' | awk '{do{print} while(gsub(/til/, ""))}'
titillate
tilate
ate
```

## next

`next` is similar to the `continue` statement but it acts on the default loop that goes through the input records. It doesn't affect `BEGIN` or `END` blocks as they are outside the record looping. When `next` is executed, rest of the statements will be skipped and next input record will be fetched for processing.

```bash
$ awk '/\<par/{print "%% " $0; next} {print /s/ ? "X" : "Y"}' anchors.txt
%% sub par
X
Y
X
%% cart part tart mart
```

You'll see more examples with `next` in the coming chapters.

## exit

You saw the use of `exit` earlier to quit early and avoid unnecessary processing of records. If an argument isn't passed, `awk` considers the command to have finished normally and the **exit status** will indicate success. You can pass a number argument for other cases.

```bash
$ seq 3542 4623452 | awk 'NR==2452{print; exit}'
5993
$ echo $?
0

$ awk '/^br/{print "invalid data"; exit 1}' table.txt
invalid data
$ echo $?
1

# any remaining files to be processed are also skipped
$ awk 'FNR==2{print; exit}' table.txt greeting.txt
blue cake mug shirt -7
```

If `exit` is used in `BEGIN` or normal blocks, any code in the `END` block will still be executed. For more details and corner cases, see [gawk manual: exit](https://www.gnu.org/software/gawk/manual/gawk.html#Exit-Statement).

```bash
# first print is executed
# on seeing exit, rest of BEGIN and normal blocks are skipped
# code in the END block is then executed
$ awk 'BEGIN{print "hi"; exit; print "hello"}
       /^b/;
       END{print "bye"}' table.txt
hi
bye
```

## Summary

This chapter covered some of the control flow structures provided by `awk`. These features makes `awk` flexible and easier to use compared to `sed`.

Next chapter will discuss some of the built-in functions.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Built-in functions

You've already seen some built-in functions in detail, such as the `sub`, `gsub` and `gensub` functions. This chapter will discuss many more built-ins that are often used in one-liners. You'll also see more examples with arrays.

>![info](images/info.svg) See [gawk manual: Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Functions) for details about all the built-in functions as well as how to define your own functions.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## length

The `length` function returns the number of characters for the given string argument. By default, it acts on the `$0` variable. Numeric arguments will be automatically converted to strings.

```bash
$ awk 'BEGIN{print length("road"); print length(123456)}'
4
6

# recall that the record separator isn't part of $0
# so, line ending won't be counted here
$ printf 'fox\ntiger\n' | awk '{print length()}'
3
5

$ awk 'length($1) < 6' table.txt
brown bread mat hair 42
blue cake mug shirt -7
```

The `-b` command line option is handy if you need the number of bytes, instead of the number of characters. Locale also plays a role.

```bash
$ echo 'αλεπού' | awk '{print length()}'
6
$ echo 'αλεπού' | awk -b '{print length()}'
12
$ echo 'αλεπού' | LC_ALL=C awk '{print length()}'
12
```

>![info](images/info.svg) For the above illustration, you can also use `match($0, /$/)-1` to get the byte count, irrespective of the locale or the use of the `-b` option. This solution was suggested in [this issue](https://github.com/learnbyexample/learn_gnuawk/issues/5).

## Array sorting

By default, array looping with the `for(key in array)` format gives you elements in random order. By setting a special value to `PROCINFO["sorted_in"]`, you can control the order in which you wish to retrieve the elements. See [gawk manual: Using Predefined Array Scanning Orders](https://www.gnu.org/software/gawk/manual/gawk.html#Controlling-Scanning) for other options and details.

```bash
# by default, array is traversed in random order
$ awk 'BEGIN{a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'
x 12
z 1
b 42

# index (i.e. keys) sorted in ascending order as strings
$ awk 'BEGIN{PROCINFO["sorted_in"] = "@ind_str_asc";
       a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'
b 42
x 12
z 1

# value sorted in ascending order as numbers
$ awk 'BEGIN{PROCINFO["sorted_in"] = "@val_num_asc";
       a["z"]=1; a["x"]=12; a["b"]=42; for(i in a) print i, a[i]}'
z 1
x 12
b 42
```

Here's an example of sorting input lines in ascending order based on the second column, treating the data as strings.

```bash
$ awk 'BEGIN{PROCINFO["sorted_in"] = "@ind_str_asc"}
       {a[$2]=$0} END{for(k in a) print a[k]}' table.txt
yellow banana window shoes 3.14
brown bread mat hair 42
blue cake mug shirt -7
```

## split

The `split` function provides the same features as the record splitting done using `FS`. This is helpful when you need the results as an array for some reason, for example to use array sorting features. Or, when you need to further split a field content. `split` accepts four arguments, the last two being optional:

* First argument is the string to be split
* Second argument is the array variable that saves the results
* Third argument is the separator, whose default is `FS`

The return value of the `split` function is number of fields, similar to the `NF` variable. The array gets indexed starting from `1` for the first element, `2` for the second element and so on. If the array already had some value, it gets overwritten with the new result.

```bash
# same as: awk '{print $2}'
$ printf '     one \t two\t\t\tthree  ' | awk '{split($0, a); print a[2]}'
two

# example with both FS and split in action
$ s='Joe,1996-10-25,64,78'
$ echo "$s" | awk -F, '{split($2, d, "-"); print $1 " was born in " d[1]}'
Joe was born in 1996

# single row to multiple rows based on splitting the last field
$ s='air,water,12:42:3'
$ echo "$s" | awk -F, '{n=split($NF, a, ":");
                       for(i=1; i<=n; i++) print $1, $2, a[i]}'
air water 12
air water 42
air water 3
```

Similar to `FS`, you can use a regular expression as the separator.

```bash
$ s='Sample123string42with777numbers'
$ echo "$s" | awk '{split($0, s, /[0-9]+/); print s[2], s[4]}'
string numbers
```

The fourth argument provides a feature not present with `FS` splitting. It allows you to save the portions matched by the separator in an array.

```bash
$ s='Sample123string42with777numbers'
$ echo "$s" | awk '{n=split($0, s, /[0-9]+/, seps);
                   for(i=1; i<n; i++) print seps[i]}'
123
42
777
```

>![info](images/info.svg) Quoting from [gawk manual: split()](https://www.gnu.org/software/gawk/manual/gawk.html#index-split_0028_0029-function-1):
>
>If `fieldsep` is a single space, then any leading whitespace goes into `seps[0]` and any trailing whitespace goes into `seps[n]`, where `n` is the return value of `split()` (i.e., the number of elements in `array`).

Here's an example where `split` helps to initialize an array using an empty separator. Unlike `$N` syntax where an expression resulting in a floating-point number is acceptable, array index has to be an integer only. Hence, the `int` function is used to convert the floating-point result to an integer in the example below.

```bash
$ cat marks.txt
Dept    Name    Marks
ECE     Raj     53
ECE     Joel    72
EEE     Moi     68
CSE     Surya   81
EEE     Tia     59
ECE     Om      92
CSE     Amy     67

# adds a new grade column based on marks in the third column
$ awk 'BEGIN{OFS="\t"; split("DCBAS", g, //)}
       {$(NF+1) = NR==1 ? "Grade" : g[int($NF/10)-4]} 1' marks.txt
Dept    Name    Marks   Grade
ECE     Raj     53      D
ECE     Joel    72      B
EEE     Moi     68      C
CSE     Surya   81      A
EEE     Tia     59      D
ECE     Om      92      S
CSE     Amy     67      C
```

## patsplit

The `patsplit` function will give you the features provided by `FPAT`. The argument order and optional arguments is same as the `split` function, with `FPAT` as the default separator. The return value is number of fields obtained from the split.

```bash
$ s='eagle,"fox,42",bee,frog'

$ echo "$s" | awk '{patsplit($0, a, /"[^"]*"|[^,]*/); print a[2]}'
"fox,42"
```

## substr

The `substr` function helps to extract a specified number of characters from an input string based on indexing. The argument order is:

* First argument is the input string
* Second argument is the starting position
* Third argument is the number of characters to extract

The index starts from `1`. If the third argument is not specified, by default all characters until the end of the string is extracted. If the second argument is greater than the length of the string or if the third argument is less than or equal to `0`, then an empty string is returned. The second argument will be converted `1` if a number less than one is specified.


```bash
$ echo 'abcdefghij' | awk '{print substr($0, 1, 5)}'
abcde
$ echo 'abcdefghij' | awk '{print substr($0, 4, 3)}'
def

$ echo 'abcdefghij' | awk '{print substr($0, 6)}'
fghij

$ echo 'abcdefghij' | awk -v OFS=: '{print substr($0, 2, 3), substr($0, 6, 3)}'
bcd:fgh
```

If only a few characters are needed from the input record, you can also use empty `FS`.

```bash
$ echo 'abcdefghij' | awk -v FS= '{print $3}'
c
$ echo 'abcdefghij' | awk -v FS= '{print $3, $5}'
c e
```

## match

The `match` function is useful to extract portion of an input string matched by a regexp. There are two ways to get the matched portion:

* by using the `substr` function along with special variables `RSTART` (starting position of the match) and `RLENGTH` (length of the match)
* by passing a third argument to `match` so that the results are available from an array

The first argument to `match` is the input string and the second one is the regexp. If the match fails, then `RSTART` gets `0` and `RLENGTH` gets `-1`. Return value is same as `RSTART`.

```bash
$ s='051 035 154 12 26 98234 3'

# using substr and RSTART/RLENGTH
# match a number with >= 4 digits
$ echo "$s" | awk 'match($0, /[0-9]{4,}/){print substr($0, RSTART, RLENGTH)}'
98234

# using array, note that index 0 is used here, not 1
# match a number >= 100 (with optional leading zeros)
$ echo "$s" | awk 'match($0, /0*[1-9][0-9]{2,}/, m){print m[0]}'
154
```

Both the above examples can also be easily solved using `FPAT` or `patsplit`. `match` has an advantage when it comes to getting portions matched only within capture groups. The first element of the array will still have the entire match. The second element will contain the portion matched by the first group, the third one will contain the portion matched by the second group and so on. See also [stackoverflow: arithmetic replacement in a text file](https://stackoverflow.com/q/62241101/4082052).

```bash
# entire matched portion
$ echo 'apple=42, fig=314' | awk 'match($0, /fig=([0-9]+)/, m){print m[0]}'
fig=314
# matched portion of the first capture group
$ echo 'apple=42, fig=314' | awk 'match($0, /fig=([0-9]+)/, m){print m[1]}'
314
```

If you need to get matching portions for all the matches instead of just the first match, you can use a loop and adjust the input string every iteration.

```bash
# extract numbers only if it is followed by a comma
$ s='42 apple-5, fig3; x-83, y-20: f12'
$ echo "$s" | awk '{ while( match($0, /([0-9]+),/, m) ){print m[1];
                   $0=substr($0, RSTART+RLENGTH)} }'
5
83
```

## index

The `index` function is useful when you need to match a string literally. This is similar to the `grep -F` functionality of matching fixed strings. The first argument to this function is the input string and the second one is the string to be matched literally. The return value is the index of the matching location and `0` if there is no match.

```bash
$ cat eqns.txt
a=b,a-b=c,c*d
a+b,pi=3.14,5e12
i*(t+9-g)/8,4-a+b

# no output because the metacharacters aren't escaped
$ awk '/i*(t+9-g)/' eqns.txt
# same as: grep -F 'i*(t+9-g)' eqns.txt
$ awk 'index($0, "i*(t+9-g)")' eqns.txt
i*(t+9-g)/8,4-a+b

# check only the last field
$ awk -F, 'index($NF, "a+b")' eqns.txt
i*(t+9-g)/8,4-a+b
# index not needed if the entire field/line is being compared
$ awk -F, '$1=="a+b"' eqns.txt
a+b,pi=3.14,5e12
```

The return value is useful to ensure that the match is found at specific positions only. For example, the start or end of the string.

```bash
# start of string
$ awk 'index($0, "a+b")==1' eqns.txt
a+b,pi=3.14,5e12

# end of string
$ awk -v s="a+b" 'index($0, s)==length()-length(s)+1' eqns.txt
i*(t+9-g)/8,4-a+b
```

Recall that the `-v` option gets parsed by `awk`'s string processing rules. So, if you need to pass a literal string without falling in backslash hell, use `ENVIRON` instead.

```bash
$ echo 'a\b\c\d' | awk -v s='a\b' 'index($0, s)'
$ echo 'a\b\c\d' | awk -v s='a\\b' 'index($0, s)'
a\b\c\d
$ echo 'a\b\c\d' | s='a\b' awk 'index($0, ENVIRON["s"])'
a\b\c\d
```

## system

External commands can be issued using the `system` function. Any output generated by the external command would be as usual on `stdout` unless redirected while calling the command.

```bash
$ awk 'BEGIN{system("echo Hello World")}'
Hello World

$ wc table.txt
 3 15 79 table.txt
$ awk 'BEGIN{system("wc table.txt")}'
 3 15 79 table.txt

$ awk 'BEGIN{system("seq 10 | paste -sd, > out.txt")}'
$ cat out.txt
1,2,3,4,5,6,7,8,9,10

$ cat t2.txt
I bought two balls and 3 bats
$ echo 'f1,t2,f3' | awk -F, '{system("cat " $2 ".txt")}'
I bought two balls and 3 bats
```

The return value of `system` depends on the exit status of the executed command. See [gawk manual: Input/Output Functions](https://www.gnu.org/software/gawk/manual/html_node/I_002fO-Functions.html) for details.

```bash
$ ls xyz.txt
ls: cannot access 'xyz.txt': No such file or directory
$ echo $?
2

$ awk 'BEGIN{s=system("ls xyz.txt"); print "Exit status: " s}'
ls: cannot access 'xyz.txt': No such file or directory
Exit status: 2
```

## printf and sprintf

The `printf` function is useful over the `print` function when you need to format the data before printing. Another difference is that `OFS` and `ORS` do not affect the `printf` function. The formatting features are similar to those found in the `C` programming language and the `printf` shell built-in command.

```bash
# OFMT controls the formatting for numbers displayed with the print function
$ awk 'BEGIN{print OFMT}'
%.6g
$ awk 'BEGIN{sum = 3.1428 + 100; print sum}'
103.143
$ awk 'BEGIN{OFMT="%.5f"; sum = 3.1428 + 100; print sum}'
103.14280

# using printf function
# note the use of \n as ORS isn't appended unlike print
$ awk 'BEGIN{sum = 3.1428 + 10; printf "%f\n", sum}'
13.142800
$ awk 'BEGIN{sum = 3.1428 + 10; printf "%.3f\n", sum}'
13.143
```

Here are some more formatting examples for floating-point numbers.

```bash
# total length is 10, filled with space if needed
# [ and ] are used here for visualization purposes
$ awk 'BEGIN{pi = 3.14159; printf "[%10.3f]\n", pi}'
[     3.142]
$ awk 'BEGIN{pi = 3.14159; printf "[%-10.3f]\n", pi}'
[3.142     ]

# zero filled
$ awk 'BEGIN{pi = 3.14159; printf "%010.3f\n", pi}'
000003.142

# scientific notation
$ awk 'BEGIN{pi = 3.14159; printf "%e\n", pi}'
3.141590e+00
```

Here are some formatting examples for integers.

```bash
# note that there is no rounding
$ awk 'BEGIN{printf "%d\n", 1.99}'
1

# ensure there's always a sign prefixed for integers
$ awk 'BEGIN{printf "%+d\n", 100}'
+100
$ awk 'BEGIN{printf "%+d\n", -100}'
-100
```

Here are some formatting examples for strings.

```bash
# prefix remaining width with spaces
$ awk 'BEGIN{printf "|%10s|\n", "mango"}'
|     mango|

# suffix remaining width with spaces
$ awk 'BEGIN{printf "|%-10s|\n", "mango"}'
|mango     |

# truncate
$ awk '{printf "%.4s\n", $0}' table.txt
brow
blue
yell
```

You can also refer to an argument using `N$` format, where `N` is the positional number of argument. One advantage with this method is that you can reuse an argument any number of times. You cannot mix this format with the normal way.

```bash
$ awk 'BEGIN{printf "%1$d + %2$d * %1$d = %3$d\n", 3, 4, 15}'
3 + 4 * 3 = 15
# remove # if you do not need the prefix
$ awk 'BEGIN{printf "hex=%1$#x\noct=%1$#o\ndec=%1$d\n", 15}'
hex=0xf
oct=017
dec=15
```

You can pass variables by specifying a `*` instead of a number in the formatting string.

```bash
# same as: awk 'BEGIN{pi = 3.14159; printf "%010.3f\n",  pi}'
$ awk 'BEGIN{d=10; p=3; pi = 3.14159; printf "%0*.*f\n", d, p, pi}'
000003.142
```

>![warning](images/warning.svg) Passing a variable directly to `printf` without using a format specifier can result in an error depending upon the contents of the variable.
>
> ```bash
> $ awk 'BEGIN{s="solve: 5 % x = 1"; printf s}'
> awk: cmd. line:1: fatal: not enough arguments to satisfy format string
>         `solve: 5 % x = 1'
>                    ^ ran out for this one
> ```

So, as a good practice, always use variables with an appropriate format instead of passing it directly to `printf`.

```bash
$ awk 'BEGIN{s="solve: 5 % x = 1"; printf "%s\n", s}'
solve: 5 % x = 1
```

If `%` has to be used literally inside the format specifier, use `%%`. This is similar to using `\\` in regexps to represent `\` literally.

```bash
$ awk 'BEGIN{printf "n%%d gives the remainder\n"}'
n%d gives the remainder
```

To save the results of the formatting in a variable instead of printing, use the `sprintf` function. Unlike `printf`, parentheses are always required to use this function.

```bash
$ awk 'BEGIN{pi = 3.14159; s = sprintf("%010.3f", pi); print s}'
000003.142
```

>![info](images/info.svg) See [gawk manual: printf](https://www.gnu.org/software/gawk/manual/html_node/Printf.html) for complete list of formatting options and other details.

## Redirecting print output

The results from the `print` and `printf` functions can be redirected to a shell command or a file instead of `stdout`. There's nothing special about it, you could have done it using shell redirections as well. The use case arises when you need to redirect only a specific portion or if you need multiple redirections within the same `awk` command. Here are some examples of redirecting to multiple files.

```bash
$ seq 6 | awk 'NR%2{print > "odd.txt"; next} {print > "even.txt"}'
$ cat odd.txt
1
3
5
$ cat even.txt
2
4
6

# dynamically creating filenames
$ awk -v OFS='\t' 'NR>1{print $2, $3 > $1".txt"}' marks.txt
# output for one of the departments
$ cat ECE.txt
Raj     53
Joel    72
Om      92
```

Note that the use of `>` doesn't mean that the file will get overwritten everytime. That happens only once if the file already existed prior to executing the `awk` command. Use `>>` if you wish to append to already existing files.

As seen in the above examples, the filenames are passed as string expressions. To redirect to a shell command, again you need to pass a string expression after the `|` pipe symbol. Here's an example:

```bash
$ awk '{print $2 | "paste -sd,"}' table.txt
bread,cake,banana
```

And here are some examples with multiple redirections.

```bash
$ awk '{print $2 | "sort | paste -sd,"}' table.txt
banana,bread,cake

# sort the output before writing to files
$ awk -v OFS='\t' 'NR>1{print $2, $3 | "sort > "$1".txt"}' marks.txt
# output for one of the departments
$ cat ECE.txt
Joel    72
Om      92
Raj     53
```

>![info](images/info.svg) See [gawk manual: Redirecting Output of print and printf](https://www.gnu.org/software/gawk/manual/gawk.html#Redirection) for more details and operators on redirections. And see [gawk manual: Closing Input and Output Redirections](https://www.gnu.org/software/gawk/manual/gawk.html#Close-Files-And-Pipes) if you have too many redirections.

## Summary

This chapter covered some of the built-in functions provided by `awk`. Do check the manual for more of them, for example math and time related functions.

Next chapter will cover features related to processing multiple files passed as input to `awk`.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

>![info](images/info.svg) Exercises will also include functions and features not discussed in this chapter. Refer to [gawk manual: Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Functions) for details.

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

>![info](images/info.svg) Hint — [gawk manual: Bit-Manipulation Functions](https://www.gnu.org/software/gawk/manual/gawk.html#Bitwise-Functions).

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

# Multiple file input

You have already seen blocks like `BEGIN`, `END` and statements like `next`. This chapter will discuss features that are useful to make decisions around each file when there are multiple files passed as input.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## BEGINFILE, ENDFILE and FILENAME

* `BEGINFILE` — this block gets executed before the start of each input file
* `ENDFILE` — this block gets executed after processing each input file
* `FILENAME` — special variable having the filename of the current input file

Here are some examples:

```bash
# can also use: awk 'BEGINFILE{printf "--- %s ---\n", FILENAME} 1'
$ awk 'BEGINFILE{print "--- " FILENAME " ---"} 1' greeting.txt table.txt
--- greeting.txt ---
Hi there
Have a nice day
Good bye
--- table.txt ---
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14

# same as: tail -q -n1 greeting.txt table.txt
$ awk 'ENDFILE{print $0}' greeting.txt table.txt
Good bye
yellow banana window shoes 3.14
```

## nextfile

The `nextfile` statement helps to skip the remaining records from the current file being processed and move on to the next file. Note that the `ENDFILE` block will still be executed, if present.

```bash
# print filename if it contains 'I' anywhere in the file
# same as: grep -l 'I' f[1-3].txt greeting.txt
$ awk '/I/{print FILENAME; nextfile}' f[1-3].txt greeting.txt
f1.txt
f2.txt

# print filename if it contains both 'o' and 'at' anywhere in the file
$ awk 'BEGINFILE{m1=m2=0} /o/{m1=1} /at/{m2=1}
       m1 && m2{print FILENAME; nextfile}' f[1-3].txt greeting.txt
f2.txt
f3.txt

# print filename if it contains 'at' but not 'o'
$ awk 'BEGINFILE{m1=m2=0} /o/{m1=1; nextfile} /at/{m2=1}
       ENDFILE{if(!m1 && m2) print FILENAME}' f[1-3].txt greeting.txt
f1.txt
```

>![warning](images/warning.svg) `nextfile` cannot be used in the `BEGIN` or `END` or `ENDFILE` blocks. See [gawk manual: nextfile](https://www.gnu.org/software/gawk/manual/gawk.html#Nextfile-Statement) for more details, how it affects `ENDFILE` and other special cases.

## ARGC and ARGV

The `ARGC` special variable contains the total number of arguments passed to the `awk` command, including `awk` itself as an argument. The `ARGV` special array contains the arguments themselves.

```bash
# note that the index starts with '0' here
$ awk 'BEGIN{for(i=0; i<ARGC; i++) print ARGV[i]}' f[1-3].txt greeting.txt
awk
f1.txt
f2.txt
f3.txt
greeting.txt
```

Similar to manipulating `NF` and modifying `$N` field contents, you can change the values of `ARGC` and `ARGV` to control how the arguments should be processed.

However, not all arguments are necessarily filenames. `awk` allows assigning variable values without `-v` option if it is done in the place where you usually provide file arguments. For example:

```bash
$ awk 'BEGIN{for(i=0; i<ARGC; i++) print ARGV[i]}' table.txt n=5 greeting.txt
awk
table.txt
n=5
greeting.txt
```

In the above example, the variable `n` will get a value of `5` after `awk` has finished processing the `table.txt` file. Here's an example where `FS` is changed between two files.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14
$ cat books.csv
Harry Potter,Mistborn,To Kill a Mocking Bird
Matilda,Castle Hangnail,Jane Eyre

# for table.txt, FS will be the default value
# for books.csv, FS will be the comma character
# OFS is comma for both the files
$ awk -v OFS=, 'NF=2' table.txt FS=, books.csv
brown,bread
blue,cake
yellow,banana
Harry Potter,Mistborn
Matilda,Castle Hangnail
```

>![info](images/info.svg) See [stackoverflow: extract positions 2-7 from a fasta sequence](https://stackoverflow.com/a/64427745/4082052) for a practical example of changing field/record separators between the files being processed.

## Summary

This chapter introduced few more special blocks and variables are that handy for processing multiple file inputs. These will show up in examples in the coming chapters as well.

Next chapter will discuss use cases where you need to take decisions based on multiple input records.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Processing multiple records

Often, you need to consider multiple lines at a time to make a decision, such as the paragraph mode examples seen earlier. Sometimes, you need to match a particular record and then get records surrounding the matched record. The `condX{actionX}` shortcut makes it easy to code state machines concisely, which is useful to solve such multiple record use cases. See [softwareengineering: FSM examples](https://softwareengineering.stackexchange.com/questions/47806/examples-of-finite-state-machines) if you are not familiar with state machines.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Processing consecutive records

You might need to define a condition that should satisfy something for one record and something else for the very next record. `awk` does provide a feature to get next record, but that could get complicated (see the [getline](#getline) section). Instead, you can simply save relevant records in variables/arrays and then create the required conditional expression when you have all the required records available. The default behavior of uninitialized variable to act as `0` in numerical context and empty in string context plays a role too.

```bash
# match and print two consecutive records
# the first record should contain 'he' and the second one should contain 'you'
$ awk 'p ~ /he/ && /you/{print p ORS $0} {p=$0}' para.txt
Hi there
How are you

# same filtering as above, but print only the first record
$ awk 'p ~ /he/ && /you/{print p} {p=$0}' para.txt
Hi there

# same filtering as above, but print only the second record
$ awk 'p ~ /he/ && /you/; {p=$0}' para.txt
How are you
```

## Context matching

Sometimes you want not just the matching records, but the records relative to the matches as well. For example, it could be to see the comments at the start of a function block that was matched while searching a program file. Or, it could be to see extended information from a log file while searching for a particular error message.

Consider this sample input file:

```bash
$ cat context.txt
blue
    toy
    flower
    sand stone
light blue
    flower
    sky
    water
language
    english
    hindi
    spanish
    tamil
programming language
    python
    kotlin
    ruby
```

**Case 1:** Here's an example that emulates the `grep --no-group-separator -A<n>` functionality. The `n && n--` trick used in the example below works like this:

* If initially `n=2`, then we get
    * `2 && 2` — evaluates to `true` and `n` becomes `1`
    * `1 && 1` — evaluates to `true` and `n` becomes `0`
    * `0 && ` — evaluates to `false` and `n` doesn't change
* Note that when conditionals are connected with logical `&&`, the second expression will not be executed at all if the first one turns out to be `false` because the overall result will always be `false`. Same is the case if the first expression evaluates to `true` with the logical `||` operator. Such logical operators are also known as **short-circuit** operators. Thus, in the above case, `n--` won't be executed when `n` is `0` on the left hand side. This prevents `n` going negative and `n && n--` will never become `true` unless `n` is assigned again.

```bash
# same as: grep --no-group-separator -A1 'blue'
# print the matching line as well as the one that follows it
$ awk '/blue/{n=2} n && n--' context.txt
blue
    toy
light blue
    flower

# overlapping example, n gets re-assigned before reaching 0
$ awk '/toy|flower/{n=2} n && n--{print NR, $0}' context.txt
2     toy
3     flower
4     sand stone
6     flower
7     sky

# doesn't allow overlapping cases to re-assign the counter
$ awk '!n && /toy|flower/{n=2} n && n--{print NR, $0}' context.txt
2     toy
3     flower
6     flower
7     sky
```

Once you've understood the above examples, the rest of the examples in this section should be easier to comprehend. They are all variations of the logic used above and re-arranged to solve the use case being discussed.

**Case 2:** Print `n` records after match. This is similar to previous case, except that the matching record isn't printed.

```bash
# print 1 line after the matching line
# for overlapping cases, n gets re-assigned before reaching 0
$ awk 'n && n--; /language/{n=1}' context.txt
    english
    python

# print 2 lines after the matching line
# doesn't allow overlapping cases to re-assign the counter
$ awk '!n && /toy|flower/{n=2; next} n && n--' context.txt
    flower
    sand stone
    sky
    water
```

**Case 3:** Here's how to print the `n`th record after the matching record.

```bash
# print only the 2nd line found after the matching line
# the array saves the matching result for each record
# doesn't rely on a counter, thus works for overlapping cases
# same as: awk -v n=2 'a[NR-n]; /toy|flower/{a[NR]=1}'
$ awk -v n=2 'NR in a; /toy|flower/{a[NR+n]}' context.txt
    sand stone
light blue
    water

# print only the 3rd line found after matching line
# n && !--n will be true only when --n yields 0
# overlapping cases won't work as n gets re-assigned before going to 0
$ awk 'n && !--n; /language/{n=3}' context.txt
    spanish
    ruby
```

**Case 4:** Print `n` records before the match. Printing the matching record as well is left as an exercise. Since the file is being read in forward direction, and the problem statement is to print something before the matching record, overlapping situation like the previous examples doesn't occur.

```bash
# i>0 is used because NR starts from 1
$ awk -v n=2 '/toy|flower/{for(i=NR-n; i<NR; i++) if(i>0) print a[i]}
              {a[NR]=$0}' context.txt
blue
blue
    toy
    sand stone
light blue
```

**Case 5:** Print `n`th record before the matching record.

```bash
# if the count is small enough, you can save them in variables
# this one prints the 2nd line before the matching line
# NR>2 is needed as first 2 records shouldn't be considered for a match
$ awk 'NR>2 && /toy|flower/{print p2} {p2=p1; p1=$0}' context.txt
blue
    sand stone

# else, use an array to save previous records
$ awk -v n=4 'NR>n && /age/{print a[NR-n]} {a[NR]=$0}' context.txt
light blue
    english
```

## Records bounded by distinct markers

This section will cover cases where the input file will always contain the same number of starting and ending patterns, arranged in an alternating fashion. For example, there cannot be two starting patterns appearing without an ending pattern between them and vice versa. Lines of text inside and between such groups are optional.

The sample file shown below will be used to illustrate examples in this section. For simplicity, assume that the starting pattern is marked by `start` and the ending pattern by `end`. They have also been given group numbers to make it easier to analyze the output.

```bash
$ cat uniform.txt
mango
icecream
--start 1--
1234
6789
**end 1**
how are you
have a nice day
--start 2--
a
b
c
**end 2**
par,far,mar,tar
```

**Case 1:** Processing all the groups of records based on the distinct markers, including the records matched by markers themselves. For simplicity, the below command will just print all such records.

```bash
$ awk '/start/{f=1} f; /end/{f=0}' uniform.txt
--start 1--
1234
6789
**end 1**
--start 2--
a
b
c
**end 2**
```

>![info](images/info.svg) Similar to `sed -n '/start/,/end/p'` you can also use `awk '/start/,/end/'` but the state machine format is more suitable for the various cases to follow.

**Case 2:** Processing all the groups of records but excluding the records matched by markers themselves.

```bash
$ awk '/end/{f=0} f{print "*", $0} /start/{f=1}' uniform.txt
* 1234
* 6789
* a
* b
* c
```

**Case 3-4:** Processing all the groups of records but excluding one of the markers.

```bash
$ awk '/start/{f=1} /end/{f=0} f' uniform.txt
--start 1--
1234
6789
--start 2--
a
b
c

$ awk 'f; /start/{f=1} /end/{f=0}' uniform.txt
1234
6789
**end 1**
a
b
c
**end 2**
```

The next four cases are obtained by just using `!f` instead of `f` from the cases shown above.

**Case 5:** Processing all input records except the groups of records bound by the markers.

```bash
$ awk '/start/{f=1} !f{print $0 "."} /end/{f=0}' uniform.txt
mango.
icecream.
how are you.
have a nice day.
par,far,mar,tar.
```

**Case 6** Processing all input records except the groups of records between the markers.

```bash
$ awk '/end/{f=0} !f; /start/{f=1}' uniform.txt
mango
icecream
--start 1--
**end 1**
how are you
have a nice day
--start 2--
**end 2**
par,far,mar,tar
```

**Case 7-8:** Similar to case 6, but include only one of the markers.

```bash
$ awk '!f; /start/{f=1} /end/{f=0}' uniform.txt
mango
icecream
--start 1--
how are you
have a nice day
--start 2--
par,far,mar,tar

$ awk '/start/{f=1} /end/{f=0} !f' uniform.txt
mango
icecream
**end 1**
how are you
have a nice day
**end 2**
par,far,mar,tar
```

## Specific blocks

Instead of working with all the groups (or blocks) bound by the markers, this section will discuss how to choose blocks based on an additional criteria.

Here's how you can process only the first matching block.

```bash
$ awk '/start/{f=1} f; /end/{exit}' uniform.txt
--start 1--
1234
6789
**end 1**

# use other tricks discussed in previous section as needed
$ awk '/end/{exit} f; /start/{f=1}' uniform.txt
1234
6789
```

Getting last block alone involves lot more work, unless you happen to know how many blocks are present in the input file.

```bash
# reverse input linewise, change the order of comparison, reverse again
# might not work if RS has to be something other than newline
$ tac uniform.txt | awk '/end/{f=1} f; /start/{exit}' | tac
--start 2--
a
b
c
**end 2**

# or, save the blocks in a buffer and print the last one alone
$ awk '/start/{f=1; b=$0; next} f{b=b ORS $0} /end/{f=0}
       END{print b}' uniform.txt
--start 2--
a
b
c
**end 2**
```

Only the `n`th block.

```bash
# can also use: awk -v n=2 '/4/{c++} c==n{print; if(/6/) exit}'
$ seq 30 | awk -v n=2 '/4/{c++} c==n; /6/ && c==n{exit}'
14
15
16
```

All blocks greater than `n`th block.

```bash
$ seq 30 | awk -v n=1 '/4/{f=1; c++} f && c>n; /6/{f=0}'
14
15
16
24
25
26
```

Excluding the `n`th block.

```bash
$ seq 30 | awk -v n=2 '/4/{f=1; c++} f && c!=n; /6/{f=0}'
4
5
6
24
25
26
```

All blocks, only if the records between the markers match an additional condition.

```bash
# additional condition here is a record with entire content as '15'
$ seq 30 | awk '/4/{f=1; buf=$0; m=0; next}
                f{buf=buf ORS $0}
                /6/{f=0; if(m) print buf}
                $0=="15"{m=1}'
14
15
16
```

## Broken blocks

Sometimes, you can have markers in random order and mixed in different ways. In such cases, to work with blocks without any other marker present in between them, the buffer approach comes in handy again.

```bash
$ cat broken.txt
qqqqqqqqqqqqqqqq
error 1
hi
error 2
1234
6789
state 1
bye
state 2
error 3
xyz
error 4
abcd
state 3
zzzzzzzzzzzzzzzz

$ awk '/error/{f=1; buf=$0; next}
       f{buf=buf ORS $0}
       /state/{if(f) print buf; f=0}' broken.txt
error 2
1234
6789
state 1
error 4
abcd
state 3
```

## Summary

This chapter covered various examples of working with multiple records. State machines play an important role in deriving solutions for such cases. Knowing various corner cases is also crucial, otherwise a solution that works for one input may fail for others.

Next chapter will discuss use cases where you need to process a file input based on contents of another file.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Two file processing

This chapter focuses on solving problems which depend upon the contents of two or more files. These are usually based on comparing records and fields. Sometimes, record number plays a role too. You'll also learn about the `getline` built-in function.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Comparing records

Consider the following input files which will be compared line wise to get the common and unique lines.

```bash
$ cat colors_1.txt
teal
light blue
green
yellow
$ cat colors_2.txt
light blue
black
dark green
yellow
```

The *key* features used in the solution below:

* For two files as input, `NR==FNR` will be `true` only when the first file is being processed
* `next` will skip rest of the script and fetch the next record
* `a[$0]` by itself is a valid statement. It will create an uninitialized element in array `a` with `$0` as the key (assuming the key doesn't exist yet)
* `$0 in a` checks if the given string (`$0` here) exists as a key in the array `a`

```bash
# common lines
# same as: grep -Fxf colors_1.txt colors_2.txt
$ awk 'NR==FNR{a[$0]; next} $0 in a' colors_1.txt colors_2.txt
light blue
yellow

# lines from colors_2.txt not present in colors_1.txt
# same as: grep -vFxf colors_1.txt colors_2.txt
$ awk 'NR==FNR{a[$0]; next} !($0 in a)' colors_1.txt colors_2.txt
black
dark green

# reversing the order of input files gives
# lines from colors_1.txt not present in colors_2.txt
$ awk 'NR==FNR{a[$0]; next} !($0 in a)' colors_2.txt colors_1.txt
teal
green
```

>![warning](images/warning.svg) Note that the `NR==FNR` logic will fail if the first file is empty, since `NR` wouldn't get a chance to increment. You can set a flag after the first file has been processed to avoid this issue. See [this unix.stackexchange thread](https://unix.stackexchange.com/a/237110/109046) for more workarounds.
>
> ```bash
> # no output
> $ awk 'NR==FNR{a[$0]; next} !($0 in a)' /dev/null greeting.txt
>
> # gives the expected output
> $ awk '!f{a[$0]; next} !($0 in a)' /dev/null f=1 greeting.txt
> Hi there
> Have a nice day
> Good bye
> ```

## Comparing fields

In the previous section, you saw how to compare the contents of whole records between two files. This section will focus on comparing only specific fields. The below sample file will be one of the two file inputs for examples in this section.

```bash
$ cat marks.txt
Dept    Name    Marks
ECE     Raj     53
ECE     Joel    72
EEE     Moi     68
CSE     Surya   81
EEE     Tia     59
ECE     Om      92
CSE     Amy     67
```

To start with, here's a single field comparison. The problem statement is to fetch all records from `marks.txt` if the first field matches any of the departments listed in the `dept.txt` file.

```bash
$ cat dept.txt
CSE
ECE

# note that dept.txt is used to build the array keys first
$ awk 'NR==FNR{a[$1]; next} $1 in a' dept.txt marks.txt
ECE     Raj     53
ECE     Joel    72
CSE     Surya   81
ECE     Om      92
CSE     Amy     67

# if the header is needed as well
$ awk 'NR==FNR{a[$1]; next} FNR==1 || $1 in a' dept.txt marks.txt
Dept    Name    Marks
ECE     Raj     53
ECE     Joel    72
CSE     Surya   81
ECE     Om      92
CSE     Amy     67
```

For multiple field comparison, you need to construct the key robustly. Simply concatenating field values can lead to false matches. For example, field values `abc` and `123` will wrongly match `ab` and `c123`. To avoid this, you may introduce some string between the field values, say `"_"` (if you know the field themselves cannot have this character) or `FS` (safer option). You could also allow `awk` to bail you out. If you use the `,` symbol (not `","` as a string) between the field values, the value of the special variable `SUBSEP` is inserted. `SUBSEP` has a default value of the non-printing character `\034` which is usually not used as part of text files.

```bash
$ cat dept_name.txt
EEE Moi
CSE Amy
ECE Raj

# uses SUBSEP as a separator between the field values to construct the key
# note the use of parentheses for key testing
$ awk 'NR==FNR{a[$1,$2]; next} ($1,$2) in a' dept_name.txt marks.txt
ECE     Raj     53
EEE     Moi     68
CSE     Amy     67
```

In this example, one of the field is used for numerical comparison.

```bash
$ cat dept_mark.txt
ECE 70
EEE 65
CSE 80

# match Dept and minimum marks specified in dept_mark.txt
$ awk 'NR==FNR{d[$1]=$2; next}
       $1 in d && $3 >= d[$1]' dept_mark.txt marks.txt
ECE     Joel    72
EEE     Moi     68
CSE     Surya   81
ECE     Om      92
```

Here's an example of adding a new field.

```bash
$ cat role.txt
Raj class_rep
Amy sports_rep
Tia placement_rep

$ awk -v OFS='\t' 'NR==FNR{r[$1]=$2; next}
         {$(NF+1) = FNR==1 ? "Role" : r[$2]} 1' role.txt marks.txt
Dept    Name    Marks   Role
ECE     Raj     53      class_rep
ECE     Joel    72      
EEE     Moi     68      
CSE     Surya   81      
EEE     Tia     59      placement_rep
ECE     Om      92      
CSE     Amy     67      sports_rep
```

## getline

As the name indicates, the `getline` function allows you to read a line from a file on demand. This is easiest to use when you need something based on line numbers. The following example shows how you can replace the `m`th line from a file with the `n`th line from another file. There are many syntax variations with `getline`, here the line read is saved in a variable.

```bash
# return value handling is not shown here, but should be done ideally
$ awk -v m=3 -v n=2 'BEGIN{while(n-- > 0) getline s < "greeting.txt"}
                     FNR==m{$0=s} 1' table.txt
brown bread mat hair 42
blue cake mug shirt -7
Have a nice day
```

Here's an example where two files are processed simultaneously. In this case, the return value of `getline` is also used. It will be `1` if the line was read successfully, `0` if there's no more input to be read as end of file has already been reached and `-1` if something went wrong. The `ERRNO` special variable will have the error details.

```bash
# print line from greeting.txt if the last column of the corresponding line
# from table.txt is a positive number
$ awk -v file='table.txt' '(getline line < file)==1{n=split(line, a);
                           if(a[n]>0) print}' greeting.txt
Hi there
Good bye
```

If a file is passed as an argument to the `awk` command that cannot be opened, you get an error. For example:

```bash
$ awk '{print $2}' xyz.txt
awk: fatal: cannot open file 'xyz.txt' for reading: No such file or directory
```

It is recommended to always check for the return value when using `getline` or perhaps use techniques from the previous sections to avoid `getline` altogether.

```bash
# xyz.txt doesn't exist, but output doesn't show something went wrong
$ awk '{getline line < "xyz.txt"; print $NF, line}' table.txt
42 
-7 
3.14 

$ awk -v file='xyz.txt' '{ e=(getline line < file);
                           if(e<0){print file ": " ERRNO; exit}
                           print $NF, line }' table.txt
xyz.txt: No such file or directory
```

>![info](images/info.svg) See [gawk manual: getline](https://www.gnu.org/software/gawk/manual/gawk.html#Getline) for details, especially about corner cases and errors. See also [awk.freeshell: getline caveats](http://awk.freeshell.org/AllAboutGetline).

## Summary

This chapter discussed a few cases where you need to compare contents between two files. The `NR==FNR` trick is handy for such cases. You also saw a few examples with the `getline` function.

Next chapter will discuss how to handle duplicate contents.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Dealing with duplicates

Often, you need to eliminate duplicates from an input file. This could be based on the entire line content or based on certain fields. These are typically solved with the `sort` and `uniq` commands. Advantages with `awk` include regexp based field and record separators, input doesn't have to be sorted, and in general more flexibility because it is a programming language.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Whole line duplicates

`awk '!a[$0]++'` is one of the most famous `awk` one-liners. It eliminates line based duplicates while retaining the input order. The following example shows it in action along with an illustration of how the logic works.

```bash
$ cat purchases.txt
coffee
tea
washing powder
coffee
toothpaste
tea
soap
tea

$ awk '{print +a[$0] "\t" $0; a[$0]++}' purchases.txt
0       coffee
0       tea
0       washing powder
1       coffee
0       toothpaste
1       tea
0       soap
2       tea

# only those entries with zero in first column will be retained
$ awk '!a[$0]++' purchases.txt
coffee
tea
washing powder
toothpaste
soap
```

>![info](images/info.svg) See also [huniq](https://github.com/koraa/huniq), a faster alternative for removing line based duplicates.

## Column wise duplicates

Removing field based duplicates is simple for a single field comparison. Just change `$0` to the required field number after setting the appropriate field separator.

```bash
$ cat duplicates.txt
brown,toy,bread,42
dark red,ruby,rose,111
blue,ruby,water,333
dark red,sky,rose,555
yellow,toy,flower,333
white,sky,bread,111
light red,purse,rose,333

# based on the last field
$ awk -F, '!seen[$NF]++' duplicates.txt
brown,toy,bread,42
dark red,ruby,rose,111
blue,ruby,water,333
dark red,sky,rose,555
```

For multiple fields comparison, separate the fields with `,` so that `SUBSEP` is used to combine the field values to generate the key. As mentioned before, `SUBSEP` has a default value of `\034` non-printing character, which is typically not used in text files.

```bash
# based on the first and third fields
$ awk -F, '!seen[$1,$3]++' duplicates.txt
brown,toy,bread,42
dark red,ruby,rose,111
blue,ruby,water,333
yellow,toy,flower,333
white,sky,bread,111
light red,purse,rose,333
```

## Duplicate count

In this section, how many times a duplicate record is found plays a role in determining the output.

First up, printing only a specific numbered duplicate.

```bash
# print only the second occurrence of duplicates based on the second field
$ awk -F, '++seen[$2]==2' duplicates.txt
blue,ruby,water,333
yellow,toy,flower,333
white,sky,bread,111

# print only the third occurrence of duplicates based on the last field
$ awk -F, '++seen[$NF]==3' duplicates.txt
light red,purse,rose,333
```

Next, printing only the last copy of duplicates. Since the count isn't known, the `tac` command comes in handy again.

```bash
# reverse the input line-wise, retain first copy and then reverse again
$ tac duplicates.txt | awk -F, '!seen[$NF]++' | tac
brown,toy,bread,42
dark red,sky,rose,555
white,sky,bread,111
light red,purse,rose,333
```

To get all the records based on a duplicate count, you can pass the input file twice. Then use the two file processing trick to make decisions.

```bash
# all duplicates based on the last column
$ awk -F, 'NR==FNR{a[$NF]++; next} a[$NF]>1' duplicates.txt duplicates.txt
dark red,ruby,rose,111
blue,ruby,water,333
yellow,toy,flower,333
white,sky,bread,111
light red,purse,rose,333

# all duplicates based on the last column, minimum 3 duplicates
$ awk -F, 'NR==FNR{a[$NF]++; next} a[$NF]>2' duplicates.txt duplicates.txt
blue,ruby,water,333
yellow,toy,flower,333
light red,purse,rose,333

# only unique lines based on the third column
$ awk -F, 'NR==FNR{a[$3]++; next} a[$3]==1' duplicates.txt duplicates.txt
blue,ruby,water,333
yellow,toy,flower,333
```

## Summary

This chapter showed how to work with duplicate contents for records and fields. If you don't need regexp based separators and if your input is too big to handle, then specialized command line tools like `sort` and `uniq` will be better suited compared to `awk`.

Next chapter will show how to write `awk` scripts instead of the usual one-liners.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# awk scripts

So far, you've only seen how to provide `awk` scripts directly on the command line. In this chapter, you'll see basic examples for executing scripts saved in files.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## -f option

The `-f` command line option allows you to pass the `awk` script via files instead of writing everything on the command line. Here's an one-liner seen earlier that's been converted to a multiline script. Note that `;` is no longer necessary to separate the commands, newline will do that too.

```bash
$ cat buf.awk
/error/{
    f = 1
    buf = $0
    next
}

f{
    buf = buf ORS $0
}

/state/{
    if(f)
        print buf
    f = 0
}

$ awk -f buf.awk broken.txt
error 2
1234
6789
state 1
error 4
abcd
state 3
```

Another advantage is that single quotes can be freely used.

```bash
$ echo 'cue us on this example' | awk -v q="'" '{gsub(/\w+/, q "&" q)} 1'
'cue' 'us' 'on' 'this' 'example'

# the above solution is simpler to write as a script
$ cat quotes.awk
{
    gsub(/\w+/, "'&'")
}

1

$ echo 'cue us on this example' | awk -f quotes.awk
'cue' 'us' 'on' 'this' 'example'
```

## -o option

If the code has been first tried out on the command line, you can use the `-o` option to get a pretty printed version. Output filename can be passed along as an argument to this option. By default, `awkprof.out` will be used as the filename.

```bash
# adding -o after the one-liner has been tested
# input filenames and -v would be simply ignored
$ awk -o -v OFS='\t' 'NR==FNR{r[$1]=$2; next}
         {$(NF+1) = FNR==1 ? "Role" : r[$2]} 1' role.txt marks.txt

# pretty printed version
$ cat awkprof.out
NR == FNR {
        r[$1] = $2
        next
}

{
        $(NF + 1) = FNR == 1 ? "Role" : r[$2]
}

1 {
        print
}

# calling the script
# note that other command line options have to be provided as usual
$ awk -v OFS='\t' -f awkprof.out role.txt marks.txt
Dept    Name    Marks   Role
ECE     Raj     53      class_rep
ECE     Joel    72      
EEE     Moi     68      
CSE     Surya   81      
EEE     Tia     59      placement_rep
ECE     Om      92      
CSE     Amy     67      sports_rep
```

## Summary

So, now you know how to write program files for `awk` instead of just the one-liners. And about the `-o` option, which helps to convert complicated one-liners to pretty printed program files.

Next chapter will discuss a few gotchas and tricks.

## Exercises

>![info](images/info.svg) The [exercises](https://github.com/learnbyexample/learn_gnuawk/tree/master/exercises) directory has all the files used in this section.

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

# Gotchas and Tips

This chapter will discuss some of the often made beginner mistakes, corner cases as well as a few tricks to improve performance.

>![info](images/info.svg) The [example_files](https://github.com/learnbyexample/learn_gnuawk/tree/master/example_files) directory has all the files used in the examples.

## Prefixing $ for variables

Some scripting languages like `bash` require a `$` prefix when you need the value stored in a variable. For example, if you declare `name='Joe'` you'd need `echo "$name"` to print the value. This may result in using `$` prefix and other bashisms in `awk` as well when you are a beginner. To make it a bit worse, `awk` has the `$N` syntax for accessing field contents, which could result in false comprehension that all variables need the `$` prefix to access their values. See also [unix.stackexchange: Why does awk print the whole line when I want it to print a variable?](https://unix.stackexchange.com/q/291126/109046).

```bash
# silently fails, $word becomes $0 because of string to numeric conversion
$ awk -v word="cake" '$2==$word' table.txt
# works when the variable is used correctly
$ awk -v word="cake" '$2==word' table.txt
blue cake mug shirt -7

# here 'field' gets replaced with '2' and hence $2 is printed
$ awk -v field=2 '{print $field}' table.txt
bread
cake
banana
```

## DOS style line endings

As mentioned before, line endings differ from one platform to another. On Windows, it is typically a combination of carriage return and the newline character and referred as DOS style line endings. Since `GNU awk` allows multicharacter `RS`, it is easy to handle. See [stackoverflow: Why does my tool output overwrite itself and how do I fix it?](https://stackoverflow.com/q/45772525/4082052) for a detailed discussion and various mitigation methods.

```bash
# no issue with Unix style line ending
$ printf 'mat dog\n123 789\n' | awk '{print $2, $1}'
dog mat
789 123

# DOS style line ending causes trouble
$ printf 'mat dog\r\n123 789\r\n' | awk '{print $2, $1}'
 mat
 123
$ printf 'mat dog\r\n123 789\r\n' | awk '{sub(/$/, ".")} 1'
.at dog
.23 789

# use \r?\n if you want to handle both Unix and DOS style with the same command
# and use ORS=RT to preserve the line ending style
$ printf 'mat dog\r\n123 789\r\n' | awk -v RS='\r\n' '{print $2, $1}'
dog mat
789 123
$ printf 'mat dog\r\n123 789\r\n' | awk -v RS='\r\n' '{sub(/$/, ".")} 1'
mat dog.
123 789.
```

## Behavior of ^ and $ when string contains newline

In some regular expression implementations, `^` matches the start of a line and `$` matches the end of a line (with newline as the line separator). In `awk`, these anchors always match the start of the entire string and end of the entire string respectively. This comes into play when `RS` is other than the newline character, or if you have a string value containing newline characters.

```bash
# 'apple\n' doesn't match as there's a newline character
$ printf 'apple\n,mustard,grape,\nmango' | awk -v RS=, '/e$/'
grape

# '\nmango' doesn't match as there's a newline character
$ printf 'apple\n,mustard,grape,\nmango' | awk -v RS=, '/^m/'
mustard
```

## Word boundary differences

The word boundary `\y` matches both the start and end of word locations. Whereas, `\<` and `\>` will match exactly the start and end of word locations respectively. This leads to cases where you have to choose which of these word boundaries to use depending on the results desired. Consider `I have 12, he has 2!` as a sample text, shown below as an image with vertical bars marking the word boundaries. The last character `!` doesn't have the end of word boundary marker as it is not a word character.

![word boundary](images/word_boundary.png)

```bash
# \y matches both the start and end of word boundaries
# the first match here used starting boundary of 'I' and 'have'
$ echo 'I have 12, he has 2!' | awk '{gsub(/\y..\y/, "[&]")} 1'
[I ]have [12][, ][he] has[ 2]!

# \< and \> only matches the start and end word boundaries respectively
$ echo 'I have 12, he has 2!' | awk '{gsub(/\<..\>/, "[&]")} 1'
I have [12], [he] has 2!
```

Here's another example to show the difference between the two types of word boundaries.

```bash
# add something to both the start/end of word
$ echo 'hi log_42 12b' | awk '{gsub(/\y/, ":")} 1'
:hi: :log_42: :12b:

# add something only at the start of word
$ echo 'hi log_42 12b' | awk '{gsub(/\</, ":")} 1'
:hi :log_42 :12b

# add something only at the end of word
$ echo 'hi log_42 12b' | awk '{gsub(/\>/, ":")} 1'
hi: log_42: 12b:
```

## Relying on the default initial value

Uninitialized variables are useful, but sometimes they don't translate well if you are converting a command from single file input to multiple files. You have to workout which ones would need a reset at the beginning of each file being processed.

```bash
# step 1: works for single file
$ awk '{sum += $NF} END{print sum}' table.txt
38.14

# step 2: prepare code to work for multiple file
$ awk '{sum += $NF} ENDFILE{print FILENAME ":" sum}' table.txt
table.txt:38.14

# step 3: check with multiple file input
# oops, default numerical value '0' for sum works only once
$ awk '{sum += $NF} ENDFILE{print FILENAME ":" sum}' table.txt marks.txt
table.txt:38.14
marks.txt:530.14

# step 4: correctly initialize variables
$ awk '{sum += $NF} ENDFILE{print FILENAME ":" sum; sum=0}' table.txt marks.txt
table.txt:38.14
marks.txt:492
```

## Code in the replacement section

The replacement section in the substitution functions can accept any expression, which are converted to string whenever necessary. What happens if the regexp doesn't match the input string but the expression can change the value of a variable, such as increment/decrement operators? Well, the expression is still executed, which may or may not be what you need.

```bash
# no match for the second line, but 'c' was still modified
$ awk '{sub(/^(br|ye)/, ++c ") &")} 1' table.txt
1) brown bread mat hair 42
blue cake mug shirt -7
3) yellow banana window shoes 3.14

# check for a match before applying the substitution
# this may also help to simplify the regexp for substitution
# or, you could save the regexp in a variable to avoid duplication
# can also use: awk '/^(br|ye)/{$0 = ++c ") " $0} 1' table.txt
$ awk '/^(br|ye)/{sub(/^/, ++c ") ")} 1' table.txt
1) brown bread mat hair 42
blue cake mug shirt -7
2) yellow banana window shoes 3.14
```

Another important point to note is that the expression is executed only once per function call, not for every match.

```bash
# the first line has two matches but 'c' is modified only once
$ awk '{gsub(/\<b/, ++c ") &")} 1' table.txt
1) brown 1) bread mat hair 42
2) blue cake mug shirt -7
yellow 3) banana window shoes 3.14
```

## Forcing numeric context

You can use the unary operator `+` to force numeric conversion. A variable might have numeric operations but still not get assigned a number if there's no input to read. So, when printing a variable that should be a number, use unary `+` to ensure it prints `0` instead of an empty string.

```bash
# numbers present in the last column, so no issues
$ awk '{sum += $NF} END{print sum}' table.txt
38.14
# strings in the first column, gets treated as 0
$ awk '{sum += $1} END{print sum}' table.txt
0

# no input at all, an empty string is printed
$ awk '{sum += $1} END{print sum}' /dev/null

# forced conversion to number, 0 is printed
$ awk '{sum += $1} END{print +sum}' /dev/null
0
```

## Locale based numbers

The `-N` option (or `--use-lc-numeric`) is useful to work with floating-point numbers based on the current locale.

```bash
# my locale uses . for the decimal point
$ echo '3.14' | awk '{$0++} 1'
4.14

$ echo '3,14' | awk '{$0++} 1'
4
$ echo '3,14' | LC_NUMERIC=de_DE awk -N '{$0++} 1'
4,14
```

## Forcing string context

Concatenate an empty string to force string comparison.

```bash
# parentheses around the first argument to print used for clarity
# fields get compared as numbers here
$ echo '5 5.0' | awk '{print ($1==$2 ? "same" : "different"), "number"}'
same number

# fields get compared as strings here
$ echo '5 5.0' | awk '{print ($1""==$2 ? "same" : "different"), "string"}'
different string
```

## Negative NF

Manipulating `NF` sometimes leads to a negative value. Fortunately, `awk` throws an error instead of failing silently.

```bash
# example file with different number of fields
$ cat varying.txt
parrot
good cool awesome
blue sky
12 34 56 78 90

# delete the last two fields
$ awk '{NF -= 2} 1' varying.txt
awk: cmd. line:1: (FILENAME=varying.txt FNR=1) fatal: NF set to negative value

# add a condition to check the number of fields
# assumes that lines with less than 3 fields shouldn't be modified
$ awk 'NF>2{NF -= 2} 1' varying.txt
parrot
good
blue sky
12 34 56
```

Here's another example. Goal is to access the third field from the end.

```bash
$ awk '{print $(NF-2)}' varying.txt
awk: cmd. line:1: (FILENAME=varying.txt FNR=1) fatal: attempt to access field -1

# print only if there are minimum 3 fields
$ awk 'NF>2{print $(NF-2)}' varying.txt
good
56
```

## Faster execution

Changing the locale to ASCII (assuming that the default is not ASCII) can give a significant speed boost. Using `mawk` is another way to speed up the execution, provided you are not using `GNU awk` specific features. There are many feature differences, for example, `mawk` doesn't support the `{}` form of quantifiers (see [unix.stackexchange: How to specify regex quantifiers with mawk?](https://unix.stackexchange.com/q/506119/109046) for details). See also [wikipedia: awk Versions and implementations](https://en.wikipedia.org/wiki/AWK_programming_language#Versions_and_implementations).

```bash
# time shown is the best result from multiple runs
# speed benefit will vary depending on computing resources, input, etc
# words.txt contains dictionary words, one word per line
$ time awk '/^([a-d][r-z]){3}$/' words.txt > f1
real    0m0.029s

$ time LC_ALL=C awk '/^([a-d][r-z]){3}$/' words.txt > f2
real    0m0.017s

$ time mawk '/^[a-d][r-z][a-d][r-z][a-d][r-z]$/' words.txt > f3
real    0m0.009s

# check that the results are the same
$ diff -s f1 f2
Files f1 and f2 are identical
$ diff -s f2 f3
Files f2 and f3 are identical
# clean up temporary files
$ rm f[123]
```

Here's another example.

```bash
# count words containing exactly 3 lowercase 'a' characters
$ time awk -F'a' 'NF==4{cnt++} END{print +cnt}' words.txt
1019
real    0m0.032s

$ time LC_ALL=C awk -F'a' 'NF==4{cnt++} END{print +cnt}' words.txt
1019
real    0m0.021s

$ time mawk -F'a' 'NF==4{cnt++} END{print +cnt}' words.txt
1019
real    0m0.014s
```

>![info](images/info.svg) See also [frawk](https://github.com/ezrosent/frawk), an efficient awk-like language implemented in Rust. And [huniq](https://github.com/koraa/huniq), a faster alternative for removing line based duplicates.

# Further Reading

* `man awk` and `info awk` and [online manual](https://www.gnu.org/software/gawk/manual/gawk.html)
* Information about various implementations of `awk`
    * [awk FAQ](http://www.faqs.org/faqs/computer-lang/awk/faq/) — great resource, but last modified *23 May 2002*
    * [grymoire: awk tutorial](https://www.grymoire.com/Unix/Awk.html) — covers information about different `awk` versions as well
    * [cheat sheet for awk/nawk/gawk](https://catonmat.net/ftp/awk.cheat.sheet.txt)
    * [list of freely available awk implementations](https://www.gnu.org/software/gawk/manual/html_node/Other-Versions.html)
* Q&A on stackoverflow/stackexchange are good source of learning material, good for practice exercises as well
    * [awk Q&A on unix.stackexchange](https://unix.stackexchange.com/questions/tagged/awk?sort=votes&pageSize=15)
    * [awk Q&A on stackoverflow](https://stackoverflow.com/questions/tagged/awk?sort=votes&pageSize=15)
* Learn Regular Expressions (has information on flavors other than POSIX too)
    * [regular-expressions](https://www.regular-expressions.info/) — tutorials and tools
    * [rexegg](https://www.rexegg.com/) — tutorials, tricks and more
    * [stackoverflow: What does this regex mean?](https://stackoverflow.com/q/22937618/4082052)
    * [online regex tester and debugger](https://regex101.com/) — not fully suitable for CLI tools, but most of ERE syntax works
* [My ebooks on CLI text processing tools](https://learnbyexample.github.io/books/)
* Related tools
    * [GNU datamash](https://www.gnu.org/software/datamash/)
    * [bioawk](https://github.com/lh3/bioawk)
    * [frawk](https://github.com/ezrosent/frawk) — an efficient awk-like language, implemented in Rust
    * [goawk](https://github.com/benhoyt/goawk) — POSIX-compliant awk interpreter written in Go, with CSV support
    * [hawk](https://github.com/gelisam/hawk) — similar to awk, but using Haskell as the text-processing language
    * [miller](https://github.com/johnkerl/miller) — similar to awk/sed/cut/join/sort for name-indexed data such as CSV, TSV, and tabular JSON (see this [news.ycombinator discussion](https://news.ycombinator.com/item?id=10066742) for other tools like this)
* Miscellaneous
    * [unix.stackexchange: When to use grep, sed, awk, perl, etc](https://unix.stackexchange.com/q/303044/109046)
    * [awk-libs](https://github.com/e36freak/awk-libs) — lots of useful functions
    * [awkaster](https://github.com/TheMozg/awk-raycaster) — Pseudo-3D shooter written completely in awk
    * [awk REPL](https://awk.js.org/) — live editor (browser app)
* ASCII reference and locale usage
    * [ASCII code table](https://ascii.cl/)
    * [wiki.archlinux: locale](https://wiki.archlinux.org/title/locale)
    * [shellhacks: Define Locale and Language Settings](https://www.shellhacks.com/linux-define-locale-language-settings/)
* Examples for some of the topics not covered in this book
    * [unix.stackexchange: rand/srand](https://unix.stackexchange.com/q/372816/109046)
    * [unix.stackexchange: strftime](https://unix.stackexchange.com/q/224969/109046)
    * [stackoverflow: arbitrary precision integer extension](https://stackoverflow.com/q/46904447/4082052)
    * [stackoverflow: recognizing hexadecimal numbers](https://stackoverflow.com/q/3683110/4082052)
    * [unix.stackexchange: sprintf and file closing](https://unix.stackexchange.com/q/223727/109046)
    * [unix.stackexchange: user defined functions and array passing](https://unix.stackexchange.com/q/72469/109046)
    * [unix.stackexchange: rename CSV files based on number of fields in header row](https://unix.stackexchange.com/q/408742/109046)

