---
layout: page
title: "Installing and using DB Browser and SQLite"
nav_exclude: true
---

We're going to be using DB Browser, which is a way of importing CSV files into a SQL database, and a way of managing those databases.

Links for this exercise:
* [dams.sqlite](../sqlite/dams.sqlite)
* [http://sqlitebrowser.org/](http://sqlitebrowser.org/)

### CSV data format

As a reminder, a CSV file is a simple text file that is the lingua franca of structured data across all types of systems. It's simple text. Each field is separated by a comma. If there's a comma inside **within** the field, the entire field is enclosed in quotes. If there's a quote inside the field, it should be escaped by a \\.

There are many ways CSVs can go wrong, but failing to put the quotes in or escaping them inside fields are the most common. For that reason, some people use a variant of CSV files called TSV -- tab-separated values. These are much rarer than commas, so there is less need to worry about what's inside each row.

Here's what a typical csv looks like:

      Aamodt,Gail,Police Officer," $72,425.60 "
      Abbitt,Ryan,Firefighter 56hr," $66,248.00 "
      Abbott,Cathy,Police Assistant," $48,900.80 "
      Abbott,Christie,Forensic Scientist IV," $94,328.00 "
      Abbott,Richard,Housing Rehabilitation Spec," $61,900.80 "
      Abdellatif,Tariq,Environmental Quality Spec," $66,518.40 "

Note the quotes around the salaries of these Phoenix employees. Unlike Excel, SQL-based programs are much stricter about data types. They won't recognize dollar signs and commas in numbers, so if you want to sort or query them as values, you'll have to strip those characters out using a text editor or a function.

### Installing db browser for SQLite

Get the db browser for SQLite here: [http://sqlitebrowser.org/](http://sqlitebrowser.org/)
The SQLite browser lets you create and query databases made in the SQLite form of structured data. A SQLite database is a package of items bundled up in on file. It can include tables, saved queries and some other structural information

The Mac version comes as a typical Mac install file, in a .dmg package. You can drag and drop it anywhere on your computer, and it can be dragged and dropped onto the desktop of the lab computers each time you log in.

The Windows version has to be installed on a computer that is under your control.

You can open a .sqlite database from anywhere on your computer or from a thumb drive. If you create a new one, it will be saved by default in your User directory.

(This tutorial is written using the Windows version. It will look a little different on a Mac, but the functionality and general setup is the same.)

### Getting started with sqlite

All tables must be part of a *database*. A database is a collection of items, including tables, views or saved queries and other items that can help things run more smoothly. We'll look at one of those items, called indexes, later on.

We'll start with a simple database of a single table created for IRE's bootcamp in SQL, called [dams.sqlite](../sqlite/dams.sqlite). Save the file to a place you can find it again. Then open it in SQLite db browser:

![dbbrowser1](../images/dbbrowser1.png)

On the right, you see what's called the "Schema". If you expand the only table listed, you'll see that most fields have been imported as TEXT, not NUMERIC. (Sqlite really only has those two types of data, unlike most SQL-based databases. Others have date and time fields along with various sizes of text, numeric and even image formats.)

Click on the "Browse Data" tab to just look through your data. If you are using our practice data, you should see a list of dams in Maryland and Virginia. This is from the National Dam Inventory, which collects information from states on the location and condition of dams, their size, when they were inspected, and how much damage might occur if they were to fail.

One first check you might make is to figure out if there are multiple instances of the same dam in the database. One way to do this is through a simple count query, which you can write under the "Execute SQL" tab:

![dbbrowser3](../images/dbbrowser3.png)

Unlike data.world, this system allows you to save lots of queries at once and also logs all of the work you do in a session. That's useful to save and will make your life a lot easier.
It looks like there may be about 14 duplicated dams in this dataset. Normally, we'd work this out before moving forward by identifying them and resolving the issue. For now, we'll plow on.

You can also stack your queries, separated by semicolons, and save the SQL as one file each time you end a session.

![dbbrowser4](../images/dbbrowser4.png)

## SQLite traps

As the name suggests, SQLite is a light version of sql without many features available in other implementations.

Most importantly, queries will likely be case-sensitive, and it's impossible to change that behavior once the column is created. In addition, there is no support for date and time fields, so it's much more difficult to work with spans of time.

These are technical issues that you'll run into when you go further in your work, which is why most people use MySQL or PostgreSQL as their databases if they plan do a lot of data work.

### Case-sensitive queries

When you import or open a sqlite table created by others, it will likely be case-sensitive. In our example, this query

      select nidid, dam_name, insp_date, river, county
            year_comp, npdp_hazard, eap, latitude, longitude
      from dams
      where npdp_hazard in ('significant', 'high')

returns 0 rows. Instead, you must use:

      where npdp_hazard in ('SIGNIFICANT', 'HIGH')

The easiest solution is to use *like* instead of *=* in your query, but that won't work for *IN* statements. Play around with this on a database that has consistent case, like the all-upper-case dams database so you see how different operators will work.
