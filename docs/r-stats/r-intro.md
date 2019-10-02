---
title: Intro to R
parent: R for journalism
nav_order: 1
---

<blockquote>
“In every project you have at least one other collaborator: future-you. You don’t want future-you to curse past-you.” - Hadley Wickham
</blockquote>


## Why learn R?
* It's become the de facto tool for statistical and data analysis. (Python remains popular for corporate and production-related uses.)
* Some news data teams will not consider an intern who has had zero experience with R. It doesn't need to be a lot, but some familiarity is required or highly valued.
* There is an enormous user base. The only trick is to search on "RStats" rather than R when you're looking for answers.
* It has some of the most robust exploratory graphics.
* It is free. As in beer and as in speech.

## What's the difference between a programming language and Excel?

All programming languages have one thing in common: You write instructions, called algorithms, and the program executes your statements in order. You might need to use a mouse, but the instructions are done without much interaction on your part. It means you can do more complicated work in computer programming than in point-and-click Excel (which actually has a programming language called VisualBasic available to you, but few people use it.)

It can also scale -- you can repeat your instructions millions of times, tweak it a little, and re-run the program without messing anything else up.

Some common programming languages used in journalism are:
* Structured Query Language, or SQL. We usually teach data journalism using this language, which is the standard language for creating, updating and querying very large and complicated databases in business. Banks run on SQL. So do human resources departments. You should know it exists, and you may even want to learn it at some point. The basics are easy. But the main functions that we use in SQL are available in R: filtering, grouping, sorting and joining are all implemented in R.
* Python and some frameworks to work with it. Python is a relatively simple program to use, is very intuitive, and is in widespread use throughout industry and on the business side of journalism organizations. It's much easier to scrape a website with Python than with R. It's also well-suited to building entire data-driven websites, through the use of frameworks. (Two examples are Django and Flask)
* Ruby and the framework called Rails. Ruby is best known as a language suited for building responsive Web sites.


## Installing R and R Studio

You can install it on your laptop or use a new cloud-based version, at least to start out with.

### RStudio Cloud

If you don't want to install R and RStudio on you computer, you can sign up for a [free account on RStudio Cloud](https://rstudio.cloud) It runs just the way it works on your laptop, but can be a little slow.

### Install yourself

If you want to install on your laptop, try these steps. Bring in your laptop if you're having trouble.

**MAC USERS: Install command line tools for Mac**
* This is a pain, but it only has to happen once. There are some things that won't work if you skip this step.

In your terminal (found under Utilities in the Applications folder), type:

    xcode-select --install

You'll get an error message saying that it can't be done because you don't have command line tools, and would you  like to install them now? Say yes. Once it's done, just close out your terminal. You never really wanted the thing that you asked to install in the first place.

**EVERYONE**
* Install [R for your computer](https://rweb.crmda.ku.edu/cran/). Use the most recent binaries for your operating system.
* Install [R Studio Desktop](https://www.rstudio.com/products/rstudio/download/#download) for your computer ONLY AFTER YOU HAVE INSTALLED R. Use the free community version.

## First steps with R

We'll be interacting with R using R Studio, which is a simple way to see all of the different pieces of any project.



### The Console

The Console is where you can type commands. Try it.

![console]({{site.baseurl}}/assets/images/21-rintro-rstudio.png)

    5+5           #when you type this
    [1] 10        #this is what you get back

    "Sarah"       #when you type this
    [1] "Sarah"   #this is what you get back

The console just gives you the answer from your latest command.

We will do very little in the console, but it's a good place to test little commands that you aren't sure of.


### Packages

Packages in R are just what they sound like -- packages of programs that users have found useful to extend the base R language. R is almost useless without them.

To use a package, you first have to install it. As a rule, you'll install packages in the CONSOLE, but load them for use in the R program or notebook. This will make more sense as we move along.

Once you've installed them in your computer or on RStudio.cloud, you won't have to install them again. (If you work on a Cronkite school lab, you may have to reinstall whenever you log in. You'll know if it's gone away by an error message if you try to use it.)

       install.packages("tidyverse")
       install.packages("rmarkdown")

For a first look at R, we'll want to install the Swirl package as well:

      install.packages("swirl")



### Work in projects

The easiest way to keep yourself organized is to work in R Studio projects rather than individual files. This means you don't have to worry about what directories or folders your computer thinks you are using at any one time, and creates a compact package. If you're using RStudio.cloud, every project is already self-contained.

Instead of creating a new file when you start R, create a new project, and tell R where to put the directory when prompted.  

### Error messages

R has horrible error message. Say I want to add 5 and the word "Three". Here's what happens:

    > 5 + "three"

<span style="color:red;"> Error in 5 + "three" : non-numeric argument to binary operator</span>


When you see an error, try to piece together what it means. In this case, it has three parts:

1. Error in 5 + "three" tells you where in your code the problem lies.
2. "non-numeric argument" is important - it tells you there is a of mixing data types of some kind.
3.  "to binary operator" tells you that it doesn't like non-numeric with a plus sign.

Later on, we'll go through some common error messages and what they tell you about where to look. You often have to look at the line ABOVE the one that generated an error to find where it is.
