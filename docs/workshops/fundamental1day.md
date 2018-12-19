---
nav_order: 5
title: 1-day CAR workshop
parent: Workshops
---

# Fundamentals of data reporting
Columbia University, March 2015

Schedule:

|---|---|
| 10:00 | Introductions and expectations for the day |
| 10:45 | Data journalism in the wild|
| 11:15 | Excel review: best practices and tidy data|
| 11:45 | First exercise: an internal affairs report |
| 12:30 | Lunch and review of morning. Optional discussion of acquiring data using open records laws.|
| 1:30  | More in Excel: Pivot tables, filtering and how to extend to other programs|
| 2:30  | Tableau Public: Sneaking into SQL with visualization |
| 3:30  | Getting data: The basics of web scraping and APIs |


## Stories in the wild
* Elliot Jaspin's story of finding [racial cleansing](http://hnn.us/article/35847) in Census data.
* [Money as a Weapon](http://www.washingtonpost.com/wp-dyn/content/article/2008/08/10/AR2008081002512.html)
 (started with database), The Washington Post, Dana Hedgpeth and Sarah Cohen
* Jo Becker and Ron Nixon's [Iran story](http://www.nytimes.com/2010/03/07/world/middleeast/07sanctions.html?pagewanted=all) (good example of "what's supposed to happen?"),
The New York Times
* [Medicare](http://online.wsj.com/news/articles/SB10001424052748704696304575538112856615900), The Wall Street Journal, (very, very large fish)
* [60 data-driven ideas in 60 minutes](https://docs.google.com/presentation/d/1bwYTBxnSSCBlhEh5_xnoiTejqoNbR5j_NZtVe1iDfTc/edit#slide=id.g2baf1d8ae_030) from Mary Jo Webster and Jodi Upton, NICAR 14.
* [A Death in St. Augustine](http://www.pbs.org/wgbh/pages/frontline/death-in-st-augustine/), Frontline, as an example of weaving in data when you are working on a narrative. We'll look at a piece of this story later on.
* The presentation from our class
* [Mike Berens' piece](http://sarahcnyt.github.io/stabile/docs/berens_nerds_words.pdf) on the heart of data journalism, written when Bill Clinton was president.


## Excel: Review and best practices

### Handouts and reference
* [Cheat sheet]({{site.baseurl}}/assets/docs/xlcheatsheet.pdf) on keyboard shortcuts for Mac and Windows Excel.
* [Video series](http://www.youtube.com/playlist?list=PL-Je9dqyEF8YS7Cy8BppKg5zrhiQC__n6) on best practices (for refresher later on)


### In class:
* We'll look through this reconstruction of the career of Dr. Jack Kevorkian to see how to build a chronology for what we need.
* Create the outline of a spreadsheet on Bubba Harris based on the internal affairs report (not linked). You'll decide which columns you need and how you'll want to use it in a story. Try filling in about 5-10 rows.
* After class, you can see [the spreadsheet]({{site.baseurl}}/assets/data/bubba_harris_protocol.xlsx?raw=true) I created from it, and the [paragraphs in a story](http://www.nytimes.com/projects/2013/two-gunshots/) that were based on it (toward the end). If you're interested in other data work for that story, hthe companion piece is []"Departments Slow To Police Their Own Abusers"](http://www.nytimes.com/projects/2013/police-domestic-abuse/)

## Excel Part 2: Filtering and pivot tables

### Handouts and reference
* Videos on [filtering](https://www.youtube.com/watch?v=TleYPfeJnnU) and [pivot tables](http://youtu.be/_rZ6y-e7diw)
* [Handout]({{site.baseurl}}/assets/docs/xlpivot_updated.pdf?raw=true), courtesy of IRE.

### In class
* Working with Major League Baseball [salaries](../exampledata/MLB2011.xlsx)

## If there is time: Open refine to clean data
A start-to-finish example of using OpenRefine to create a tidy dataset, which we'll use in the next step, using long-term managed care populations from the NYS Department of Health. Original spreadsheets downloaded from this [state site](https://www.health.ny.gov/health_care/managed_care/reports/enrollment/monthly/) and combined to create a [single spreadsheet]({{site.baseurl}}/assets/data/all-longterm.xlsx) with all reports on one page.  We'll start from here, with [this guide]({{site.baseurl}}/special/cleanup_medicare.md) for OpenRefine.


## Database concepts and viz: Tableau Public
* [Training materials](http://www.tableau.com/public/ire) for IRE conferences. (Note: If you [join IRE](http://ire.org/membership/) for $70, you can request a copy of desktop Tableau for free - normally about $2,000 / year.)
* Example dat


### Going further

* [Public records resources](http://sarahcnyt.github.io/stabile/weeks/class03.html) from previous class
