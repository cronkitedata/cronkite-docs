---
title: Use of force database
nav_order: 5
parent: Excel practice
grand_parent: Excel
---

# Desigining your use of force database
{: .no_toc}

This exercise will start with some reading on police use of force, specifically the use of force using guns. There have been many stories about the more specific issue of fatal police shootings, but all shootings require you to get data from local sources.

In this exercise you will:

* Read a few stories that attempted to document police shootings and evaluate where they succeeded and where they came up short.
* Analyze  a database produced by the Phoenix Police Department's open government initiative, created after community groups decried the lack of information available.
* Using the government version as a base, design a new record layout and structure that you would collect using documents and news stories that will fill in some of the missing information


## Getting ready

* "[Shot by Cops and Forgotten](https://news.vice.com/en_us/article/xwvv3a/shot-by-cops)" by Rob Arthur, Taylor Dolven, Keegan Hamilton, Allison McCann, and Carter Sherman,  VICE News, December 2017
* "[How Phoenix Explains a Rise in Police Violence: It's the Civilians' Fault](https://www.nytimes.com/2018/12/10/us/phoenix-police-shootings.html)", by Richard Oppel, The New York Times, Dec. 10, 2018
* "[Data on Use of Force by Police across U.S. Proves Almost Useless](https://www.nytimes.com/2015/08/12/us/data-on-use-of-force-by-police-across-us-proves-almost-useless.html)", by Matt Apuzzo and Sarah Cohen, The New York Times, Aug. 11, 2015
* "[How we built the most comprehensive statewide database of police force in the United States](https://www.nj.com/news/index.ssf/2018/11/how_we_built_the_most_comprehensive_statewide_database_of_police_force_in_the_us.html)", by Craig McCarthy and Stephen Stirling, New Jersey Advance Media, Nov. 29, 2018. You might want to look through the project to see what else is in it.
* Look at how the [Orlando Police Department](https://data.cityoforlando.net/Orlando-Police/OPD-Officer-Involved-Shootings/6kz6-6c7n/data) releases its use of force data, and an [example of a use of force report](https://www1.cityoforlando.net/opendatadocs/saoletters/17-075014.pdf) linked from that database.

Several longer documents would be useful if you were going to do this for a real project. For example, the Maricopa County Attorney's Office investigates every officer-involved shooting and [publishes a list of their conclusions](https://www.maricopacountyattorney.org/282/Use-of-Force-Callouts) with names and decisions. (It does not decide whether police broke the rules. It only decides whether to prosecute the officers under normal criminal laws.) The Phoenix Police Department's 1,200-page operational orders have a long section on the [department's use of force policy](https://www.phoenix.gov/policesite/Documents/operations_orders.pdf).  The department also has a Use of Force Board that determines whether police broke the law, but does not publish those documents on its website.

## Open data

The current data is updated on the [Phoenix Open Data site](https://www.phoenixopendata.com/dataset/officer-involved-shooting-incidents/resource/8f8c1739-b905-407f-9eb6-6b10db55b931) in a comma-delimited text file. A copy of that data was saved as of Dec. 24, 2018, in case it is taken down.

Import the data into a spreadsheet and evaluate it by sorting and filtering.

Answer the following questions:
* How many incidents were logged in 2018?
* Using the filter checkboxes, check weekdays vs. weekends counts.
* How many did not involve a firearm brandished by the suspect.

## Design your dream data

Now create a data dictionary for a new dataset that would be based on this, but would contain what you really want to know about the cases. Some are obvious like the names of the officers and the suspects and a narrative of the incident. But think clearly about what you need for a published story -- include items that will help you fact check or allow you to count less obvious items like the police officer or supervisor responsible for the most shootings, or a tag for the circumstances.

Make sure you build in fields that will help you fact check, such as a URL for the source document, or a yes-no field for name spell checks.

Your document should have the following information:

* Name of the field, in standard data form.
* A description of the field -- what does it mean? How are edge cases like multiple officers handled (eg, semicolon separated, or listed on a separate table)?
* Source of the field -- where will you find it? Are there first, second and third choice sources?
* How you expect the field to be used, and what happens if you can't get it.

Using open source resources such as police or county attorney press releases or other news reports, try filling out five records.
