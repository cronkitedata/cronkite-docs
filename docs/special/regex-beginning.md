---
title: Intro to Regular Expressions
parent: Special
---

We're going to use resources from IRE to work from in our first regular expression lesson.

## Regular Expressions basics

A *regular expression* is a language that is implemented in most every computer programming language that lets you pick out patterns in text. It's used to split apart character strings like names, addresses, or phone numbers, or to pick out specific phrases that may not appear consistently enough to use search-and-replace.

There are up to three parts to a regular expression:

1. The pattern you are SEEKING
2. An optional REPLACEMENT, which could use part of what you're seeking
3. Options, which control whether it is case sensitive, and how it handles multiple-line character fields.

Justin Meyer had a good handout at a recent IRE conference that can serve as a guide. There are lots of other regex cheatsheets out there.

NOTE: If you're using R, you can use a regex in your filter using this command:

    str_detect(var_name, regex("pattern"))

... where you replace var_name with the variable name you want to search, and "pattern" with the regex itself.

## Sample data

Here are three small text files that you can open in any text editor, and then copy and paste into the [regex101.com](https://regex101.com/) site. It's a site that lets you test out regular expressions, while explaining to you what's happening with them.

1. A [list of phone numbers](({{site.baseurl}}/assets/data/special/regex_phones.txt)) in different formats
2. A [list of dates]({{site.baseurl}}/assets/data/special/regex_dates.txt) that you need to convert into a different form.
3. A [list of addresses]({{site.baseurl}}/assets/data/special/regex_addresses.txt) that are in multiple lines, and you need to pull out the pieces. (Courtesy of IRE)
4. A [small chunk of the H2B visa applications]({{site.baseurl}}/assets/data/special/regex_practice_h2b.txt) from Arizona companies or worksites that has been kind of messed up for this demonstration, in tab-delimited format.

## A simple example

### Looking for specific words or characters

The easiest regex is one that has just the characters  you're looking for when you know that they are the right case.

typing "little" in the box will search for the literal letters l-i-t-t-l-e in the test string that you type in:

![](../assets/images/41-regex1.png)

If you weren't sure if it was upper or lower case, you could change the flat from "gm" to "gmi", which includes the instruction to IGNORECASE.

### Wildcards

You should try following along in regex 101 for this part.

There are several kinds of wildcards in regular expressions:

      .*  means, "anything", up to the end of the line (usually)
      .?  means, "any character might exist once or not at all"
      .*? Means "only pick up the most limited version possible"

Sometimes you don't know whether something is misspelled, but you can guess at some common misspellings. For example, you may know that there is a British spelling of the word "summarise", but that some people use "summarize". One way to work with this is to use a wildcard. In most regex implementations, a period is any character. So you could type in:

      summari.e

That would get "summarise", "summarize", but also "summarite".

So you want to be a little more specific. Instead, you can use what's called a *character class*, in which you tell the regex which letters it can use:

      summari[sz]e

Another alternative is to say, anything EXCEPT a character:

      summaris[^t]e

You can also tell the regex *how many* times a character or phrase should appear using squigly brackets:

      lit{1,2}le  would match "litle" and "little" but not "litttle"

## Practice #1: Extract date parts

We're going to walk through a simple set of dates --  we're going to use regex 101 to replace something that looks like this:

      1/24/2018

into something that looks like this:

     2008-1-24


Copy and paste these numbers into the regex 101 window:

    9/7/2017
    9/11/1998
    9/11/2017
    9/19/2018
    9/15/2017
    10/13/2019
    11/3/2017


First, you can use any digit using the pattern "\d"

So we want to match the pattern like this:

      \d{1,2}/\d{1,2}/\d{4}

But if you put parentheses around each section, you can use them again later in a replacement.

      (\d{1,2})/(\d{1,2})/(\d{4})

Now each piece is numbered: \1 refers to the month, \2 refers to the day, and \3 refers to the year. Expand the "substitution" pane at the bottom of the screen, and try it:

![](../assets/images/41-regex3.png)

## Practice #2: Extract pieces of phone numbers

Here are some phone numbers in different formats:

    623-374-1167
    760.352.5212
    831-676-3833
    (831)-676-3833
    623-374-1167 ext 203
    831-775-0370
    (602)-955-0222  x20
    928-627-8080
    831-784-1453

This is a little more complicated than it looks, so try piecing together what this one says:

      (\d{3})[-.\)]+(\d{3})[-.]+(\d{4})

(This won't work in the "substitute" area -- it would be easier to create a new variable with the results than to replace the originals.)

Anything within parentheses will be "captured" in a block.

## Practice #3: Extract address pieces

(This comes from "Regular expressions for the rest of us", from Christian McDonald of University of Texas, from the 2019 NICAR conference. [This exercise is a great primer on regular expression](../assets/docs/regex_for_rest_of_us.pdf).)

Here are a few lines of the data, which you can copy and paste to go through McDonald's exercise. (He uses the Javascript version of regular expressions, but for our purposes in this exercise, it doesn't matter which one you use. If you choose Python,  you'll have one extra step, of putting a slash (\) before the quotes. The colors work a little better if you leave it on the default PHP method.)

    "10111 N LAMAR BLVD
    AUSTIN, TX 78753
    (30.370945933000485, -97.6925542359997)"
    "3636 N FM 620 RD
    AUSTIN, TX 78734
    (30.377873241000486, -97.9523496219997)"
    "9919 SERVICE AVE
    AUSTIN, TX 78743
    (30.205028616000448, -97.6625588019997)"
    "10601 N LAMAR BLVD
    AUSTIN, TX 78753
    (30.37476574700048, -97.6903937089997)"
    "801 E WILLIAM CANNON DR Unit 205
    AUSTIN, TX 78745
    (30.190914575000477, -97.77193838799968)"
    "4408 LONG CHAMP DR
    AUSTIN, TX 78746
    (30.340981111000474, -97.7983147919997)"
    "625 W BEN WHITE BLVD EB
    AUSTIN, TX 78745
    (30.206884239000487, -97.7956469989997)"
    "3914 N LAMAR BLVD
    AUSTIN, TX 78756
    (30.307477098000447, -97.74169675199965)"
    "15201 FALCON HEAD BLVD
    BEE CAVE, TX 78738
    (30.32068282700044, -97.96890311999965)"
    "11905 FM 2244 RD Unit 100
    BEE CAVE, TX 78738
    (30.308363203000454, -97.92393357799966)"
    "3801 JUNIPER TRCE
    BEE CAVE, TX 78738
    (30.308247975000484, -97.93511531999968)"
    "12800 GALLERIA CIR Unit 101
    BEE CAVE, TX 78738
    (30.307996778000472, -97.94065088199966)"
    "12400 W SH 71 Unit 510
    BEE CAVE, TX 78733
    (30.330682136000462, -97.86979886299969)"
    "716 W 6TH ST
    AUSTIN, TX 78701
    (30.27019732500048, -97.75036306299967)"
    "3003 BEE CAVES RD
    ROLLINGWOOD, TX 78746
    (30.271592738000436, -97.79583786499967)"


## On your own

[This is a small list of H2A visa applications](../assets/data/special/regex_h2bvisas.txt), which are requests for agricultural and seasonal workers, from companies or worksites in Arizona. Try writing some regular expression to extract diffrent pieces of it, since it's a fixed-width file.

Try importing it into Excel, then copying some of the cells to practice your regular expression skills. You might try

* Finding all of the LLC's in the list (limited liability companies) of names. (You should turn on the case-insensitive flag in Regex 101 or set that flag in your program if you do.)
* See how far you can get in standardizing the addresses.

Next week, we'll see how this can work in OpenRefine.
