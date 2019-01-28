---
title: Rates and ratios with FBI data
nav_order: 10
parent: Excel practice
grand_parent: Excel
---

Reading for FBI crime reports:

FBI crime statistics
We're going to look at Uniform Crime Reports for 2016 in class.


## Data and documentation

I downloaded the data from the FBI for 2017. The files are:

* [Original FBI data](https://ucr.fbi.gov/crime-in-the-u.s/2017/crime-in-the-u.s.-2017/tables/table-8/table-8.xls/view). Read the "Data Declaration" at the top of this page. The original data was downloaded from the "Download Excel" link at the top of the page.  

* A [cleaned-up version of the dataset]({{site.baseurl}}/assets/data/xlexamples/crime2016.xlsx) for us to use while you're reading about the UCR. (NOTE: I've changed this since class. I eliminated the first crime rate and took out the property and violent crime totals, which is the way the FBI gives it to us.)

It contains three pages :
1. Original_data: This was the full list of cities that the FBI reported. Be sure to review the footnotes at the bottom, which will explain some anomalies you find later on.  You should note that it contains three types of numbers:
   1. A population for the city.
   2. Total numbers of violent and property crimes, which should be the sum of the parts, except for Arson.
   3. Each "Part I" type of crime. These are the specific crimes that local police agencies are asked to report to the FBI each year for this program.

2. A somewhat (but not entirely) tidy version of the data, but only for large cities.

3. A list of Arizona cities.

### Stories that were based on UCR crime data

It's always worth the time to read how others have presented a common dataset so you don't miss important nuances.

* "[Reports of Rapes and Hate Crimes Rise in 2018, but New York Remains Safest Big City](https://www.nytimes.com/2018/12/31/nyregion/crime-nyc-rapes-murders.html)," New York Times, Dec. 31, 2018;
* "[As the number of Reported Rapes Climb, Mayor Points to #MeToo](https://www.nytimes.com/2019/01/06/nyregion/rape-reports-nyc-me-too.html)", New York Times, Jan 6, 2019
* "[LAPD misclassified nearly 1,200 violent crimes as minor offenses](https://www.latimes.com/local/la-me-crimestats-lapd-20140810-story.html#page=1)", Los Angeles Times, Aug. 9, 2014
* "[FBI crime report shows national decline, but uptick in metro-Phoenix]"(https://www.azcentral.com/story/news/local/arizona/2018/10/01/fbi-crime-report-shows-national-decline-uptick-metro-phoenix/1433323002/) Arizona Republic, Oct. 1, 2018

## Check the government's math

Get in the habit of trying to reproduce numbers that were calculated by others. In this case, you'll want to check to see if you get the same number of violent and property crimes, based on the FBI's definitions in the data declaration.

1. Calculate the number of violent crimes.
2. Calculate the number of property crimes, excluding Arson.

You'll notice that not all of the numbers match. Returning to the original sheet and looking for footnotes will help explain it. 
