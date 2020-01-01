---
title: Grouping with pivot tables
parent: Excel guides
grand_parent: Excel
nav_order: 5
---

# Grouping with pivot tables
{: .no_toc}

Grouping is a fundamental concept in data analysis. It means *summarizing* individual items into categories, otherwise known as *aggregating*.

Many reporters confuse grouping with "sorting" because  that's how we express the concept in plain language, as in "I want to sort my deck of cards into piles".

But in data analysis, sorting and and grouping are very different things. *Sorting* involves arranging a table's rows into some order based on the values in a column. In other languages, this is called *arranging* or *ordering*, much clearer concepts. *Grouping*, on the other hand, means to summarize -- count, sum, or average, for example -- by category.  Grouping means "make piles and compute statistics for each one."

Examples include:

* The number of crimes each month
* The total value of campaign contributions in each state
* The average height of men vs. women in your class

Think of grouping as answering the questions, "How many?" and "How much?". They are particularly powerful when your question also has the words "the most" or the "the least" or "of each".  Some examples:

* Which Zip Code had *the most* crimes?
* What month had *the least* total rainfall?
* In playing cards, *how many of each suit* do I have in my hand?

While filters give you a count of the number of items that match a specific question, such as "I want to see all of the mountain lions in my county", pivot tables count and sum items in categories all at once.

## Tutorial

Matt Waite has a [simple tutorial on pivot tables](https://github.com/datajtext/DataJournalismTextbook/blob/master/Modules/GroupBy/group_by_with_excel.md).   \|  [Data file]({{site.baseurl}}/assets/data/xlexamples/mountainlions.xlsx).

In that Waite calculates the number of mountain lion sightings in each Nebraska county:

![mountain lions]({{site.baseurl}}/assets/images/07-xlpivot-mountainlions.png)

## Detailed walkthrough

For a detailed walkthrough on a season of baseball scores, see the "[Arizona Diamondback scores]({{site.baseurl}}/excel/practice/12-excel-baseball)" tutorial under "[Excel practice]({{site.baseurl}}/excel/xlpractice)" on this site.

## Practice questions

1. When might you use a group by / pivot table versus a filtering or sorting operation? What kinds of data lend themselves to each method?

2. Think about how you might create flags or more general groups to do your analysis. In the filtering tutorial, there were "Yes/No" flags on whether or a not a patient had been given Narcan. That makes it easy to create a pivot table.
