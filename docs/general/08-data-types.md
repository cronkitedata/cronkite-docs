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
