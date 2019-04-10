---
title: Open Refine 2
parent: Special
---

This document will walk through how we cleaned up dozens of spreadsheets into a database to find the answer to a simple, one-minute question.

## The project

This data came from a Medicaid program for long-term care for New York State. A reporter at the New York Times wanted to see which large companies had profited from some increased funding and changes in the rules, and wanted to use this site's data [http://www.health.ny.gov/health_care/managed_care/reports/enrollment/monthly/](http://www.health.ny.gov/health_care/managed_care/reports/enrollment/monthly/http://www.health.ny.gov/health_care/managed_care/reports/enrollment/monthly/).

Here's what we did:

### Step 1: Download all of the Excel spreadsheets and skip the pdfs
* DownloadThemAll! as a Mozilla add-on is easy.  (That add-in no longer exists, so you might look for Chrono Download manager or another easy one-click download.)
* Could easily be programmed in Python, R or any other program.
* If you're good with command line tools: wget.

### Step 2: Find the commonality among the sheets you want.

 Look at some of the examples, go through a few years just to see if the format changed dramatically at some point. In some, the tab we want was called called "Managed Long Term Care", in others it was called "Long Term Care". We only cared about the PACE programs (don't worry about what that means), and they appear to always be in a sheet called one of those two things.

### Step 3: Combine them all into one sheet, stacked on top of each other.

I determined that this was easier than trying to anticipate the exact form in a program. But how?

* Use Python or Ruby packages to copy and paste them into one sheet. _#fail__ .  There were errors in the files that prevented it - none of the standard packages would read these Excel files, I think because there were bad references in them.
* Write an Excel VBA program to do the same thing. That might have been easier, but I'm rusty at VBA. I'm sure I could have done it, but why?
* Seek out a tool to do the job. A Google search on "combine the same worksheet from multiple workbooks" yielded just the tool I needed: KuTools.

In the end I had a spreadsheet like this (I hid a bunch of rows in the middle):
![](mltc-image.png)

### Step 4: Make sure all of the sheets got copied

I actually had to go back and manually copy a few. What do you think an easy way to see whether I have every month might be? How would you filter to see what months were captured?

## Cleaning in Open Refine

This could have been cleaned up in Excel using much of the same method we're going to use in OpenRefine, but there are a couple of advantages.

1. OpenRefine saves all of your steps. If you have to troubleshoot the steps, you can always look at the diary.
2. OpenRefine has quick commands to do common things that Excel doesn't. It's possible in Excel, but it's a little more clunky.
3. Regular expressions
4. Once you're done, it's easy to standardize the company names.


### Strategize

The first part of converting these spreadsheets is to identify the commonality around it.  

[This tutorial]({{site.baseurl}}/assets/docs/openrefine/openrefine) walks through the Open Refine commands used in the project. 

Key commands:

* value.match(__regex__) . (Note: OpenRefine requires wildcards before and after the phrase if they aren't the beginnings and ends.)
* reversing the order permanently to fill down the totals, then reversing it back.
* Copying the original name and clustering to standardize.
* working out which rows to keep and which rows to trash. These can be regex filters or you can use the list.

Once it's out of open refine, you could bring it into something like Tableau Public to make this:
![](mltc-picture.png)
