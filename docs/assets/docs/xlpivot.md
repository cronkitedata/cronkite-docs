---
title: Pivot tables in Excel
nav_exclude: True
---

# Pivot table crosstabs
{: .no_toc}

1. TOC
{: toc}

Pivot tables are some of the most useful tools available in Microsoft Excel. Unlike other data management tools, they effectively work the same way on Mac and Windows machines. This tutorial uses a Mac, and it will look a little different in Windows but the same ideas apply.

A pivot table is to excel as crosstabs are to statistical software like Stata or SPSS, and "group by" queries are to database managers. Think of them whenever you want the answer to questions that start with the words "how many?" or "how much?"

A basic tutorial on using a simple pivot table can be found on the [Data Journalism Textbook site](https://github.com/datajtext/DataJournalismTextbook/blob/master/Modules/GroupBy/group_by_with_excel.md), written by Matt Waite. Download the .csv file for that tutorial by [right-clicking on this link](https://github.com/datajtext/DataJournalismTextbook/blob/master/Data/mountainlions.csv)and choosing "Save Link as..." (in Chrome) or "Download Linked File As.." (in Safari)

## Files for this tutorial:

**[Diamondback scores for 2018]({{site.baseurl}}/assets/data/xlexamples/diamondbacks.xlsx)**

This file has four pages:
* _games_: The main data page showing the results the Arizona Diamondbacks' 2018 season, including the win-loss record, scores, attendance and other details. This data is formatted as a data table, and follows tidy data principles.
* _team_names_: A translation of the abbreviated team names, to be used in a different exercise.
* _Source_: The source of the data with a glossary of terms
* _Diary_: Changes made to the original to prepare for this exercise

![main page]({{site.baseurl}}/assets/images/07-xlpivot-diamondbacks1.png)


## Grouping

Every data analysis program can do some form of "grouping". Many reporters confuse "sorting" with "grouping" because that's how we express it in plain language. But in Excel, sorting and grouping are very different things. *Sorting* means arranging a table's rows into some order based on the values in a column. In other languages, this is called *arranging* or *ordering*, much clearer concepts. *Grouping*, on the other hand, means to summarize -- count, sum, or average, for example -- using the value of a discrete categorical value. Examples include:

* The number of crimes each month
* The total value of campaign contributions in each state
* The average height of men vs. women in your class

The simple pivot table tutorial shown above displays the number of mountain lion sightings in each Nebraska county:

![mountain lions]({{site.baseurl}}/assets/images/07-xlpivot-mountainlions.png)

### Grouping baseball games

([Use the Diamondback spreadsheet]({{site.baseurl}}/assets/data/xlexamples/diamondbacks1.xlsx) to follow along)

Suppose you want to know *how many* games the Diamondbacks won, and *how many* they lost in the 2018 season. You could filter the original table, note the number of items shown, and then filter the opposite way. But then you'd have to repeat that every time you wanted to check your answers. Instead, it would be much better if we just had this table:

| Win | 80 |
| Lose  |  82 |
| Total | 162 |

That's exactly what a pivot table does.

### Making your first pivot table

Because this data is formatted as a Table, you can choose "Summarize with a Pivot Table". (If you didn't have the table defined, you could choose "Insert" in the menu, Pivot Table in the left side of the menu.)  Also because this is formatted as a table, Excel guesses that you want to use the table as the basis of your pivot table, eliminating the need to double-check or pre-select the area that contains your table. You'll usually choose to put the results of the pivot table on a new sheet. When you hit "OK," you'll be taken immediately to that new sheet.

<img src="{{site.baseurl}}/assets/images/07-xlpivot-diamondbacks2.png" alt="summarize" style="float:left;width:45%">

<img src="{{site.baseurl}}/assets/images/07-xlpivot-diamondbacks3.png" alt="where to put it" style="width:45%; float:right;">

<p style="clear:both"></p>

This is what the first screen looks like:
{: .my-4 }

![empty pivot table]({{site.baseurl}}/assets/images/07-xlpivot-diamondbacks4.png)
{: .mb-3 }

The number you want to compute goes into the "Values" box. If you just want the answer to "How many?", it doesn't really matter what you put into the box. Just pick something that is words, not numbers -- otherwise it will try to sum them. You'll see how to control that soon:

![short gif]({{site.baseurl}}/assets/images/07-xlpivot1.gif)

## Crosstabs

You probably ran into crosstabs when you studied statistics, or in a political science course if you analyzed poll results. The idea of a crosstab is to compare two (or more) variables in two dimensions: columns and rows.

At the simplest level, it's just a count of how many items fall into each category. In this case, let's look at how many wins and losses the team had playing at home and away. Just drag **at** field into the Column box to get a 2-dimensional table, grouped by both home/away and win/lose.

![col row]({{site.baseurl}}/assets/images/07-xlpivot-diamondbacks5.png)

It happens that the Diamondbacks won just over half of the games they played, which were split equally between games played in Phoenix and games played elsewhere. These numbers look like the team does a little better on the road, but it's hard to be sure. That's where percentages - or rates - come into play. We'd like to be able to say whether the team is more or less likely to win at home or on the road, and by how much.

### Comparisons

These are common kinds of questions in journalism and in life. For example:

* Do immigrants get deported at higher rates when they have criminal histories?
* Are women more likely to get c-sections when they have private health insurance?
* Are high-income minorities rejected for loans at a higher rate than non-minorities?
* Are you more likely to score well on an exam in the morning or afternoon?

Translating these questions into pivot tables takes practice and you often have to read your results out loud to yourself.

At first, just use Philip Meyer's rule of thumb:

<div style="margin: 20px 20px 20px 20px;background-color:lightgrey;"> Put the variable that happens first in time (the <i>independent variable</i>) in the column element and then compute the column percentages.
</div>

In our example, it will look like this when you're done:

![outcomes]({{site.baseurl}}/assets/images/07-xlpivot-diamondbacks6.png)

### Calculating percentages

To make the pivot table, just repeat dragging your numeric field to the values area, and change the way it's displayed:


![outcomes]({{site.baseurl}}/assets/images/07-xlpivot-diamondbacks7.png)

<!--
<object width="425" height="344"><param name="movie" value="https://www.youtube.com/v/3EDcv-8fRM8&hl=en&fs=1"></param><param name="allowFullScreen" value="true"></param><embed src="https://www.youtube.com/v/3EDcv-8fRM8&hl=en&fs=1" type="application/x-shockwave-flash" allowfullscreen="true" width="425" height="344"></embed></object>
-->

This video goes through the steps you would take to get your preferred result. (Apologies in advance for the poor quality of the video -- I don't know why it happened. I'll replace it as soon as I can figure out how.)


<iframe width="560" height="315" src="https://www.youtube.com/embed/3EDcv-8fRM8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<!--{{site.baseurl}}/assets/images/
{{site.baseurl}}/assets/images/
-->

## Next steps

<img src="{{site.baseurl}}/assets/images/07-xlpivot-diamondbacks8.png" alt="stats avail" style="float:right;width:33%;margin: 20px 20px 20px 20px;">


You can also create some summary statistics for fields that are numeric. Here are the choices, which you'll get by clicking on the "Field Settings" once you add it to the Values section.
{: .p-4}

<p style="clear:both;"></p>

Try thinking of other questions you can ask of this dataset. For example:

* How many people, on average, came to home games?
* For each team, what was the longest game, in innings?
* Do the Diamondbacks do better in daylight or at night?
