---
title: Understanding data types
nav_order: 6
parent: General topics
---

# Structure and spreadsheets
{: .no_toc}

<blockquote> "A well structured file is similar to a well structured story." </blockquote>

-- "[Cleaner, Smarter Spreadsheets Start with Structure](https://source.opennews.org/articles/building-cleaner-smarter-spreadsheets/)", by Sandhya Kambhampati, now of the Los Angeles Times, The Source.


When you start working with structured data, there is an important unspoken rule: Each column should contain the same _type_ of data, often broken into three categories: text, numbers and dates.

This video goes through the basic types of data that you'll find within a table such as an Excel worksheet, and what opportunities and traps await you.


<iframe width="560" height="315" src="https://www.youtube.com/embed/AiYLwi-XNck" allow="autoplay; encrypted-media" allowfullscreen
style="margin: 2em;"></iframe>

### Test yourself
If you can't answer these questions, review the video again.

1. What happens if you try to add up cells that contain a mix of numbers and text?
2. Why does 11/2/2019 come after 2/14/2019 when sorted, even though they are alphabetically in the other order?
3. Is this considered a number in Excel?

        2,148,232*

Most programming languages enforce a single data type for each field or variable in a data frame or table. Instead of keeping the wrong version, it will turn all of them in to characters if it isn't sure. It will turn all of the characters to missing data if there are only a few.

As you get into programming, there are much more complicated data types that are really powerful. For example, a data type of "data frame" is used in R and Python to act like an Excel sheet. A json object can define a whole database in nested text. Those types will be covered in later modules.

## Recap

The concept of data types is one of the most important you'll learn in your introduction to data journalism. It means that each bit of information you collect or receive is of a _type_, and understanding them will tell you what you can do with them. The most common types of information that come in text form -- eg, something you can type on your computer -- are:

* Text: Sometimes called "strings", or "character" variables, this type is made up of any combination of words, numbers, letters, or symbols. You won't do any math on text. Instead, you'll count things or try to categorize them into something you can count more consistently.

  * Categories: This sub-type of text data might contain words or numbers. The key is that they are consistently entered (or should be), and have little variation. A ZIP code is a category of geography, as is a county name or its standardized code. Gender and demographic characteristics are categories - even if they evolve over time to have different values. Government agencies often assign categories to things, such as a type of health inspection violation, or a type of spending code in a budget.

  * Free text: This is a type of data that can be almost anything of any length. A book could be one single free text value. So could a sentence or a paragraph. In data, it most frequently is seen as some sort of description -- how an accident happened, or what was going on when a crime occurred. They are not easily put into slots -- instead, you'll often have to analyze them separately to find key phrases and words that help you find the information you are seeking.

* Numbers: These are values that have no characters other than the digits 0 through 9. Excel and other programs hold numbers without any special way of looking at them, but can present them to you through a *format* that makes them easier to read. There are the values that you'll act on using math or arithmetic -- calculating averages, totals, percent changes and the like. It's most important to check what your program, such as Excel or R, *thinks* a value is that looks like a number -- a stray comma, question mark or dollar sign could throw it off. One clue in Excel is whether the value is right- or left-justified. In other programs, you'll define the data type, and then just check to see if everything was properly understood. Most programs have ways of converting common non-numeric information into numbers. Just be careful: these are powerful data elements, but they're finicky.

* Date and time: Time is an important element in almost every data set: when were you born? how long did it take a restaurant to fix its deficiencies? What time did the ambulance show up? Which runner ran faster? Its so important that virtually all computer languages, including Excel and R, have special ways of dealing with time and date. Unfortunately, almost every language does it a little differently. For now, the important thing to remember is that a properly defined date, time or combined date-time value will have a few characteristics. First, they can be presented to you using a format, or a text representation, in a way that is easy to read while retaining their special superpowers. You don't have to know what's being computed behind the scenes -- just that you want to make sure it's happening. Second, you can do "date math" to calculate age, response times, and due dates, for example. It's the same date math that lets your computer understand that you want to schedule something on the 2nd Tuesday of each month.

There are other data types, but we won't get into them now -- most are called "objects", and they're complex combinations of bits and bytes that create something you can use elsewhere. Video is one type of data, and audio another. Data frames -- tables of information -- are frequently used in programming languages. Geographic data types hold information like latitude and longitude, and the shape of your county borders, inside of them.  We'll get to that later in our exploration of data. 
