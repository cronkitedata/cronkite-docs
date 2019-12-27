---
layout: page
title: "Joining tables in SQLite"
permalink: /sql-join/
categories: tutorials
---

Files for this exercise:
(NOTE: If you downloaded the azgivers.sqlite during class, grab a fresh copy here. I updated the name of the table to require less typing and converted the item_amount field in the contributions to a number so it will sort correctly.)
* [Tngive16.sqlite](https://sarahcnyt.github.io/data-reporting/assets/sqlite/Tngive16.sqlite)
* [azgivers.sqlite](https://sarahcnyt.github.io/data-reporting/assets/sqlite/azgivers.sqlite)

So far, everything we've done in SQL could have been accomplished in Excel. If you learn about advanced filtering in Excel, it can be almost as powerful as SQL. GROUP BY queries are effectively pivot tables. Now we want to merge tables. It's relatively easy to do this in Windows versions of Excel, but much more involved and error-prone in Mac versions.

There are several reasons a reporter would want to join tables within or across databases.

Sometimes, matching is done by design because it's a more efficient way to construct a complex database. These are called relational databases, and reporters sometimes call these "intentional" joins.

Reporters sometimes also compare databases that were never intended to be matched. Examples include:
* A database of home health aides vs. a list of recent criminal convictions in New Jersey.
* A list of White House visitors to registered lobbyists.
* A list of school bus drivers vs. drivers who had been convicted of DUI.
* A list of parents who owed child support vs. government employees.

Reporters sometimes call these "enterprise" joins, referring to the enterprise stories they want to write.

## Relational database


Usually, a government agency will hold its data in what is called a *relational database*. This means that there are different tables for different units of analysis. Relational databases also sometimes hold "lookup tables", which translate codes to words. An example is the federal campaign finance database. In its original form, there are no names of candidates and committees. Instead, there is one table that defines committees, such as "Clinton for America". There is a 9-character code that always indicates that committee, and a different table holds the details, such as the name of the committee, the code for the candidate, the treasurer, the mailing address, etc. Another table holds the candidates, such as "Hillary Clinton", and indicates what year and position she was running for.  

Many complex datasets contain dozens of tables, each with a slightly different type of entry, and all with the goal of streamlining and standardizing data entry, maintenance and controlling the size of the database. Putting them together can be painstaking. Brant Houston, in his book Computer-Assisted Reporting, likens it to building bridges between islands of information.

We're going to work with something a little simpler: one table that lists the candidates, and another that has already applied some of these lookup tables. The example is from IRE, with a [database of federal contributions from Tennessee](../sqlite/TNgive16.sqlite) in the 2016 campaign year.

### Merging tables based on a common id

Joining tables requires having an exact match between an ID or phrase. Even an extra space in the value will throw off the merge. Luckily, most databases that were created as relational databases have been strict about the data entry, and there are few cases of mismatched ids.

The tables don't have to call those fields the same thing. In our campaign contribution example, the "filer_id" in the contributions table is the same thing as the "committee_id" of the candidate table. When you start looking at databases, you will have to read the documentation to know which fields are supposed to be the same.

#### Joining tables

Here is an example of a SQL query that joins two tables:

        SELECT tncands.committee_name,
              tncands.election_year,
              tenngive.transaction_type,
              tenngive.contributor_name,
              tenngive.amount,
              tenngive.zip,
              tenngive.election_year
        FROM tenngive INNER JOIN tncands
            ON  tenngive.filer_id = tncands.committee_id

You select your fields prefaced by the name of the table, then JOIN them in the FROM statement using the common field.

If you forget the JOIN, you will usually see your query spin and spin and spin, and perhaps return millions if not many millions of records. The reason is that every row in one table is being matched to every row in the other, resulting in a *cartesian join*.


#### Unique values in the lookup table

When you match two tables, it's imperative that there be only one entry for the common field in one of the tables. That's because the computer wouldn't know which row you meant if it was asked to merge more than one, and would repeat the record every time.

You can check whether your lookup value is unique by counting the rows and the distinct ID values. You can also check them by trying to create a PRIMARY KEY, which also speeds up querying. If it fails, you will get an error telling you they aren't unique.

As an example, try copying and pasting these commands into a new or existing sqlite database. These are SQL statements to create new tables from scratch and put some fake data into them. A line that starts with -- is ignored by SQLite.

      CREATE TABLE ppl_names
        (ppl_id INT,
         ppl_name TEXT);

      INSERT INTO ppl_names
      VALUES
        (1, "Sarah"),
        (2, "Richard"),
        (2, "Mary"),
        (3, "Alexis");

     -- Notice that the number 2 is repeated.

      CREATE TABLE ppl_donations
        (ppl_id INT,
        ppl_amt INT);


      INSERT INTO ppl_donations
      VALUES
        (1, 230),
        (2, 100),
        (2, 50),
        (4, 700);


You should have two tables in your database, each with four records.
See what happens if you run the query:

     SELECT *
     FROM ppl_names, ppl_donations

(You should get 16 rows back -- each person would be matched to each donation because you didn't include the JOIN clause.)

Now see what happens if you run the query:

    SELECT *
    FROM ppl_names INNER JOIN ppl_donations
       ON ppl_names.ppl_id = ppl_donations.ppl_id;

Alexis is missing, since she didn't have a donation. But Richard and Mary are each given credit for the two donations of ID #2. You've now doubled that donation because two people shared the same ID.

Think about what a mess that would be if, say, your school ID number was also given to someone else -- you'd get his bill, he'd get your transcript, and so on.

#### Practice questions

We're going to practice on a simplified version of the [campaign contributions to Arizona candidates](../sqlite/azgivers.sqlite) in 2016. These are only individual contributions, not those from PACs and other special methods. They include donations to candidates' main political action committee and his or her leadership committee. Don't worry too much what those mean right now.

1.  List all of the contributions made to John McCain.
2.  Create a view that applies the information from the candidates table to the contributions table so you don't have to join them each time.
3. Using your joined table, how much of McCain's contributions went to his campaign account, and how much went to his leadership committee?
4. Compare the contribution totals for House candidates.

Now think of some questions on your own....
