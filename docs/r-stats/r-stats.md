---
title: R for journalism
has_children: true
nav_order: 4
permalink: /r-stats
---

## R resources

Here are several other sources for you to review if you want to try something different on your own:

* [Matt Waite's sports data](http://mattwaite.github.io/sports/index.html) analysis and visualization course from the Univ. of Nebraska.
* [R for Data Science](http://r4ds.had.co.nz/), an online textbook written by Hadley Wickham, inventor of the tidyverse.
* [Intro to Data Science for the Social Sector](https://ds4ps.github.io/Data-Science-Class/TEXTBOOK/docs/introduction-to-r.html), Jesse Lecy, from the ASU Program Evaluation and Data Analytics. This is much more a startup in R than a course in program evaluation.
* First 5 chapters of Sharon Machlis' [Practical R for Mass Communication and Journalism](http://www.machlis.com/R4Journalists/index.html). The [entire book](https://www.amazon.com/Practical-Mass-Communication-Journalism-Chapman/dp/1138726915) should be available by early 2019.
* Andrew Ba Tran's "[R for Journalists](https://learn.r-journalism.com/en/)" course, which was originally offered through the Knight Center at the University of Texas's journalismcourses.org.


I don't know how to put the rendered HTML into this format, so here's a link to the tutorials and R Markdown files that we've used in class:

## Recap

Most of these exercises are in RStudio.cloud for ASU students. These items have links to zipped files that can be uploaded to RStudio.cloud as a whole project, and to .Rmd files (markdown documents) that aren't yet converted into HTML. They may open as text in your browser -- just save it to your local machine to have a file that you can work with in R. Where necessary, data files are also listed.

### Lesson 1: Getting around R & intro to data frames
[RStudio zipped project](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/01-markdown-r.zip)

* Getting started with R Markdown and R: [Document](01-1-notebooks.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/01-1-notebooks.Rmd?raw=true) / RStudio project

* Introduction to data frames: [Document](01-2-dataframes.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/01-2-dataframes.Rmd?raw=true)

### Lesson 2: Select and filter
In class, we went over Sharon Machlis' first lesson on her site,  listed above. We also went through the tutorial from the ["swirl" package](https://swirlstats.com/students.html)

* Filtering murder data (based on material from Andrew Ba Tran's course listed above): [Document](02-murders-filter.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/02-murders-filter.Rmd?raw=true) / [RStudio zipped project](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/02-select-filter.zip)

### Lesson 3: Group by and join

In class, we went over the exercise that Andrew created that tried to tease out of the murder data the Green River Killer. Then we went over the idea of grouping and joining.

[RStudio zipped project](03-groupby-merge.zip)

* Green River killer: [Document](03-green-river.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/03-green-river.Rmd?raw=true) . Use the zipped project to get the data frame.
* More grouping and reorganizing: [Document](03-groupby-merge.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/03-groupby-merge.Rmd?raw=true)

Practice: We're going to do a lab working on the built-in flight data in the tidyverse. For a complete tutorial using this dataset, and for more information on the things you can do with R in this context, watch the entire video from the Data School: "[Hands on dplyr tutorial for faster data manipulation in R](https://www.dataschool.io/dplyr-tutorial-for-faster-data-manipulation-in-r/)"
