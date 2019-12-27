---
layout: page
title: Open Refine resources and guidelines
nav_exclude: true
---

## What is Open Refine and why would you use it?


Open Refine is a program that runs in your browser, and can be used to:
* Explore a new dataset to see what's in it.
* Standardize names and addresses using various algorithms,
* Use regular expressions for smart search-and-replace

... and many other data tasks.

#### Alternatives to Open Refine

Another product made for the same task is called **Trifacta**. I haven't had a chance to learn it, but it's made by people who really understand the challenges of messy data.

Some people use **regular expressions** and **fuzzy matching altgorithms** in computer programming languages to do the same thing.

#### Warnings about Open Refine

Open Refine is an open-source tool that isn't very stable on large datasets. It can choke on large Excel files (but csv or tab-separated values are fine). It can also eat your data.

As a result, be sure to export your project or copy the code behind it regularly.

## Handouts / tutorials

You'll see a common element in these tutorials -- Open Refine is used to explore and fix your data when it is not already standardized. This will be very useful for those of you using campaign finance or hazardous spill data. FARS is already standardized, but you may find it useful for exploring what values are in the data. It's easier than SQL or even Excel.

*  [Susan McGregor's tutorial](https://www.youtube.com/watch?v=eZw9V2VMeTA) on Open Refine for Columbia University. This is also a great reminder of different kinds of data formats (xml, json, csv).

* Maggie Mulvihill's Powerpoint presentations [part 1](https://github.com/sarahcnyt/stabile/blob/master/cleanup/presentations/CLEANING%20DATA%20WITH%20OPEN%20REFINE.pptx) and [part 2](https://github.com/sarahcnyt/stabile/blob/master/cleanup/presentations/ANSWERS%20TO%20TAKE%20HOME%20EXERCISE%203%20-%20OPEN%20REFINE%20AND%20GOOGLE%20FUSION%20TABLES.pptx) for Boston University.  It's not as useful without her original data, but it has a lot of good screen shots.

* Sarah Ryly's CAR 2018 OpenRefine [tutorial](https://drive.google.com/drive/folders/0B43bFBSY0ET3VkttWnlzQ05IaDQ), with the data [here](https://www.dropbox.com/sh/c5c5nfcyzus1bmg/AADdTxLg_7HBB8-6xuGQu6Oka/OpenRefine_1164?dl=0)

* Dan Ngyuen's tutorials on Open Refine [part 1](http://www.padjo.org/tutorials/open-refine/introduction-to-open-refine/) and [part 2](http://www.padjo.org/tutorials/open-refine/clustering/)



#### Intro to open refine
(NOTES)

* View the import menu - remember text / json / csv are better than Excel for this. It often hangs.

* Import the hazards incident table from AZ. Look at the pieces of the screen.

* First steps - look at in- vs out-of-state and create a new field.

* Convert dates to dates, numbers to numbers.

* Do some faceting: in- state, look at counties. Edit based on faceting area. Invert facet to set the rest.

* Sort of like crosstabs / pivot tables. Use them to filter and drill down.

* Look at how to extract and apply, go backwards.

* Use filter instead of facet.

* Clustering - take care - start with the most stringent, move to less. Be careful to take out any. Increase number of characters to make it a little more accurate (no very short names)

Different algorithms do different things.

* How to split a column. Not sure there's a good example here.

#### Intro to regular expressions

Go to regex101.

* Easiest - take the first 5 digits of a few 9-digit zip codes.

* Extract the first name from a 4-name example:
        Jones, James P. III

* Try converting a date into a properly formed date. example 2/27/18 into 2018-02-27
  * Two steps: switch to the revers,
  * Then switch -(\d)- to -0(1)-

* Quick return to open refine? May not be time.
