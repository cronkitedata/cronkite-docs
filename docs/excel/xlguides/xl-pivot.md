---
title: Summarize with pivot tables
parent: Excel guides
grand_parent: Excel
nav_order: 5
---

# Summarize with pivot tables
{: .no_toc}


1. TOC
{: toc}

## Grouping data for summaries

Summarizing a list of items in a spreadsheet is done using pivot tables. In other languages, it's considered "aggregating" or "grouping and summarizing".

Think of pivot tables and grouping  as answering the questions, "How many?" and "How much?". They are particularly powerful when your question also has the words "the most" or the "the least" or "of each".  Some examples:

* Which Zip Code had *the most* crimes?
* What month had *the least* total rainfall?
* *How much* did each candidate raise last quarter?
* In playing cards, *how many* of each suit do I have in my hand?
* On average, are Cronkite students taller or shorter than in other schools?

While [filters](xl-filtersort) give you a count of the number of items that match a specific question, such as "I want to see all of the homicides in my city", pivot tables can show you whether your city has more homicides than others in the dataset.


### The Skittles challenge

To understand how pivot tables work, go out and buy a package of Skittles. Pour them onto a table and separate them into piles based on color. Reds go in one corner, blues (or purples) in another. Write down each color on a piece of paper. Those are your groups.

Now count how many Skittles are in each pile and write down that number next to the color. *Now* you have a summary of your package of Skittles.

![Skittles]({{site.baseurl}}/assets/images/07-xlpivot-skittles.jpg)

If you bought a small bag of Skittles, you should have had about 60 Skittles. In a spreadsheet, a list of them might look like this -- the only thing you have in your list is the color of each individual Skittle.

          1. Red
          2. Blue
          3. Red
          4. Yellow ....
          58. Blue
          59. Green
          60. Orange

When you finished grouping and counting, though, you might have a summary that looks like this - the list has been collapsed into one row for each color, with the number of Skittles of each color shown next to it, answering the questions "how many?", and "which color has the most Skittles?":

        Red     18
        Orange   8
        Blue    15
        Yellow  10
        Green    9

        Total   60


This brings up an important element of summarizing and grouping: If you misspelled some of the colors in the original list of 60, or if you sometimes called the grape Skittles "purple" instead of "blue", you would have extra rows in your result. You'd have to clean up your list, or further collapse your categories, to get the true counts.


### Confusing grouping with sorting or arranging

Many reporters confuse this summarization with "sorting". One reason is that this is how we express the concept in plain language: "I want to sort Skittles by color".

But in data analysis, sorting and and grouping are very different things. *Sorting* involves arranging a table's rows into some order based on the values in a column. In other languages, this is called *arranging* or *ordering*, much clearer concepts. *Grouping*, which is what pivot tables do, is a path to summarizing using count, sum, or average, for example by category.  It means "make piles and compute statistics for each one."

## Tutorial

#### Data file

Once again, we'll use the [data file from the opioid EMS calls in Tempe]({{site.baseurl}}/assets/data/xlexamples/opioidemscalls_v2.xlsx) to do some summarizing.  This one is edited from the one we used in filtering to add some categories ripe for summarization. Look on the "diary" tab if you're interested in how I created the "weekend" flag.

### Counting , or "how many"?

Most of the time, you'll be working with questions of "how many?". Reporters rarely deal with lists that have a lot of numbers in them -- those are often financial lists, like bank records, or medical or testing records. Without any numbers to work with, we'll almost always want to count. Here's an example of how to count the number of ASU students in the EMS data:


Try working with some other variables -- how many homeless people? How many on weekends? How many had Narcan? All you have to do is change the column name in the "Row" area, and you can count anything!


### Adding complexity: Percents of totals

It's hard to compare raw numbers unless they're really small. Instead, we'd like to know what *percent* of all calls were from ASU students or what *percent* had Narcan. To do that, you'll repeat the computation in the "Value" area, but change the way it's displayed from the raw number to "Percent of column".

### Answering interesting questions

Most questions that we have around summaries aren't as simple as "how many" or "how much". Often we want to know a comparison between groups -- a question of "more likely" or "less likely". To do that, you need two columns to compare to one another, then you want to compare the percentages.

Try to think of some interesting questions on your own, but they often come down to disparate treatment. For instance, if you think that getting Narcan is something of a privilege -- something you get because someone is trying to save your life -- you might wonder if homeless people get it as often as those who were not homeless. Here's how you'd answer that question:


Once you compute this, you might want to control for some things that might not be the same across the populations. For example, Narcan only works on opioid overdoses. So we can pull the opioid column into the "Filter" area, and limit the analysis only to those calls where opioids are suspected. Or we can limit it further by looking only at overdoses.



It only works well in examples like this, where there are enough instances in every corner of the box that you care about. But it's worth trying.

Of course, you can't just go into publication with these results. These are a starting point, not the end, of your reporting. You'd need to begin reporting with EMS workers, homeless advocates, experts in overdoses, and others to find out if there are good reasons for this pattern. You'd also want to probe to find out any reason it might be misleading -- it might, in fact, be something caused by a third factor that isn't in our dataset. Be on the lookout for all the reasons your initial results might be wrong, but this gives you a place to start asking questions -- the key to good reporting.






 As a simple start, let's see how many of the opioid calls were from ASU students:

I. Go over the relationship of the list to the pivot table.
II. Do a simple one-variable count. Pay attention to the GROUP vs. the SUMMARIZE. Compare to skittles.

Things that are annoying:
- Labeling. You can type in whatever you want, but if you change the table, the labels don't change with it! It's easier to re-label the values sometimes.
- Dirty data -- in this case we have N/A, Unknown, Yes, and No. What's the difference? We wish there would only be one row for "unknown" or would want to just get rid of them.
-






## Detailed walkthrough

For a detailed walkthrough on a season of baseball scores, see the "[Arizona Diamondback scores]({{site.baseurl}}/excel/practice/12-excel-baseball)" tutorial under "[Excel practice]({{site.baseurl}}/excel/xlpractice)" on this site.

## Practice questions

1. When might you use a group by / pivot table versus a filtering or sorting operation? What kinds of data lend themselves to each method?

2. Think about how you might create flags or more general groups to do your analysis. In the filtering tutorial, there were "Yes/No" flags on whether or a not a patient had been given Narcan. That makes it easy to create a pivot table.
