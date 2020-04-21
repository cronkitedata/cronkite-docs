---
title: "Lecture notes - building your own database"
nav_exclude: true
---

## Examples of building your own database

Here's a [slide show](https://slides.com/sarahcnyt/finding-the-elusive-data) that I created a long time ago with classic examples of building your own database, along with a few that I've done in the past.

More tip sheets are (some require IRE sign-in)

* "[Rolling your own data: Nuisance Abatements](https://ire.org/resource-center/tipsheets/4840/)", tipsheet from Sarah Ryley.
* "[Build your own database](https://ire.org/resource-center/tipsheets/3060/)", John Maines, tipsheet from 2008
* "[The Power of Building Your Own Database](https://ire.org/resource-center/tipsheets/1598/)," Sarah Cohen, David Heath and Anthony DeBarros.
* "[How We Built a Database from Thousands of Police Reports](https://source.opennews.org/articles/how-we-built-database-thousands-police-reports/)", Mary Jo Webster, Source, Aug. 23, 2018.

Two examples in class:

* Bubba Harris internal affairs report,
* Obama first 100 days. (The viz doesn't work anymore, but I can show the spreadsheet.)


## What to consider when building a database

### What do you want to do with it?

There are lots of reasons to build a database for yourself as part of the reporting process. Examples include logging the events of a long-running story or court case so that you can instantly create a chronology that can help you see and tell the story. Another is so that you can count incidents, such as deaths, as they happen. A third is that you may want to publish the results of a series of public records requests, including the details.

Make sure you decide before you start how much of your work you plan to publish. It's a lot harder to make sure everything is correct when you publish than if you're just looking to help your reporting. For example, this spreadsheet was used to work on stories about Obama's first 100 days in 2009. We never planned to publish it. You might notice right away that we've spelled Michelle Obama's name incorrectly a few times! Instead, it was used to count items in a graphic.

There is a big difference between building a database that you plan to publish in its entirety and one that you'll use for limited purposes. Before you begin, think through what you would want to do with the database.

### Example: Use of force by police

Talk through some stories you might want to do with information about use of force?

Let's start by making a record layout / file layout or data dictionary. This is a document that tells you what each field is and what data TYPES they are.

UNIT OF ANALYSIS: Are you looking at individual suspects, individual police officers, or individual incidents?

* Unique identifier for police department : Use something that alrady exists -- ORI?  - Text (9 chars)
* Unique identifier for incident: Also use something that already exists - Incident number - Text (unlimited)
* Date of incident (date / time)
* Time of incident (date / time)
* Name of officers? What do you do if there are more than one? Extra rows or extra columns?
* Ethnicity of officers? (Race or Ethnicity separate or together? What are the options? )
* Name of suspects? What do you do if there are more than one?
* Ethnicity of suspects?
* Type of weapon used?
* Keep going.....


This is the information you would LIKE to get. Now you have to think about where to get and how:

* What types of incidents? What is your universe? Shootings? Tasings? Batons? Pointing weapon? Find out more about the rules for the large police departments, and best practices from the advocates in terms of what you expect to find.

* Which police agencies? There are something like 30,000 police departments in the US. You will not get them all. Which ones? All of them in Arizona? Include tribal and state police? Include sheriff offices that may only run jails? Find a dataset that will help you identify them. The [Census of Law Enforcement Agencies](https://www.bjs.gov/content/pub/pdf/2014_CSLLEA-Final.pdf) might be a place to start. (Most recent is 2008, but these don't change that much. They never released the 2014 one.)

This is called your UNIVERSE -- this is the list of items you can choose from.

### Data collection

You've seen the story on police shootings from VICE. Here is the page that lists the items that they got:

Try a sample first to  make sure you're able to do what you've hoped. Here are three documents that are different ways that police agencies have made their incidents public. Some only do this for fatal incidents.

* [Las Vegas officer-involved fatality report]({{site.baseurl}}/assets/docs/DA_Decision_101115-0722_Brenes.pdf)
* [Oakland Police Department blank use of force form]({{site.baseurl}}/assets/docs/OPD_Use_of_Force_Report_Template.pdf)
* Spreadsheet acquired from Vice News from [Phoenix Police Department officer-involved shootings, 2010 to 2016]({{site.baseurl}}/assets/docs/Shooting Investigations 2010 - 2016.xlsx)
* An example of a taser report from Chicago's [Civilian Office of Police Accountability](https://www.chicagocopa.org/case/1089808/)

Look for problems in your original dataset and assumptions: can you get what you need from the reports? Which fields must be filled out before you can use them, and which ones can be left blank or unknown?

### Fact-checking and writing

We don't just want to log what people have given us -- we also want to log information we'll need to know whether it can be published. Consider adding more fields to the dataset:

* Who filled out the original record
* Whether names have been checked for spelling
* Whether it can be used in a story or graphic
* The original source (news story, agency name, etc.)
* A link to a copy of the original document or dataset (always keep a copy)
* "Hot doc"  -- is this a document or item that you will want to highlight in your reporting? Is there something on it that you might want to reproduce?
* Fact check date and who fact -checked.
* Questions remaining to be answered by agency or source.

The idea is that everything you need to get into publication is listed here.


## Other examples of homemade datasets

You can use this for almost anything you have to collect piece by piece. Examples include:

* Your own public records requests
* A long-running court case chronology
* Piecing together facts from in a case. (Example: [Bubba Harris internal investigation](https://github.com/sarahcnyt/classes/blob/gh-pages/docs/internal-affairs-report.pdf) and [spreadsheet](https://github.com/sarahcnyt/data-journalism/blob/master/class1/bubba_harris_protocol.xlsx?raw=true))
