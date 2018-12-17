---
title: Excel refresher
parent: Excel guides
grand_parent: Excel
nav_order: 1
---

1. TOC
{: toc}

## Spreadsheets and reporting

You may have learned how to use Excel or Google Sheets in grade school or high school to make charts or present tables, but reporters use spreadsheets in different ways.

The key reasons for reporters to use a spreadsheet are:

* To create our own databases that so that we can sort, filter and count events. Examples include a long-running court case; the details of each opioid death in a city; a list of police shootings and their documents; or even a list of your own public records requests or contact log.
* To use data created by others for fast, simple analysis and data cleanup. Many government agencies provide their information in spreadsheet form, so you'll need to get used to using it.
* To perform simple, straightforward analysis on data and share with team members. This is becoming less common as more reporters learn programming languages, but it's still common in newsrooms to share data, especially through Google Sheets.

We're going to work with Excel because it is still far more robust than Google sheets for much of our work. Google sheets are difficult to navigate, have limited options for filtering and have other limitations. However, for some things -- especially interacting with web pages elsewhere and sharing with others -- they're much more robust.

Some reporters flinch at typing in 30 or 100 entries into a spreadsheet. You shouldn't. If you learn to take notes in a structured way, you'll always be able to find and verify your work. If you try to calculate a sum of 30 numbers on a calculator, you'll have to type them all in at least twice anyway. And getting used to these easy tasks on a spreadsheet keeps you fluent for when you need to do more.



## Re-learning Excel from the ground up

### The spreadsheet grid

When you start up a spreadsheet, you'll see letters across the top and numbers down the side. If you ever played Battleship, you'll recognize the idea -- every little square, or cell, is referenced by the intersection of its column letter and row number:  

![grid]({{site.baseurl}}/assets/images/xldayone-battleship.png)

B2 is the cell that is currently active. You can tell because it's outlined in the sheet and it's shown on the upper left corner.

### Mouse shapes

* BFWPS: The Big Fat White Plus Sign. This is the default shape, and you can never get into trouble when you see it. ![BFwPS]({{site.baseurl}}/assets/images/xldayone-bfwps.png)


* The Copy Tool, or the thin black cross. When you see this, you'll copy anything that's selected. This can be good or bad. ![copy]({{site.baseurl}}/assets/images/xldayone-copy.png)

* The Evil Hand. (In Windows, this is the Evil Arrow). If you use this symbol, you will MOVE the selection to a new location. This is very rarely a good idea or something you intend. ![evil hand]({{site.baseurl}}/assets/images/xldayone-evilhand.png)

### Selecting cells and areas

Spreadsheets act only on the cells or regions you have selected. If you begin typing, you'll start entering information into the currently selected cell.

To select: Hold the BFWPS over the cell and clice ONCE -- *not twice*. Check the formula bar to make sure you've selected what you think you've got. You can also look at the bottom right of your spreadsheet for more information.

_To select a group of cells and act on them all at once_: Hover the BFWPS over one corner, click ONCE and drag to the diagonal corner. Make sure the Evil Hand is nowhere to be seen. The entire area will be shaded in except for the currently selected cell. Look at the upper right corner to see how many rows and columns you selected.  
![select area]({{site.baseurl}}/assets/images/xldayone-select.gif)

_To select a column or row_ : Hover the BFWPS over the letter at the top of the column. For a row, hover it over the row number in the margin ![column select]({{site.baseurl}}/assets/images/xldayone-columnselect.png).

### Entering data

Select the cell and start typing. The information you type won't be locked into the cell until you hit the Return / Enter key, or move your selection to another cell. Hit "Escape" to cancel the entry.

You can't do a lot of things while you're editing, so if you have a lot of greyed out menu items, look at your formula bar to see if you are still editing a cell.

If you're having trouble getting to a menu item or seeing the result of your work, try hitting "Escape" and try again. You may not have actually entered the information into the sheet.

### Locking in headings

As your spreadsheet grows vertically with more rows, you'll want to be able to see the title all the time. When it grows vertically with more columns, you'll probably want to see what row you're looking at by name whenever you can. This is called "Freezing Panes" -- you freeze part of the page so it stays in place when you move around.

Select the corner that you want frozen. For example, if you want the first three columns frozen (A:C) and the first row frozen (1), then select the cell in D2. This is the first cell that will move, and everything to the left of it and above it will stay on the screen.

![freeze panes]({{site.baseurl}}/assets/images/xldayone-freezepanes.png)

### Formatting tricks

* Use the buttons or the format dialog box to make numbers easier to read.

* If a column is filled with a lot of text, select the column and look on the Home ribbon next to the formatting area for "Wrap Text". This means that when you double-click to widen a column, it will get taller, not wider. This is good when you need to save valuable real estate on the screen.

## Best practices

There are several best practices we'll be using throughout the course, and you're expected to follow them and catch errors that they might show you. All of this is related to interviewing your data the same way you'd interview a person.

#### Open, don't double-click

Double-clicking on files to open them is never a great idea. We all do it and we all find some day that we regret it. Getting used to doing it the long way will help you in the future, not just in Excel but in other programs.

As an example, double-clicking on a computer program like Python or R will run the program -- it won't give you a way to edit it. Double-clicking on Excel might try to open a corrupted or extremely large file.

Opening the file forces you to pay attention to where the file resides in your computer. That way  you always know that you're using the right version, not some version that was stuck on your desktop or in some other place by mistake.

### First look - getting to know your data

We'll go over other best practices as we move along, but for now you should spend some time getting to know your data.

* Save your workbook under a new name and work only on that copy.  
* Check your corners -- look at the top left and bottom right. Is the data all in one area? Are there footnotes or other non-data sections mixed in? We're going to want to fix that later.
* If the spreadsheet shows #### instead of words or numbers, widen your columns. If it shows 7E-14 or something like that, format them as numbers, not "General".  
* Add some headings and id numbers if necessary.

This video goes through the first steps you'll usually take when you have a new dataset. We're going to go over the concept of "tidy data" later.

[You should follow along using the same datasest as on the video]({{site.baseurl}}/assets/data/phoenix_salaries.xlsx).   

<iframe width="560" height="315" src="https://www.youtube.com/embed/iGCpfop0zvs?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

## Keyboard shortcuts

For Mac users, it's much easier to use Excel if you override the action of function keys while you're in the program. In your Mac's System Preferences, choose Keyboard, and select the box that says, "Use F1, F2, etc. as standard function keys."

![system option]({{site.baseurl}}/assets/images/xldayone-options.png)

Once you've done that, these keyboard shortcuts will work:

To do this |  Windows or IMac| Macbook
------------|---------| ----------
Edit a cell | F2 | Ctl-U or F2
Toggle between absolute and relative references | F4 | Ctl-T or F4
Insert cut cells | Ctl+ | Ctl+
Delete a cell | Ctl- | Ctl-
Select the top left of a spreadsheet | Ctl-Home | Ctl-Fn-Left arrow
Move to the bottom right of a spreadsheet | Ctl-End | Ctl-Fn-Right arrow
Select a region (a contiguous rectangle of cells that are filled out) | Ctl -* | Ctl-Shift_spacebar

You should practice getting around a spreadsheet efficiently, since scrolling with the mouse while selecting is a lesson in frustration.
