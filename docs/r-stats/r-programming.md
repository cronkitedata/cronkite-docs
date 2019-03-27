---
title: "Programming concepts"
parent: R for journalism
nav_order: 3
---

Two concepts in programming will help you understand how to accomplish a lot of the tasks you are trying to complete. They are *functions* and *loops*.

A function is a set of instructions that is either built into the programming language, is added through a package or library, or is created by you. You can save them for later use, or apply them onthe fly.

A loop is a way to repeat your instructions over and over.

## An example

Suppose you want to make an omelet. There are several steps you have to take.

You also need to know two things before you start: which ingredients you have on hand, and what kind of omelet you are supposed to make.


A function that creates an omelet would generally look like this. (This is called pseudocode -- it won't work anywhere, but the general logic is laid out.)

    function make_omelet (k, i) {
         check for necessary ingredients (are all elements of k in i?)
             quit now if you don't have them all.  
             return the error message

         prepare the ingredients  (k)

         whisk the eggs

         melt some butter in a pan

         pour in the eggs

         add ingredients except cheese (k-cheese)

         flip the omelet

         if you have cheese in both k and i ,
             fold in cheese

         remove from pan

         return the omelet

    }


Now, when you want to make an omelet, you can just make your list of ingredients and the kind of omelet you want, and execute the function:

Let's start with setting up those items:


    ingredients_on_hand <-
            c("butter", "eggs", "cheese", "spinach", "tomatoes")

    kind_of_omelet <-
            c("spinach", "cheese")

    make_omelet (kind_of_omelet, ingredients_on_hand)

## Loops

Now, you'd have to repeat this over and over if you had a restaurant. You'd have a program hundreds of lines long -- one for each customer. Instead, you could *loop* through the customers and do the same thing:


    for (c in customers) {
      request what kind they want
      make_omelet (kind, ingredients_on_hand)
      give omelet to customer c
      update your ingredients_on_hand list if you ran out of something
    }

## Applications

Many of the functions we use are already built into R, or are in libraries that we borrow -- someone else has already written them for you.

Examples include:

* anything you use in a "mutate" statement
* reading in a csv or Excel file
* calculating the average or sum
* counting

The more common applications are things we haven't done yet:

* Gather identical spreadsheets into one dataset, as in [this example using refugee statistics](https://cronkitedata.github.io/rstats-training/refugees-loop.html).

* Loop through a list of links, download a page, then scrape it to extract information. Here's [an example from the Maricopa County sheriff's department mugshots](https://cronkitedata.github.io/rstats-training/rscraping/mugshots-scrape.html). (It won't work -- the census changes each time, so the ID numbers are out of date.) 
