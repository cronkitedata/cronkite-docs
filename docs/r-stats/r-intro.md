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

* Mac only: [Install the Command Line Tools](https://developer.apple.com/download/more/).  You won't need this until we get to more complex graphics, so skip this step if you're having trouble.
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

### Directory confusion

One big problem when you start working with R is identifying what directory is currently active. To find out, type

    getwd()

into the console. (You can also get and set working directories through menu items in R Studio. )

### Error messages

R has horrible error message. Say I want to add 5 and the word "Three". Here's what happens:

    > 5 + "three"

<span style="color:red;"> Error in 5 + "three" : non-numeric argument to binary operator</span>


When you see an error, try to piece together what it means. In this case, it has three parts:

1. Error in 5 + "three" tells you where in your code the problem lies.
2. "non-numeric argument" is important - it tells you there is a of mixing data types of some kind.
3.  "to binary operator" tells you that it doesn't like non-numeric with a plus sign.

Later on, we'll go through some common error messages and what they tell you about where to look. You often have to look at the line ABOVE the one that generated an error to find where it is.

### New project

One good practice is to create projects for all of your R work on a given topic or dataset. When you create a project then open it, it makes sure that everything you need is in the working directory. It also makes sure you can just copy the whole project onto a new computer and it will likely work. (You may have to reinstall some packages)
