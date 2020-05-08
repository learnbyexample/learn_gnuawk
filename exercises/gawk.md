# awk introduction

This chapter will give an overview of `awk` syntax and some examples to show what kind of problems you could solve using `awk`. These features will be covered in depth in later chapters, but don't go skipping this chapter.

## Filtering

`awk` provides filtering capabilities like those supported by `grep` and `sed` plus some nifty features of its own. And similar to many command line utilities, `awk` can accept input from both `stdin` and files.

```bash
$ # sample stdin data
$ printf 'gate\napple\nwhat\nkite\n'
gate
apple
what
kite
```

## Substitution

`awk` has three functions to cover search and replace requirements. Two of them are shown below. The `sub` function replaces only the first match whereas `gsub` function replaces all the matching occurrences. By default, these functions operate on `$0` when the input string isn't provided. Both `sub` and `gsub` modifies the input source on successful substitution.

```bash
$ # for each input line, change only first ':' to '-'
$ # same as: sed 's/:/-/'
$ printf '1:2:3:4\na:b:c:d\n' | awk '{sub(/:/, "-")} 1'
1-2:3:4
a-b:c:d
```

## Summary

Next chapter is dedicated solely for regular expressions. The features introduced in this chapter would be used in the examples, so make sure you are comfortable with `awk` syntax before proceeding.

## Exercises

**a)** blah blah blah

```bash
# more blah
$ blah blah
```

# Regular Expressions

Regular Expressions is a versatile tool for text processing.

## Syntax and variable assignment

As seen in previous chapter, the syntax is `string ~ /regexp/` to check if the given string satisfies the rules specified by the regexp.

```bash
# here be comment
$ printf 'spared no one\ngrasped\nspar\n' | awk '/ed/'
spared no one
grasped
```

## Line Anchors

In the examples seen so far, the regexp was a simple string value without any special characters.

* `^` metacharacter restricts the matching to start of line
* `$` metacharacter restricts the matching to end of line

```bash
$ # lines starting with 'sp'
$ printf 'spared no one\ngrasped\nspar\n' | awk '/^sp/'
spared no one
spar

$ # lines ending with 'ar'
$ printf 'spared no one\ngrasped\nspar\n' | awk '/ar$/'
spar
```

The anchors can be used by themselves as a pattern.

## Word Anchors

The second type of restriction is word anchors. A word character is any alphabet (irrespective of case), digit and the underscore character.

```bash
$ # words starting with 'par'
$ awk '/\<par/' word_anchors.txt
sub par
cart part tart mart
```

>![warning](images/warning.svg) See also [Word boundary differences](#word-boundary-differences) section.

## Grouping

Often, there are some common things among the regular expression alternatives. It could be common characters or qualifiers like the anchors.

```bash
# without grouping
$ printf 'red\nreform\nread\narrest\n' | awk '/reform|rest/'
reform
arrest
# with grouping
$ printf 'red\nreform\nread\narrest\n' | awk '/re(form|st)/'
reform
arrest
```

## Summary

Regular expressions is a feature that you'll encounter in multiple command line programs and programming languages. It is a versatile tool for text processing.

## Exercises

**a)** blah blah blah

```bash
# more blah
$ blah blah
```

# Field separators

Now that you are familiar with basic `awk` syntax and regular expressions, this chapter will dive deep into field processing. You'll learn how to set input and output field separators, how to use regexps for defining fields and how to work with fixed length fields. 

## Default field separation

As seen earlier, `awk` automatically splits input into fields which are accessible using `$N` where `N` is the field number you need. You can also pass an expression instead of numeric literal to specify the field required.

```bash
$ cat table.txt
brown bread mat hair 42
blue cake mug shirt -7
yellow banana window shoes 3.14
```

The `NF` special variable will give you the number of fields for each input line. This is useful when you don't know how many fields are present in the input and you need to specify field number from the end.

```bash
$ # print the last field of each input line
$ awk '{print $NF}' table.txt
42
-7
3.14
```

## Input field separator

The most common way to change the default field separator is to use the `-F` command line option. The value passed to the option will be treated as a regexp. For now, here's some examples without any special regexp characters.

```bash
$ # use ':' as input field separator
$ echo 'goal:amazing:whistle:kwality' | awk -F: '{print $1}'
goal
$ echo 'goal:amazing:whistle:kwality' | awk -F: '{print $NF}'
kwality
```

## Output field separator

The `OFS` special variable is used for output field separator. `OFS` is used as the string between multiple arguments passed to `print` function.

```bash
$ # printing first and third field, OFS is used to join these values
$ # note the use of , to separate print arguments
$ awk '{print $1, $3}' table.txt
brown mat
blue mug
yellow window
```

## Summary

Working with fields is the most popular feature of `awk`. This chapter discussed various ways in which you can split the input into fields and manipulate them.

## Exercises

**a)** blah blah blah

```bash
# more blah
$ blah blah
```

