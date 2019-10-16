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


### Lesson 1: Getting around R & intro to data frames

* [Getting started with R Markdown and R](01-1-notebooks.html)

* [Introduction to data frames](01-2-dataframes.html)

### Lesson 2: Select and filter
* Filtering murder data (based on material from Andrew Ba Tran's course listed above): [Document](02-murders-filter.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/02-murders-filter.Rmd?raw=true) / [Data file]({{site.baseurl}}/assets/data/r-data/murder_data.Rda)


### Lesson 3: Group by and join

* Green River killer: [Document](03-green-river.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/03-green-river.Rmd?raw=true) / [Data file]({{site.baseurl}}/assets/data/r-data/murders.Rda)  . When you're done with this one, be sure to save your merged data frame using this command, either in an R chunk or in the console:

    save(murders_with_counties, file="murders_with_counties.Rda")


* More grouping and reorganizing: [Document](03-group-by.html) / [RMarkdown](https://github.com/cronkitedata/cronkite-docs/blob/master/rmd-files/03-groupby-merge.Rmd?raw=true) / Additiona [data file]({{site.baseurl}}/assets/data/r-data/murders_with_counties.Rda)

Practice: A complete video tutorial using the built-in dataset for flight times from the Data School: "[Hands on dplyr tutorial for faster data manipulation in R](https://www.dataschool.io/dplyr-tutorial-for-faster-data-manipulation-in-r/)"

### Lesson 4: Intro to visualization

This [rstudio.cloud project](https://rstudio.cloud/spaces/10907/project/270748) is an introduction to the concepts of visualization using gapminder data, borrowed from several other tutorials on ggplot. It's a way to start thinking about how to build charts in R. ([final document](04-intro-visualization.html))
