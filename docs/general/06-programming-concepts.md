---
title: Intro to coding
parent: General topics
nav_order: 7
---

<!-- Add link to the drag queen coding class. See if there are other good first-day programming aides I should add.-->

# Programming basics
{: .no_toc}

1. TOC
{:toc}


## Building blocks


There are four concepts in every programming language that will help you accomplish most tasks.  They are *operators*, *functions* , *loops* and *objects*.

### Operators

Operators are simple aritmetic or similar operations, like adding, subtracting, dividing and multiplying.

    Literals: A value exactly as written.
              Text usually must be in quotes (single or double) ("Sarah")
              Numbers may need a decimal point if you don't want them treated as integers (2.0)
              Logical (true, false -- upper / lower case differs by language)

    Arithmethic: add (+), subtract (-), multiply (*), or divide (/).

    Text: Smush together phrases by concatenating (often + or &)

    Comparison: Greater than (>) , less than (<), equal to (often == to distinguish from =),
                      not equal to (often !=).

    Assignment: Pushes a value (right side) into a variable name (left side).  (= or <-)
                my_name <- "Sarah"
                my_value <- 1.0


### Functions

A function is a set of instructions that is either built into the programming language, is added through a package or library, or is created by you. You can save them for later use or apply them on the fly.

In many ways, an algorithm is just a function -- a set of instructions to be carried out in order.

    =SUM(A1:A15)
    An Excel function to add together all of the values contained in cells A1 through A15.

### Loops

A loop is a way to repeat your instructions over and over without having to re-write them every time. They usually work by stepping through some kind of a list, like a directory of files, or by using a counter, such as every year between 2005 and 2018.

Excel and Google Sheets don't really have loops, unless you learn the more complicated programming language behind them. This is why many people move to Python and R -- to get the power of loops.

### Objects

The most basic kind of object is a single variable that contains a literal value:

     my_name <- "Sarah"
     my_value <- 1.0

#### Lists / arrays / vectors

Most languages have some concept of a list of items called an array, vector or dictionary. In R, you create a vector using the "c" operator, short for "combine". Python uses a square bracket to indicate a list. Once you have your items in a list or a vector, you can apply the same function across all of them or work on them in order.

    my_list <- c(1, 2, 3, 4, 5) creates a vector of the values 1 through 5 in R
    my_list = [1, 2, 3, 4, 5] creates a list of values 1 through 5 in Python

#### Data frames

Data frames are like Excel spreadsheets - rectangular data with field names and observations. You don't need to know much about this yet, but just understand that it will become an important part of your vocabulary.


## Make an omelet with a function

Suppose you want to make an omelet. Before you even start, you need to know at least two things: which ingredients you have on hand, and what kind of omelet you want to make.

A function that creates an omelet might look something like this. The first row creates a function called make_omelet, which requires the two pieces of information as *arguments*. Once you've made the function, you can refer to that set of instruction by its name by giving it the arguments it needs.

    function make_omelet (ingredients_on_hand, what_kind) {

         check for necessary ingredients (are all elements of what_kind in ingredients_on_hand?)
             quit now if you don't have them all.
             return the error message

         prepare the ingredients for (which_kind)

         whisk the eggs

         melt some butter in a pan

         pour in the eggs

         add ingredients for what_kind except cheese (what_kind - "cheese")

         flip the omelet

         if you have cheese in both what_kind and ingredients_on_hand ,
             fold in cheese

         remove from pan

         return the omelet

    }


Now, when you want to make an omelet, you can just make your list of ingredients and the kind of omelet you want, and execute the function:

Let's start with setting up those items:


    ingredients <-
            c("butter", "eggs", "cheese", "spinach", "tomatoes")

    kind <-
            c("spinach", "cheese")

    make_omelet (ingredients, kind)

    (Note that what you give it doesn't have to have the same name that it had in your definition.)

## Open a restaurant with loops

Now, you'd have to repeat this over and over if you had a restaurant. It might look like this:

      make_omelet (ingredients,kind)
      ** change the ingredients and the kind**
      make_omelet (ingredients2, kind2)
      ** change the ingredients ant the kind**
      make_omelet (ingredients3, kind3)
      ... and so on.

 You'd have a program hundreds of lines long -- one for each customer. Instead, you could *loop* through the customers and do the same thing:

    customers <- c("Bob", "Jon", "Christie", "Lauren")

    for (c in customers) {
      request what kind they want
      make_omelet (kind, ingredients_on_hand)
      give omelet to customer c
      update your ingredients list if you ran out of something or went shopping
    }

## Applications

Many of the functions we use are already built into R and Python, or are in libraries that we borrow -- someone else has already written them for you.

Examples include:

*
* reading in a csv or Excel file
* calculating the average or sum
* counting

The more common applications are things we haven't done yet:

* Gather identical spreadsheets into one dataset, as in [this example using refugee statistics](https://cronkitedata.github.io/rstats-training/refugees-loop.html).

* Loop through a list of links, download a page, then scrape it to extract information. Here's [an example from the Maricopa County sheriff's department mugshots](https://cronkitedata.github.io/rstats-training/rscraping/mugshot-scrape.html). (It won't work -- the census changes each time, so the ID numbers are out of date.)
